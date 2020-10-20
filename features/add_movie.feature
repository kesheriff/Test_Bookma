Feature: User can manually add a movie

    Scenario: Add a movie
        Given I am on the RP home page
        When I follow "Add new movie"
        Then I should be on the Create New Movie page
        When I fill in "Title" with "Harry Potter"
        And I select "G" from "Rating"
        And I press "Save Changes"
        Then I should be on the RP home page
        And I should see "Harry Potter"
        