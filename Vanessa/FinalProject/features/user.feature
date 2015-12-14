@api_test, @user_test
Feature: API - Create User

@post_request
Scenario: Create a user
When I send a POST request to create a user with json
"""
{
  "Email": "use123r@email.com",
  "FullName": "Joe Blow",
  "Password": "pASswoRd"
}
"""
Then I expect HTTP code 200
	And I expect the user to be created
# And I expect JSON equal to
#       """
#       {
#        "ErrorMessage": "Account with this email address already exists",
#        "ErrorCode": 201
#       }
#       """

# @get_request
# Scenario: Retrieve a user
# Given I want to get a user
# When I send a GET request to /user.json with username use123r@email.com and password pASswoRd
# Then I expect HTTP code 200
# 	And I expect to retrieve that user

# @put_request
# Scenario: Update a user
# Given I want to update a user with username use123r@email.com and password pASswoRd
# When I send a PUT request to /user/[id].json with json
# """
# {
  
#   "FullName": "Alice"
# }
# """
# Then I expect HTTP code 200
# 	And I expect the user was updated

# @delete_request
# Scenario: Delete a user
# Given I want to delete a user with username use123r@email.com and password pASswoRd
# When I send a DELETE request to /user/[id].json
# Then I expect HTTP code 200
# 	And I expect the response's body has the user deleted



