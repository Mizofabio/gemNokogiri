

# WEBSCRAP - Para coletar dados dentro de uma página web.

require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('example.com', 443)
https.use_ssl = true

response = https.get("/")


doc = Nokogiri::HTML(response.body) 
p = doc.at('p')
puts p   # Mostra a tag <p> e seu conteúdo
puts p.content # somente seu conteúdo