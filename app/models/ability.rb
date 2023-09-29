class Ability
  include CanCan::Ability

  def initialize(user)
    puts "User role: #{user&.role}" # Debug output

    return unless user.present?

    if user.role == 'user'
      can :read, User, id: user.id
      can :update, User, id: user.id
      can :read, Ambassador
    elsif user.role == 'admin'
      can :manage, :all
    elsif user.role == 'collaborator'
      can :read, User, id: user.id
      can :update, User, id: user.id
      can :read, Participant
      can :update, Participant
      can :read, Ambassador
      can :update, Ambassador
      can :read, Province
      can :update, Province
      can :read, Sponsor
      can :update, Sponsor
    else
      can :read, User, id: user.id
      can :update, User, id: user.id
      can :read, Ambassador, user_id: user.id
      can :update, Ambassador, user_id: user.id
    end
  end
end
