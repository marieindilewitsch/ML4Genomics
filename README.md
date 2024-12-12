# ML4Genomics

The followinng repository contains the code for projects 1 and 2 from the course 'Machine Learning for Genomics'. A short description of each project is provided below.

## Project 1

	•	Data Preprocessing: 
The primary objective of this project is to use epigenetic data, specifically ChIP-Seq and DNase-Seq data for multiple histone marks and chromatin accessibility, to develop a machine learning model that accurately predicts gene expression for unseen cell lines. The workflow was divided into three key stages: data preprocessing, model training, and evaluation. 

Data Preprocessing and feature engineering is carried out based on TSS-centered genomic windows to train an XGBoost model that will predict gene expression. Spearman's correlation on gene expression is utilized for evaluation of the model performance.



This project aimed to predict gene expression for unseen cell lines using epigenetic data. The workflow was divided into three key stages: data preprocessing, model training, and evaluation.
	•	Data Preprocessing: We used ChIP-Seq and DNase-Seq data for multiple histone marks and chromatin accessibility, integrating these with CAGE-seq gene expression data. Key decisions included selecting relevant histone marks, optimizing data normalization, and extracting features based on TSS-centered genomic windows.
	•	Model Development: Both linear and XGBoost regression models were tested, with XGBoost achieving better performance. The optimal configuration resulted in a Spearman’s correlation of ~0.789 on validation data.
	•	Evaluation: The final model was evaluated on unseen data using Spearman’s correlation, emphasizing its ability to rank gene expression accurately.

The project files include preprocessing scripts, the trained model, predictions, and an annotated Jupyter notebook outlining the methodology.

## Project 2

