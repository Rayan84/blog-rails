class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :author, class_name: 'User'
  belongs_to :author, class_name: 'User'
  belongs_to :post
end
