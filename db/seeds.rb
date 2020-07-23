require "pry"
Actor.destroy_all
Character.destroy_all
Network.destroy_all
Show.destroy_all

peter = Actor.create(:first_name => "Peter", :last_name => "Dinklage")
tyrion = Character.create(:name => "Tyrion Lannister")
tyrion.actor = peter
hbo = Network.create(:call_letters => "HBO", :channel => 300)
thrones = Show.create(:name => "Game of Thrones", :network_id => 2, :day => "Friday", :season => "Winter", :genre => "Action")
# tyrion.show = thrones
# tyrion.save

peter.list_roles

# tyrion.build_network

# community = Show.create(:name => "Community", :day => "Thursday", :season => "Winter")

thrones.build_network