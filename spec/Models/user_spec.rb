require 'rails_helper'
require 'spec_helper'


RSpec.describe User, type: :model do
    before do 
    	@user = User.create(first_name: "John", last_name: "Smith")
    end

    subject { @user }

    it "should return first and last" do
    		expect(@user.first_name).to eq "John"
    		expect(@user.last_name).to eq "Smith"
    	end
end