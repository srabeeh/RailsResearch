class ArticlesController < ApplicationController
	def new
	end
	
	def create
		@article = Article.new(article_parameters)
		@article.save
		redirect_to @article
	end
	
	def show
		@article = Article.find(params[:id])
	end
	private
		def article_parameters
			params.require(:article).permit(:title, :text)
		end
end
