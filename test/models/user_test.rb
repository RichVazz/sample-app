require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.new(name: "Example User", email: "user@example.com", password: "example", password_confirmation: "example")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do 
  	@user.name = ""
  	assert_not 	@user.valid?
  end

  test "mail should be present" do
  	@user.email = ""
  	assert_not @user.valid?
  end

  test "email should be unique" do
  	duplicate_user = @user.dup
  	duplicate_user.email = @user.email.upcase
  	@user.save
  	assert_not duplicate_user.valid?
  end

  test "password should be present" do
  	@user.password = @user.password_confirmation = ""
  	assert_not @user.valid?
  end

end
