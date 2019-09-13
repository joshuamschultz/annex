class Export < ApplicationRecord
  belongs_to :import_type

  has_many :exports_parts
  has_many :parts, through: :exports_parts
end
