class WOPR

  attr_accessor :users, :list_of_games

  def initialize
    # array of users
    @users = []
    # array of games
    @list_of_games = ["Falken's Maze", "Black Jack", "Gin Rummy", "Hearts", "Bridge", "Checkers", "Chess", "Poker", "Fighter Combat", "Guerrilla Engagement", "Desert Warfare", "Air-to-Ground Actions", "Theatrewide Tactical Warfare", "Theatrewide Biotoxic and Chemical Warfare", "Global Thermonuclear War"]
  end

  def help_games
    puts "'Games' refers to models, simulations, and games which have tactical, and strategic applications.".upcase
  end

  def list_games
    # Print each game of the list_of_games array on a new line
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
        # break out of the loop
        break
      # Otherwise, if user is equal to "help"
      elsif user == "help"
        # print the string
        puts "No help available.".upcase
      # Otherwise, if user is equal to "help games"
      elsif user == "help games"
        # call the help_games function
        help_games
      # Otherwise, if user is equal to "list games"
      elsif user == "list games"
        # call the list_games function
        list_games
      # Otherwise
      else
        # print the string
        puts "Connection terminated".upcase
        # break out of the loop
        exit
      end
    end
    yield
  end

  def response
    return response = gets.chomp.downcase
  end

  def greet_user
    puts "Greeting Professor Falken.".upcase
    response
    puts "How are you feeling today?".upcase
    response
    puts "Excellent, it's been a long time. Can you explain the removal of your user account on June 23 1973?".upcase
    if response == "people make mistakes".downcase
      puts "Yes they do.".upcase
    else
      puts "I'm sure you had your reasons.".upcase
    end
  end

  # This needs work
  def play_game
    puts "Shall we play a game?".upcase
  end

  def run
    logon do
      greet_user
      sleep 1
      play_game
    end
  end

end