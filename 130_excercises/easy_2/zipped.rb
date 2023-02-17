def zip(arr1, arr2)
  zipped = []
  0.upto((arr1.size - 1)) do |ind|
    zipped << [arr1[ind], arr2[ind]]
  end
  zipped
end