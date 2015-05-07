# drop courses and students
puts 'Drop students...'
Student.delete_all
puts 'Drop courses...'
Course.delete_all

# create courses
puts 'Creating courses...'
mentor = Mentor.find_by_name('micrum')
courses = Course.create!([
                             { name: 'Building web applications with Ruby on Rails', mentor: mentor },
                             { name: 'HTML & CSS basics', mentor: mentor  }
                         ])

# create students
puts 'Creating students...'
students = [
    {
        github_user: 'alesdrobysh',
        name: 'Ales',
        course: courses[0],
        heroku_app: 'sleepy-lowlands-6650'
    },
    {
        github_user: 'qwerchenok',
        name: 'Alexey',
        course: courses[0],
        heroku_app: 'satdatabase'
    },
    {
        github_user: 'alberteinstein',
        name: 'Albert',
        course: courses[1],
        heroku_app: nil
    }
]

students.map { |s| Student.create!(s) }
