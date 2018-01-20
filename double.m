function out = double(A)
set1 = A(1:2:end);
set2 = A(2:2:end);
set3 = A(3:2:end);


if (length(set1) == length(set2))   %Set 3 is 1 less than Set 1 & 2

    diff1 = (set1 + set2)/2;
    set3 = [set3, 0];
    diff2 = (set2 + set3)/2;
    mat = [set1' diff1' set2' diff2'];

    mat = mat';
    mat = mat(:);
    mat = mat(1:end-1);
    out = mat';
else
    last = set1(end);
    set1 = set1(1:end -1);
    diff1 = (set1 + set2)/2;
    diff2 = (set2 + set3)/2;
    mat = [set1' diff1' set2' diff2'];
    mat= mat';
    mat = mat(:);
    mat(end+1) = last;
    out = mat';
end



end
