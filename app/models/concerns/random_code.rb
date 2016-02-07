module RandomCode
  extend ActiveSupport::Concern
  included do
    before_save :set_code
  end

  private

  def set_code
    self.code = generate_code(5)
  end

  def generate_code(len)
    SecureRandom.hex(len)
  end
end
