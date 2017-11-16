# Convolutional Neural Networks based Super-resolution Microscopy
Localization algorithms play a significant role in determining the accuracy in super-resolution imaging. A primary challenge is that choosing the right algorithm depends on users’ prior knowledge about their specific imaging system. We introduce a method that uses convolutional neural networks to process raw images together with conventional localization algorithms to calculate fluorophore positions. This method not only significantly improves the localization accuracy and overcomes the practical limit Cramér-Rao bound of localization accuracy in low signal-to-noise ratio range, but also removes the dependence of localization accuracy on the specific algorithm being used.

## Prerequisites
  *Python 2.7, TensorFlow 1.1.0, and Matlab 2013a*

## Structure
  - CNN (including both training and testing phases)
  
	- Single_Symmetric
	
	- quickPALM
	
	- Double_Symmetric
	
	- Single_Asymmetric
	
  - Localization (including RS, GNLLS, GMLE, Centroid, WLG, and FluoroBancroft)
  
	- Single_Symmetric
	
	- quickPALM
	
	- Double_Symmetric
	
	- Single_Asymmetric

## Run CNN
### Training
Go to .../CNN/xxx (xxx is Single_Symmetric or Single_Asymmetric), right click mouse and select "open in terminal". Type python CNN.py. The latest 5 epochs of training parameters will be saved in .../CNN/xxx/logs.
