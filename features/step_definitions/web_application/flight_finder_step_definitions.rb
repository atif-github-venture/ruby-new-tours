Then(/^Enter flight details in flight (.*) page$/) do |page_name|
  @page.select_radio_button(page_name, 'roundtrip_trip_type')
  @page.select_item(page_name, 'passengers', '2')
  @page.select_item(page_name, 'depart_from', 'London')
  @page.select_item(page_name, 'month', 'October')
  @page.select_item(page_name, 'date', '29')
  @page.select_item(page_name, 'arrive_at', 'New York')
  @page.select_item(page_name, 'return_month', 'November')
  @page.select_item(page_name, 'return_date', '10')
  @page.select_radio_button(page_name, 'business_class')
  @page.select_item(page_name, 'airline', 'Unified Airlines')
  @page.click_button(page_name, 'continue')
end