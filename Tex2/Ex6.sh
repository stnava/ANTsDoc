dim=2
nm=output$0
# registration is performed at a coarse 1/2 scale
antsRegistration -d $dim -r [ r16slice.nii.gz , r64slice.nii.gz ,1]  \
                         -m mattes[  r16slice.nii.gz , r64slice.nii.gz, 1 , 32 ] \
                         -m cc[  r16slice.nii.gz , r64slice.nii.gz, 0.5 , 2 ] \
                         -t SyN[ .15, 3, 0 ] \
                         -c [ 50x50x50,0,5 ]  \
                        -s 4x2x0vox  \
                        -f 2x2x2 -l 1 -u 1 -z 1 \
                       -o [${nm},${nm}_diff.nii.gz,${nm}_inv.nii.gz]
rm output$0* # cleanup
