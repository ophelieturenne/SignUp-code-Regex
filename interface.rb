require_relative 'logic'

# create signUp - email & password
# ask user to put his email -> verify via regix , is email valid
# ask user to put password -> -> verify via regix , is pwd valid -> at least 8 chracter , have 1 upper case , have 1 lowercase , 1 digit

def signup_interface
  puts "welcome to signup!"
  puts "please enter your email:"
  #get email
  email = gets.chomp

  puts "please enter a password [at least 8 character , have 1 upper case , have 1 lowercase , 1 digit] :"
  #get pwd
  password = gets.chomp

  # get method to check email and password -> conditional
  # if both email and password valid -> return email and pwd
  # if not loop ->  signup_interface
  if validate_email?(email) && validate_password?(password)
    save_user(email, password)
  else
    signup_interface
  end
end

signup_interface
