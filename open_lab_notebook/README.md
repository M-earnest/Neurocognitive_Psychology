 # Goals and Achievements of the week 


# 25.10.2022


# 01.11.2022
This week I will reorganise and annotate my githup repository to make it more visible. I also looked for an atlas that will be used to determine regions of interest. I used a paper to determine a good atlas to use based on past research papers into cortical thickness differences in individuals with and without Autism. 

# 08.11.2022
This week I aim to assess the demographic information of my data set - including the number of male and female participants, the average age, and the number of autistic vs. control participants. In addition to this I have loaded my atlas in jupyter and loaded the labels for the 150 areas of the Destrieux Atlas. 

# 15.11.2022
 This week I loaded my Atlas and established what the 150 labels are for the areas of the Atlas. I looked at some demographic data - including how many females and males there are in the sample, and how many of the participants were controls and how many were participants with Autism. I read through course content to get an idea of what the next steps will be. 

 Next Steps:
 - establish which brain images to download - aka all the female ppts and some of the male ppts
 - download images, potentially with labels like male-autism, male-control etc. 
 - demographics for the dataset downloaded

 -  for preprocessing - merge atlas with the cortical thickness data you have - converting mean area of cortical map on atlas
 --- Masked Data - nilearn documentation masker 
 - for all peopel use a small loop 

 - for participants, match the participants - males to females in order to not make it random
 aka match age, handedness maybe?, comorbidities, brain trauma, medication, 
 - manually delete checkpoints, and change git ignore

 - tip: when putting data in to the model ASSURE that its the same reihenfolge as in your dataframe

# 22.11.2022
- use pandas to pick people with similar distribution for matching, pattern matching for number of factors or use tools
- build sub data frames - and check distrbutions via this ASD and control, within these pull people out
- there are models who can handle this large class difference 
- python regressions and svm - you can put in weight when you have unrepresented groups to input more loss in the function 
- matching with demographic data, is possible need to find syntax 
- females vorverarbeiten since you need all anyway
- what isnt clear in terms of masker, look through course website 
- meeting times dienstags 9:00 
- where are my problems? Going through it on tuesday 


# 29.11.2022
- Google searches to figure out how to apply mask to my cortical thickness data
- worked through with Maren and built a mask, but the mask cannot be applied to the data to transform it
- Need to figure out why there is an error and how to fix it so the mask can be applied
- Search through and apply propensity score matching for matched group design 
- If matching and masking works, load files for participants 
- establish demographic data for the sample that will be entered into the model 
- Denisty plot? across regions and across groups
- propensity matching with tsv file - check if you have to normalise/standardise data


# 06.12.2022
- After seeking help from Peer we established that my brain images and my atlas were in different spaces
- He was able to find away to resolve this issue with the use of ANTs, which took me a while to download and install as it is quite a tedious process
- Was able to download ANTs
- Used a loop instead of psmpy to match participants
- Goal for this week is to organise jupyter notebook and download the now matched subject ids 
- Also analyse demographic data of the used participants 
- 

# 13.12.2022

# 20.12.2022

# 27.12.2022

# 03.01.2023

# 07.01.2023

# 14.01.2023


