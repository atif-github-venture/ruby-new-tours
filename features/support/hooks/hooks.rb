Before do
  @page = open_browser
end

After do
  @page.close_browser
end