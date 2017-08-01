class Document < ApplicationRecord
  mount_uploader :file, FileUploader
  validates :name, presence: true
end
