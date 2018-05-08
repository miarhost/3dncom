require 'test_helper'

class TopicthreadsControllerTest < ActionDispatch::IntegrationTest
require 'test_helper'

class TopicthreadsControllerTest < ActionDispatch::IntegrationTest

setup do 
@topicthread = topicthreads(:one)
end

test 'should get index' do
get topicthreads_url 
assert_responce :success 
end

test 'should get new' do
get new_topicthread_url 
assert_responce :success
end

test 'should create new topicthread' do
 assert_difference ('Topictread.count') do
 	post topicthread_url, params: {topicthread: { } }
 end
 
 assert_redirected_to cart_url(Topicthread.last)
end 

test 'should show topicthread' do
	get topicthread_url(@topicthread)
 assert_responce :success
end 


test 'should get edit topicthread' do
	get edit_topicthread_url(@topicthread)
assert_responce :success
end

test 'should update topicthread' do
  patch topicthread_url(@topicthread), params: { topicthread: { } }
  assert_redirected_to topicthread_url(@topicthread)
end


test 'should destroy topicthread' do
assert_difference ('Topicthread.count', -1) do
delete topicthread_url(@topicthread)
end
assert_redirected_to topicthreads_url 
end

end
