# Write your code here.
def dictionary()
  shortWords = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweetArray = tweet.split(" ")
    tweetArray.collect do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
      end
    end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |word|
    puts word_substituter(word)
  end
end

def selective_tweet_shortener(tweet)
<<<<<<< HEAD
    if tweet.length > 140
      word_substituter(tweet)
    else
      tweet
    end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    evenshorter = selective_tweet_shortener(tweet)
    evenshorter[0...140]
  else
    tweet
  end
=======
  #weet.split(" ").collect do |sentence|
    if tweet.length > 140
      word_substituter(tweet)
    elsif #sentence.length <= 130
      tweet
    end
  #end
>>>>>>> cf1285e4129726cf8b05c9e1893a54ae0e04263a
end
