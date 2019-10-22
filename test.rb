require 'nokogiri'
require 'open-uri'

url = 'https://qiita.com/search?q=ruby'

charset = nil

html = open(url) do |f|
	charset = f.charset
	f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)
doc.xpath('//img').each do |node|
	p node.attr("src")
end