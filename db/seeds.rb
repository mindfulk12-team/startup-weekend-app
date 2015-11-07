teacher = Teacher.create(
  name: 'Mr. Teacher',
  email: 'mrteacher@school.edu',
)

(1..10).each do |i|
  Student.create(
    name: "Student #{i}",
    email: "student#{i}@school.edu",
    teacher: teacher,
  )
end
