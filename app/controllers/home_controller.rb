class HomeController < ApplicationController
		require 'csv'
		require 'fileutils'
		require 'nokogiri'
		require 'open-uri'
		require 'openssl'
		
		def index
		end

def basketball_demo_first
		send_file("#{Rails.root}/public/basketball_demo_first.xlsx" )
		Emailer.check_email("https://www.odesk.com/mc/#thread/350585820","Testing #{Rails.env} basket ball ").deliver
end

def weedmaps_demo_two
		send_file("#{Rails.root}/public/weedmaps_demo_two.xlsx" )
		Emailer.check_email("https://www.elance.com/j/website-scraper-data-mining-website-crawler-directory-extraction/63992434/?bidid=64004326","Testing #{Rails.env} weedmaps ").deliver
end

def weedmaps_demo
		send_file("#{Rails.root}/public/weedmaps_demo.xlsx" )
		Emailer.check_email("https://www.elance.com/j/website-scraper-data-mining-website-crawler-directory-extraction/63992434/?bidid=64004326","Testing #{Rails.env} weedmaps ").deliver
end

def emersonecologics_demo
		send_file("#{Rails.root}/public/emersonecologics_demo.xlsx" )
		Emailer.check_email("https://www.elance.com/j/emersion-scrap/63858957/?backurl=aHR0cHM6Ly93d3cuZWxhbmNlLmNvbS9yL2pvYnMvcS1zY3JhcC8=","Testing #{Rails.env} Emersion ").deliver
end


def usasfmembers_demo
		send_file("#{Rails.root}/public/usasfmembers_demo.xlsx" )
		Emailer.check_email("https://www.odesk.com/jobs/Data-Scraping-Script_~0130bb7873b4eddf9e","Testing #{Rails.env} Scraping-Script ").deliver
end

def tripadvisor_v_1
		send_file("#{Rails.root}/public/tripadvisor_demo_v_1.xlsx" )
		Emailer.check_email("https://www.elance.com/j/p-scrape-detail-from-tripadvisor-website-records/63840681/?eventId=267483727","Testing #{Rails.env} Tim ").deliver
end

def tripadvisor_demo
		send_file("#{Rails.root}/public/tripadvisor_demo_partiall_data.xlsx" )
		Emailer.check_email("https://www.elance.com/j/p-scrape-detail-from-tripadvisor-website-records/63840681/?eventId=267483727","Testing #{Rails.env} Tim ").deliver
end

def pwcmoneytree_demo
		send_file("#{Rails.root}/public/pwcmoneytree_demo.xlsx" )
		Emailer.check_email("eric","Testing #{Rails.env} eric from fb ").deliver
end

def uptodate_demo
		send_file("#{Rails.root}/public/uptodate_demo.xlsx" )
		Emailer.check_email("uptodate_demo","Testing #{Rails.env} uptodate_demo ").deliver
end
						
def cada_demo
		send_file("#{Rails.root}/public/cada_first.xlsx" )
		Emailer.check_email("https://www.odesk.com/job/~01e74b11b2796e968a/apply/"," Testing #{Rails.env} https://www.odesk.com/job/~01e74b11b2796e968a/apply/ ").deliver
end
						
def kathe_demo
		Emailer.check_email("Testing Kathe"," Testing #{Rails.env} Kathe ").deliver
end
						
		def commercial_partial_data
					send_file("#{Rails.root}/public/commercial_partial_data.xlsx" )
					Emailer.check_email("https://www.elance.com/j/webscraping-document-links/61230346/?backurl=aHR0cHM6Ly93d3cuZWxhbmNlLmNvbS9yL2pvYnMvcS13ZWJzY3JhcHBpbmc="," Testing #{Rails.env} commercial_partial_data").deliver
		end										
									
		def menumania_partial_data
					send_file("#{Rails.root}/public/menumania_partial_data.xlsx" )
					Emailer.check_email("https://www.elance.com/j/double-web-scrapping-machine/60879893/?backurl=aHR0cHM6Ly93d3cuZWxhbmNlLmNvbS9yL2pvYnMvcS13ZWIlMjBzY3JhcC8="," Testing #{Rails.env} menumania_partial_data").deliver
		end										
									
		def horseracing_data
					send_file("#{Rails.root}/public/horseracing_data.xlsx" )
					Emailer.check_email("https://www.odesk.com/jobs/Scraping-Internet-Data_~015cff54c2ac874176"," Testing #{Rails.env} horseracing_data").deliver
		end										
			
						
		def asdonline_data
					send_file("#{Rails.root}/public/asdonline_data.xlsx" )
					Emailer.check_email("https://www.freelancer.com/projects/Data-Entry-Excel/Find-Information-from-Websites.6234742.html?t=b&utm_expid=294858-205.srtFykaOR_ulbzvw6_f6Sw.1&utm_referrer=https%3A%2F%2Fwww.freelancer.com%2Fjobs%2FWeb_Scraping%2Fl-en%2F"," Testing #{Rails.env} asdonline_data").deliver
		end										
			
						
		def auspost_full_data
					send_file("#{Rails.root}/public/auspost_full_data.xlsx" )
					Emailer.check_email("https://www.elance.com/j/webscrape-postoffices-australian-states-of-qld-sa/59780320/"," Testing #{Rails.env} auspost_full_data").deliver
		end										
			
		def auspost_data
					send_file("#{Rails.root}/public/auspost_data.xlsx" )
					Emailer.check_email("https://www.elance.com/j/webscrape-postoffices-australian-states-of-qld-sa/59780320/"," Testing #{Rails.env} auspost_data").deliver
			end							
									
		def start_ups_leaders
					send_file("#{Rails.root}/public/start_ups_leaders.xlsx" )
					Emailer.check_email("https://www.odesk.com/jobs/Data-Entry-and-Address-Research_~0158a4b067a201b5df"," Testing #{Rails.env} start_ups_leaders").deliver
			end							
			
		def f6s_second_partial_data
					send_file("#{Rails.root}/public/f6s_second_partial_data.xlsx" )
					Emailer.check_email("https://www.odesk.com/jobs/Data-Entry-and-Address-Research_~0158a4b067a201b5df"," Testing #{Rails.env} f6s_second_partial_data").deliver
			end					
			
		def f6s_partial_data
					send_file("#{Rails.root}/public/f6s_partial_data.xlsx" )
					Emailer.check_email("https://www.odesk.com/jobs/Data-Entry-and-Address-Research_~0158a4b067a201b5df"," Testing #{Rails.env} f6s_partial_data").deliver
			end						
						
		def active_partial_data
					send_file("#{Rails.root}/public/active_partial_data.xlsx" )
					Emailer.check_email("https://www.odesk.com/jobs/Scrape-Data_~0128ebf8799374344d"," Testing #{Rails.env} active_partial_data").deliver
			end						
									

						
		def brandprofiles_partial_data
				send_file("#{Rails.root}/public/agriculture-logos.zip" )
					Emailer.check_email("https://www.freelancer.com/projects/Web-Scraping-Web-Search/Collect-brand-logos.html#placebid"," Testing #{Rails.env} brandprofiles_partial_data").deliver
			end						
									


		def twitter_demo
				client = Twitter::REST::Client.new do |config|
								config.consumer_key       = 'EbRsYO3WxYj3QekJSedCuQ'
								config.consumer_secret    = 'T6dUznGdDK7GzxWcHH9nMZjlYxOE6PQ69IOAcQnlis8'
								config.access_token        = '91324843-48gCo3bWB3axutt5OEKUhXKWkxTJGI9VWuqCZhON8'
								config.access_token_secret = 'wJnUa72pVotelW5kqZpPRP2Lkshwyt0nckQDQOGNjAI'
		end
@profile = client.user("FIFAWorldCup")
 	Emailer.check_email("FIFAWorldCup","https://www.elance.com/j/senior-twitter-api-developer/59177792/").deliver if Rails.env == "production"
		end
		
		def fetch_twitter_demo
						client = Twitter::REST::Client.new do |config|
								config.consumer_key       = 'EbRsYO3WxYj3QekJSedCuQ'
								config.consumer_secret    = 'T6dUznGdDK7GzxWcHH9nMZjlYxOE6PQ69IOAcQnlis8'
								config.access_token        = '91324843-48gCo3bWB3axutt5OEKUhXKWkxTJGI9VWuqCZhON8'
								config.access_token_secret = 'wJnUa72pVotelW5kqZpPRP2Lkshwyt0nckQDQOGNjAI'
						end
						
				n= params["link_in_url"].split("/").last
				@profile = client.user(n)
				Emailer.check_email(params[:link_in_url],"https://www.elance.com/j/senior-twitter-api-developer/59177792/").deliver if Rails.env == "production"
		end		
		
def airbnb_partial_list
						send_file("#{Rails.root}/public/airbnb_partial_list.xlsx" )
									Emailer.check_email("https://www.elance.com/j/airbnb-data-scrape/59147858/?backurl=aHR0cHM6Ly93d3cuZWxhbmNlLmNvbS9yL2pvYnMvcS1zY3JhcC8=","Some one testing Testing #{Rails.env} airbnb").deliver
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
						
		def noagent_competed_list
				send_file("#{Rails.root}/public/noagent_completed_full_set.xlsx" )
									Emailer.check_email("noagent_completed_full_set.xlsx is downloaded"," Testing #{Rails.env} no Agent list").deliver
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
