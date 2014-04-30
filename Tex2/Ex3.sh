imgs=" -f r16slice.nii.gz -m r64slice.nii.gz "
antsRegistrationSyNQuick.sh -d 2 $imgs -o output$0 -t r
rm output$0* # cleanup
