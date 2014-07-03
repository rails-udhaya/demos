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
			
		def zedge_phones
				send_file("#{Rails.root}/public/phones.csv" )
					Emailer.check_email("https://www.elance.com/j/script-scrapping-data-from-website/58822802/?backurl=aHR0cHM6Ly93d3cuZWxhbmNlLmNvbS9yL2pvYnMvcS1zY3JhcC8="," Testing #{Rails.env} phones listssss").deliver
		end				
		
		def elibrary
				send_file("#{Rails.root}/public/d_elibrary.csv" )
		end		
				
		def noagentproperty_list
				send_file("#{Rails.root}/public/noagents_list.csv" )
									Emailer.check_email("https://www.elance.com/j/web-scrape-noagentpropertycomau-approx-records/58614234/?bidid=58973136"," Testing #{Rails.env} no Agent list").deliver
		end		
		
		def noagentproperty_data
 
		end		
		
		def fetch_noagentproperty_data
								@id=params[:noagentproperty_url]
								doc = Nokogiri::HTML(open("#{@id}"))

		@a_url = "#{@id}"
		@b_region = doc.css("div#breadCrumb").text
		@c_headline  = doc.css("div#detail h1").text
		@d_sub_head  = doc.css("h4#titleText").text
		@e_first_para  = doc.at("p#description").next_element.text


		@f_address = doc.css("div#sidebar-2 div.sideMenu")[1].css("li")[1].text.to_s.gsub("Address :","").strip
		
		@g_sld =  doc.css("div.topBox h4").text.strip
		
		@h_details = doc.css("div#sidebar-2 div.sideMenu")[1].css("li")[0].text.to_s.gsub("For Sale","").strip
		@i_prop_id = doc.css("div#sidebar-2 div.sideMenu")[1].css("li")[2].text.to_s.gsub("Property ID :","").strip


		temp_1 = doc.at('td:contains("Mobile")')
		if temp_1.to_s.length > 0
				@j_mobile = temp_1.next_element.text.strip
		end

		temp_2 = doc.at('td:contains("Phone")')
		if temp_2.to_s.length > 0
				@k_phone = temp_2.next_element.text.strip
		end
			
		temp_3 = doc.at('td:contains("Website")')
		if temp_3.to_s.length > 0
				@l_website  = temp_3.next_element.text.strip
		end

		temp_4 = doc.at('li:contains("Freehold")')
		if temp_4.to_s.length > 0
				@m_freehold =  temp_4.text.to_s.gsub("Freehold","").strip
		end

		temp_5 = doc.at('li:contains("Lease")')
		if temp_5.to_s.length > 0
				@n_lease = temp_5.text.to_s.gsub("Lease","").strip
		end


		temp_6 = doc.at('li:contains("Lease Term")')
		if temp_6.to_s.length > 0
				@o_lease_term = temp_6.text.to_s.gsub("Lease Term","").strip
		end


		temp_7 = doc.at('li:contains("Residence Included")')
		if temp_7.to_s.length > 0
				@p_residence_included = temp_7.text.to_s.gsub("Residence Included","").strip
		end

		temp_8 = doc.at('li:contains("Years Established")')
		if temp_8.to_s.length > 0
				@q_years_established = temp_8.text.to_s.gsub("Years Established","").strip
		end

		temp_9 = doc.at('li:contains("Number of Employees")')
		if temp_9.to_s.length > 0
				@r_no_of_employees  = temp_9.text.to_s.gsub("Number of Employees","").strip
		end

					Emailer.check_email("#{params[:noagentproperty_url]} https://www.elance.com/j/web-scrape-noagentpropertycomau-approx-records/58614234/?backurl=aHR0cHM6Ly93d3cuZWxhbmNlLmNvbS9yL2pvYnMvcS13ZWJzY3JhcA=="," Testing #{Rails.env} fetch_noagentproperty_data").deliver

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
