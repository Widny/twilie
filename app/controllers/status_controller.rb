class StatusController < ApplicationController
	skip_before_filter :verify_authenticity_token

  def index

  	twiml = Twilio::TwiML::Response.new do |r|
  		r.Sms "Invoice call from ? Respond yes or no"
  	end
  	render text: twiml.text
  end 
end
