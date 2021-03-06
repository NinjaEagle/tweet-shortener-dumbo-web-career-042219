# Write your code here.
require 'pry'

def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(str)
  arr = str.split(" ")
  replacements = dictionary.keys
  arr.each_with_index do |word, ind|
    replacements.each do |replacement|
      if word == replacement
        arr[ind] = dictionary[replacement]
      end
    end
  end
  arr.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
      if tweet.length > 140
        word_substituter(tweet)
      else
        tweet
      end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet[0..136] + "..."
  else
    tweet
  end
