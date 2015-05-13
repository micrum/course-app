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
        github_user: 'shuspes',
        name: 'Sasha',
        course: courses[0],
        heroku_app: 'blog-rails-app'
    },
    {
        github_user: '01J',
        name: 'Maryna',
        course: courses[0],
        heroku_app: 'wishboard-wishboard'
    },
    {
        github_user: 'evgen1205',
        name: 'Yauhenia',
        course: courses[0],
        heroku_app: 'r1-site'
    },
    {
        github_user: 'Helga13',
        name: 'Olga',
        course: courses[0],
        heroku_app: 'photolife-0'
    },
    {
        github_user: 'shoudaos',
        name: 'Artem',
        course: courses[0],
        heroku_app: 'dream-tarantino'
    },
    {
        github_user: 'makeyeu',
        name: 'Hleb',
        course: courses[0],
        heroku_app: 'contrabass-by'
    },
    {
        github_user: 'craft37',
        name: 'Kiryl',
        course: courses[0],
        heroku_app: 'crse-app'
    },
    {
        github_user: 'belvision',
        name: 'Sergey',
        course: courses[0],
        heroku_app: 'vast-cove-9430'
    },
    {
        github_user: 'sergey77',
        name: 'Sergey',
        course: courses[0],
        heroku_app: 'top-news-viewer'
    },
    {
        github_user: 'evkor',
        name: 'Ekaterina',
        course: courses[0],
        heroku_app: 'evkor-project'
    },
    {
        github_user: 'ChernyMr',
        name: 'Nick',
        course: courses[0],
        heroku_app: 'go-out'
    },
    {
        github_user: 'varvara15',
        name: 'Varvara',
        course: courses[0],
        heroku_app: 'bngroup'
    },
    {
        github_user: 'alberteinstein',
        name: 'Albert',
        course: courses[1],
        heroku_app: nil
    }
]

students.map { |s| Student.create!(s) }
