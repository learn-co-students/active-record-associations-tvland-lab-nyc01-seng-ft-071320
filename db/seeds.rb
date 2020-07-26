Actor.delete_all
Show.delete_all
Character.delete_all

david = Actor.create(first_name: "David", last_name: "Kirsch")
roy = Actor.create(first_name: "Roy", last_name: "Flores")


joseph = Show.create(name: "Joseph")
hairspray = Show.create(name: "Hairspray")
god_spell = Show.create(name: "GodSpell")
wws = Show.create(name: "West Side Story")



fender = Character.create(name: "Fender", actor_id: Actor.all[0].id, show_id: Show.all[1].id, catchphrase: "I'm Fender and I'm on the Coney Collins Show!")
asher = Character.create(name: "Asher", actor_id: Actor.all[0].id, show_id: Show.all[0].id, catchphrase: "Joseph is at the bottom of the barrel")
jesus = Character.create(name: "Jesus", actor_id: Actor.all[1].id, show_id: Show.all[2].id, catchphrase: "God save the people")
chino = Character.create(name: "Chino", actor_id: Actor.all[1].id, show_id: Show.all[3].id, catchphrase: "He killed your brother")
joseph = Character.create(name: "Joseph", actor_id: Actor.all[1].id, show_id: Show.all[0].id, catchphrase: "Seven years of bad luck")
