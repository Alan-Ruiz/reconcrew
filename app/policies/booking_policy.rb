class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.present?
  end

  def update?
    user.present?
  end

  def confirmation?
    true
  end

  def confirmation_payment?
    record.user == user
  end
end
