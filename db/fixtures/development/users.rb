User.seed do |s|
  s.id    = 1
  s.name  = "test1"
  s.email = "test1@example.com"
  s.password_digest = "testtest"
end

User.seed do |s|
  s.id    = 2
  s.name  = "test2"
  s.email = "test2@example.com"
  s.password_digest = "testtest"
end
