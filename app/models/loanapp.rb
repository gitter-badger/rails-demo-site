class Loanapp < ActiveRecord::Base
	attr_accessible :jméno, :příjmení, :telefon, :email, :zdroj_příjmu, :průměrná_výše_měsíčního_příjmu, :povinné_měsíční_výdaje, :výše_půjčky, :doba_splácení, :císlo_účtu
	attr_writer :current_step

validates_presence_of :jméno, :if => lambda { |o| o.current_step == "details" }
validates_presence_of :zdroj_příjmu, :if => lambda { |o| o.current_step == "income" }
validates_presence_of :výše_půjčky, :if => lambda { |o| o.current_step == "product" }


	def current_step
		@current_step || steps.first
	end

	def steps
		%w[details income product confirm]
	end
end
