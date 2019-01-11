Clearance.configure do |config|
  config.routes = false
  config.mailer_sender = "written@example.com"
  config.rotate_csrf_on_sign_in = true
  config.allow_sign_up = true
  config.cookie_domain = ".example.com"
  config.cookie_expiration = lambda { |cookies| 1.year.from_now.utc }
  config.cookie_name = "remember_token"
  config.cookie_path = "/"
  config.routes = true
  config.httponly = false
  config.password_strategy = Clearance::PasswordStrategies::BCrypt
  config.redirect_url = "/"
  config.secure_cookie = false
  config.sign_in_guards = []
  config.user_model = User
  #Clearance::PasswordsController.layout "my_passwords_layout"
  #Clearance::SessionsController.layout "my_sessions_layout"
  #Clearance::UsersController.layout "my_admin_layout"
end
