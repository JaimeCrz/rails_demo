class Article < ApplicationRecord
  validates :title, presence:true, length: { minimum: 5 }  
  validates_presence_of :content
end
