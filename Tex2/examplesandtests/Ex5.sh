bn=`basename $0`
op=output` echo $bn | cut -d '.' -f 1`
dim=2
antsRegistration -d $dim -r [ r16slice.nii.gz , r64slice.nii.gz ,1]  \
                         -m gc[  r16slice.nii.gz , r64slice.nii.gz, 1 , 32, regular, 0.1 ] \
                         -t similarity[ 0.1 ] \
                         -c [500x500x50,1.e-8,20]  \
                         -s 4x2x1vox  \
                         -f 3x2x1 -l 1 \
                         -m mattes[  r16slice.nii.gz , r64slice.nii.gz, 1 , 48 ] \
                         -t syn[ .15, 3, 0.5 ] \
                         -c [ 50x50x50,0,5 ]  \
                        -s 1x0.5x0vox  \
                        -f 4x2x1 -l 1 -u 1 -z 1 \
                       -o [${op},${op}_diff.nii.gz,${op}_inv.nii.gz]
