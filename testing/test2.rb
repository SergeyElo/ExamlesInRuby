require './tree.rb'
require 'minitest/autorun'

class TestTree < MiniTest::Unit::TestCase
  def setup # вызывается перед выполнением каждого теста
    @items = [35, 1, 24, 2, -4, 3, 25, 4, 94, 5, 0, 6, 14, 7]
    # @items = Array.new(100) { rand(200) }
    #@items = 100.times.map { Random.rand(200) - 100 }

    @tree = Tree.new
    @items.each { |x| @tree.insert(x) }
    @result = [ ]
  end

  def test_1
    @tree.inorder { |x| print "#{x} "; @result << x } # формируем результат
    assert_equal(@items.sort, @result) # сравниваем c эталоном
  end
  def test_2
    @tree.inbackorder { |x| print "#{x} "; @result << x } # формируем результат
    assert_equal(@items.sort_by { |x| -x }, @result ) # сравниваем c эталоном
  end
end