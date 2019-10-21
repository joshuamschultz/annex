class Export < ApplicationRecord
  belongs_to :export_type

  has_many :exports_parts
  has_many :parts, through: :exports_parts
  accepts_nested_attributes_for :exports_parts, reject_if: :all_blank, allow_destroy: true

  before_save :assign_date

  def assign_date
    self.exports_parts.each do |part|
      part.export_date = self.export_date
    end
  end

end
