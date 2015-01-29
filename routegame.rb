require 'bundler'
Bundler.require

get "/word" do
 "Think of a four letter word. Put the first letter of that word in the route after 'word'"
end

word = []

get "/word/*" do
  puts params[:splat][0].split('/').inspect
end


