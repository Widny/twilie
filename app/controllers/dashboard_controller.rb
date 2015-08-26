class DashboardController < ApplicationController
	skip_before_filter :verify_authenticity_token
	

  
  def index
  	response = Twilio::TwiML::Response.new do |r|
  		#r.Say 'hello there', voice: 'alice'
  		r.Dial record: "record-from-answer" do |d|
  			d.Number "+19544961832" 
  		end
  	end
  	render text: response.text
  end

  
  
end
