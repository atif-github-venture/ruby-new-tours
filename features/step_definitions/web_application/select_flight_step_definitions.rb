Then(/^Select the flights on (.*) page$/) do |page_name|
  @page.select_radio_button(page_name, 'depart')
  # @page.select_radio_button(page_name, 'return')
  @page.click_button(page_name, 'continue')
end