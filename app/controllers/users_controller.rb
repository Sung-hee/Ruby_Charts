class UsersController < ApplicationController
  require 'httparty'
  require 'json'
  require 'nokogiri'
  
  def sign_in
    puts "asd"
    url = "http://61.72.187.6/phps/login?id=#{params[:id]}&pwd=#{params[:pwd]}"
    # url = "https://charttest-sungheeek.c9users.io/truefalse.json"
    response = HTTParty.get(url)
    hash = JSON.parse(response.body)
    
    result = hash[0]["result"]
    session[:result] = params[:session]
    @session_path = session[:result]
    
    puts @session_path
    
    if result
      redirect_to '/home/index'
    end
  end
  
  def sign_up
    url = "http://61.72.187.6/phps/join.php?nickname=#{:nickname}&nick_pass=#{:nick_pass}&id=#{params[:id]}&pwd=#{params[:pwd]}&pwd_confirmation=#{params[:pwd_confirmation]}&phone=#{params[:phone]}&email=#{params[:email]}"
    response = HTTParty.get(url)
    hash = JSON.parse(response.body)
    
    result = hash[0]["result"]
    @error = hash[0]["error"]
    
    if result
      redirect_to '/home/index'
    end    
  end
end