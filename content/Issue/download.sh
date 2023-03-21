 ## sub in 0050005 after loading 0050003 and your path 

url = "https://fcp-indi.s3.amazonaws.com/data/Projects/ABIDE/Outputs/mindboggle_swf/mindboggle/ants_subjects/sub-0050003/antsCorticalThickness.nii.gz" 
urllib.request.urlretrieve(url, '/Users/gretivan/Desktop/sub-0050003_desc-corticalthickness.nii.gz')

 ## sub in 0050005 after loading 0050003 and your path 
url = "https://fcp-indi.s3.amazonaws.com/data/Projects/ABIDE/Outputs/fmriprep/fmriprep/sub-0050003/anat/sub-0050003_from-T1w_to-MNI152NLin2009cAsym_mode-image_xfm.h5" 
urllib.request.urlretrieve(url, '/Users/gretivan/Desktop/sub-0050003_from-T1w_to-MNI152NLin2009cAsym_mode-image_xfm.h5')

 ## load the template for the transformation 
from templateflow import api as tflow

mni152 = tflow.get('MNI152NLin2009cAsym', desc=None, resolution=1,
                    suffix='T1w', extension='nii.gz')
mni152

 ## apply bash transformation again subbing in 0050005 and own path 
 %%bash
/Users/gretivan/Desktop/ants-2.4.2/bin/antsApplyTransforms -i /Users/gretivan/Desktop/sub-0050003_desc-corticalthickness.nii.gz -r /Users/gretivan/.cache/templateflow/tpl-MNI152NLin2009cAsym/tpl-MNI152NLin2009cAsym_res-01_T1w.nii.gz -t /Users/gretivan/Desktop/sub-0050003_from-T1w_to-MNI152NLin2009cAsym_mode-image_xfm.h5 -o /Users/gretivan/Desktop/sub-0050003_space-MNI152NLin2009cAsym_desc-corticalthickness.nii.gz

## should end with a third file with this name 
- sub-0050003_space-MNI152NLin2009cAsym_desc-corticalthickness.nii.gz