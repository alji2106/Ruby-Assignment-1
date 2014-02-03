class Dessert

## Worked with Luke Woodruff

@name = nil
@calories = nil
attr_accessor :name, :calories
    def initialize(name, calories)
		@name = name
		@calories = calories
    end

    def healthy?
		if @calories < 200 then true
		else false; end
    end

    def delicious?
		return true
    end

end

class JellyBean < Dessert
@name = nil
@calories = nil
@flavor = nil
attr_accessor :name, :calories, :flavor
    def initialize(name, calories, flavor)
		@name = name
		@calories = calories
		@flavor = flavor
    end

    def delicious?
		if @flavor == 'black licorice' then false
		else true; end
    end
end

=begin

##Test Code

cake = Dessert.new('Cake', 250)
sweet_potatoe_pie = Dessert.new('Sweet Potatoe Pie', 130)
black_licorice = JellyBean.new('black licorice', 90, 'black licorice')
strawberry = JellyBean.new('strawberry', 90, 'strawberry')
puts "Cake:"
puts cake.healthy?
puts cake.delicious?

puts "Sweet Potatoe Pie:"
puts sweet_potatoe_pie.healthy?
puts sweet_potatoe_pie.delicious?

puts "Black Licorice Jelly Bean:"
puts black_licorice.healthy?
puts black_licorice.delicious?

puts "Strawberry Jelly Bean:"
puts strawberry.healthy?
puts strawberry.delicious?
=end
