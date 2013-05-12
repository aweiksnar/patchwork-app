# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


categories = [
  {:title => "Sports"},
  {:title => "Programming"},
  {:title => "Cooking"},
  {:title => "Art"},
  {:title => "Music"},
]

Category.destroy_all
categories.each do |category_hash|
  c = Category.new
  c.title = category_hash[:title]
  c.save
end

topics = [
  {:title => "Hockey", :category_id => 1 },
  {:title => "Sailing", :category_id => 1},
  {:title => "Golf", :category_id => 1 },
  {:title => "Ruby", :category_id => 2},
  {:title => "HTML", :category_id => 2},
  {:title => "Python", :category_id => 2},
  {:title => "Italian", :category_id => 3 },
  {:title => "Dutch", :category_id => 3 },
  {:title => "Japanese", :category_id => 3 },
  {:title => "Painting", :category_id => 4 },
  {:title => "Drawing", :category_id => 4 },
  {:title => "Digital", :category_id => 4 },
  {:title => "Guitar", :category_id => 5},
  {:title => "Piano", :category_id => 5 },
  {:title => "Drums", :category_id => 5 },
]

Topic.destroy_all
topics.each do |topic_hash|
  t = Topic.new
  t.title = topic_hash[:title]
  t.category_id = topic_hash[:category_id]
  t.save
end

subtopics = [
  #Ruby
  {:title => "Classes", :topic_id => 4 },
  {:title => "Arrays", :topic_id => 4 },
  {:title => "Hashes", :topic_id => 4 },
  {:title => "Strings", :topic_id => 4 },
  {:title => "Data Types", :topic_id => 4 },
  #HTML
  {:title => "Elements", :topic_id => 5 },
  {:title => "Classes", :topic_id => 5 },
  {:title => "Id's", :topic_id => 5 },
  {:title => "Floats", :topic_id => 5 },
  {:title => "Clearfix", :topic_id => 5 },
]


Subtopic.destroy_all
subtopics.each do |subtopic_hash|
  s = Subtopic.new
  s.title = subtopic_hash[:title]
  s.topic_id = subtopic_hash[:topic_id]
  s.save
end

articles = [
    {:title => "Ruby Classes and Objects", :url => "http://www.tutorialspoint.com/ruby/ruby_classes.htm", :bookmark => true , :what_description => "Great page on classes and objects.", :why_description => "Essential Knowledge", :subtopic_id => 1, :level =>1},
    {:title => "Wikipedia Page on Classes", :url => "http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Classes", :bookmark => false , :what_description => "Wikipedia Entry", :why_description => "Great overview on ruby_classes", :subtopic_id => 1, :level =>2},
    {:title => "Ruby Class Tutorial", :url => "http://juixe.com/techknow/index.php/2007/01/22/ruby-class-tutorial/", :bookmark => true, :what_description => "Awesome blog entry on strings" , :why_description => "Beginner Friendly, Comprehensive Article", :subtopic_id => 1, :level =>3},
    {:title => "Tutorial on Arrays", :url => "http://www.tutorialspoint.com/ruby/ruby_arrays.htm", :bookmark => true, :what_description => "Tutorial on arrays", :why_description => "Very beginner friendly language in this article", :subtopic_id => 2, :level =>1},
    {:title => "The Basics of Ruby Arrays", :url => "http://blog.teamtreehouse.com/ruby-arrays", :bookmark => false , :what_description => "Treehouse entry", :why_description => "Fantastic learning resource for beginners", :subtopic_id => 2, :level =>2},
    {:title => "RubyDocs Arrays Page", :url => "http://ruby-doc.org/core-2.0/Array.html", :bookmark => true, :what_description => "Array Documentation", :why_description => "Resource for all array methods", :subtopic_id => 2, :level =>3},
    {:title => "Hashes", :url => "http://ruby-doc.org/core-2.0/Hash.html", :bookmark => false, :what_description => "RubyDocs on Hashes", :why_description => "Original Source Material", :subtopic_id => 3, :level =>1},
    {:title => "ZetCode: Hashes", :url => "http://zetcode.com/lang/rubytutorial/hashes/", :bookmark => true, :what_description => "AWESOME site", :why_description => "Very extensive and beginner focused site on hashes", :subtopic_id => 3, :level =>2},
    {:title => "In-Depth Look at Hashes", :url => "http://rubylearning.com/satishtalim/ruby_hashes.html", :bookmark => false, :what_description => "Interesting Article on Hashes", :why_description => "To Broaden your Knowledge", :subtopic_id => 3, :level =>3},
    {:title => "RubyDocs on Strings", :url => "http://www.ruby-doc.org/core-1.9.3/String.html", :bookmark => true, :what_description => "RubyDocs on Strings", :why_description => "Official Documentation", :subtopic_id => 4, :level =>1},
    {:title => "Tutorials on Strings", :url => "http://www.tutorialspoint.com/ruby/ruby_strings.htm", :bookmark => false, :what_description => "Tutorial", :why_description => "Great additional documentation", :subtopic_id => 4, :level =>2},
    {:title => "Wiki-Style Article on Strings", :url => "http://www.techotopia.com/index.php/Ruby_Strings_-_Creation_and_Basics", :bookmark => false, :what_description => "Extensive documentation on strings", :why_description => "User generated content", :subtopic_id => 4, :level =>3},
    {:title => "Wikibooks - Data Types", :url => "http://en.wikibooks.org/wiki/Ruby_Programming/Data_types", :bookmark => true, :what_description => "Wikibooks Documentation", :why_description => "Open-source uer-generated content", :subtopic_id => 5, :level => 1},
    {:title => "ZetCode Data Types", :url => "http://zetcode.com/lang/rubytutorial/datatypes/", :bookmark => true, :what_description => "Very extensive and easy to read article", :why_description => "It breaks data types down very well", :subtopic_id => 5, :level => 2},
    {:title => "Ruby Bacon", :url => "http://www.rubybacon.com/ruby-data-types/", :bookmark => false, :what_description => "Easy to read breakdown on ruby data types", :why_description => "Nice and clean looking site", :subtopic_id => 5, :level => 3},
    {:title => "HTML Elements", :url => "http://www.tizag.com/htmlT/elements.php", :bookmark => false, :what_description => "A true introduction to HTML elements.", :why_description => "Elements make up the foundation of HTML and this ", :subtopic_id => 6, :level => 1},
    {:title => "HTML Elements - Quackit.com", :url => "http://www.quackit.com/html/tutorial/html_elements.cfm", :bookmark => false, :what_description => "Another great intro to HTML from the creator of the language.", :why_description => "The creator has great thoughts on this.", :subtopic_id => 6, :level => 1},
    {:title => "A developer's guide to HTML5", :url => "http://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=4&cad=rja&ved=0CEAQFjAD&url=http%3A%2F%2Fwww.developerfusion.com%2Farticle%2F123608%2Fa-developers-introduction-to-html5%2F&ei=zO6PUYXtBseDyAHu24DwDw&usg=AFQjCNF5XCG4jS-uX98i6XAVKi0nkULg_A&sig2=TDs4cAK4oBlofIuUTYRoSA&bvm=bv.46340616,d.aWc", :bookmark => false, :what_description => "An introduction to the newest HTML elements.", :why_description => "HTML changes to best suit our developement needs. These are the latest changes.", :subtopic_id => 6, :level => 3},
    {:title => "CSS Tutorial - Class - Tizag Tutorials", :url => "http://www.tizag.com/cssT/class.php", :bookmark => true, :what_description => "An explanation of classes in relation to CSS.", :why_description => "Classes are heavily tied to the styling of a page through CSS.", :subtopic_id => 7, :level => 1},
    {:title => "CSS Specificity: Things You Should Know", :url => "http://coding.smashingmagazine.com/2007/07/27/css-specificity-things-you-should-know/", :bookmark => false, :what_description => "A great article on how to make class rules specific.", :why_description => "When you're learning to use classes it's difficult to see what they are affecting and how they are affecting them.", :subtopic_id => 7, :level => 2},
    {:title => "How To Use CSS3 Pseudo-Classes", :url => "http://coding.smashingmagazine.com/2011/03/30/how-to-use-css3-pseudo-classes/", :bookmark => false, :what_description => "CSS3 Psuedo Classes", :why_description => "Psuedo classes make selecting styling elements much easier.", :subtopic_id => 7, :level => 3},
    {:title => "111ID Article111", :url => "http://www.idarticle111.com", :bookmark => false, :what_description => "First article on Ids", :why_description => "A great reason why First article on Ids", :subtopic_id => 8, :level => 1},
    {:title => "222ID Article222", :url => "http://www.idarticle222.com", :bookmark => false, :what_description => "2nd article on Ids", :why_description => "A great reason why 2nd article on Ids", :subtopic_id => 8, :level => 2},
    {:title => "333ID Article333", :url => "http://www.idarticle333.com", :bookmark => false, :what_description => "3rd  article on Ids", :why_description => "A great reason why 3rd  article on Ids", :subtopic_id => 8, :level => 3},
    {:title => "111Float111", :url => "http://www.float111.com", :bookmark => true, :what_description => "1st article on floats", :why_description => "A great reason why 1st article on floats", :subtopic_id => 9, :level => 1},
    {:title => "222Float222", :url => "http://www.float222.com", :bookmark => false, :what_description => "2nd article on floats", :why_description => "A great reason why 2nd article on floats", :subtopic_id => 9, :level => 2},
    {:title => "333Float333", :url => "http://www.float333.com", :bookmark => false, :what_description => "3rd article on floats", :why_description => "A great reason why 3rd article on floats", :subtopic_id => 9, :level => 3},
    {:title => "111Clearfix111", :url => "http://www.clearfix111.com", :bookmark => false, :what_description => "1st article on clears", :why_description => "A great reason why 1st article on clears", :subtopic_id => 10, :level => 1},
    {:title => "222Clearfix222", :url => "http://www.clearfix222.com", :bookmark => true, :what_description => "2nd article on clears", :why_description => "CA great reason why 2nd article on clears", :subtopic_id => 10, :level => 2},
    {:title => "333Clearfix333", :url => "http://www.clearfix333.com", :bookmark => false, :what_description => "3rd article on clears", :why_description => "A great reason why 3rd article on clears", :subtopic_id => 10, :level => 3},
]


Article.destroy_all
articles.each do |article_hash|
  a = Article.new
  a.title = article_hash[:title]
  a.url = article_hash[:url]
  a.bookmark = article_hash[:bookmark]
  a.what_description = article_hash[:what_description]
  a.why_description = article_hash[:why_description]
  a.subtopic_id = article_hash[:subtopic_id]
  a.level = article_hash[:level]
  a.save
end

