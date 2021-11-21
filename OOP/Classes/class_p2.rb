class Stack
  def initialize
    @size = 4
    @items = Array.new(@size)
    @count = 0
  end
  def kol
    @count
  end
  def mpush(item)
    if @count == @size
      @items.push(item)
    end
    @count += 1
    @items[@count] = item
  end
  def mpop
    if @count == 0
      puts "Error! Stack is empty."
    else
      @count -= 1
      @items.delete(@items.last)
    end
  end
  def mpeek
      if @count == 0
        puts "Error! Stack is empty."
      else
        @items.last
      end
  end
end

st = Stack.new
puts st.kol
st.mpush(12)
st.mpush(20)
st.mpush(25)
st.mpush(29)
st.mpush(60)
puts st.kol
puts st.mpeek
st.mpop
puts st.kol
puts st.mpeek