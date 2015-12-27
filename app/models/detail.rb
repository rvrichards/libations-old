class Detail < ActiveRecord::Base
  belongs_to :libation
  belongs_to :user
end
