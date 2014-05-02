require "butternut_squash/version"
require 'httparty'

module ButternutSquash
  class Client
    include HTTParty

    def random
      return "random"
    end

    def base_url
      ""
    end
  end
end
