doug = User.find_by(email: ENV["ADMIN_EMAIL"])

unless doug
  User.create(
    email: ENV["ADMIN_EMAIL"],
    password: ENV["ADMIN_PASSWORD"],
    name: "Douglas",
    admin: true
  )
end
