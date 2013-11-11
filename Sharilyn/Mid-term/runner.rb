require_relative 'story'

require 'JSON'
require 'rest-client'
require 'pry'

puts "Hi Welcome"
puts "What are you searching for?"

query = gets.chomp

if query.is_a?(String) == false
    puts "You need to enter a word, not numbers"
else
    puts "Thanks, we'll find some stories for you."
end

result = RestClient.get("http://www.reddit.com/search.json?q=#{query}")
parsed = JSON.parse result

stories = parsed["data"]["children"]

# .first["data"]["selftext"]
# puts stories

#stories is an array of hashes
#binding.pry
listStories = stories.collect do |story|
    Story.new story['data']['author'], story['data']['title']
end

puts "Here's a list of articles we found, along with their authors"
listStories.each do |story|
    puts story
end