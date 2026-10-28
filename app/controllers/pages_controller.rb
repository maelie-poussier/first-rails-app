class PagesController < ApplicationController

  def about
    @members = ["thanh", "dimitri", "germain", "damien", "julien"]
    # Trier les members en fonction de ce que le user a taper
    if params[:member]
      @members = @members.select do |member|
        member.start_with?(params[:member])
      end
    end
  end

  def contact
  end

  def home
  end
end
