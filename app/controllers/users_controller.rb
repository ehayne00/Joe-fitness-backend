class UsersController < ApplicationController
    def create
        user = User.create(user_params)
        if user.valid?
            render json: {user: user, token: issue_token({id: user.id})}
        else
            render json: {error: user.errors.full_messages}, status: 400
        end
    end

    def show
        user = User.find(params[:id])
        render json: {user: user, bookings: user.bookings}
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: {user: user, bookings: user.bookings}
    end

    def destroy
        User.destroy(params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :dob, :condition, :medication, :disability, :goals, :first_name, :last_name, :image)
    end

end
