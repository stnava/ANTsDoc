ln -s r16slice.nii.gz B.nii.gz
ln -s r64slice.nii.gz A.nii.gz
antsRegistrationSyNQuick.sh -d 2 -f r16slice.nii.gz -m A.nii.gz -o RegA2B
antsApplyTransforms -d 2 -i A.nii.gz -o ADeformed.nii.gz -r B.nii.gz -t RegA2B1Warp.nii.gz -t RegA2B0GenericAffine.mat
antsApplyTransforms -d 2 -i B.nii.gz -o BDeformed.nii.gz -r A.nii.gz -t [RegA2B0GenericAffine.mat,1] -t RegA2B1InverseWarp.nii.gz 
rm RegA2B* ADeformed.nii.gz BDeformed.nii.gz A.nii.gz B.nii.gz # cleanup
