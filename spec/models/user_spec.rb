require 'spec_helper'

describe User do

	before { @user = User.new(name: "Example User", email: "user@example.com")}

	subject {@user}

	it {should respond_to(:name)}
	it {should respond_to(:email)}


	#Test for the validation
	it {should be_valid}

	describe "When name is not present" do
		before {@user.name = " "}
		it {should_not be_valid}
	end
end
