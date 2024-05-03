puts "test"

def validate_email?(email)
  # check regex , does it match ?
  email_pattern = /[\w+\-.]+@[a-z\d\-.]+\.[a-z]+/
  email.match?(email_pattern) #true/false
end

def validate_password?(password)
  # check regex , does it match ? -> conditional
  password.length >= 8 && password.match?(/[A-Z]/) && password.match?(/[a-z]/) && password.match?(/[\d]/)
end

def save_user(email, password)
  puts "Signup succesfull"
  puts "email:#{email} and password: #{password} "
end
