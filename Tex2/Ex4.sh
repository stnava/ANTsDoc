dim=2
nm=output$0
antsRegistration -d $dim -r [ r16slice.nii.gz , r64slice.nii.gz ,1]  \
                         -m mattes[  r16slice.nii.gz , r64slice.nii.gz, 1 , 32, regular, 0.1 ] \
                         -t affine[ 0.1 ] \
                         -c [500x500x50,1.e-8,20]  \
                         -s 4x2x1vox  \
                         -f 3x2x1 -l 1 \
                         -m cc[  r16slice.nii.gz , r64slice.nii.gz, 1 , 4 ] \
                         -t GaussianDisplacementField[ .5, 3, 0.5 ] \
                         -c [ 50x50x50,0,5 ]  \
                        -s 1x0.5x0vox  \
                        -f 4x2x1 -l 1 -u 1 -z 1 \
                       -o [${nm},${nm}_diff.nii.gz,${nm}_inv.nii.gz]
rm output$0* # cleanup
