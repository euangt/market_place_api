require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'user with a valid email should be valid' do 
    user = User.new(email: 'test@test.org', password_digest: 'test')
    assert user.valid?
  end

  test 'user with an invalid email should be invalid' do 
    user = User.new(email: 'test', password_digest: 'test')
    assert_not user.valid?
  end

  test 'user with taken email should be invalid' do 
    other_users = users(:one)
    user = User.new(email: other_users.email, password_digest: 'test')
    assert_not user.valid?
  end

  test 'destory user should destroy linked product' do 
    assert_differnce('Product.count', -1) do 
      users(:one).destroy
    end
  end
end
