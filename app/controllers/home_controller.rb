class HomeController < ApplicationController
  layout :determine_layout
  require 'trie'

  @first_seach = true
  def new
    render :home
  end

  def about
    render :about
  end

  def init_trie
    @trie = Trie.new
    courses = Course.all
    courses.each do |course|
      @trie.add course.code_number
    end
  end

  def search_suggestion
    if @first_seach.nil?
      init_trie
    end
    @first_seach = false

    children = @trie.children(params[:term].upcase)
    unless children.empty?
      render :json => children
    end
  end



  private
  def determine_layout
    current_user ? "logged_in" : "application"
  end
end


