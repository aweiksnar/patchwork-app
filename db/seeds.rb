# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
users = User.create([{ id: "1", email: "a@a.com", username: "alex", password: "123"},{ id: "2", email: "c@c.com", username: "cole", password: "123"}])


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
  {:title => "Hockey", :category_id => 1, :description => "Ice hockey, commonly referred to by its North American fans as Hockey, is a team sport played on ice, in which skaters use wooden or composite sticks to shoot a hard rubber hockey puck into their opponent's net to score points. In Canada and the United States, where the sport is very popular, it is known simply as hockey; however, the name ice hockey is used by the governing body IIHF and in most other countries. There the word hockey is generally reserved for another form of the sport, such as field hockey or roller hockey. The game is played between two teams with six players (five skaters and a goalie) on the ice. A team usually consists of four lines of three forwards, three pairs of defensemen, and two goalies. Five members of each team skate up and down the ice trying to take the puck and score a goal against the opposing team. Each team has a goaltender who tries to stop the puck from going into the goal or net." },
  {:title => "Sailing", :category_id => 1, :description => "Sailing is the propulsion of a vehicle and the control of its movement with large (usually fabric) foils called sails. By changing the rigging, rudder, and sometimes the keel or centreboard, a sailor manages the force of the wind on the sails in order to move the vessel relative to its surrounding medium (typically water, but also land and ice) and change its direction and speed. Mastery of the skill requires experience in varying wind and sea conditions, as well as knowledge concerning sailboats themselves and an understanding of ones surroundings."},
  {:title => "Golf", :category_id => 1, :description => "Golf is a precision club and ball sport in which competing players (or golfers) use many types of clubs to hit balls into a series of holes on a course using the fewest number of strokes. Golf is defined, in the rules of golf, as playing a ball with a club from the teeing ground into the hole by a stroke or successive strokes in accordance with the Rules." },
  {:title => "Ruby", :category_id => 2, :description => "A ruby is a pink to blood-red colored gemstone, a variety of the mineral corundum (aluminium oxide). The red color is caused mainly by the presence of the element chromium. Its name comes from ruber, Latin for red. Other varieties of gem-quality corundum are called sapphires. The ruby is considered one of the four precious stones, together with the sapphire, the emerald, and the diamond."},
  {:title => "HTML", :category_id => 2, :description => "HyperText Markup Language (HTML) is the main markup language for creating web pages and other information that can be displayed in a web browser."},
  {:title => "Python", :category_id => 2, :description => "Python is a general-purpose, high-level programming language whose design philosophy emphasizes code readability. Python's syntax allows programmers to express concepts in fewer lines of code than would be possible in languages such as C,[11][12] and the language provides constructs intended to enable clear programs on both a small and large scale.[13]" },
  {:title => "Italian", :category_id => 3, :description => "Italian ( italiano or lingua italiana) is a Romance language spoken mainly in Europe: Italy, Switzerland, San Marino, Vatican City, by minorities in Malta, Monaco, Croatia, Slovenia, France, Libya, Eritrea, and Somalia,[3] and by expatriate communities in the Americas and Australia. Many speakers are native bilinguals of both standardised Italian and other regional languages.[4]" },
  {:title => "Dutch", :category_id => 3, :description => "Dutch is a West Germanic language and the native language of most of the population of the Netherlands, and about sixty percent of the populations of Belgium and Suriname, the three member states of the Dutch Language Union. Most speakers live in the European Union, where it is a first language for about 23 million and a second language for another 5 million people.[1][2] It also holds official status in the Caribbean island nations of Aruba, Curaçao, and Sint Maarten, while historical minorities remain in parts of France and Germany, and to a lesser extent, in Indonesia,[n 1] and up to half a million native Dutch speakers may be living in the United States, Canada, and Australia.[n 2] The Cape Dutch dialects of Southern Africa have been standardised into Afrikaans, a mutually intelligible daughter language of Dutch[n 3] which today is spoken to some degree by an estimated total of 15 to 23 million people in South Africa and Namibia."},
  {:title => "Japanese", :category_id => 3, :description => "Japanese  is an East Asian language spoken by about 125 million speakers, primarily in Japan, where it is the national language. It is a member of the Japonic (or Japanese-Ryukyuan) language family, whose relation to other language groups, particularly to Korean and the suggested Altaic language family, is debated." },
  {:title => "Painting", :category_id => 4, :description => "Painting is the practice of applying paint, pigment, color or other medium[1] to a surface (support base). The medium is commonly applied to the base with a brush but other implements, such as knives, sponges, and airbrushes, can be used. In art, the term painting describes both the act and the result of the action. However, painting is also used outside of art as a common trade among craftsmen and builders. Paintings may have for their support such surfaces as walls, paper, canvas, wood, glass, lacquer, clay, leaf, copper or concrete, and may incorporate multiple other materials including sand, clay, paper, gold leaf as well as objects." },
  {:title => "Drawing", :category_id => 4, :description => "Drawing is a form of visual art that makes use of any number of drawing instruments to mark a two-dimensional medium. Instruments used include graphite pencils, pen and ink, inked brushes, wax color pencils, crayons, charcoal, chalk, pastels, various kinds of erasers, markers, styluses, and various metals (such as silverpoint). An artist who practices or works in drawing may be called a draftsman or draughtsman.[1]" },
  {:title => "Digital", :category_id => 4, :description => "A digital system is a technology that uses discrete, discontinuous representations of information or works in a discontinuous manner. This is contrasted with continuous, or analog systems which behave in a continuous manner, or represent information using a continuous function."  },
  {:title => "Guitar", :category_id => 5, :description => "The guitar is a string instrument of the chordophone family constructed from wood and strung with either nylon or steel strings. The modern guitar was preceded by the lute, vihuela, four-course renaissance guitar and five-course baroque guitar, all of which contributed to the development of the modern six-string instrument."},
  {:title => "Piano", :category_id => 5, :description => "The piano is a musical instrument played by means of a keyboard. It is one of the most popular instruments in the world. Widely used in classical and jazz music for solo performances, ensemble use, chamber music and accompaniment, the piano is also popular as a tool for composing and rehearsal. Although not portable and often expensive, the piano's versatility and ubiquity have made it one of the world's most familiar musical instruments."  },
  {:title => "Drums", :category_id => 5, :description =>"A drum kit, drum set[1] or trap set is a collection of drums and other percussion instruments set up to be played by a single player."  },
]

Topic.destroy_all
topics.each do |topic_hash|
  t = Topic.new
  t.title = topic_hash[:title]
  t.category_id = topic_hash[:category_id]
  t.description = topic_hash[:description]
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
    {:title => "Ruby Classes and Objects", :url => "http://www.tutorialspoint.com/ruby/ruby_classes.htm", :bookmark => true , :description => "Great page on classes and objects.", :subtopic_id => 1, :level =>1},
    {:title => "Wikipedia Page on Classes", :url => "http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Classes", :bookmark => false , :description => "Wikipedia Entry", :subtopic_id => 1, :level =>2},
    {:title => "Ruby Class Tutorial", :url => "http://juixe.com/techknow/index.php/2007/01/22/ruby-class-tutorial/", :bookmark => true, :description => "Awesome blog entry on strings" , :subtopic_id => 1, :level =>3},
    {:title => "Tutorial on Arrays", :url => "http://www.tutorialspoint.com/ruby/ruby_arrays.htm", :bookmark => true, :description => "Tutorial on arrays", :subtopic_id => 2, :level =>1},
    {:title => "The Basics of Ruby Arrays", :url => "http://blog.teamtreehouse.com/ruby-arrays", :bookmark => false , :description => "Treehouse entry", :subtopic_id => 2, :level =>2},
    {:title => "RubyDocs Arrays Page", :url => "http://ruby-doc.org/core-2.0/Array.html", :bookmark => true, :description => "Array Documentation", :subtopic_id => 2, :level =>3},
    {:title => "Hashes", :url => "http://ruby-doc.org/core-2.0/Hash.html", :bookmark => false, :description => "RubyDocs on Hashes", :subtopic_id => 3, :level =>1},
    {:title => "ZetCode: Hashes", :url => "http://zetcode.com/lang/rubytutorial/hashes/", :bookmark => true, :description => "AWESOME site", :subtopic_id => 3, :level =>2},
    {:title => "In-Depth Look at Hashes", :url => "http://rubylearning.com/satishtalim/ruby_hashes.html", :bookmark => false, :description => "Interesting Article on Hashes", :subtopic_id => 3, :level =>3},
    {:title => "RubyDocs on Strings", :url => "http://www.ruby-doc.org/core-1.9.3/String.html", :bookmark => true, :description => "RubyDocs on Strings", :subtopic_id => 4, :level =>1},
    {:title => "Tutorials on Strings", :url => "http://www.tutorialspoint.com/ruby/ruby_strings.htm", :bookmark => false, :description => "Tutorial", :subtopic_id => 4, :level =>2},
    {:title => "Wiki-Style Article on Strings", :url => "http://www.techotopia.com/index.php/Ruby_Strings_-_Creation_and_Basics", :bookmark => false, :description => "Extensive documentation on strings", :subtopic_id => 4, :level =>3},
    {:title => "Wikibooks - Data Types", :url => "http://en.wikibooks.org/wiki/Ruby_Programming/Data_types", :bookmark => true, :description => "Wikibooks Documentation", :subtopic_id => 5, :level => 1},
    {:title => "ZetCode Data Types", :url => "http://zetcode.com/lang/rubytutorial/datatypes/", :bookmark => true, :description => "Very extensive and easy to read article", :subtopic_id => 5, :level => 2},
    {:title => "Ruby Bacon", :url => "http://www.rubybacon.com/ruby-data-types/", :bookmark => false, :description => "Easy to read breakdown on ruby data types", :subtopic_id => 5, :level => 3},
    {:title => "HTML Elements", :url => "http://www.tizag.com/htmlT/elements.php", :bookmark => false, :description => "A true introduction to HTML elements.", :subtopic_id => 6, :level => 1},
    {:title => "HTML Elements - Quackit.com", :url => "http://www.quackit.com/html/tutorial/html_elements.cfm", :bookmark => false, :description => "Another great intro to HTML from the creator of the language.", :subtopic_id => 6, :level => 1},
    {:title => "A developer's guide to HTML5", :url => "http://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=4&cad=rja&ved=0CEAQFjAD&url=http%3A%2F%2Fwww.developerfusion.com%2Farticle%2F123608%2Fa-developers-introduction-to-html5%2F&ei=zO6PUYXtBseDyAHu24DwDw&usg=AFQjCNF5XCG4jS-uX98i6XAVKi0nkULg_A&sig2=TDs4cAK4oBlofIuUTYRoSA&bvm=bv.46340616,d.aWc", :bookmark => false, :description => "An introduction to the newest HTML elements.", :subtopic_id => 6, :level => 3},
    {:title => "CSS Tutorial - Class - Tizag Tutorials", :url => "http://www.tizag.com/cssT/class.php", :bookmark => true, :description => "An explanation of classes in relation to CSS.", :subtopic_id => 7, :level => 1},
    {:title => "CSS Specificity: Things You Should Know", :url => "http://coding.smashingmagazine.com/2007/07/27/css-specificity-things-you-should-know/", :bookmark => false, :description => "A great article on how to make class rules specific.", :subtopic_id => 7, :level => 2},
    {:title => "How To Use CSS3 Pseudo-Classes", :url => "http://coding.smashingmagazine.com/2011/03/30/how-to-use-css3-pseudo-classes/", :bookmark => false, :description => "CSS3 Psuedo Classes", :subtopic_id => 7, :level => 3},
    {:title => "111ID Article111", :url => "http://www.idarticle111.com", :bookmark => false, :description => "First article on Ids", :subtopic_id => 8, :level => 1},
    {:title => "222ID Article222", :url => "http://www.idarticle222.com", :bookmark => false, :description => "2nd article on Ids", :subtopic_id => 8, :level => 2},
    {:title => "333ID Article333", :url => "http://www.idarticle333.com", :bookmark => false, :description => "3rd  article on Ids", :subtopic_id => 8, :level => 3},
    {:title => "111Float111", :url => "http://www.float111.com", :bookmark => true, :description => "1st article on floats", :subtopic_id => 9, :level => 1},
    {:title => "222Float222", :url => "http://www.float222.com", :bookmark => false, :description => "2nd article on floats", :subtopic_id => 9, :level => 2},
    {:title => "333Float333", :url => "http://www.float333.com", :bookmark => false, :description => "3rd article on floats", :subtopic_id => 9, :level => 3},
    {:title => "111Clearfix111", :url => "http://www.clearfix111.com", :bookmark => false, :description => "1st article on clears", :subtopic_id => 10, :level => 1},
    {:title => "222Clearfix222", :url => "http://www.clearfix222.com", :bookmark => true, :description => "2nd article on clears", :subtopic_id => 10, :level => 2},
    {:title => "333Clearfix333", :url => "http://www.clearfix333.com", :bookmark => false, :description => "3rd article on clears", :subtopic_id => 10, :level => 3},
]


Article.destroy_all
articles.each do |article_hash|
  a = Article.new
  a.title = article_hash[:title]
  a.url = article_hash[:url]
  a.bookmark = article_hash[:bookmark]
  a.description = article_hash[:description]
  a.subtopic_id = article_hash[:subtopic_id]
  a.level = article_hash[:level]
  a.save
end

