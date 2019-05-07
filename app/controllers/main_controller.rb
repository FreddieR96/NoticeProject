class MainController < ApplicationController
before_action :setnewnotice, only: [:home]
before_action :setnotices, only: [:archive, :alltime]
def archive
end
def hotnotices
end
def search
if params.has_key?(:title) && params.has_key?(:notecategory) && !params[:notecategory].blank?
@searchresults = Notice.where("(title like ? OR title like ?) AND notecategory like ?", "%#{params[:title]}%", "%#{params[:title]}.strip%", "%#{params[:notecategory]}%")
elsif params.has_key?(:title) && params.has_key?(:notecategory) && params[:notecategory].blank?
@searchresults = Notice.where("title like ? OR title like ?", "%#{params[:title]}%", "%#{params[:title]}.strip%")
end
respond_to do |f| 
	f.html
	f.js
end
end
def alltime
end
def lastmonth
@monthnotices = Notice.where("created_at >= ?", Date.today - 1.month)
end
def lastweek
@weeknotices = Notice.where("created_at >= ?", Date.today - 1.week)
end 
private
def setnewnotice
@notice = Notice.new
end
private
def setnotices
@allnotices = Notice.all
end
end