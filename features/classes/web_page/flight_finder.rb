class FlightFinder < BasePage
  def initialize (driver)
    super(driver)
  end

  def screen_elements
    {:flight_finder_title => @driver.title,
     :oneway_trip_type => @driver.find_element(:css, "input[value='oneway']"),
     :roundtrip_trip_type => @driver.find_element(:css, "input[value='roundtrip']"),
     :passengers => @driver.find_element(:name, "passCount"),
     :depart_from => @driver.find_element(:name, "fromPort"),
     :month => @driver.find_element(:name, "fromMonth"),
     :date => @driver.find_element(:name, "fromDay"),
     :arrive_at => @driver.find_element(:name, "toPort"),
     :return_month => @driver.find_element(:name, "toMonth"),
     :return_date => @driver.find_element(:name, "toDay"),
     :business_class => @driver.find_element(:css, "[name='servClass'][value='Business']"),
     :coach_class => @driver.find_element(:css, "[name='servClass'][value='Coach']"),
     :first_class => @driver.find_element(:css, "[name='servClass'][value='First']"),
     :airline => @driver.find_element(:css, "[name='airline']"),
     :continue => @driver.find_element(:name, "findFlights")}
  end
end