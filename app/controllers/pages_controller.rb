class PagesController < ApplicationController
   require "yaml"


  def home
  end

  def about
  end

  def projects
    @projects = YAML.load_file(Rails.root.join("data", "projects.yml"))
  end

  def resume
  end

  def contact
     @contact = OpenStruct.new
  end

  def experience
    @experiences = YAML.load_file(Rails.root.join("data", "experience.yml"))
  end

  def send_message
    name = params[:contact][:name]
    email = params[:contact][:email]
    message = params[:contact][:message]

    # send mail
    ContactMailer.notify_admin(name, email, message).deliver_now
    ContactMailer.thank_you(name, email).deliver_now

    redirect_to contact_path, notice: "✅ Thanks! Your message has been sent."
  end
end
