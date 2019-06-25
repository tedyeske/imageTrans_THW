class Image
  def initialize(arr)
    @arr= arr
    
  end

  def output 
    tran= []
    @arr.each_with_index  do |i, ind|           
      i.each_with_index do |x, inx|
        if x == 1
        tran << [ind, inx]         
        end       
      end      
    end
    tran.each do |x, y|
      blur(x, y)
    end
  end
  def blur(r, c)
    @arr[r -1][c] = 1 unless r == 0
    @arr[r +1][c] = 1 unless r >= @arr.length-1
    @arr[r][c -1] = 1 unless c == 0
    @arr[r][c +1] = 1 unless c >= @arr[0].length-1
  end
  def output_image
    @arr.each_index do |i|
      sarr = @arr[i]
      sarr.each_index do |x|
        print sarr[x], ' '
      end
      print "\n"
    end
  end

end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image
puts "------"
image.output 
image.output_image
