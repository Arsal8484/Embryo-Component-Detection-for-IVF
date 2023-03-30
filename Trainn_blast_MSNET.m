
close all
clear all
%  load 'mynet1'
load 'LG_MS_MS_AA' %% for FPS-Net LG
%   load 'FPS_LG_without2Skip' %%% FPS-Net without skip paths
   lgraph=lgraph_1;
% % %  lgraph = removeLayers(lgraph,'imageinput');
%   inputImage = imageInputLayer([400 400 1],'Name','inputImage');
%    lgraph = replaceLayer(lgraph,"imageinput",inputImage);
%    conv_S1_A32 = convolution2dLayer(3,32,'Padding','same','Name','conv_S1_A32','NumChannels',1);
%    lgraph = replaceLayer(lgraph,"conv_S1_A32",conv_S1_A32);
% % % lgraph = addLayers(lgraph, inputImage);
% % % lgraph = connectLayers(lgraph,'inputImage','conv_S1_A32');  
% % 
% % lgraph = removeLayers(lgraph,'mask_conv');
%    mask_conv = convolution2dLayer(3,5,'Padding','same','Name','mask_conv','NumChannels',32);
%    lgraph = replaceLayer(lgraph,"conv_mask",mask_conv);
% % lgraph = addLayers(lgraph, mask_conv);
% % lgraph = connectLayers(lgraph,'relu_tra3','mask_conv');  
% % lgraph = connectLayers(lgraph,'mask_conv','softmax');
   
% figure,plot(lgraph)
 
Folder = 'J:\15th\Blast_update';% Main directory to all images
 
train_img_dir = fullfile(Folder,'Train');%Training image directory
imds = imageDatastore(train_img_dir); 
 
Val_img_dir = fullfile(Folder,'Val');%Training image directory
imdsVal = imageDatastore(Val_img_dir); 



classes = [
    "ICM"
    "TE"
    "ZP"
    "BL"
    "BG"
          ];
%  classes = ["ICM","NonICM"]; %% Class names
%  labelIDs   = [255 0]; % Class id

labelIDs = camvidPixelLabelIDs();

train_label_dir = fullfile(Folder,'Train GT');  %% Training label directory
pxds = pixelLabelDatastore(train_label_dir,classes,labelIDs);


Val_label_dir = fullfile(Folder,'Val GT');  %% Training label directory
pxdsVal = pixelLabelDatastore(Val_label_dir,classes,labelIDs);



tbl = countEachLabel(pxds); % occurance of iris and non-iris pixels


frequency = tbl.PixelCount/sum(tbl.PixelCount); % frequency of each class

imageFreq = tbl.PixelCount ./ tbl.ImagePixelCount;
classWeights = median(imageFreq) ./ imageFreq;    % frequency balancing median 

 layer_loss = pixelClassificationLayer('Name','labels','ClassNames',tbl.Name,'ClassWeights',classWeights); % adding weights tp pixel classification layer
% 
%    lgraph = removeLayers(lgraph,'labels'); % deleting previous layer
%   lgraph = addLayers(lgraph, pxLayer); % adding new layer with weights
%   lgraph = connectLayers(lgraph,'softmax','labels');% retreiving the connection
%  layer_loss = dicePixelClassificationLayer("Name","diceloss");
       layer_loss=tverskyPixelClassificationLayer('tversky',0.4,0.6); %% ,0.15,0.85
%     layer_loss = focalLossLayer("Name","focalloss");
     lgraph = replaceLayer(lgraph,"dice-pixel-class",layer_loss);


%%% Training options %%%%%

% options = trainingOptions('adam', ...
%     'ExecutionEnvironment','multi-gpu', ...
%     'SquaredGradientDecayFactor',0.95, ...
%     'GradientThreshold',6, ...
%     'GradientThresholdMethod','global-l2norm', ...
%     'Epsilon',1e-6, ...
%     'InitialLearnRate',3e-3, ...
%     'L2Regularization',0.0005, ...
%     'MaxEpochs',35, ...  
%     'MiniBatchSize',30, ...
%     'CheckpointPath',tempdir, ...
%     'Shuffle','every-epoch', ...
%     'VerboseFrequency',2);

dsVal = combine(imdsVal,pxdsVal);

options = trainingOptions('adam', ...
    'ExecutionEnvironment','multi-gpu', ...
    'SquaredGradientDecayFactor',0.95, ...
    'GradientThreshold',5, ...
    'GradientThresholdMethod','global-l2norm', ...
    'Epsilon',1e-5, ...
    'InitialLearnRate',1e-3, ...
    'L2Regularization',0.0008, ...
    'ValidationData',dsVal,...
    'MaxEpochs',70, ...  
    'MiniBatchSize',15, ...
    'CheckpointPath',tempdir, ...
    'Shuffle','every-epoch', ...
    'VerboseFrequency',2, ...
    'OutputFcn',@(info)stopIfAccuracyNotImproving(info,40)); %%% 25





augment_data = imageDataAugmenter('RandXReflection',true,...
    'RandXTranslation',[-5 5],'RandYTranslation',[-5 5]); % optional data augmentation


training_data = pixelLabelImageDatastore(imds,pxds,...
    'DataAugmentation',augment_data); %% complete image+label data


[net, info] = trainNetwork(training_data,lgraph,options);% Train the network

function stop = stopIfAccuracyNotImproving(info,N)

stop = false;

% Keep track of the best validation accuracy and the number of validations for which
% there has not been an improvement of the accuracy.
persistent bestValAccuracy
persistent valLag

% Clear the variables when training starts.
if info.State == "start"
    bestValAccuracy = 0;
    valLag = 0;
    
elseif ~isempty(info.ValidationLoss)
    
    % Compare the current validation accuracy to the best accuracy so far,
    % and either set the best accuracy to the current accuracy, or increase
    % the number of validations for which there has not been an improvement.
    if info.ValidationAccuracy > bestValAccuracy
        valLag = 0;
        bestValAccuracy = info.ValidationAccuracy;
    else
        valLag = valLag + 1;
    end
    
    % If the validation lag is at least N, that is, the validation accuracy
    % has not improved for at least N validations, then return true and
    % stop training.
    if valLag >= N
        stop = true;
    end
    
end

end




