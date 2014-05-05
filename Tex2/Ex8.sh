op=output$0
dim=2
img=r16slice.nii.gz
ImageMath $dim ${op}mask.nii.gz Normalize $img
ThresholdImage $dim ${op}mask.nii.gz ${op}mask.nii.gz 0.1 1
Atropos -d $dim -x ${op}mask.nii.gz -c [3,0] -m [0.1,1x1] -i kmeans[4] \
  -o ${op}_seg.nii.gz -a $img
rm ${op}* # cleanup 

