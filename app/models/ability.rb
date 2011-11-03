class Ability
  include CanCan::Ability

  def initialize(user)
    # Abilities
    # :manage
    # :create
    # :read
    # :update
    # :destroy

    # :manage, :all
    # :manage, Model


    if user.super_admin?
      can :manage, :all
    elsif user.admin?
      can :manage, :all
    else # default role for newly created account, "visitor"
      can :read, Job
      can [:read, :update], User, :id => user.id
    end
  end
end
