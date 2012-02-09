class Marketing < ActiveRecord::Base
  belongs_to :industry
  belongs_to :lead
  belongs_to :product
  belongs_to :province
  belongs_to :city
end
