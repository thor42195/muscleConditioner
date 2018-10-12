blog.seed do |s|
  s.id    = 1
  s.title  = "test1"
  s.condition = "test1@example.com"
  s.content = "testtest"
  s.user_id = 1
end

User.seed do |s|
  s.id    = 2
  s.name  = "test2"
  s.email = "test2@example.com"
  s.password_digest = "testtest"
end

User.seed do |s|
  s.id    = 3
  s.name  = "test3"
  s.email = "test3@example.com"
  s.password_digest = "testtest"
end

User.seed do |s|
  s.id    = 4
  s.name  = "test4"
  s.email = "test4@example.com"
  s.password_digest = "testtest"
end

User.seed do |s|
  s.id    = 5
  s.name  = "test5"
  s.email = "test5@example.com"
  s.password_digest = "testtest"
end
