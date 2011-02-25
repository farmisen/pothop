class Account < ::Sequel::Model

  plugin :validation_helpers

  attr_accessor :password, :password_confirmation

  def validate
    validates_presence     :email
    validates_presence     :role
    validates_presence     :password if password_required
    validates_presence     :password_confirmation if password_required
    validates_length_range 4..40, :password unless password.blank?
    errors.add(:password_confirmation, 'must confirm password') if !password.blank? && password != password_confirmation
    validates_length_range 3..100, :email unless email.blank?
    validates_unique       :email unless email.blank?
    validates_format       /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :email unless email.blank?
    validates_format       /[A-Za-z]/, :role unless role.blank?
  end

  # Callbacks
  def before_save
    generate_password
    super
  end

  ##
  # This method is for authentication purpose
  #
  def self.authenticate(email, password)
    account = filter(:email => email).first
    account && account.has_password?(password) ? account : nil
  end

  ##
  # Replace AR method
  #
  def self.find_by_id(id)
    self[id] rescue nil
  end

  def has_password?(password)
    self.crypted_password == encrypt_password(password)
  end

  private
    def generate_password
      self.salt = Digest::SHA1.hexdigest("--#{Time.now.to_s}--#{handle}--") if new? || self.salt.nil? || self.salt.length == 0
      self.crypted_password = encrypt_password(self.password)
    end

    def encrypt_password(password)
      Digest::SHA1.hexdigest("#{password}#{self.salt}")
    end

    def password_required
      crypted_password.blank? || !password.blank?
    end
end