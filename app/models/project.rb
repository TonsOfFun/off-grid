class Project < ActiveRecord::Base
	def self.fetch_pontentials
		potentials = RubyZoho::Crm::Potential.all
		
		potentials.each { |potential| Project.create_from_potential(potential) }
	end

	def self.find_or_create_from_potential(potential)		
		potential_project = Zoho::Project.new(potential)
		project = Project.find_or_create_by(zoho_id: potential_project.zoho_id)
  	project_params = ActionController::Parameters.new(potential_project.to_params)
		project.update_attributes(project_params.permit(:name, :amount, :zoho_account_id, :stage, :type, :probability, :next_step, :created_at, :updated_at, :description, :expected_revenue, :system_type, :battery_type, :service_area))
		project
	end
end
