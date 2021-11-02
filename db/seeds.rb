doug = User.find_by(email: "douglasmberkley@gmail.com")

unless doug
  User.create(
    email: "douglas.berkley@lewagon.org",
    password: ENV["ADMIN_PASSWORD"],
    name: "Douglas"
  )
end
