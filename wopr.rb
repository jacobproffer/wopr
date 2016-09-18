def logon
  # prompt the user to log on
  print "Logon: "
  # store input in variable user
  user = gets.chomp.downcase
  # if user is equal to "joshua"
  if user == "joshua"
    puts "Greeting Professor Falken.".upcase
  end
end

logon()