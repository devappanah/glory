class Patient < ActiveRecord::Base
  belongs_to :case
end
