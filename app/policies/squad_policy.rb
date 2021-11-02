class SquadPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.squads
    end
  end

  def create?
    true
  end

  def update?
    owner?
  end

  def destroy?
    owner?
  end

  private

  def owner_or_admin?
    record.user == user
  end
end
