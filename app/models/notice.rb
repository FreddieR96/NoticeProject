class Notice < ApplicationRecord
validates :title, presence: { message: "%{model} needs a %{attribute}" }
validate :picturebody
has_one_attached :descpic
validates :descpic, blob: { content_type: :image }
has_many :reports
private 
def picturebody
	if body.blank? && descpic.attached?
	errors[:body] << "Notice text can't be blank if a picture is attached."
	end
end
end
