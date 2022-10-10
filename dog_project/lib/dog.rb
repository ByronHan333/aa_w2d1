class Dog
  def initialize(name, breed, age, bark, favorite_foods)
    @name = name
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods
  end

  attr_accessor :age, :breed
  attr_reader :name, :favorite_foods

  def bark
    if @age > 3
      @bark.upcase
    else
      @bark.downcase
    end
  end

  def favorite_food?(str)
    @favorite_foods.map(&:downcase).include?(str.downcase)
  end
end
