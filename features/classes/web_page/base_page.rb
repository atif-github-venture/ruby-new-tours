class BasePage
  def initialize (driver)
    @driver = driver
  end

  def screen_elements
    {:logout => @driver.find_element(:css, "a[href='mercurysignoff.php']")}
  end

  def navigate_to_application
    @driver.get $configuration_variable[ENV['env'].to_sym][:url]
  end

  def login_user_to_application (user_type)
    if user_type == 'authorized'
      login_page = LoginPage.new(@driver)
      login_page.screen_elements[:user_name].send_keys $configuration_variable[ENV['env'].to_sym][:user_name]
      login_page.screen_elements[:password_field].send_keys $configuration_variable[ENV['env'].to_sym][:password]
      login_page.screen_elements[:login_button].click
    end
  end

  def logout_user
    screen_elements[:logout].click
  end

  def verify_page_title (static_title, web_element)
    expect(@driver.screen_elements[web_element.to_sym]).to be == static_title
  end

  def verify_landed_page (page_name)
    page_class = (Object.const_get(CommonFunctions.convert_to_camel_case page_name)).new @driver
    static_title = $static_data[(CommonFunctions.convert_to_snake_case page_name).to_sym][:title]
    web_element = (CommonFunctions.convert_to_snake_case page_name+ '_title')
    expect(page_class.screen_elements[web_element.to_sym]).to be == static_title
  end

  def select_radio_button (page_name, rbutton)
    set_page(page_name).screen_elements[rbutton.to_sym].click
  end

  def select_item (page_name, select_list, item)
    # set_page(page_name).screen_elements[select_list.to_sym].find_elements(:css, 'option').each do |x|
    #   if x.text == item
    #     x.click
    #     break
    #   end
    # end
    set_page(page_name).screen_elements[select_list.to_sym].find_elements(:css, 'option').each do |option|
      option.click if option.text == item
    end
  end

  def click_button (page_name, button)
    set_page(page_name).screen_elements[button.to_sym].click
  end

  def enter_text (page_name, text_box, value)
    set_page(page_name).screen_elements[text_box.to_sym].send_keys value
  end

  def set_page (page_name)
    (Object.const_get(CommonFunctions.convert_to_camel_case page_name)).new @driver
  end

  def close_browser
    @driver.quit
  end
end