def open_browser
  case ENV['browser'].downcase
    when 'firefox'
      Selenium::WebDriver.for :firefox
    when 'chrome'
      # options = Selenium::WebDriver::Chrome::Options.new
      # options.add_argument('--ignore-certificate-errors')
      # options.add_argument('--disable-popup-blocking')
      # options.add_argument('--disable-translate')
      # Selenium::WebDriver.for :chrome, options: options
    when 'ie'
      # options = Selenium::WebDriver::IE::Options.new
      # options.add_argument('--ignore-certificate-errors')
      # options.add_argument('--disable-popup-blocking')
      # options.add_argument('--disable-translate')
      # Selenium::WebDriver.for :ie, options: options
    else
      fail 'Browser passed in the argument is not supported'
  end
end

def read_environment_variables
  $configuration_variable = YAML.load(File.open(File.absolute_path('config/configuration.yml')))
end

def read_static_data
  $static_data = YAML.load(File.open(File.absolute_path('data/static_elements.yml')))
end
