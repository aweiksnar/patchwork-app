class Topic < ActiveRecord::Base
  attr_accessible :title, :category_id, :description

  require 'nokogiri'
  require 'open-uri'
  require 'pp'

  has_many :subtopics
  has_many :articles, through: :subtopics
  belongs_to :category

  validates :title, :uniqueness => true
  validates :title, :presence => true

  def scrape_description(wiki_url)
    url = wiki_url
    doc = Nokogiri::HTML(open(url))
    doc.css('#mw-content-text > p:nth-of-type(1)').first.text
  end

end
