class Project < ActiveRecord::Base
	def self.fecth_projects
		potentials = RubyZoho::Crm::Potential.all
		
		potentials.each { |potential| Project.find_or_create_from_zoho_project(OffGrid::Zoho::Project.new(potential)) }
	end

	def self.find_or_create_from_zoho_project(zoho_project)		
		project = Project.find_or_create_by(zoho_id: zoho_project.zoho_id)
  	project_params = ActionController::Parameters.new(zoho_project.to_params)
		project.update_attributes(project_params.permit(:name, :amount, :zoho_account_id, :stage, :type, :probability, :next_step, :created_at, :updated_at, :description, :expected_revenue, :system_type, :battery_type, :service_area))
		project
	end
end
