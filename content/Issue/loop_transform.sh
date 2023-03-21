#! /bin/bash
list_subjects=("50005") 
 
subject=50005 
/Users/gretivan/Desktop/ants-2.4.2/bin/antsApplyTransforms -i /Users/gretivan/Desktop/Neuro_data/sub-00${subject}_desc-corticalthickness.nii.gz -r /Users/gretivan/.cache/templateflow/tpl-MNI152NLin2009cAsym/tpl-MNI152NLin2009cAsym_res-01_T1w.nii.gz -t /Users/gretivan/Desktop/Neuro_data/sub-00${subject}_from-T1w_to-MNI152NLin2009cAsym_mode-image_xfm.h5 -o /Users/gretivan/Desktop/Neuro_data/sub-00${subject}_space-MNI152NLin2009cAsym_desc-corticalthickness.nii.gz

for subject in ${list_subjects[*]}
do
  /Users/gretivan/Desktop/ants-2.4.2/bin/antsApplyTransforms -i /Users/gretivan/Desktop/Neuro_data/sub-00${subject}_desc-corticalthickness.nii.gz -r /Users/gretivan/.cache/templateflow/tpl-MNI152NLin2009cAsym/tpl-MNI152NLin2009cAsym_res-01_T1w.nii.gz -t /Users/gretivan/Desktop/Neuro_data/sub-00${subject}_from-T1w_to-MNI152NLin2009cAsym_mode-image_xfm.h5 -o /Users/gretivan/Desktop/Neuro_data/sub-00${subject}_space-MNI152NLin2009cAsym_desc-corticalthickness.nii.gz
done