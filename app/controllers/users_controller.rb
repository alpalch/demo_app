class UsersController < ApplicationController
  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        # Сказать UserMailer отослать приветственное письмо после сохранения
        UserMailer.welcome_email(@user).deliver_later

        format.html { redirect_to(@user, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def send_welcome_mail
    @user = current_user
    @email = @user.email
    # if user_signed_in?
    #   UserMailer.welcome_email(@user).deliver
    #   redirect_to root_path, notice: 'Welcome letter sent.'
    # end
  end

  def send_mail
    UserMailer.welcome_email(current_user).deliver
    redirect_to root_path, notice: 'Welcome letter sent.'
  end
end
