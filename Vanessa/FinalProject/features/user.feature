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
  # And I expect to get that user
  # And I expect the gotten user is equal to the created user


 @get_request
 Scenario: Retrieve a user
 Given The user with json exists
"""
{
  "Email": "use123r@email.com",
  "FullName": "Joe Blow",
  "Password": "pASswoRd"
}
"""
 When I send a GET request to /user.json
 Then I expect HTTP code 200
 	And I expect the retrieved user is equal to the user that already existed

 @put_request
 Scenario: Update a user
 Given The user with json exists
"""
{
  "Email": "use123r@email.com",
  "FullName": "Joe Blow",
  "Password": "pASswoRd"
}
"""
 When I send a PUT request to update a user with json
 """
 {
   "FullName": "Alice"
 }
 """
 Then I expect HTTP code 200
   And I expect to get the updated user
   And I expect the gotten user is updated

