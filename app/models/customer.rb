class Customer < ApplicationRecord
  belongs_to :parent, class_name: 'Customer', required: false
end
