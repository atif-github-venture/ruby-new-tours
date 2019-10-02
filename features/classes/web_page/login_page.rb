class LoginPage < BasePage
  def initialize (driver)
    super(driver)
  end

  def screen_elements
    {:user_name => @driver.find_element(:name, 'userName'),
     :password_field => @driver.find_element(:name, 'password'),
     :login_button => @driver.find_element(:name, 'login')}
  end
end