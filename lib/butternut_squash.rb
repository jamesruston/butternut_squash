require "butternut_squash/version"
require 'httparty'
require 'ruby_cowsay'

module ButternutSquash
  class Client
    include HTTParty

    def initialize(options)
      @options = options
    end

    def random
      response = self.class.get "#{base_url}random"
      output_response(response)
    end

    def output_response(response)
      if @options[:cow]
        cow = @options[:cow]
      elsif @options[:randimal]
        cow = Cow.cows.sample
      end
      if @options[:face]
        face = @options[:face]
      end
      return say_with_cow_and_face(cow, face, response) if cow && face
      return say_with_cow(cow, response) if cow
      puts response
    end

    def say_with_cow(cow, response)
      puts Cow.new({cow: cow}).say(response)
    end

    def say_with_cow_and_face(cow, face, response)
      puts "cow face"
      puts Cow.new({cow: cow, face_type: face}).say(response)
    end

    def base_url
      "http://arcane-hollows-3959.herokuapp.com/"
    end
  end
end
