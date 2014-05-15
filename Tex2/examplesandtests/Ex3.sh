bn=`basename $0`
op=output` echo $bn | cut -d '.' -f 1`
imgs=" -f r16slice.nii.gz -m r64slice.nii.gz "
antsRegistrationSyNQuick.sh -d 2 $imgs -o $op -t r
