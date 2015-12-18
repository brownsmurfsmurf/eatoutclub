require 'mechanize'

agent = Mechanize.new
page = agent.get("http://where-am-i.net")
elements = page.at('#lbllat')
puts elements