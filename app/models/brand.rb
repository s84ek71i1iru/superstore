class Brand < ActiveRecord::Base
  validates :name, presence: true
  validates :website, presence: true

  default_scope { order('updated_at DESC') }

  belongs_to :tire
end
