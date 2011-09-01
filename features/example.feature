Feature: Example
  
Scenario: Example1
  When I go to the example page
  Then I should see "teste cucumber2 php"
  When I follow "link page3"
  Then I should see "Page3"
  And I should not see "Page2"
