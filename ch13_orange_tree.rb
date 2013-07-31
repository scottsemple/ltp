class OrangeTree
  def initialize
    @age = 0
    @height = 0
    @oranges = 0
    @oranges_last_year = 0
  end

  def height
    puts "The tree is #{@height} feet tall."
  end

  def one_year_passes
    @age += 1
    @oranges = 0

    if @age >= 5 && @age < 10
      @oranges = @oranges_last_year + rand(5..10)
      puts "The tree grew #{@oranges} oranges this year!"
      @oranges_last_year = @oranges
    elsif @age == 10
      puts "Oh, no. The tree died."
      exit
    else
      puts "No oranges yet. Maybe we'll have some oranges next year."
    end
  end

  def count_the_oranges
    puts "The tree has #{@oranges} oranges."
  end

  def pick_an_orange
    @oranges -= 1
    puts "That was yummy! Now there are #{@oranges} left."
  end
end