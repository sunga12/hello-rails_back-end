class Api::V1::GreetingsController < ApplicationController
  def random_greetings
    @random_greeting = Greeting.order('RANDOM()').first.message
    render json: @random_greeting
  end
end
