def help_games
  puts "'Games' refers to models, simulations, and games which have tactical, and strategic applications.".upcase
end

def list_games()
  # list of games array
  list_of_games = ["Falken's Maze", "Black Jack", "Gin Rummy", "Hearts", "Bridge", "Checkers", "Chess", "Poker", "Fighter Combat", "Guerrilla Engagement", "Desert Warfare", "Air-to-Ground Actions", "Theatrewide Tactical Warfare", "Theatrewide Biotoxic and Chemical Warfare", "Global Thermonuclear War"]
  # Print each game of the list_of_games array on a new line
  list_of_games.each do |game| puts "#{game}".upcase end
end

def logon
  # authorized_user
  authorized_user = false
  # user variable
  user = ""
  # while user is not equal to "joshua"
  while user != "joshua" && authorized_user == false
    # prompt the user to log on
    print "Logon: ".upcase
    # store user input in variable user
    user = gets.chomp.downcase
    # if user is equal to "joshua"
    if user == "joshua"
      # print the string
      puts "Greeting Professor Falken.".upcase
      # set condition of authorized_user
      authorized_user = true
      # break out of the loop
      break
    # Otherwise, if user is equal to "help"
    elsif user == "help"
      # print the string
      puts "No help available.".upcase
    # Otherwise, if user is equal to "help games"
    elsif user == "help games"
      # call the help_games function
      help_games()
    # Otherwise, if user is equal to "list games"
    elsif user == "list games"
      # call the list_games function
      list_games()
    # Otherwise
    else
      # print the string
      puts "Connection terminated".upcase
      # break out of the loop
      break
    end
  end
  return authorized_user
end

if logon()
  puts "Test passes."
end