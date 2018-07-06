class Word < ApplicationRecord

  validates :word,  uniqueness: true
  validates :word,  length: { minimum: 3 }
  validates :word,  length: { maximum: 8 }
  validates :word, format: { with: /\A[a-zA-Z]+\z/,
                                    message: "only allows letters" }
end
