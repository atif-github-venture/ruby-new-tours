Given(/^Navigate to the mercury tours webpage$/) do
  @page = BasePage.new(@page)
  @page.navigate_to_application
end

And(/^Log out of the application$/) do
  @page.logout_user
end

When(/^Login as an (.*) user$/) do |user_type|
  @page.login_user_to_application user_type
end

And(/^Verify landed on (.*) Page$/) do |page|
  @page.verify_landed_page page
end