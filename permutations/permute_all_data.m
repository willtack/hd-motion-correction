imax=6^10-1;
n_permutations=100000;
<<<<<<< HEAD
load('vols/freesurfer/thalamus.mat');
volumes = thalamus ;
=======
load('vols/rthalamus.mat');
volumes = rthalamus ;
>>>>>>> c6de77d31e36318741c4c0c66c0aace80a2e30de

% generate N pseudorandom integers
X = randi(imax,[n_permutations,1]); 
% empty vector for storing diff scores in the future
D = zeros(size(X));

for i = 1:length(X)
   % convert each integer to base 6
   integer=X(i,1);
   hexi_int = dec2base(integer,6); %*
   while ~(length(hexi_int) >= 10) % generate a new random integer
       new_integer = randi(imax);
       X(i,1) = new_integer;
       hexi_int = dec2base(new_integer, 6);
   end
   % each digit of hexi_int encodes one of 6 permutations for a subject
   results = zeros(6, 4);
   for j=1:length(volumes) % for each subject
       % select the row for that subject, containing 4 volume values
       vols_vector = volumes(j,:);
       % an arrangement of volumes for every possible permutation (6 per subject) 
       C_extens = permute_vols(vols_vector);
       permut_idx = hexi_int(j); % pick permutation for the current subject based on hexi_int
       permut_idx2 = str2num(permut_idx) + 1; %#ok<ST2NM> % MATLAB indexing starts at 1...
       results(j, :) = C_extens(permut_idx2, :);
   end
   % label the first two columns 'active' and the second two 'passive'
   vols_active = results(:, 1:2);
   vols_passive = results(:, 3:4);
   % calculate the diff score across all 10 subjects
   diff = calc_diff(vols_active, vols_passive);
   D(i) = diff;
end


%*
% After you get hexi_int, do calc_diff(vols_active, vols_passive) where
% vols_active and vols_passive are nx2 matrices (n = # of digits in
% hexi_int, aka number of subjects). How to construct vols_active and
% vols_passive? we need permute_vols to assign labels for each subject
% based on hexi_int. right now, permute_vols spits out a 6x1 vector. we
% just need to modify it to output C_extens, not diff_matrix. Then we have
% a 6x4 matrix and we say the first two in the row are active and the second two are
% passive. The value of hexi_int could index that matrix to pick which permutation, 
% then we split so there's 2 1x2 matrices and concatenate all those across
% subjects to construct our vols_active and vols_passive which we then feed
% into calc_diff