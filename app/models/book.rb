class Book < ApplicationRecord
    belongs_to :user 
    belongs_to :category
    has_many :reviews

   has_attached_file :bookavatar, styles: { book_index: "250x350>", book_thumb: "325x475>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :bookavatar, content_type: /\Aimage\/.*\z/
end
