class SelectFlight< BasePage
  def initialize (driver)
    super(driver)
  end

  def screen_elements
    {:select_flight_title => @driver.title,
     :depart => @driver.find_elements(:css, "[name='outFlight']")[1],
     :return => @driver.find_element(:css, "[name='inFlight']"),
     :continue => @driver.find_element(:name, "reserveFlights")}
  end
end