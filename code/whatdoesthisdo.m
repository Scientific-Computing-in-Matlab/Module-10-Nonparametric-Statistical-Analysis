% This code is horrible, but it does do something useful.
%
% Your assignment is to improve the readability of the code, following good
% style guidelines. This includes proper variable naming, documentation, as well as the
% use of separate functions (all code should be defined in a single file).
%
% Your script should generate properly labeled figures.
%
% Your script should also write a single sentence (to the command prompt) that
% uses each of the numbers that are written to the command prompt in the
% example script to state the outcome of the analysis as you would in a
% paper.
%
% a contains spike counts observed in 100 trials of a neuron after
% the animal received a subanesthetic dose of ketamine
% b contains spike counts observed in 100 trials of the same neuron after
% the animal received a dose of saline


rng default
a = poissrnd(20,[100 1]);
b = poissrnd(45,[100 1]);

dstd = @(x) (diff(std(x)));
rs = bootstrp(1000,dstd,[a b]);
clf;
histogram(rs)
prm = @(x) (x(reshape(randperm(numel(x)),size(x))));
dstdn = @(x) (dstd(prm(x)));
ns = bootstrp(1000,dstdn,[a b]);
clf;
histogram(ns)
rs = dstd([a b])
rs < prctile(ns,2.5) | rs>prctile(ns,97.5)
mean(abs(rs)<abs(ns))