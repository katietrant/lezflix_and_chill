User.delete_all
Show.delete_all
Character.delete_all
Ship.delete_all
Coupling.delete_all

User.create(username: "Katee", email:"katee@katee.com", password_hash:"password")
User.create(username: "Jen", email:"jen@jen.com", password_hash:"password")

Show.create(title:"Pretty Little Liars", gay_rating: 4)
Show.create(title:"Grey's Anatomy", gay_rating: 3)

emily = Character.create(name:"Emily", alive: true, show_id: 1)
alison = Character.create(name:"Alison", alive: true, show_id: 1)
callie = Character.create(name:"Callie", alive: true, show_id: 2)
arizona = Character.create(name:"Arizona", alive: true, show_id: 2)

Ship.create(mash_name:"Emison", show_id:1)
Ship.create(mash_name:"Calzona", show_id:2)

emily.couplings.create(ship_id: 1)
alison.couplings.create(ship_id: 1)
callie.couplings.create(ship_id: 2)
arizona.couplings.create(ship_id: 2)
