#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "blog.db"}

class Post < ActiveRecord::Base
end

get '/' do
	erb "It's a blog"			
end

get '/new' do	
end

get '/posts' do
end
