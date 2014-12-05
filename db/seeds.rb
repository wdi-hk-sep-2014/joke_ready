# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = Joke.create image:"3 apples", description:"You know you're a programmer when.. you count 3 apples.", thumb_up:"0", thumb_down:"0"
a.image = File.open(File.join(Rails.root, 'db/seed_images/2_3_apples.jpg'))
a.save!

b = Joke.create image:"6 bottles of milk", description:"I came back with 6 bottles of milk.", thumb_up:"1", thumb_down:"0"
b.image = File.open(File.join(Rails.root, 'db/seed_images/10_6_bottles_of_milk.jpg'))
b.save!

c = Joke.create image:"I need a break", description:"I need a break.", thumb_up:"0", thumb_down:"0"
c.image = File.open(File.join(Rails.root, 'db/seed_images/1_i_need_a_break.jpg'))
c.save!

d = Joke.create image:"eat sleep code", description:"eat sleep code", thumb_up:"0", thumb_down:"0"
d.image = File.open(File.join(Rails.root, 'db/seed_images/3_eat_sleep_code.jpg'))
d.save!

e = Joke.create image:"didn't get array", description:"LOL", thumb_up:"0", thumb_down:"0"
e.image = File.open(File.join(Rails.root, 'db/seed_images/no_array.jpg'))
e.save!

f = Joke.create image:"programmer", description:"an organism that turns caffine into software", thumb_up:"0", thumb_down:"0"
f.image = File.open(File.join(Rails.root, 'db/seed_images/5_programmer.jpg'))
f.save!

g = Joke.create image:"I got this", description:"I got this", thumb_up:"0", thumb_down:"0"
g.image = File.open(File.join(Rails.root, 'db/seed_images/6_I_got_this.jpg'))
g.save!

h = Joke.create image:"no brain", description:"brain not found", thumb_up:"0", thumb_down:"0"
h.image = File.open(File.join(Rails.root, 'db/seed_images/7_Brain_not_found.jpg'))
h.save!

i = Joke.create image:"fix one error", description:"fix one error", thumb_up:"0", thumb_down:"0"
i.image = File.open(File.join(Rails.root, 'db/seed_images/8_fix_one_error.jpg'))
i.save!

j = Joke.create image:"goddamn semicolon", description:"goddamn semicolon", thumb_up:"0", thumb_down:"0"
j.image = File.open(File.join(Rails.root, 'db/seed_images/9_semicolon.jpg'))
j.save!

c = Vote.create ip_address:"123", joke_id:"2"

# a.image.url # => '/url/to/file.png'
# a.image.current_path # => 'path/to/file.png'
# a.image.identifier # => 'file.png'