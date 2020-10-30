require 'pry'
class TwoFer
  def self.two_fer(name=nil)
    return "One for #{name}, one for me." unless name.nil?
    "One for you, one for me."
  end
end

