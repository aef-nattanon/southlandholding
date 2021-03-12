class Customered < ApplicationRecord
  belongs_to :parent, class_name: 'Customered', required: false
end
