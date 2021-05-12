class Car < ApplicationRecord
  DEPRECATION = 0.02
  validates :model, presence: true
  validates :year, presence: true, numericality: { only_integer: true, greater_than: 1900, less_than: 2050}
  validates :brand, presence: true
  validates :price, presence: true, numericality: { only_integer: false, greater_than: 0, less_than: 1000000}
  scope :active, lambda {where(is_deleted: false)}
  belongs_to :dealership, optional: true

  def is_new?
    return "yes" if self.new_model
    "no"
  end
  def dealership_name
    if dealership
      dealership.name
    else
      ""
    end
  end
  def formated_production_date
    return production_date.strftime("%m/%d/%y") if !self.production_date.nil?
    ""
  end

  def calculate_deprecate
    return nil if self.production_date.nil? || self.price.nil?
    months_after_production =  (Date.today.year  * 12 + Date.today.month) - ( self.production_date.year * 12 +  self.production_date.month)
    price_deprecated = self.price
    count = 0
    while count < months_after_production
      price_deprecated = price_deprecated*(1.0-DEPRECATION)
      count = count + 1
    end
    price_deprecated
  end

end
