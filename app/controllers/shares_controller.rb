class SharesController < ApplicationController
  def new
    @share = Share.new
  end

  def create
    @share = Share.create!(share_params)
    # File.open("#{Rails.root}/tmp/#{rand(10000000)}.txt", "w") do |f|
    #   f << params[:share][:file].tempfile.read
    # end
    redirect_to new_share_path, notice: "You did it!"
  end

  def index
    @paragraph = "I'm a paragraph.  Just a short one."
    File.open("#{Rails.root}/tmp/page-#{rand(10000000)}.html", "w") do |f|
      f << render_to_string(action: :index, layout: "report")
    end
  end

  private def share_params
    params.require(:share).permit(:user_name, :title, :upload)
  end
end
