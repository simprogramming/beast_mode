puts "Cleaning database..."
Language.destroy_all
User.destroy_all

puts "Creating users"
steph = User.create!(username: "steph", password: "123456")
sim = User.create!(username: "sim", password: "123456")

puts "Creating languages"
ruby = Language.create!(name: "Ruby")
html = Language.create!(name: "HTML")
css = Language.create!(name: "CSS")
javascript = Language.create!(name: "JavaScript")
react = Language.create!(name: "React")
node = Language.create!(name: "Node")
python = Language.create!(name: "Python")

puts "Creating courses"

