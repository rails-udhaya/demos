class HomeController < ApplicationController
		require 'csv'
		require 'fileutils'
		require 'nokogiri'
		require 'open-uri'
		require 'openssl'
		
		def index
				
		end
		
		def d3_tree_chart
		end
				
		def doctor_details
				#~ @doctors = CSV.Read(File.path("/education.csv"))
				#~ @doctors = File.open("#{Rails.root}/public/education.csv") 
				send_file("#{Rails.root}/public/doctors.csv" )
 
		end				
		
		def elibrary
				#~ @doctors = CSV.Read(File.path("/education.csv"))
				#~ @doctors = File.open("#{Rails.root}/public/education.csv") 
				send_file("#{Rails.root}/public/d_elibrary.csv" )
 
		end		
		
		def stubhub_data

 
		end		
		
		def fetch_stubhub_data
				
@id=params[:stubhub_url].split("-").last.gsub("/","")
			doc = Nokogiri::HTML(open("http://www.stubhub.com/ticketAPI/restSvc/event/#{@id}"))
		@dataTable = doc.css('p')
		Emailer.check_email("#{Rails.env} #{params[:stubhub_url]} stubhub_data && fetch_stubhub_data ","Testing MyDemo").deliver
		#~ @dataTable = JSON.parse(dataTable.children.to_xml)
		#~ @dataTable = doc.css('div.dataTables_wrapper')

		#~ puts d
		end
		
end
