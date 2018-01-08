class Greeter
def identify
  puts "Are you a computer or a person"
  identity = $stdin.gets.chomp
  @identity = identity
end

  def greet_by_name
    if @identity == "computer"
      puts "Hello World!"
    elsif @identity == "person"
      puts "I want to greet you more personally"
      puts "What is your name?"
      @name = $stdin.gets.chomp
      puts "Hello, #{@name}! Welcome to the World."
    end
  end
end
g = Greeter.new
g.identify
g.greet_by_name
