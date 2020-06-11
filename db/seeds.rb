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
# Ruby
Course.create!(name: "Codecademy", link: "https://www.codecademy.com/learn/learn-ruby", language: ruby)
Course.create!(name: "Kitt", link: "https://kitt.lewagon.com/camps/392/lectures", language: ruby)

# HTML
Course.create!(name: "Codecademy", link: "https://www.codecademy.com/learn/learn-html", language: html)
Course.create!(name: "Kitt", link: "https://kitt.lewagon.com/camps/392/lectures", language: html)

# CSS
Course.create!(name: "Codecademy", link: "https://www.codecademy.com/learn/learn-css", language: css)
Course.create!(name: "Kitt", link: "https://kitt.lewagon.com/camps/392/lectures", language: css)

# JavaScript
Course.create!(name: "Codecademy", link: "https://www.codecademy.com/learn/introduction-to-javascript", language: javascript)
Course.create!(name: "Kitt", link: "https://kitt.lewagon.com/camps/392/lectures", language: javascript)
Course.create!(name: "JavaScript30", link: "https://javascript30.com/", language: javascript)

# React
Course.create!(name: "Kitt", link: "https://kitt.lewagon.com/knowledge/tracks/react-redux?path=01-React%2F01-Tooling&section=lecture", language: react)
Course.create!(name: "Codecademy 1", link: "https://www.codecademy.com/learn/react-101", language: react)
Course.create!(name: "Codecademy 2", link: "https://www.codecademy.com/learn/react-102", language: react)
Course.create!(name: "Scotch.io", link: "https://scotch.io/courses/10-react-challenges-beginner", language: react)
Course.create!(name: "Scotch.io", link: "https://www.freecodecamp.org/news/learn-react-hooks-by-building-a-paint-app/", language: react)

