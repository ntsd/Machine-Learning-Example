%data - mean / std

Data = csvread('regression-datasets-housing.csv');

size_row = size(Data,1);
size_col = size(Data,2);

for i=1:size_col
  x = Data(:, i);
  xMean= mean(x);
  xStd = std(x);
  for j=1:size_row
    x(j) = (x(j)-xMean)/xStd;
  end
  Data(:, i) = x;
end

csvwrite('regression-datasets-housing-normalize.csv',Data);