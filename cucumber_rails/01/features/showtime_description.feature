Feature: Showtime Descriptions

  So that I can find movies that fit my schedule
  As a movie goer
  I want to see acurate and concise showtimes

  @wip
  Scenario: Show minutes for times not ending in 00
    Given a movie 
    When I set the showtime "2007-10-10" at "2:15pm"
    Then the showtime description should be "October 10, 2007 (2:15pm)"

  Scenario: Hide minutes for times ending in 00
    Given a movie 
    When I set the showtime "2007-10-10" at "2:00pm"
    Then the showtime description should be "October 10, 2007 (2pm)"
