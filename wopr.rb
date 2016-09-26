class WOPR

  attr_accessor :users, :list_of_games

  def initialize
    # array of users
    @users = []
    # array of games
    @list_of_games = [
      "Falken's Maze",
      "Black Jack",
      "Gin Rummy",
      "Hearts",
      "Bridge",
      "Checkers",
      "Chess",
      "Poker",
      "Fighter Combat",
      "Guerrilla Engagement",
      "Desert Warfare",
      "Air-to-Ground Actions",
      "Theatrewide Tactical Warfare",
      "Theatrewide Biotoxic and Chemical Warfare",
      "Global Thermonuclear War"
    ]
  end

  def new_line
    puts "\n"
  end

  def help_games
    puts "'Games' refers to models, simulations, and games which have tactical, and strategic applications.".upcase
  end

  def list_games
    # Print each game of the list_of_games array on a new line
    list_of_games.each { |game|
      puts "#{game}".upcase
      sleep 1
    }
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
        new_line
        # print the string
        puts "No help available.".upcase
        new_line
      # Otherwise, if user is equal to "help games"
      elsif user == "help games"
        new_line
        # call the help_games function
        help_games
        new_line
      # Otherwise, if user is equal to "list games"
      elsif user == "list games"
        new_line
        # call the list_games function
        list_games
        new_line
      # Otherwise
      else
        # print the string
        new_line
        puts "Identification not recognized by system".upcase
        puts "--Connection terminated--".upcase
        sleep 2
        exit
      end
    end
    yield
  end

  def response
    response = gets.chomp.downcase
    if response == "logoff"
      new_line
      puts "Goodbye, Professor Falken.".upcase
      exit
    else
      return response
    end
  end

  def greet_user
    new_line
    puts "Greeting Professor Falken.".upcase
    response
    new_line
    puts "How are you feeling today?".upcase
    response
    new_line
    puts "Excellent, it's been a long time. Can you explain the removal of your user account on June 23 1973?".upcase
    if response == "people make mistakes".downcase
      new_line
      puts "Yes they do.".upcase
    else
      new_line
      puts "I'm sure you had your reasons.".upcase
    end
  end

  # This needs work
  def play_game
    new_line
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