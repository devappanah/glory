class Case < ActiveRecord::Base
  has_one :patient
  has_many :treatments
  accepts_nested_attributes_for :patient,
                                :reject_if => :all_blank,
                                :allow_destroy => true
  accepts_nested_attributes_for :treatments,
                                :reject_if => :all_blank,
                                :allow_destroy => true

  validates :name, presence: true
end
