# Convolutional Neural Networks based Super-resolution Microscopy
Localization algorithms play a significant role in determining the accuracy in super-resolution imaging. A primary challenge is that choosing the right algorithm depends on users’ prior knowledge about their specific imaging system. We introduce a method that uses convolutional neural networks to process raw images together with conventional localization algorithms to calculate fluorophore positions. This method not only significantly improves the localization accuracy and overcomes the practical limit Cramér-Rao bound of localization accuracy in low signal-to-noise ratio range, but also removes the dependence of localization accuracy on the specific algorithm being used.

## Prerequisites
  - Ubuntu 16.04
	
  - Python 2.7
  
  - TensorFlow 1.1.0
  
  - Matlab 2013a

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
Go to **.../CNN/xxx** (xxx is Single_Symmetric or Single_Asymmetric), right click mouse and select **Open in Terminal**. Type **python CNN.py**. The latest 5 epochs of training parameters will be saved in **.../CNN/xxx/logs**. Please note that Single_Symmetric, quickPALM, and Double_Symmetric PSFS share the same CNN model. So train the CNN model in **.../CNN/Single_Symmetric** first, copy logs file from **.../CNN/Single_Symmetric/logs** to **.../CNN/quickPALM** or **.../CNN/Double_Symmetric** and then implement corresponding validation/testing.
### Validation
Once the training phase is completed (~500 epoches). In the same terminal, type **python CNN.py --mode validate** and all CNN processed PSFs images will be saved in **.../CNN/xxx/CNN_Processed**. 


