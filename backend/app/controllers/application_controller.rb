class ApplicationController < ActionController::API
  def hello
    render json: { message: "Hello from Rails (updated)" }
  end
end
