require 'test_helper'

class SubscriptionMailerTest < ActionMailer::TestCase

test "should validate email address" do 

	
end

test "should send subscription notification" do 
subscription = Subscription.new
subscription = SubscriptionMailer.subscribe("rghostme@gmail.com", "dummy@kh.net", :deliver_later)
  
  assert_subscriptions 1 do
  	subscription.deliver_later
  end

 assert_equal ["rghostme@gmail.com"], email.from
 assert_equal ["dummy@kh.net"], email.to
 assert_egual 'Your subscription is set on dummy@kh.net', email.subject
 assert_equal read_fixture('subscribe').join email.body.to_s

end

end
