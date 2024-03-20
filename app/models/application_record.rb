class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  before_create :assign_uuid

  private

  def assign_uuid
    return unless has_attribute?(:id)

    # UUID が衝突するくらいなら僕は宝くじが当たって億万長者になっててもおかしくない
    self.id = SecureRandom.uuid
  end
end
