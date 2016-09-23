require './wopr.rb'

wopr = WOPR.new()

# if logon returns true
if wopr.logon
  # call greet_user function
  wopr.greet_user
  # pause 1 second
  sleep 1
  # call play_game function
  wopr.play_game
end