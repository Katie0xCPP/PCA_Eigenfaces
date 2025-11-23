clear; clc; close all;

%% 1. Parameters
trainDir = fullfile('../data/train');
testDir  = fullfile('../data/test');

imageSize = [64, 64];
K = 20;
k_neighbors = 3;

%% 2. Load training faces
fprintf('Loading training images...\n');
[trainData, trainLabels] = load_faces(trainDir, imageSize);

%% 3. Compute PCA (from scratch)
fprintf('Computing PCA...\n');
[meanFace, eigenvectors, eigenvalues] = compute_pca(trainData);

V_k = eigenvectors(:, 1:K);

%% 4. Show mean & eigenfaces
figure;
subplot(3,4,1);
imshow(reshape(meanFace, imageSize), []);
title('Mean Face');

for i = 1:11
    subplot(3,4,i+1);
    imshow(mat2gray(reshape(eigenvectors(:,i), imageSize)), []);
    title(['PC ', num2str(i)]);
end

%% 5. Project data into PCA space
trainProj = project_pca(trainData, meanFace, V_k);

%% 6. Load and project test data
fprintf('Loading test images...\n');
[testData, testLabels] = load_faces(testDir, imageSize);
testProj = project_pca(testData, meanFace, V_k);

%% 7. k-NN classification
predLabels = knn_classifier(trainProj, trainLabels, testProj, k_neighbors);

%% 8. Accuracy
acc = sum(predLabels == testLabels) / length(testLabels);
fprintf('Accuracy: %.2f%%\n', acc * 100);
