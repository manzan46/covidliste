module Admin
  class PowerUsersController < BaseController
    def index
      @users = policy_scope([:power_users, User]).includes(:roles).uniq
    end
  end
end
