def help_games
  puts "'Games' refers to models, simulations, and games which have tactical, and strategic applications.".upcase
end

def list_games()
  list_of_games = ["Falken's Maze", "Black Jack", "Gin Rummy", "Hearts", "Bridge", "Checkers", "Chess", "Poker", "Fighter Combat", "Guerrilla Engagement", "Desert Warfare", "Air-to-Ground Actions", "Theatrewide Tactical Warfare", "Theatrewide Biotoxic and Chemical Warfare", "Global Thermonuclear War"]
  list_of_games.each do |game| puts "#{game}".upcase end
end

def logon
  # user variable
  user = ""
  # while user is not equal to "joshua"
  while user != "joshua"
    # prompt the user to log on
    print "Logon: ".upcase
    # store user input in variable user
    user = gets.chomp.downcase
    # if user is equal to "joshua"
    if user == "joshua"
      # print the string
      puts "Greeting Professor Falken.".upcase
      # break out of the loop
      break
    # if user is equal to "help"
    elsif user == "help"
      puts "No help available.".upcase
    elsif user == "help games"
      help_games()
    elsif user == "list games"
      list_games()
    else
      puts "Connection terminated".upcase
      break
    end
  end
end

logon()