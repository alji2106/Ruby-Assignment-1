## Worked with Luke Woodruff
## http://stackoverflow.com/questions/11352061/cartesian-product-ruby

class CartesianProduct; include Enumerable

  def initialize(xs, ys)
    @xs = xs
    @ys = ys
  end
#unless block meaning the part in brackets {} return as an enumerable
  def each
    return to_enum unless block_given?
    @xs.each do |x| 
      @ys.each { |y| yield [x, y] }
    end
  end

end
=begin

##Test code

c = CartesianProduct.new([:a,:b, :c], [4,5])

puts c.each { |elt| puts elt.inspect }
c = CartesianProduct.new([:a,:b], [])

puts c.each { |elt| puts elt.inspect }

# Nothing printed since Cartesian pr
=end
