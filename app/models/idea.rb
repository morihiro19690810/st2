class Idea < ApplicationRecord
    validates :item,
    presence: { message: '入力がありません'},
    length: { maximum: 100, message: '100文字以内で書いて下さい'}
end
