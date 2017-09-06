require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test

    def test_can_create_new_jokes
        joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})
        
        assert_equal 1,joke.data[:id]
        assert_equal "Why did the strawberry cross the road?" ,joke.data[:question] 
        assert_equal "Because his mother was in a jam." ,joke.data[:answer]
    end

    def test_it_can_display_id
        joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})
        
        assert_equal 1, joke.id
    end 

    def test_it_can_display_question
        joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})
        
        assert_equal "Why did the strawberry cross the road?", joke.question
    end 

    def test_it_can_display_answer
        joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})

        assert_equal "Because his mother was in a jam.", joke.answer
    end 
end

