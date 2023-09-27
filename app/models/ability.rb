# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the user here. For example:

  if user.role == 'admin'
    can :manage, :all

  elsif user.role == 'collaborator'
   # users
   can :read, User, user: user
   can :update, User, user: user
   # participants
   can :read, Participant, user: user
   can :update, Participant, user: user
   # ambassadors
   can :read, Ambassador, user: user
   can :update, Ambassador, user: user
   # provinces
   can :read, Province, user: user
   can :update, Province, user: user
   # sponsors
   can :read, User, user: user
   can :update, User, user: user

  else
    can :read, User, user: user
    can :update, User, user: user
  end
  end
end
