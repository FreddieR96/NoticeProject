class ReportsController < ApplicationController
def add
@thenotice = Notice.find(params[:notice_id].to_i)
@theadmin = Admin.find(params[:admin_id].to_i)
@thetype = params[:zetype]

@thereport = Report.where(notice_id: @thenotice.id, admin_id: @theadmin.id, zetype: @thetype).first_or_create!(reported: false)
@thereport.toggle!(:reported)

end
end
