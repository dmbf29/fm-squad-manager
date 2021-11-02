class SquadPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.squads
    end
  end


end
