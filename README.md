# ML4Genomics

The followinng repository contains the code for projects 1 and 2 from the course 'Machine Learning for Genomics'. A short description of each project is provided below.

## Project 1: Prediction of Gene Expression from Chromatin Landscape

The primary objective of this project is to predict gene expression for unseen cell lines using epigenetic data. The workflow was divided into three key stages: data preprocessing, model training, and evaluation.

### Workflow

#### 1. Data Preprocessing
- Utilized ChIP-Seq and DNase-Seq data for multiple histone marks and chromatin accessibility.
- Integrated these datasets with CAGE-seq gene expression data.
- Key preprocessing steps included:
  - Selection of relevant histone marks.
  - Optimization of data normalization.
  - Feature extraction based on TSS-centered genomic windows.

#### 2. Model Development
- Tested both linear and XGBoost regression models.
- XGBoost outperformed linear models, achieving optimal performance with:
  - **Spearman’s correlation**: ~0.789 on validation data.
- The final model configuration was tuned for maximum predictive accuracy.

#### 3. Evaluation
- Evaluated the trained model on unseen data using Spearman’s correlation.
- Emphasis was placed on accurately ranking gene expression values.

### Project Deliverables
The project includes:
- Data preprocessing scripts.
- The trained model and predictions.
- An annotated Jupyter notebook detailing the methodology.

---


## Project 2

