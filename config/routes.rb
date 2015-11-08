Rails.application.routes.draw do
  root 'student#landing'

  get 'teacher/dashboard'
  get 'teacher/activities'
  get 'teacher/activities/:id', to: 'teacher#activity', as: 'teacher_activity'
  get 'teacher/students'
  get 'teacher/students/:id', to: 'teacher#student', as: 'teacher_student'
  get 'teacher/assignments'
  get 'teacher/assignments/:id', to: 'teacher#assignment', as: 'teacher_assignment'

  get 'student/dashboard'
  get 'student/assignments/:id/work', to: 'student#work', as: 'student_activity_work'
  post 'student/assignments/:id/work', to: 'student#new_work', as: 'new_student_activity_work'
end
