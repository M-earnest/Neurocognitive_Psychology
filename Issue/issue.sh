

## List of subjects are a list of participant ids that were downloaded through a loop. For each subject two files were downloaded and a transformation template.

## bash command for applying transformation to one ppts
%%bash
/Users/gretivan/Desktop/ants-2.4.2/bin/antsApplyTransforms -i /Users/gretivan/Desktop/sub-0050003_desc-corticalthickness.nii.gz -r /Users/gretivan/.cache/templateflow/tpl-MNI152NLin2009cAsym/tpl-MNI152NLin2009cAsym_res-01_T1w.nii.gz -t /Users/gretivan/Desktop/sub-0050003_from-T1w_to-MNI152NLin2009cAsym_mode-image_xfm.h5 -o /Users/gretivan/Desktop/sub-0050003_space-MNI152NLin2009cAsym_desc-corticalthickness.nii.gz

## bash loop for applying the transformation to all subjects in success_ful download list 

%%bash -s "$successful_download"

for subject in $1
do
echo $subject
/Users/gretivan/Desktop/ants-2.4.2/bin/antsApplyTransforms -i /Users/gretivan/Desktop/Neuro_data/sub-00${subject}_desc-corticalthickness.nii.gz -r /Users/gretivan/.cache/templateflow/tpl-MNI152NLin2009cAsym/tpl-MNI152NLin2009cAsym_res-01_T1w.nii.gz -t /Users/gretivan/Desktop/Neuro_data/sub-00${subject}_from-T1w_to-MNI152NLin2009cAsym_mode-image_xfm.h5 -o /Users/gretivan/Desktop/Neuro_data/sub-00${subject}_space-MNI152NLin2009cAsym_desc-corticalthickness.nii.gz
done