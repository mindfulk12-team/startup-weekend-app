teacher = Teacher.create(
  name: 'Mr. Teacher',
  email: 'mrteacher@school.edu',
)

(1..10).each do |i|
  Student.create(
    name: "#{Faker::Name.first_name}",
    email: "#{Faker::Name.last_name}@school.edu",
    teacher: teacher,
  )
end

10.times do EmotionCloudActivity.create(
  cloud: {"surprise":0, "fear":1, "anger":1, "disgust":0, "sad":0, "happy":0})
end

10.times do JournalActivity.create(
  content: "#{Faker::Lorem.paragraph}")
end

10.times do Assignment.create(
  due: DateTime.now)
end

