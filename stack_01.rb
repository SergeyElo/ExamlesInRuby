class Stack
  def initialize
    @ref_stack = Array.new(500)
    @max_len = 500
    @tos = -1
  end
  def push(number)
    if @tos == @max_len
      puts "Error - stack is full!"
    else
      @tos = @tos + 1
      @ref_stack[@tos] = number
    end
  end
  def pop
    if @tos == -1
      puts "Error - stack empty!"
    else
      @tos = @tos -1
    end
  end
  def top
    @ref_stack[@tos]
  end
end

st = Stack.new
st.push(12)
st.push(15)
st.push(28)
puts st.top
st.pop
puts st.top

puts x = 5
