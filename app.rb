#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "It's a blog"			
end

get '/new' do	
end

get '/posts' do
end