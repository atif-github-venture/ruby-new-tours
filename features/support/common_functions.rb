module CommonFunctions
  def self.convert_to_camel_case (str)
    str.gsub(/-|\s/, '')
  end

  def self.convert_to_snake_case (str)
    str.downcase.gsub(/-|\s/, '_')
  end
end