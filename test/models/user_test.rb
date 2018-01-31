require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
	 def setup
	    @user = User.new(uname: "ExampleUser", email: "user@example.com", password: "foobar", password_confirmation: "foobar")
	    @user2 = User.new(uname: "SecondExampleUser", email: "NewUser@example.com", password: "foobar", password_confirmation: "foobar")
	 end

  	test "should be valid" do
    	assert @user.valid?
    	assert @user2.valid?
  	end

 	test "name should be present" do
    	@user.uname = "     "
    	assert_not @user.valid?
  	end

  	test "email should be present" do
    	@user.email = "     "
    	assert_not @user.valid?
  	end

end
