class User
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  #devise :database_authenticatable, :registerable,
  #:recoverable, :rememberable, :trackable, :validatable
  #devise :database_authenticatable, :omniauthable
  devise :omniauthable

  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :uid, type: String

  def self.find_for_googleapps_oauth(access_token, signed_in_resource=nil)
    data = access_token['info']
    oauth = access_token['credentials']

    if user = User.where(:email => data['email']).first
      return user
    else #create a user with stub pwd
      User.create!(
        email:  data['email'],
        password: Devise.friendly_token[0,20],
        first_name: data['first_name'],
        last_name: data['last_name'],
        uid: access_token['uid'],
        provider: access_token['provider']
      )
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session['devise.googleapps_data'] && session['devise.googleapps_data']['user_info']
        user.email = data['email']
      end
    end
  end

  def name
    [first_name, last_name].join(' ')
  end
end
