bn=`basename $0`
op=output` echo $bn | cut -d '.' -f 1`
antsRegistrationSyNQuick.sh -d 2 -f r16slice.nii.gz -m r64slice.nii.gz -o $op -t sr
