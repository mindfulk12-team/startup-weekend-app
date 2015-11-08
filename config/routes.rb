Rails.application.routes.draw do
  root 'teacher#dashboard'

  get 'teacher/dashboard'
  get 'teacher/activities'
  get 'teacher/activities/:id', to: 'teacher#activity', as: 'teacher_activity'
  get 'teacher/students'
  get 'teacher/students/:id', to: 'teacher#student', as: 'teacher_student'
  get 'teacher/assignments'
  get 'teacher/assignments/:id', to: 'teacher#assignment', as: 'teacher_assignment'

  get 'student/dashboard'
end
