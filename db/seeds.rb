Subscriber.destroy_all
s1 = Subscriber.create :first_name => 'John', :last_name => 'Doe', :email => 'johndoe@ga.co', :subscription => 'Daily Deal, Save your world pack, Choose your character pack'
s2 = Subscriber.create :first_name => 'John', :last_name => 'Smith', :email => 'johnsmith@ga.co', :subscription => 'Save Your World Pack, Choose Your Character Pack'
s3 = Subscriber.create :first_name => 'James', :last_name => 'Doe', :email => 'jamesdoe@ga.co', :subscription => 'Save Your World Pack'


puts "#{ Subscriber.count } subscribers"


Admin.destroy_all
a1 = Admin.create :email => 'admin@ga.co', :password => 'chicken'

puts "#{ Admin.count } admin(s)"