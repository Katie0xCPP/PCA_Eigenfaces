# PCA Eigenfaces (Machine Learning Using Pure Linear Algebra)

This project implements a complete Eigenfaces face-recognition pipeline using Principal Component Analysis (PCA). It is written entirely in GNU Octave and developed inside Visual Studio Code as a free, MATLAB-compatible workflow.

## Overview

This project includes:
- Loading and preprocessing grayscale facial images
- Converting images into high-dimensional vectors
- Constructing the data matrix for PCA
- Computing the mean face and covariance matrix
- Performing eigenvalue and eigenvector decomposition
- Visualizing eigenfaces
- Projecting images into a lower-dimensional PCA space
- Classifying images using k-Nearest Neighbors
- Reporting test accuracy

All computations are implemented using standard linear algebra without machine learning libraries.

## Project Structure

```
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
```

Each person should have their own folder inside `data/train` and `data/test`, containing their face images.

## Requirements

- GNU Octave (free MATLAB alternative)
- Visual Studio Code
- VS Code Octave extension

## Installation

1. Install GNU Octave  
   Download from: https://octave.org/download

2. Install the "Octave" extension in VS Code.

3. Configure VS Code to use your Octave executable.  
   In VS Code, open:

   `Preferences: Open User Settings (JSON)`

   Add:

   ```json
   "octave.executablePath": "C:\\Octave\\Octave-9.1.0\\mingw64\\bin\\octave-gui.exe"
   ```

   Adjust the path to match your installation.

## Running the Project

1. Open the project folder in VS Code.
2. Place training and testing images into the correct subfolders.
3. Run the program using:

   - VS Code: press `Ctrl + F5`, or  
   - Terminal:

     ```
     octave src/main.m
     ```

## Output

The script will generate:
- The mean face
- A set of eigenfaces (principal components)
- PCA projections of training and test images
- k-NN predictions
- Overall classification accuracy

## Features

- Fully free toolchain using GNU Octave
- MATLAB-compatible `.m` scripts
- PCA implemented from first principles
- Face recognition using classical linear algebra
- Easy to extend for additional experiments

## License

This project is open-source and free to use.

