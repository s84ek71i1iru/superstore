class Brand < ActiveRecord::Base
  validates :name, presence: true
  validates :website, presence: true

  # default_scope { order('update_at DESC') }

  has_many :tires
end
