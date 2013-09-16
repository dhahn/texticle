require 'spec_helper'

describe Textosterone do
  let(:options) {
  }

  describe ".text" do
    it "should work" do
      options = { :to => "212121212", 
        :body => "Hola, textosterone says hello",
        :via => :smtp,
        :via_options => {
          :address              => 'smtp.gmail.com',
          :port                 => '587',
          :enable_starttls_auto => true,
          :user_name            => "test",
          :password             => "password",
          :authentication       => :plain,
          :domain               => "gmail.com"
        }
      }

      Pony.should_receive(:mail).once.with(options)
      Textosterone.text(options)
    end
  end
end
