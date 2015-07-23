def menu_select(users_info_hash)
  puts "What would you like to do?"
  puts "1. Sign Up"
  puts "2. Login"
  selection = gets.chomp
  case selection
  when "1"
    system "clear"
    add_user(users_info_hash)
  when "2"
    system "clear"
    login(users_info_hash)
  else
    system "clear"
    puts "invalid selection. please type in a '1' or '2'. "
    menu_select(users_info_hash)
  end
end

def add_user(users_info_hash)
  #creates an empty hash to store usernames and passwords
  users_and_passwords=users_info_hash

  puts "please enter a username"
  username = gets.chomp.downcase
  
  puts "please enter a password"
  password = gets.chomp
  
  #takes user input and adds it to the hash
  users_and_passwords[username.to_sym]=password
  system "clear"
  puts users_and_passwords
  menu_select(users_and_passwords)
end

def login(users_info_hash)  
  puts "please enter a username"
  username = gets.chomp.downcase
  
  puts "please enter a password"
  password = gets.chomp
  
  if users_info_hash[username.to_sym]==password
    system "clear"
    puts "ACCESS GRANTED."
  else
    system "clear"
    puts "DENIED!!!!!"
    menu_select(users_info_hash)
  end
end

empty_hash={}
menu_select(empty_hash)