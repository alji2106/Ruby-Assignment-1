## Worked with Luke Woodruff

class HelloWorldClass
    def initialize(name)
       @name = name.capitalize
    end
    def sayHi
        puts "Hello #{@name}!"
    end
end

hello = HelloWorldClass.new("Alix")
hello.sayHi
