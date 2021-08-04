%----------------------------------------------------------------
% Multi-view Subspace Clustering via Joint Latent Representations
%----------------------------------------------------------------
% Copyright @ Wenhua Dong, 2021
%----------------------------------------------------------------

clc; clear; close all;
addpath('./clusteringmetrics');
addpath('./dataset');
fprintf('run MSCLR:\n');

load('MSRC-V1');
lambda = 0.3; 
alpha = 100;
for numrep = 1:1
    [result(numrep,:)] = MSCLR(X,gt,lambda,alpha);
end
resultformat = 'NMI = %f, ACC = %f, AR = %f, F = %f, P = %f, R = %f\n';
fprintf(resultformat,result);
% meanresult = mean(result)
% stdresult = std(result)


%% MSRC-V1 results:
%% NMI = 0.835434, ACC = 0.914286, AR = 0.809761, F = 0.836227, P = 0.834041, R = 0.838424