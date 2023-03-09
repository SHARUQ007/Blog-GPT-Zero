class BlogPost < ApplicationRecord
    #author content title contact
    validates :title, presence: true
    validates :author, presence: true
    validates :content, presence: true
    belongs_to :author
end
