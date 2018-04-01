class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new(role: 2) # guest user (not logged in)
      if user.person?
        can [:read], Camping
        can [:read, :create], [Booking, Review]
        can [:read, :update,:destroy], User, user_id: user.id
      elsif user.camping?
        can :manage, Camping, user_id: user.id
        can :manage, [Booking, Plan, Campsite], camping_id: camping.id
      elsif user.guest?
        can :read, [Camping, Review]
      end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
