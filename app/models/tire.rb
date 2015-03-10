class Tire < ActiveRecord::Base
  belongs_to :brand

  default_scope { order('updated_at desc') }

  def brand_name
    Brand.find_by(id: brand_id).name
  end
end
