bn=`basename $0`
op=output` echo $bn | cut -d '.' -f 1`
dim=2
n=3
img=r16slice.nii.gz
ImageMath $dim ${op}mask.nii.gz Normalize $img
ThresholdImage $dim ${op}mask.nii.gz ${op}mask.nii.gz 0.1 1
outvar=[${op}_segk.nii.gz,${op}_prob%0d.nii.gz] 
Atropos -d $dim -x ${op}mask.nii.gz -c [3,0] -m [0.1,1x1] -i kmeans[$n] -o $outvar -a $img
# now prior based with 2 input features
lap=${op}lap.nii.gz
ImageMath $dim $lap Laplacian $img
inputfeatures=" -a $lap -a $img "
outvar=[${op}_seg.nii.gz,${op}_prob%0d.nii.gz] 
Atropos -d $dim -x ${op}mask.nii.gz -c [3,0] -m [0.1,1x1] \
 -i priorprobabilityimages[$n,${op}_prob%0d.nii.gz,0.25] \
 -k HistogramParzenWindows -o $outvar $inputfeatures
