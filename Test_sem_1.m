
close all
clear all
%  load 'mynet1'
 load 'FPS-NET_B12_WithSkip_TVL.mat' %%% till now best "Net_B10" with skip new TVL (AA experiments MS_Net_AA_1.mat best)
%  load 'PSF_withoutSKipNEt3' AA experiments MS_Net_AA_1.mat best
%  load 'FPS_net_WithSkip_GDL' %% for FPS-Net GDL included in paper
% load 'FPS_net_WithSkip_FL'%% for FPS-Net FL included in paper
% load 'FPS_net_WithSkip_WCE' %% for FPS-Net WCE included in paper

 % load 'mynet3'
%  J:\12th\R3-Mesh-Net\Blast_New\Test
 dir_path = 'J:\15th\Blast_update\Test';
file_name_ICM = sprintf('ICM_Acc%d.txt',1);
out_ICM = fullfile(dir_path,file_name_ICM);
fileID_ICM = fopen(out_ICM,'w');

file_name_TE = sprintf('TE_Acc%d.txt',1);
out_TE = fullfile(dir_path,file_name_TE);
fileID_TE = fopen(out_TE,'w');

file_name_ZP = sprintf('ZP_Acc%d.txt',1);
out_ZP = fullfile(dir_path,file_name_ZP);
fileID_ZP = fopen(out_ZP,'w');

file_name_BL = sprintf('BL_Acc%d.txt',1);
out_BL = fullfile(dir_path,file_name_BL);
fileID_BL = fopen(out_BL,'w');

file_name_BG = sprintf('BG_Acc%d.txt',1);
out_BG = fullfile(dir_path,file_name_BG);
fileID_BG = fopen(out_BG,'w');
% fprintf(fileID,'\r\n');

 
%  
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
for ff=1:35 %Arsal
    num=num2str(ff); % Arsal
    file=strcat(num,'.bmp'); % Arsal
    image = (imread(file));% Arsal
    im=image;
    
   
        [x1,x2,x3]=size(image); 
        Scolor1=image;
         Scolor2=image;
   if x3==3
   image=rgb2gray(image);
   NEW_img=image;
   end
      Orig_image=image;    
      imu=image>200;
       imd=image<150;
%         im=im*1.05;
%        figure,imshow(im)
%        figure,imshow(imu)
%        figure,imshow(imd)
            im=image;
%             im=imadjust(im);
             im=imresize(im,[400 400],"bilinear");
             
             imk=cat(3,im,im,im);
    tic;
       C = semanticseg(im,net);
  
       
       
toc;



 k1=C=='ICM';
 k2=C=='TE';
 k3=C=='ZP';
 k4=C=='BL';
 k5=C=='BG';
%  figure,imshow(k1)
mask_ICM=(k1);
mask_TE=(k2);
mask_ZP=(k3);
mask_BL=(k4);
mask_BG=(k5);


            [labels_R1,scores_R1,allscores_R1] = semanticseg(im,net,'ExecutionEnvironment','gpu');

        xx= allscores_R1(:,:,5);
        newarr=zeros(size(xx));
        [lim1,lim2]=size(xx);
        for l1=1:lim1
            for l2=1:lim2
                
                if xx(l1,l2)>0.0025   % 0.0025
                    newarr(l1,l2)=1;
                end
                
            end
        end
        
          mask_BG(newarr==1)=1; %% turn it 0n for TVL best results
          
        
            xx_BL= allscores_R1(:,:,4);
        newarr_BL=zeros(size(xx_BL));
        [lim1_BL,lim2_BL]=size(xx);
        for l1_BL=1:lim1_BL
            for l2_BL=1:lim2_BL
                
                if xx_BL(l1_BL,l2_BL)>0.25
                    newarr_BL(l1_BL,l2_BL)=1;
                end
                
            end
        end
        
%         
            mask_BL(newarr_BL==1)=1;
%         mask=k;
          


        imf=imcomplement(mask_BG);
        imf=imfill(imf,'holes');
        imf=bwareaopen(imf,8000);
        mask_BG=imcomplement(imf);
%         
        mask_ZP=bwareaopen(mask_ZP,5000);
        B_mask_ICM=mask_ICM; 
        mask_ICM=bwareaopen(mask_ICM,5000);
         diff_mask_ICM=B_mask_ICM-mask_ICM;
         
%          figure,imshow(diff_mask_ICM)
         
         mask_TE(diff_mask_ICM==1)=0;
         mask_ZP(diff_mask_ICM==1)=0;
         mask_BL(diff_mask_ICM==1)=0;
         mask_BG(diff_mask_ICM==1)=0;
         
         
         mask_BL=bwareaopen(mask_BL,5000);
%           mask_BL=imfill(mask_BL,'holes');
          mask_BL=mask_BL-mask_ICM;
%             mask_BL=bwareaopen(mask_BL,500);
         
           
       

        temp_BL=imcomplement(mask_BL);
        temp_BL=bwareaopen(temp_BL,2000);

%          figure,imshow(mask_BL)
%           figure,imshow(temp_BL)

        mask_BL(temp_BL==0)=1;
        
             se_BL = strel('disk',1);
        se1_BL= strel('disk',1);
        IM3_BL = imdilate(mask_BL,se_BL);     
        IM4_BL = imerode(IM3_BL,se1_BL);
        
%         mask_BL=IM4_BL;
        
        temp_ZP= imfill(mask_ZP,'holes');
%             figure,imshow(temp_ZP)
         
            temp_ZP=imfill(mask_TE,'holes');
             se_ZP = strel('disk',1);
              IM3_ZP = imerode(temp_ZP,se_ZP);
             diff_ZP= temp_ZP-IM3_ZP;
             
             mask_ZP(diff_ZP==1)=1;
             
%          figure,imshow(diff_ZP)
        
%         se1_ZP= strel('disk',1);
%             
%         IM4_ZP = imerode(mask_ZP,se1_ZP);
%         
%         mask_ZP=IM3_ZP;

        
        
        inv_BL=mask_ICM+mask_TE+mask_BG+mask_ZP;
        inv_BL=imcomplement(inv_BL);
        inv_BL=(inv_BL==1);
        
         inv_BL=bwareaopen(inv_BL,5000);
%          mask_BL(inv_BL==1)=1;
        
%         figure,imshow(inv_BL)
%  figure,imshow(mask_BG)
% figure,imshow(mask_TE)

% mask_ICM=imfill(mask_ICM,'holes');

 se = strel('disk',1);
 se1= strel('disk',2);
IM3 = imdilate(mask_BG,se);     
IM4 = imerode(IM3,se1);

%      mask_BG=IM4;

  se_ICM = strel('disk',11);
 se1_ICM= strel('disk',11);
IM3_ICM = imdilate(mask_ICM,se_ICM);     
IM4_ICM = imerode(IM3_ICM,se1_ICM);

        mask_ICM=IM4_ICM;

% mask_ICM(IM4_ICM==1)=1;


% figure,imshow(mask_BG)

  Names = sprintf('%d%s',ff,'.bmp');
  
Dri_ICM='J:\15th\Blast_update\Test GT_ICM\';
Dri_TE='J:\15th\Blast_update\Test GT_TE\';
Dri_ZP='J:\15th\Blast_update\Test GT_ZP\';

%Dri_heart='J:\6th\R2-Mesh-Net\JSRT-2 Fold\Fold-2\GT_heart\';
         Folder_ICM = fullfile(Dri_ICM,Names);
         Folder_TE = fullfile(Dri_TE,Names);
         Folder_ZP = fullfile(Dri_ZP,Names);
         
         
         GT_ICM=imread(Folder_ICM);
         GT_TE=imread(Folder_TE);
         GT_ZP=imread(Folder_ZP);
         
%          GT_ICM=(GT_ICM);
         
%           GT_ICM=imresize(GT_ICM,[400 400],'nearest');
%          GT_TE=imresize(GT_TE,[400 400],'nearest');
%          GT_ZP=imresize(GT_ZP,[400 400]);

           

%             mask_ICM=logical(mask_ICM);
%             mask_TE=logical(mask_TE);
%             mask_ZP=logical(mask_ZP);
%               mask_BL=(mask_BL>=0.3);
%             mask_BG=logical(mask_BG);


%        
         IK=imfill(GT_ZP,'holes');
         im_w=ones(size(GT_ZP)).*25;
         im_w(IK==255)=255;
         im_w=uint8(im_w);
         pt=im_w-GT_TE;
         pt=pt-GT_ICM;
         pt=pt-GT_ZP;
         
         pt=(pt==255);
         GT_BL=pt;
         GT_BG=imcomplement(IK);
        
         
          imk=cat(3,im,im,im);
         imk=imresize(imk,size(GT_ZP));
         
% 
        mask_ICM=imresize(mask_ICM,size(GT_ICM),"bilinear");
           mask_TE=imresize(mask_TE,size(GT_TE),'bilinear');
           mask_ZP=imresize(mask_ZP,size(GT_ZP),'bilinear');
           mask_BL=imresize(mask_BL,size(GT_BL),'nearest');
           mask_BG=imresize(mask_BG,size(GT_BL),"bilinear");
           

%         mask_ICM=bwareaopen(mask_ICM,10);
%         mask_TE=bwareaopen(mask_TE,400);
%         mask_ZP=bwareaopen(mask_ZP,400);
%         mask_BL=bwareaopen(mask_BL,400);
%         mask_BG=bwareaopen(mask_BG,400);

%   se = strel('disk',15);
%    se1 = strel('disk',17); 
%    IM2 = imdilate(mask_BG,se);
%    mask_BG= imerode(IM2,se1);




        
%             mast_tpB= (mask_BL+mask_ZP+mask_TE+mask_ICM);
%             mask_tempBG=imfill(mast_tpB);
% 
%              mask_BG=(mask_tempBG~=0);
%              mask_BG=imcomplement(mask_BG);
%              mask_BG= mask_BG+mask_BG1;

         imR=imk(:,:,1);
         imG=imk(:,:,2);
         imB=imk(:,:,2);
         [x1,y1]=size(imR);
         
          tp_ICM=0;
          tn_ICM=0;
          fp_ICM=0;
          fn_ICM=0;
          
          
          tp_TE=0;
          tn_TE=0;
          fp_TE=0;
          fn_TE=0;
          
          
          tp_ZP=0;
          tn_ZP=0;
          fp_ZP=0;
          fn_ZP=0;
          
          
          tp_BL=0;
          tn_BL=0;
          fp_BL=0;
          fn_BL=0;
          
          tp_BG=0;
          tn_BG=0;
          fp_BG=0;
          fn_BG=0;
          
           %tot=400*300;
   for jj=1:x1
        for kk=1:y1
        
            if GT_ICM(jj,kk)==255 && mask_ICM(jj,kk)==1
                 imR(jj,kk)=0;
                  imG(jj,kk)=0;
                   imB(jj,kk)=255;
                    tp_ICM=tp_ICM+1;
           elseif GT_ICM(jj,kk)==0 && mask_ICM(jj,kk)==0
               %imR(jj,kk)=255;
               %imG(jj,kk)=0;
               %imB(jj,kk)=0;
               tn_ICM=tn_ICM+1;
            elseif GT_ICM(jj,kk)==0 && mask_ICM(jj,kk)==1  
                %&& k1(jj,kk)==0 && imu(jj,kk)==0 && imd(jj,kk)==0
                %&& imu(jj,kk)==0 && imd(jj,kk)==0
             imR(jj,kk)=0;
             imG(jj,kk)=0;
              imB(jj,kk)=0;
              fp_ICM=fp_ICM+1;

             elseif GT_ICM(jj,kk)==255 && mask_ICM(jj,kk)==0
                 imR(jj,kk)=255;
             imG(jj,kk)=0;
              imB(jj,kk)=255;
                 
             fn_ICM=fn_ICM+1;
            end
            
%             
%             
%             
% %             
             if GT_TE(jj,kk)==255 && mask_TE(jj,kk)==1 
                 imR(jj,kk)=255;
                  imG(jj,kk)=0;
                   imB(jj,kk)=0;
                    tp_TE=tp_TE+1;
           elseif GT_TE(jj,kk)==0 && mask_TE(jj,kk)==0 
               %imR(jj,kk)=255;
               %imG(jj,kk)=0;
               %imB(jj,kk)=0;
               tn_TE=tn_TE+1;
            elseif GT_TE(jj,kk)==0 && mask_TE(jj,kk)==1  
                %&& k1(jj,kk)==0 && imu(jj,kk)==0 && imd(jj,kk)==0
                %&& imu(jj,kk)==0 && imd(jj,kk)==0
             imR(jj,kk)=0;
             imG(jj,kk)=0;
              imB(jj,kk)=0;
              fp_TE=fp_TE+1;
             elseif GT_TE(jj,kk)==255 && mask_TE(jj,kk)==0 %&& mask5(jj,kk)==0
             imR(jj,kk)=255;
             imG(jj,kk)=0;
             imB(jj,kk)=255;
             fn_TE=fn_TE+1;
             end
             
             
             if GT_ZP(jj,kk)==255 && mask_ZP(jj,kk)==1 
                 imR(jj,kk)=0;
                  imG(jj,kk)=255;
                   imB(jj,kk)=0;
                    tp_ZP=tp_ZP+1;
           elseif GT_ZP(jj,kk)==0 && mask_ZP(jj,kk)==0 
               %imR(jj,kk)=255;
               %imG(jj,kk)=0;
               %imB(jj,kk)=0;
               tn_ZP=tn_ZP+1;
            elseif GT_ZP(jj,kk)==0 && mask_ZP(jj,kk)==1  
                %&& k1(jj,kk)==0 && imu(jj,kk)==0 && imd(jj,kk)==0
                %&& imu(jj,kk)==0 && imd(jj,kk)==0
             imR(jj,kk)=0;
             imG(jj,kk)=0;
              imB(jj,kk)=0;
              fp_ZP=fp_ZP+1;
             elseif GT_ZP(jj,kk)==255 && mask_ZP(jj,kk)==0 %&& mask5(jj,kk)==0
             imR(jj,kk)=255;
             imG(jj,kk)=0;
             imB(jj,kk)=255;
             fn_ZP=fn_ZP+1;
             end
             
             
             
             if GT_BL(jj,kk)==1 && mask_BL(jj,kk)==1 
                 imR(jj,kk)=255;
                  imG(jj,kk)=255;
                   imB(jj,kk)=0;
                    tp_BL=tp_BL+1;
           elseif GT_BL(jj,kk)==0 && mask_BL(jj,kk)==0 
               %imR(jj,kk)=255;
               %imG(jj,kk)=0;
               %imB(jj,kk)=0;
               tn_BL=tn_BL+1;
            elseif GT_BL(jj,kk)==0 && mask_BL(jj,kk)==1  
                %&& k1(jj,kk)==0 && imu(jj,kk)==0 && imd(jj,kk)==0
                %&& imu(jj,kk)==0 && imd(jj,kk)==0
             imR(jj,kk)=0;
             imG(jj,kk)=0;
              imB(jj,kk)=0;
              fp_BL=fp_BL+1;
             elseif GT_BL(jj,kk)==1 && mask_BL(jj,kk)==0 %&& mask5(jj,kk)==0
             imR(jj,kk)=255;
             imG(jj,kk)=0;
             imB(jj,kk)=255;
             fn_BL=fn_BL+1;
             end
             
              if GT_BG(jj,kk)==255 && mask_BG(jj,kk)==1 
%                  imR(jj,kk)=0;
%                   imG(jj,kk)=255;
%                    imB(jj,kk)=0;
                    tp_BG=tp_BG+1;
           elseif GT_BG(jj,kk)==0 && mask_BG(jj,kk)==0 
               %imR(jj,kk)=255;
               %imG(jj,kk)=0;
               %imB(jj,kk)=0;
               tn_BG=tn_BG+1;
            elseif GT_BG(jj,kk)==0 && mask_BG(jj,kk)==1  
                %&& k1(jj,kk)==0 && imu(jj,kk)==0 && imd(jj,kk)==0
                %&& imu(jj,kk)==0 && imd(jj,kk)==0
%              imR(jj,kk)=0;
%              imG(jj,kk)=0;
%               imB(jj,kk)=0;
              fp_BG=fp_BG+1;
             elseif GT_BG(jj,kk)==255 && mask_BG(jj,kk)==0 %&& mask5(jj,kk)==0
%              imR(jj,kk)=255;
%              imG(jj,kk)=255;
%              imB(jj,kk)=0;
             fn_BG=fn_BG+1;
             end
             
             
% %             
% %              
% %              
% %              
% %              
% %            
            
        end
   end
   
   
%     figure,imshow(mask_ZP)
%    figure,imshow(mask_TE)
%    figure,imshow(mask_ICM)
%    figure,imshow(mask_BL)
%     figure,imshow(mask_BG)
   
   
AC_ICM=(tp_ICM+tn_ICM)/(tp_ICM+fp_ICM+tn_ICM+fn_ICM);
SE_ICM=tp_ICM/(tp_ICM+fn_ICM);
SP_ICM=tn_ICM/(tn_ICM+fp_ICM);
DI_ICM=(2*tp_ICM)/((2*tp_ICM)+fn_ICM+fp_ICM);
JA_ICM=tp_ICM/(tp_ICM+fn_ICM+fp_ICM);


% 
AC_TE=(tp_TE+tn_TE)/(tp_TE+fp_TE+tn_TE+fn_TE);
SE_TE=tp_TE/(tp_TE+fn_TE);
SP_TE=tn_TE/(tn_TE+fp_TE);
DI_TE=(2*tp_TE)/((2*tp_TE)+fn_TE+fp_TE);
JA_TE=tp_TE/(tp_TE+fn_TE+fp_TE);


AC_ZP=(tp_ZP+tn_ZP)/(tp_ZP+fp_ZP+tn_ZP+fn_ZP);
SE_ZP=tp_ZP/(tp_ZP+fn_ZP);
SP_ZP=tn_ZP/(tn_ZP+fp_ZP);
DI_ZP=(2*tp_ZP)/((2*tp_ZP)+fn_ZP+fp_ZP);
JA_ZP=tp_ZP/(tp_ZP+fn_ZP+fp_ZP);



AC_BL=(tp_BL+tn_BL)/(tp_BL+fp_BL+tn_BL+fn_BL);
SE_BL=tp_BL/(tp_BL+fn_BL);
SP_BL=tn_BL/(tn_BL+fp_BL);
DI_BL=(2*tp_BL)/((2*tp_BL)+fn_BL+fp_BL);
JA_BL=tp_BL/(tp_BL+fn_BL+fp_BL);



AC_BG=(tp_BG+tn_BG)/(tp_BG+fp_BG+tn_BG+fn_BG);
SE_BG=tp_BG/(tp_BG+fn_BG);
SP_BG=tn_BG/(tn_BG+fp_BG);
DI_BG=(2*tp_BG)/((2*tp_BG)+fn_BG+fp_BG);
% JA_BG=tp_BG/(tp_BG+fn_BG+fp_BG);

JA_BG= jaccard(logical(GT_BG),logical(mask_BG)); 

% figure,imshow(mask_BG)
  im1=cat(3,imR,imG,imB);
  
%    [rec_p,prec_p,T_pr,aucpr] = perfcurve(labels_R1(:),xx(:),1,'xCrit', 'reca', 'yCrit', 'prec');

posclass='BG';

[X,Y,T,rec] = perfcurve(labels_R1(:),xx(:),posclass,'xCrit', 'tp');
  
%    figure,imshow(mask)
%    
%           figure,imshow(mask_ICM)
% 
ImgStoreName = sprintf('%dR.bmp',ff);
  imwrite(uint8(im1),ImgStoreName)
% Er=err/tot;
  fprintf(fileID_ICM,'%s\t%s\t%s\t%s\t%s\t%s\r\n',num2str(ff),num2str(AC_ICM),num2str(SE_ICM),num2str(SP_ICM),num2str(DI_ICM),num2str(JA_ICM));
  fprintf(fileID_TE,'%s\t%s\t%s\t%s\t%s\t%s\r\n',num2str(ff),num2str(AC_TE),num2str(SE_TE),num2str(SP_TE),num2str(DI_TE),num2str(JA_TE));
  fprintf(fileID_ZP,'%s\t%s\t%s\t%s\t%s\t%s\r\n',num2str(ff),num2str(AC_ZP),num2str(SE_ZP),num2str(SP_ZP),num2str(DI_ZP),num2str(JA_ZP));
  fprintf(fileID_BL,'%s\t%s\t%s\t%s\t%s\t%s\r\n',num2str(ff),num2str(AC_BL),num2str(SE_BL),num2str(SP_BL),num2str(DI_BL),num2str(JA_BL));
  fprintf(fileID_BG,'%s\t%s\t%s\t%s\t%s\t%s\r\n',num2str(ff),num2str(AC_BG),num2str(SE_BG),num2str(SP_BG),num2str(DI_BG),num2str(JA_BG));


end



