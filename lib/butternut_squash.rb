require "butternut_squash/version"
require 'httparty'

module ButternutSquash
  class Client
    include HTTParty

    def random
      self.class.get "#{base_url}random"
    end

    def base_url
      "http://arcane-hollows-3959.herokuapp.com/"
    end
  end
end
