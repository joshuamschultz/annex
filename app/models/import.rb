class Import < ApplicationRecord
  belongs_to :import_type
  
  has_many :imports_parts
  has_many :parts, through: :imports_parts
  accepts_nested_attributes_for :imports_parts, reject_if: :all_blank, allow_destroy: true
end
