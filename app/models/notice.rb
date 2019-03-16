class Notice < ApplicationRecord
validates :title, presence: { message: "%{model} needs a %{attribute}" }
end
