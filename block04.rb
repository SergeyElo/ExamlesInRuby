def give
  yield
  yield
end

give do
  puts "My block."
end
