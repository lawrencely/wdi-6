namespace :twitter do

  desc "nuking the tweet and user data"
  task :clear => :environment do
    User.destroy_all
    Tweet.destroy_all
  end

  desc "Create :user_count fake users with lorem"
  task :lorem, [:user_count] => :environment do |t, args|
    FactoryGirl.create_list :user_with_tweets, args[:user_count].to_i
  end

  desc "search twitter for :query , returns :limit of results"
  task :search, [:query, :limit] => :environment do |t, args|
    puts "Searching Twitter for #{ args[:query]}"
    puts "Returning only #{ args[:limit] } tweets"

    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "ZdYSOqJ72dhxaxzdMsJ1RdUEf"
      config.consumer_secret     = "6w1xTxMGUYmGWDESnFKAIZoDLdhuuT60j2CDGEuFC5RaWmz2JJ"
      config.access_token        = "2797727635-nEkinSzPOnv9gUkK0KQqUQ2JUHRqoQKwad2RrGZ"
      config.access_token_secret = "3tfdD8TZwNPtnAtEuI0ePfm1plScMD1avpa6iII1FamQ6"
    end
      client.search(args[:query]).take(args[:limit].to_i).collect do |tweet|
        puts tweet.text
      end
  end

end