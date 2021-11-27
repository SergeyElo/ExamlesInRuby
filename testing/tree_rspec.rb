# rspec -f d tree_rspec.rb

require './tree.rb'
RSpec.describe Tree do
  before(:example) do
    @items = [35, 1, 24, 2, -4, 3, 25, 4, 94, 5, 0, 6, 14, 7]
    #@items = 100.times.map { rand(200) - 100 }
    @tree = Tree.new; @items.each { |x| @tree.insert(x) }
  end
  it "has an accending sorted list" do
    result = []; @tree.inorder { |x| result << x }
    expect(result).to eq(@items.sort)
  end
end