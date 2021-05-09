    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
        params.fetch(:user, {}).permit(:name, :email, :password, :password_confirmation)
      end