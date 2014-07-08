class MauriController < ApplicationController
		require 'feed-normalizer'
require 'open-uri'

		def index
				@rss = FeedNormalizer::FeedNormalizer.parse open('http://rss.indeed.com/rss?q=&l=')
				#~ SimpleRSS.parse open('http://rss.indeed.com/rss?q=&l=')
					Emailer.check_email("Mauri Testing main","Mauri Testing main").deliver if Rails.env == "production"
		end
		
		def fetch_data_from_indeed_jobs
				ur = URI::encode("http://rss.indeed.com/rss?q=#{params[:job_titile]}&l=#{params[:location]}")
								@rss = FeedNormalizer::FeedNormalizer.parse open(ur)
								Emailer.check_email("#{ur}","Mauri Testing Sub").deliver if Rails.env == "production"
		end
end
