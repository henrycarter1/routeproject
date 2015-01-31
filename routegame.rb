require 'bundler'
Bundler.require

get "/word" do
 "Think of a four letter word. Put the first letter of that word in the route after 'word'"
end

word = []

get "/word/*" do
  puts params[:splat][0].split('/').inspect
  if params[:splat][0].split('/').length < 4 then puts "Ok, put the next letter in the route after the last." end
  if params[:splat][0].split('/').length == 4 then "Your word is " + params[:splat][0].split('/')[0].to_s + params[:splat][0].split('/')[1].to_s + params[:splat][0].split('/')[2].to_s + params[:splat][0].split('/')[3].to_s + "." end
end


