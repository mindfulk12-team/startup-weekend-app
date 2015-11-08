#
# PEOPLE
#

teacher = Teacher.create(
  name: 'Bill Burr',
  email: 'bill@myschool.edu',
)

(1..10).each do |i|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  full_name = "#{first_name} #{last_name}"
  email = "#{first_name.downcase}@myschool.edu"
  Student.create(
    name: full_name,
    email: email,
    teacher: teacher,
  )
end



#
# ASSIGNMENT 1
#

assignment1 = Assignment.create(
  assignment_type: 'Journal',
  due: Time.now + 10.hours,
  teacher: teacher,
)

Student.all.each do |student|
  next if student.id % 3 == 0
  Activity.create(
    content: { text: 'blah blah blah' },
    assignment: assignment1,
    student: student,
  )
end



#
# ASSIGNMENT 2
#

assignment2 = Assignment.create(
  assignment_type: 'Emotion Word Cloud',
  due: Time.now + 52.hours,
  teacher: teacher,
)

Student.all.each do |student|
  next if student.id % 4 > 0
  Activity.create(
    content: { surprise: 0, fear: 1, anger: 1, disgust: 0, sad: 0, happy: 0 },
    assignment: assignment2,
    student: student,
  )
end
