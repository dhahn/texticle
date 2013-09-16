require 'spec_helper'

describe Textosterone do
  let(:options) {
    Hash.new(:to => number, #this can be a string or array
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
    })
  }

  describe ".text" do
    it "should work" do
      PROVIDERS = ["@test.com"]
      expect(Textosterone).to receive(:recipients).once.and_return(["212@test.com"])
      Textosterone.text("212")
    end
  end
end
