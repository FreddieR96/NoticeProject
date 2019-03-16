class MainController < ApplicationController
def home
@notice = Notice.new
end
def archive
@allnotices = Notice.all
end
def hotnotices
end
end
