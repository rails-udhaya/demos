class HomeController < ApplicationController
		require 'csv'
		require 'fileutils'
		def index
				
		end
		
		def d3_tree_chart
		end
				
		def doctor_details
				#~ @doctors = CSV.Read(File.path("/education.csv"))
				#~ @doctors = File.open("#{Rails.root}/public/education.csv") 
				send_file("#{Rails.root}/public/doctors.csv" )
 
		end
		
end
