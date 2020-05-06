class TagsController < ApplicationController

  def new
    @tags = Tags.all
  end

  def create
    @tags = Tag.new(tags_params)
  end

  def show
    @tag = Tag.find(params[:id])
    @posts = @tag.posts.order('created_at DESC')
  end

  private
  def tags_params
    params.require(:tag).permit(:name)
  end

end
