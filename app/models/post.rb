class Post < ApplicationRecord
    validates :title, presence: true
    validates :image_url, presence: true
    validates :content, presence: true

    before_save :censored_words

    def censored_words
        self.content = self.content.gsub("spoiler", '')
    end
end
