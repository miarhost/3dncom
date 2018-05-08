require 'test_helper'

class BranchesControllerTest < ActionDispatch::IntegrationTest

setup do
@branch = branches(:one)
end

test "should get index" do
 get branches_url 
 assert_responce :success
end 

test "should get new branch" do
	get branch_url(@branch)
    assert_responce :success
end

test "should create branch" do
 assert_difference('Branch.count') do
  post branches_url, params: { branch: {topicthread: @topicthread.brahch } }

end
assert_redirected_to branch_url(Branch.last)
end

test "should show branch" do
get branch_url(@branch)
assert_responce :success
end

test "should get edit" do
	get edit_branch_url (@branch)
 assert_responce :success
end

test "should update branch" do
	patch branch_url, params: { branch: { topicthread: @topicthread.branch } }
 assert_redirected_to branch_url(@branch)
end

test "should destroy branch" do
	assert_difference('Branch.count', -1) do
		delete branch_url(@branch)
	end 
assert_redirected_to branches_url
end

end