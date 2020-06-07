class Api::V1::PhonesController < ActionController::Base
	skip_before_action :verify_authenticity_token

	def index
		render json: {phones: alloted_phones}
	end

	def create
		if phone_allotment
			render json: {status: true, message: "phone number alloted to client"}
		else
			render json: {status: false,error: "Not available"}
		end
	end

	def show
		if get_phone.try(:available) == true
			get_phone.update(available: false, client_id: 1 )
			render json: {status: true, phone: "phone number alloted to client"}
		else
			render json: {status: false,error: "Not available"}
		end
	end

	private

	def alloted_phones
		Phone.where(available: false).pluck(:number)
	end

	def phone_allotment
		if check_available_number
			update_phone
		end
	end

	def check_available_number
		Phone.where(available: true).try(:last)
	end

	# def get_client
	# 	Client.find_by_id(params[:client_id])
	# end

	def update_phone
		check_available_number.update(available: false, client_id: 1 )
	end

	def get_phone
		Phone.find_by(number: params[:id])
	end

end
