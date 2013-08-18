class CompaniesController < ApplicationController
	
	def index
		@companies = Company.all
	end

	def new
		@company = Company.new
	end

	def create
		@company = Company.new(params[:company])
		if @company.save
			redirect_to companies_path
		else
			redirect_to new_company_path
		end
	end

	def edit
		@company = Company.find(params[:id])
	end

	def update
		@company = Company.find(params[:id])
		@company.update_attributes
	end

	def destroy
		@company = Company.find(params[:id])
		@company.destroy
	end

end
