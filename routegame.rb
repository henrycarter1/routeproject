require 'bundler'
Bundler.require

get "/word" do
 "Think of a four letter word. Put the first letter of that word in the route after 'word'"
end

word = []

get "/word/*" do
  puts params[:splat][0].split('/').inspect
  if params[:splat][0].split('/').length == 4 then "Hi" end
end


# get "/word/:a/:b" do
#   word[1] = params[:b]
#   $secondletter = word[1]
#   "Ok, now put the third letter in the route after the second. #{word[0]}"
# end
#
# get "/word/" + $firstletter.to_s + "/" + $secondletter.to_s + "/:c" do
#   word[2] = params[:c]
#   $thirdletter = word[2]
#   "Ok, now put the fourth letter in the route after the third."
# end
#
# get "/word/" + $firstletter.to_s + "/" + $secondletter.to_s + "/" + $thirdletter.to_s + "/:d" do
#   word[3] = params[:d]
#   $fourthletter = word[3]
#   "Ok, the word is #{word[0]}#{word[1]}#{word[2]}#{word[3]}."
# end