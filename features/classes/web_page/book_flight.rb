class BookFlight < BasePage
  def initialize (driver)
    @driver = driver
  end

  def screen_elements
    {:book_flight_title => @driver.title,
     :first_pass_first_name => @driver.find_element(:name, "passFirst0"),
     :first_pass_last_name => @driver.find_element(:name, "passLast0"),
     :first_pass_meal => @driver.find_element(:name, "pass.0.meal"),
     :second_pass_first_name => @driver.find_element(:name, "passFirst1"),
     :second_pass_last_name => @driver.find_element(:name, "passLast1"),
     :second_pass_meal => @driver.find_element(:name, "pass.1.meal"),
     :card_type => @driver.find_element(:name, "creditCard"),
     :card_number => @driver.find_element(:name, "creditnumber"),
     :expiration_year => @driver.find_element(:name, "cc_exp_dt_yr"),
     :credit_hol_first_name => @driver.find_element(:name, "cc_frst_name"),
     :credit_hol_mid_name => @driver.find_element(:name, "cc_mid_name"),
     :credit_hol_last_name => @driver.find_element(:name, "cc_last_name"),
     :secure_purchase_btn => @driver.find_element(:name, "buyFlights")}
  end
end