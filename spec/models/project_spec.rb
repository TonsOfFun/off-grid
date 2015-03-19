require 'rails_helper'

RSpec.describe Project, :type => :model do
  describe ".find_or_create_from_zoho_project" do
  	context "when the project exists" do
		  context "when there is no change" do

		  end

		  context "when the name is changed" do
		  	let(:name) { "Cool New Solar Project"}
  			let(:zoho_potential) { Hashie::Mash.new(JSON.parse(RubyZoho::Crm::Potential.first.to_json)) }
				let(:zoho_project) { OffGrid::Zoho::Project.new(zoho_potential.merge!(potential_name: name)) } 
		  	let!(:project) { Project.create(zoho_project.to_params) }

			  subject { Project.find_or_create_from_zoho_project(zoho_project) }

			  it "should update the name of the project" do
			  	expect(project.reload.name).to eq name
			  end 

			  it { is_expected.to eq project.reload }
			end
  	end

  	context "when the project doesn't exist" do
			let(:zoho_potential) { Hashie::Mash.new(JSON.parse(RubyZoho::Crm::Potential.first.to_json)) }
			let(:zoho_project) { OffGrid::Zoho::Project.new(zoho_potential) } 

		  subject { Project.find_or_create_from_zoho_project(zoho_project) }

		  it "should create a project" do
		  	expect(subject.zoho_id).to eq zoho_project.zoho_id
		  	expect(subject.name).to eq zoho_project.name
		  	expect(subject.description).to eq zoho_project.description
		  end 
		end
  end
end
