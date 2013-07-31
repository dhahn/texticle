lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'textosterone/version'
require "textosterone/providers"
require "pony"

module Textosterone
  def self.text(options)
    options[:to] = recipients(options[:to])
    Pony.mail(options)
  end
  
  private
    def self.recipients(numbers)
      recipients = []
      numbers = numbers.split(",") unless numbers.class == Array
      numbers.each do |number|
        PROVIDERS.each { |provider| recipients << "#{number}#{provider}" }
      end
      recipients
    end
end
