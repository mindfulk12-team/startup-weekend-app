# teacher = Teacher.create(
#   name: 'Mr. Teacher',
#   email: 'mrteacher@school.edu',
# )

# (1..10).each do |i|
#   Student.create(
#     name: "#{Faker::Name.first_name}",
#     email: "#{Faker::Name.last_name}@school.edu",
#     teacher: teacher,
#   )
# end

# 10.times do EmotionCloudActivity.create(
#   cloud: {"surprise":0, "fear":1, "anger":1, "disgust":0, "sad":0, "happy":0})
# end

# 10.times do JournalActivity.create(
#   content: "#{Faker::Lorem.paragraph}")
# end

# 10.times do Assignment.create(
#   due: DateTime.now)
# end

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
    password_digest: '1234')
end

seed_assignment = Assignment.create(
  title: Faker::Company.buzzword,
  instruction: Faker::Lorem.sentence,
  assignment_type: 'journal',
  due: DateTime.now,
  teacher: seed_teacher)

Student.all.each do |student|
  Activity.create(
    content: { "surprise":0, "fear":1, "anger":1, "disgust":0, "sad":0, "happy":0 },
    assignment: seed_assignment,
    student: student
  )
end
