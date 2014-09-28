class LoanappsController < ApplicationController
	def new
		@loanapp = Loanapp.new
	end

	def create
		@loanapp = Loanapp.new(params[:loanapp])

		@loanapp.save
		redirect_to @loanapp
	end
end
