Feature:Task question mark, multiple captures and noncapturing

Scenario:Eat apples
Given I went to super market to buy 5 apples
When I eat 2 apples in the morning
    And I eat 1 apple in the afternoon

Scenario: Pay money according to type of payment
When I buy 1 bag of oranges from Hipermaxi
Then I should paid $10 through creditcard
When I purchase 2 bags of apples from Cancha
Then I should paid $20 through cash