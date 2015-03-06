class Tire < ActiveRecord::Base
  has_many :brand

  def brand_name
    Brand.find_by(id: brand_id).name
  end
end
