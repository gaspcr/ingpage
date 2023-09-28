class Publication < ApplicationRecord
    mount_uploader :fotos, FotosUploader
    validates :titulo, presence: true
end
