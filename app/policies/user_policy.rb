class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def account?
    true
  end

  def update?
    true
  end

  private

  def is_allowed?
    record.user == user
  end

end
