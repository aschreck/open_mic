class Joke
    attr_reader :data
    def initialize(data)
        @data = data

    end

    def id
        @data[:id]
    end 
    
    def question
        @data[:question]
    end 

    def answer
        @data[:answer]
    end 
end

