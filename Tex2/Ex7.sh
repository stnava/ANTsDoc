# use intensity difference with radius 0 -- radius no effect on intensity difference
antsRegistration -d 2 -m MeanSquares[r16slice.nii.gz,r64slice.nii.gz,1,0] -t \
  GaussianDisplacementField[0.5,3,0.5] -c 50x50x30 -f 4x2x1 -s 0x0x0 -o $0test.nii.gz
antsApplyTransforms -d 2 -i r64slice.nii.gz -o $0resMSQ.nii.gz -t $0test.nii.gz0Warp.nii.gz -r r16slice.nii.gz
MeasureImageSimilarity 2 0 r16slice.nii.gz $0resMSQ.nii.gz $0metricexamplelog.txt
MeasureImageSimilarity 2 1 r16slice.nii.gz $0resMSQ.nii.gz $0metricexamplelog.txt
MeasureImageSimilarity 2 2 r16slice.nii.gz $0resMSQ.nii.gz $0metricexamplelog.txt
ConvertToJpg $0resMSQ.nii.gz $0resMSQ.jpg
rm $0* # cleanup 

