class DinosaurPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def destroy?
    is_allowed?
    # true
  end

  def update?
    is_allowed?
  end

  private

  def is_allowed?
    record.user == user
  end
end
