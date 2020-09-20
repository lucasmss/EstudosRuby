users = [
    {UserName: "Lucasmss", password: "Cafe2020"},
    {UserName: "Maria", password: "Cafe2020"},
    {UserName: "Teste", password: "Teste2020"}
];

def authorization (userName, password, list_of_users)

  list_of_users.each do |user_record|

    if user_record[:UserName] == userName && user_record[:password] == password
      return user_record
    else
      return puts "User or pass incorrect"
    end
  end
end

atemps = 1;

while atemps < 4

  print "UserName: "
  userName = gets.chomp

  print "PassWord: "
  password = gets.chomp

  authentica = authorization(userName, password, users)
  puts authentica

  puts 'Press n to quit or any key to continue:'
  input = gets.chomp.downcase
  
  atemps +=1

  break if input == "n"  
end