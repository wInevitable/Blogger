class TagsController < ApplicationController

	def index
		@tags = Tag.all
	end

	def show
		@tag = Tag.find(params[:id])
	end

	def destroy
		name = Tag.find(params[:id])
		Tag.find(params[:id]).destroy

		flash.notice = "Tag '#{name}' Deleted!"

		redirect_to tags_path
	end
end
