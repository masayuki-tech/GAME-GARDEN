class TagsController < ApplicationController

  def new
    @tags = Tags.all
  end

  def create
    @tags = Tag.new(tags_params)
  end

  private
  def tags_params
    params.require(:tag).permit(:name)
  end

end
