bn=`basename $0`
bn=output` echo $bn | cut -d '.' -f 1`
ConvertToJpg r64slice.nii.gz Figures/${bn}ad1.jpg
ImageMath 2 ${bn}ad.nii.gz PeronaMalik r64slice.nii.gz 20 0.5 
ConvertToJpg ${bn}ad.nii.gz Figures/${bn}ad2.jpg
ImageMath 2 ${bn}ad.nii.gz PeronaMalik r64slice.nii.gz 200 0.5 
ConvertToJpg ${bn}ad.nii.gz Figures/${bn}ad3.jpg
