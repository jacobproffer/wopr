require './wopr.rb'

wopr = WOPR.new()

wopr.logon do
  wopr.greet_user
  sleep 1
  wopr.play_game
end