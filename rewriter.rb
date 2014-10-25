require 'net/http'

url = "http://schedule.mozillafestival.org/api/sessions?callback=jsonp";
output = "sked.json"
resp = Net::HTTP.get(URI(url))
jsonpresp = "jsonp(" + resp + ")"

open(output, 'w'){|f| f << jsonpresp}