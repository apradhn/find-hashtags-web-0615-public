def get_hashtags(tweet)
  find_hashtag(tweet)
end

def find_hashtag(tweet)
  hashtags = []
  tweet.split(" ").each do |word|
    if word =~ /\A#+[a-zA-Z]+/ && !(word =~ /\A#+[a-zA-Z]+#/)
      hashtags << word.delete("#") 
    end
  end
  hashtags
end