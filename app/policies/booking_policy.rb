class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def update?
    true
  end

  def create?
    true
  end

  def index?
    true
  end

  def destroy?
    is_allowed?
  end

  private

  def is_allowed?
    record.user == user
  end
end
