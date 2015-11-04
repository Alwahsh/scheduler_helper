class HomeController < ApplicationController
  def index
    @controller_list = Array.new
    Dir["app/controllers/*.rb"].each do |file|
      @controller_list.push(file.split('/').last.sub!("_controller.rb",""))
    end
  end
end
