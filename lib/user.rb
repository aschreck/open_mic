class User
  attr_reader :name
  attr_accessor :jokes
  
  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end 

  def tell(user, joke)
    user.jokes << joke
  end 

  def perform_routine_for(user)
    @jokes.each do |joke|
    user.jokes << joke
    end 
  end 

  def learn_routine(file)
    jokes = File.open(file)
    jokes.each do |line|
      joke_array = line.split(',')
      joke = Joke.new(id: joke_array[0], question: joke_array[1], answer: joke_array[2])
      @jokes << joke
    end 
    @jokes.shift
  end 
end


