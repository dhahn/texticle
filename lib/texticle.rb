lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'texticle/version'
require "texticle/providers"
require "pony"

module Texticle
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
