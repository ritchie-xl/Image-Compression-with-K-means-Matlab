function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example

% Set K
K = size(centroids, 1);

idx = zeros(size(X,1), 1);

for i = 1:size(X)
    sample = X(i,:);
    sample = centroids(1,:) - sample;
    min = sample*sample';
    index = 1;
    for j =2:K
        c = centroids(j,:)-X(i,:);
        a = c*c';
        if a < min
            min = a;
            index = j;
        end
    end
    idx(i) = index;
end

end

