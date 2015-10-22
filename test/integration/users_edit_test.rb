require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@user = usets(:ba)
  end

  test "unsuccessful edit" do
  	log_in_as(@user)
  	get edit_user_path(@user)
  	assert_template 'users/edit'
    patch user_path(@user), user: { name: "",
  	                                email: "ba@invalid",
  	                                password: "111",
  	                                password_confirmation: "111" }
  	assert_template 'user/edit'                                
  end

  test "successful edit" do
  	log_in_as(@user)
  	get edit_user_path(@user)
  	assert_template 'users/edit'
    name = "giangnt58"
    email = "giangnt_58@mail.com"
  	patch user_path(@user), user: {name: name,
  	                               email: email,
  	                               password: "",
  	                               password_confirmation: "" }
  	assert_not flash.empty?
  	assert_redirected_to @user
  	@user.reload
  	assert_equal name, @user.name
  	assert_equal email, @user.email                               

  end

  test "successful edit with friendly forwarding" do
    get edit_user_path(@user)
    log_in_as(@user)
    assert_redirected_to edit_user_path(@user)
    name = "giangnt_58"
    email = "giangnt@example.com"
    patch user_path(@user), user: { name: name,
                                    email: email, 
                                    password: ""
                                    password_confirmation: ""}
    assert_not flash.empty?
    assert_redirected_to @user
    @user.reload
    assert_equal name, @user.name
    assert_equal email, @user.email                               
  end
end
