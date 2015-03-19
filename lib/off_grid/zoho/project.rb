class OffGrid::Zoho::Project
  attr_accessor :potential

  def initialize(potential)
    @potential = potential
  end

  def zoho_id
    potential.id.to_i
  end

  def name
    potential.potential_name
  end

  def amount
    potential.amount.to_f
  end

  def zoho_account_id
    potential.accountid.to_i
  end

  def stage
    potential.stage
  end

  def project_type
    potential.type
  end

  def probability
    potential.probability.to_f
  end

  def next_step
    potential.next_step
  end

  def created_at
    Time.parse(potential.created_time).utc
  end

  def updated_at
    Time.parse(potential.modified_time).utc
  end

  def description
    potential.description
  end

  def expected_revenue
    potential.expected_revenue.to_f
  end

  def system_type
    potential.system_type
  end

  def battery_type
    potential.battery_type
  end

  def service_area
    potential.service_area
  end

  def to_params
  	{
  		zoho_id: self.zoho_id,
  		name: self.name,
  		amount: self.amount,
  		zoho_account_id: self.zoho_account_id,
  		stage: self.stage,
  		project_type: self.project_type,
  		probability: self.probability,
  		next_step: self.next_step,
  		created_at: self.created_at,
  		updated_at: self.updated_at,
  		description: self.description,
  		expected_revenue: self.expected_revenue,
  		system_type: self.system_type,
  		battery_type: self.battery_type,
  		service_area: self.service_area
  	}
  end
end