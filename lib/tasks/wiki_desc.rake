desc "Wikipedia Topic Intros"
task :fetch_intro => :environment do
require 'nokogiri'
require 'open-uri'
require 'pp'

url = 'https://en.wikipedia.org/wiki/Ruby'
doc = Nokogiri::HTML(open(url))
introductions = doc.css('#mw-content-text > p:nth-of-type(1)')


introductions.each do |first|
  puts first.text
end
end
