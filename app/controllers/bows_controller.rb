class BowsController < ApplicationController
  def new
    @bow = Bow.new
  end

  def create
    @bow = Bow.new(bow_params)
    if @bow.save
      redirect_to ad_path(@ad), notice: "Votre annonce a été créée avec succès."
    else
      render :new
    end
  end

  private

  def bow_params
    params.require(:bow).permit(
      :mark,
      :power,
      :waist,
      :matter
    )
  end
end
