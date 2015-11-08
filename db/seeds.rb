seed_teacher = Teacher.create(
  name: 'Mr. Teacher',
  email: 'mrteacher@school.edu',
  password_digest: '1234')


(1..10).each do |i|
  seed_student_name = Faker::Name.first_name
  Student.create(
    name: seed_student_name,
    email: "#{seed_student_name}@school.edu",
    teacher: seed_teacher,
    password_digest: '1234'
  )
end

assignment_1 = Assignment.create(
  title: 'Meditation 1 Journal Reflection',
  instruction: Faker::Lorem.sentence,
  assignment_type: 'journal',
  due: DateTime.now,
  teacher: seed_teacher
)

Student.all.each do |student|
  Activity.create(
    content: { text: Faker::Lorem.paragraph },
    assignment: assignment_1,
    student: student
  )
end


# ASSIGNMENT 2
assignment_2 = Assignment.create(
  title: 'Meditation 1 Emotion Cloud',
  instruction: Faker::Lorem.sentence,
  assignment_type: 'emotion_cloud',
  due: DateTime.now,
  teacher: seed_teacher
)

assignment_3 = Assignment.create(
  title: 'How are you doing today?',
  instruction: Faker::Lorem.sentence,
  assignment_type: 'journal',
  due: DateTime.now,
  teacher: seed_teacher
)
