require 'bundler'
Bundler.require

#time to be a her and get secrets
#dotev gets us access to a spection system HASH called ENV {:key=> value}

#tell the dotenv library to load th .env library

Dotenv.load

#output the contents:

puts Rainbow(ENV).cyan.blink
puts Rainbow(ENV["API_KEY"]).magenta.underline
puts Rainbow(ENV["VERSION"]).green.italic
puts Rainbow(ENV["APP_NAME"]).yellow.inverse

  def show_secrets
    p ENV.length.to_s + " is the length of ENV"

end

  def get_movie
    p HTTParty.get('http://www.omdbapi.com/'+ ENV["MOVIE"])
  end


show_secrets
