class PagesController < ApplicationController
	before_action :require_user, only: [:content, :about]
	def home
	end
	def about
		# intercom = Intercom::Client.new(app_id: 'umxbi8zj', api_key: '1da89d0c08354cc43301eca6bec0b25188903c41')
  		# intercom.events.create(event_name: "Click About", created_at: Time.now.to_i, email: current_user.email)
  		Analytics.track(
		  user_id: current_user.user_id,
		  event: 'Clicked About',
		  properties: {}
		)
	end
	def thanks
	end
	def content
		# intercom = Intercom::Client.new(app_id: 'umxbi8zj', api_key: '1da89d0c08354cc43301eca6bec0b25188903c41')
  		# count = intercom.counts.for_type(type: 'user', count: 'segment')
  		# @new_user_count = count.user["segment"][3]["New"]
	end

end
