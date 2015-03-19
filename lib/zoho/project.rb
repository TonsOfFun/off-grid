class Zoho::Project
  attr_accessor :potential

  def initialize(potential)
    @potential = potential
  end

  def id
    potential.id
  end

  def name
    potential.potential_name
  end

  def amount
    potential.amount
  end

  def zoho_account_id
    potential.accountid
  end

  def stage
    potential.stage
  end

  def type
    potential.type
  end

  def probability
    potential.probability
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
    potential.expected_revenue
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
end