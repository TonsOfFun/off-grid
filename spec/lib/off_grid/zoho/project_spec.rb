require 'rails_helper'

RSpec.describe OffGrid::Zoho::Project do
  let!(:potential) { RubyZoho::Crm::Potential.first } 
  let(:project) { OffGrid::Zoho::Project.new(potential) }

  describe "#zoho_id" do
    subject { project.zoho_id }

    it { is_expected.to eq(potential.id.to_i) }
  end

  describe "#name" do
    subject { project.name }

    it { is_expected.to eq(potential.potential_name) }
  end

  describe "#amount" do
    subject { project.amount }

    it { is_expected.to eq(potential.amount.to_f) }
  end

  describe "#zoho_account_id" do
    subject { project.zoho_account_id }

    it { is_expected.to eq(potential.accountid.to_i) }
  end

  describe "#stage" do
    subject { project.stage }

    it { is_expected.to eq(potential.stage)}
  end

  describe "#project_type" do
    subject { project.project_type }

    it { is_expected.to eq(potential.type)}
  end

  describe "#probability" do
    subject { project.probability }

    it { is_expected.to eq(potential.probability.to_f)}
  end

  describe "#next_step" do
    subject { project.next_step }

    it { is_expected.to eq(potential.next_step)}
  end

  describe "#created_at" do
    subject { project.created_at }

    it { is_expected.to eq(Time.parse(potential.created_time))}
  end

  describe "#updated_at" do
    subject { project.updated_at }

    it { is_expected.to eq(Time.parse(potential.modified_time))}
  end

  describe "#description" do
    subject { project.description }

    it { is_expected.to eq(potential.description)}
  end

  describe "#expected_revenue" do
    subject { project.expected_revenue }

    it { is_expected.to eq(potential.expected_revenue.to_i)}
  end

  describe "#system_type" do
    subject { project.system_type }

    it { is_expected.to eq(potential.system_type)}
  end

  describe "#battery_type" do
    subject { project.battery_type }

    it { is_expected.to eq(potential.battery_type)}
  end

  describe "#service_area" do
    subject { project.service_area }

    it { is_expected.to eq(potential.service_area)}
  end
end
