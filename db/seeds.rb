puts "Cleaning database..."
TakingCourse.destroy_all
LearningLanguage.destroy_all
Course.destroy_all
Language.destroy_all
User.destroy_all

spirit_animals = ["https://image.flaticon.com/icons/png/512/1864/1864514.png", "https://image.flaticon.com/icons/svg/1864/1864482.svg", "https://image.flaticon.com/icons/svg/1864/1864481.svg", "https://image.flaticon.com/icons/svg/1864/1864521.svg", "https://image.flaticon.com/icons/svg/1864/1864475.svg", "https://image.flaticon.com/icons/svg/1864/1864508.svg", "https://image.flaticon.com/icons/svg/1864/1864527.svg", "https://image.flaticon.com/icons/svg/1864/1864488.svg"]

puts "Creating users"
steph = User.create!(username: "steph", email: "steph@email.com", password: "123456", avatar: "https://avatars3.githubusercontent.com/u/61625854?s=460&u=571abe2a475f5ac22dc6cb262a57929a0e9f4874&v=4", about: "Hi! I'm Steph, and I love everything tech!", birthday: Date.strptime("10/02/1996", "%m/%d/%Y"), spirit_animal: spirit_animals.sample)
sim = User.create!(username: "sim", email: "sim@email.com", password: "123456", avatar: "https://avatars0.githubusercontent.com/u/61063881?s=460&u=a31ffea0cf53f00c8dc1b6916e7e1f8196c8e777&v=4", about: "Hi! I'm Sim, and I love trading and coding and I would love to be able to cram my brain with coding notions as fast as possible. If someone has a solution, DM me!", birthday: Date.strptime("03/06/1995", "%m/%d/%Y"), spirit_animal: spirit_animals.sample)

puts "Creating languages"
ruby = Language.create!(name: "Ruby")
html = Language.create!(name: "HTML")
css = Language.create!(name: "CSS")
javascript = Language.create!(name: "JavaScript")
react = Language.create!(name: "React")
node = Language.create!(name: "Node")
python = Language.create!(name: "Python")

puts "Assigning languages to users"
Language.all.each do |language|
  LearningLanguage.create!(user: User.first, language: language)
  LearningLanguage.create!(user: User.second, language: language)
end

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
Course.create!(name: "Paint app", link: "https://www.freecodecamp.org/news/learn-react-hooks-by-building-a-paint-app/", language: react)
Course.create!(name: "Movie search app", link: "https://www.freecodecamp.org/news/learn-react-in-1-hour-by-building-a-movie-search-app/", language: react)

# Node
Course.create!(name: "Guru 99", link: "https://www.guru99.com/node-js-tutorial.html", language: node)
Course.create!(name: "Challenge Rocket", link: "https://challengerocket.com/nodejs-part1", language: node)

# Python
Course.create!(name: "Learn Python", link: "https://www.learnpython.org/", language: python)
Course.create!(name: "Harvard", link: "https://online-learning.harvard.edu/course/cs50s-web-programming-python-and-javascript?delta=0", language: python)
Course.create!(name: "The Great Courses Plus", link: "https://www.thegreatcoursesplus.com/how-to-program-computer-science-concepts-and-python-exercises", language: python)
Course.create!(name: "Hacker Rank", link: "https://www.hackerrank.com/domains/python", language: python)

puts "Assigning courses to users"
Course.all.each do |course|
  TakingCourse.create!(user: User.first, course: course)
  TakingCourse.create!(user: User.second, course: course)
end