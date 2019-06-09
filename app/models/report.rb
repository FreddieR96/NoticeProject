class Report < ApplicationRecord
belongs_to :admin
belongs_to :notice


def unique_in_notice
Report.each do |t|
if notice_id == t.notice_id && zetype == t.zetype && admin_id == t.admin_id
errors[:base] << "Report cannot share a notice and a type"
end
end
end
end