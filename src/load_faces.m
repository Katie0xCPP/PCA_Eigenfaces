function [X, labels] = load_faces(rootDir, imageSize)

    folders = dir(rootDir);
    folders = folders([folders.isdir]);
    folders = folders(~ismember({folders.name}, {'.', '..'}));

    X = [];
    labels = [];

    label = 1;

    for i = 1:length(folders)
        personDir = fullfile(rootDir, folders(i).name);
        imgs = dir(fullfile(personDir, '*.png'));

        for j = 1:length(imgs)
            path = fullfile(personDir, imgs(j).name);
            img = imread(path);

            if ndims(img) == 3
                img = rgb2gray(img);
            end

            img = imresize(img, imageSize);
            img = im2double(img);

            X = [X, img(:)];
            labels = [labels, label];
        end

        label = label + 1;
    end
end
