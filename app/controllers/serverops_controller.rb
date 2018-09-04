class ServeropsController < ApplicationController
  def clear_completed
    Todo.clear_completed
  end
end