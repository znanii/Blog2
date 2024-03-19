#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "blog.db"}

class Post < ActiveRecord::Base
	validates :content, presence: true, length: {minimum: 8}
	validates :author, presence: true
end

class Comment < ActiveRecord::Base
	validates :content, presence: true
end	
get '/' do
	erb "It's a blog"			
end

get '/new' do	
	erb :new
end

post '/new' do
	@p = Post.new params[:post]
	if @p.save
		erb "Thank you for your post!"
	else
		@error = @p.errors.full_messages.first
		erb :new
	end

end

get '/posts' do
	@posts = Post.order('created_at DESC')
	erb :posts
end
