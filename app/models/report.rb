class Report < ApplicationRecord
belongs_to :admin
belongs_to :notice


def unique_in_notice
Report.each do |t|
if notice_id == t.notice_id && zetype == t.zetype
errors[:base] << "Report cannot share a notice and a type"
end
end
end
end