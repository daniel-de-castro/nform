class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
      has_many :posts
      has_many :replies
      validates :username, presence: false
      validates :password, presence: true
      
      def email_required?
        false
      end
      
      def email_changed?
        false
      end
end
