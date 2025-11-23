function pred = knn_classifier(trainProj, trainLabels, testProj, k)

    [~, m_test] = size(testProj);
    pred = zeros(1, m_test);

    for i = 1:m_test
        diffs = trainProj - testProj(:, i);
        dists = sqrt(sum(diffs .^ 2, 1));

        [~, idx] = sort(dists);
        k_idx = idx(1:k);

        pred(i) = mode(trainLabels(k_idx));
    end
end
