function Y = project_pca(X, meanFace, V_k)
    Xc = X - meanFace;
    Y = V_k' * Xc;
end
