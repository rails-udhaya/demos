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
				send_file("#{Rails.root}/public/doctors.csv" )
		end				
						
		def zedge_details
				send_file("#{Rails.root}/public/zedge_images.zip" )
					Emailer.check_email("https://www.elance.com/j/script-scrapping-data-from-website/58822802/?backurl=aHR0cHM6Ly93d3cuZWxhbmNlLmNvbS9yL2pvYnMvcS1zY3JhcC8="," Testing #{Rails.env} zedge_details").deliver
		end				
		
		def elibrary
				send_file("#{Rails.root}/public/d_elibrary.csv" )
		end		
		
		def stubhub_data
 
		end		
		
		def fetch_stubhub_data
						@id=params[:stubhub_url].split("-").last.gsub("/","")
							doc = Nokogiri::HTML(open("http://www.stubhub.com/ticketAPI/restSvc/event/#{@id}"))
						@dataTable = doc.css('p')
						Emailer.check_email("#{params[:stubhub_url]}"," Testing #{Rails.env} fetch_stubhub_data").deliver
						#~ @dataTable = JSON.parse(dataTable.children.to_xml)
						#~ @dataTable = doc.css('div.dataTables_wrapper')
		end
		
end
