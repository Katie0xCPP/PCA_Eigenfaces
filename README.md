PCA Eigenfaces (Machine Learning Using Pure Linear Algebra)

This project implements a complete Eigenfaces face-recognition pipeline using Principal Component Analysis (PCA), written entirely in GNU Octave and developed inside Visual Studio Code as a fully free MATLAB-compatible workflow.

Overview

This project performs:

Image loading and preprocessing

Construction of a high-dimensional data matrix

Mean subtraction and covariance matrix computation

Eigenvalue and eigenvector decomposition

Visualization of eigenfaces

Dimensionality reduction using PCA

Classification in PCA space using k-Nearest Neighbors

Accuracy evaluation

All computation is implemented using standard linear algebra without machine learning libraries.

Tech Stack

GNU Octave

Visual Studio Code

Octave VS Code extension

MATLAB/Octave .m scripts

PNG or JPG face images

Project Structure
PCA_Eigenfaces/
  data/
    train/
    test/
  src/
    main.m
    load_faces.m
    compute_pca.m
    project_pca.m
    knn_classifier.m
  README.md


Images should be organized so that each person has their own folder inside train/ and test/.

How to Run
1. Install GNU Octave

Download from: https://octave.org/download

2. Install VS Code Extensions

Octave

(Optional) Octave Debugger

3. Configure VS Code

Open Preferences: Open User Settings (JSON) and add your Octave executable path:

"octave.executablePath": "C:\\Octave\\Octave-9.1.0\\mingw64\\bin\\octave-gui.exe"


Adjust the path based on your installation directory.

4. Open the Project Folder in VS Code
5. Run the Program

Use the VS Code run command:

Ctrl + F5


or run directly from a terminal:

octave src/main.m

Example Outputs

Running the project will produce:

Mean face visualization

Several leading eigenfaces

PCA-based projections

k-NN classification results

Overall accuracy

Features

Works entirely with free tools

MATLAB-compatible syntax

Fully implemented PCA pipeline

Easy to customize or extend

Suitable for undergraduate machine learning coursework or portfolio use
