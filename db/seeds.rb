User.destroy_all
u1 = User.create :first_name => 'John', :last_name => 'Doe', :email => 'johndoe@ga.co', :subscription => 'audioshield, red matter 2'
u2 = User.create :first_name => 'John', :last_name => 'Smith', :email => 'johnsmith@ga.co', :subscription => 'audioshield'
u3 = User.create :first_name => 'James', :last_name => 'Doe', :email => 'jamesdoe@ga.co', :subscription => 'red matter 2'


puts "#{ User.count } users"


Admin.destroy_all
a1 = Admin.create :email => 'admin@ga.co', :password => 'chicken'

puts "#{ Admin.count } admin(s)"