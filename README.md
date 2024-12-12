# ML4Genomics

The followinng repository contains the code for projects 1 and 2 from the course 'Machine Learning for Genomics'. A short description of each project is provided below.

# Project 1: Prediction of Gene Expression from Chromatin Landscape

The primary objective of this project is to predict gene expression for unseen cell lines using epigenetic data. The workflow was divided into three key stages: data preprocessing, model training, and evaluation.

## Workflow

### 1. Data Preprocessing
- Utilized ChIP-Seq and DNase-Seq data for multiple histone marks and chromatin accessibility.
- Integrated these datasets with CAGE-seq gene expression data.
- Key preprocessing steps included:
  - Selection of relevant histone marks.
  - Optimization of data normalization.
  - Feature extraction based on TSS-centered genomic windows.

### 2. Model Development
- Tested both linear and XGBoost regression models.
- XGBoost outperformed linear models, achieving optimal performance with:
  - **Spearman’s correlation**: ~0.789 on validation data.
- The final model configuration was tuned for maximum predictive accuracy.

### 3. Evaluation
- Evaluated the trained model on unseen data using Spearman’s correlation.
- Emphasis was placed on accurately ranking gene expression values.

## Project Deliverables
The project includes:
- Data preprocessing scripts.
- The trained model and predictions.
- An annotated Jupyter notebook detailing the methodology.

---


# Project 2: Bulk Deconvolution and Single-Cell Clustering

This project aimed to analyze single-cell and bulk gene expression data from patients with esophageal adenocarcinoma. Two tasks were performed: deconvolution of bulk data to estimate cell type proportions and clustering of single-cell data to identify biologically meaningful cell groups.

## Workflow

### 1. Bulk Data Deconvolution
- **Objective**: Estimate the proportions of nine cell types (e.g., T cells, B cells, NK cells) from bulk gene expression data.
- **Methodology**:
  - Scaden was used for deconvolution due to its ease of implementation.
  - Preprocessing included filtering genes present in at least 80 cells, removing low-quality cells, normalizing the data, applying a log transformation, and scaling.
  - Achieved a **mean RMSE** of 0.087 on the test data.

### 2. Single-Cell Clustering
- **Objective**: Identify clusters of biologically meaningful cell types from single-cell data.
- **Methodology**:
  - Explored various clustering techniques, starting with UMAP and PCA for dimensionality reduction.
  - Batch effects were corrected using Harmony and Scanpy's integrated tools.
  - Leiden clustering with fine-tuned parameters provided the best results, producing nine clusters at a resolution of 0.3.

## Project Deliverables
The project includes:
- Preprocessing scripts and analysis code.
- Results for deconvolution and clustering in the required file formats.
- An annotated Jupyter notebook detailing the steps and decisions.


---
