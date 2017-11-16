# Convolutional Neural Networks based Super-resolution Microscopy
Localization algorithms play a significant role in determining the accuracy in super-resolution imaging. A primary challenge is that choosing the right algorithm depends on users’ prior knowledge about their specific imaging system. We introduce a method that uses convolutional neural networks to process raw images together with conventional localization algorithms to calculate fluorophore positions. This method not only significantly improves the localization accuracy and overcomes the practical limit Cramér-Rao bound of localization accuracy in low signal-to-noise ratio range, but also removes the dependence of localization accuracy on the specific algorithm being used.

## Prerequisites
  - Ubuntu 16.04
	
  - Python 2.7
  
  - TensorFlow 1.1.0
  
  - MATLAB 2013a

## Structure
  - CNN (including both training and validation phases)
  
	- Single_Symmetric
	
	- quickPALM
	
	- Double_Symmetric
	
	- Single_Asymmetric
	
  - Localization (including **RS**, **GNLLS**, **GMLE**, **Centroid**, **WLG**, and **FluoroBancroft**)
  
	- Single_Symmetric
	
	- quickPALM
	
	- Double_Symmetric
	
	- Single_Asymmetric
	
  (**RS**: radial symmetry fitting; **GNLLS**: Gaussian fitting via nonlinear least squares; **GMLE**: Gaussian fitting via maximum likelihood estimation; **Centroid**: Geometric centroid calculation; **WLG**: weighted linearized Gaussian fitting; **FluoroBancroft**: FluoroBancroft fitting.)

## Run CNN
### Training
Go to **.../CNN/xxx** (xxx is Single_Symmetric or Single_Asymmetric), open **CNN.py**, and change **data_dir** to your local directory emphasized by ####. Then right click mouse and select **Open in Terminal**. Type **python CNN.py** and press **ENTER**. The training phase will be started and the latest 5 epochs of training parameters will be saved in **.../CNN/xxx/logs**. Please note that Single_Symmetric, quickPALM, and Double_Symmetric PSFS share the same CNN model. So train the CNN model in **.../CNN/Single_Symmetric** first, copy logs file from **.../CNN/Single_Symmetric/logs** to **.../CNN/quickPALM** or **.../CNN/Double_Symmetric** and then implement corresponding validation/testing.
### Validation
Once the training phase is completed (~500 epoches). In the same terminal, type **python CNN.py --mode validate** and all CNN processed PSFs images will be saved in **.../CNN/xxx/CNN_Processed**. 

## Run Centroid Localization Algorithms
Go to **.../Localization/xxx** (xxx is Single_Symmetric, quickPALM, Double_Symmetric, or Single_Asymmetric), open **Centroid_Localization.m**, and change **Data_root** to your local directory emphasized by %%%%. Then press **F5** to run 6 localization algorithms for original and CNN processed images serially. The localization result will be saved in **centroid_localization.mat**. 

## Authors
  - Xia Huang (Ph.D. candidate, Department of Metallurgical, Materials, and Biomedical Engineering, The University of Texas at El Paso)
  
  - Wei Qian (Professor, Department of Electrical and Computer Engineering, The University of Texas at El Paso)
  
  - Chunqiang Li (Associate Professor, Department of Physics, The University of Texas at El Paso)
  
## Acknowledgements
We thank Raghuveer Parthasarathy who implemented particle centroid localization algorithms mentioned above (https://www.nature.com/articles/nmeth.2071), Abraham, A.V. et al. for making easy-to-use software **FandPLimit** available for calculating theoretical limit (http://www.wardoberlab.com/software/fandplimittool/), and developers of Python, TensorFlow, and MATLAB. 

