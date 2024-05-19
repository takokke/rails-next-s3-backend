class Image < ApplicationRecord
    include Rails.application.routes.url_helpers

    has_one_attached :thumbnail
    validates :thumbnail, presence: true

    def thumbnail_url
        # 紐づいている画像のURLを取得する
        thumbnail.attached? ? url_for(thumbnail) : nil
    end
end
