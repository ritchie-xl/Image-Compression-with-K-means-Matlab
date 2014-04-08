function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.

% Useful variables
[m n] = size(X);
centroids = zeros(K, n);

n1 = 0;
n2 =  0;
n3 = 0;
for i = 1:m
    if idx(i) == 1
        n1 = n1 + 1;
        centroids(1,:) = centroids(1,:) + X(i,:);
    elseif idx(i) == 2
        n2 = n2 + 1;
        centroids(2,:) = centroids(2,:) + X(i,:);
    else
        n3 = n3 + 1;
        centroids(3,:) = centroids(3,:) + X(i,:);
    end
end

centroids(1,:) = centroids(1,:)/n1;
centroids(2,:) = centroids(2,:)/n2;
centroids(3,:) = centroids(3,:)/n3;

end

