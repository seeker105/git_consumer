class User < ActiveRecord::Base

  def initialize
    @service = GithubService.new
  end

  def self.service
    
  end

  def self.from_omniauth(auth_info)
    where(uid: auth_info[:uid]).first_or_create do |new_user|
      new_user.uid             = auth_info.uid
      new_user.name            = auth_info.extra.raw_info.name
      new_user.screen_name     = auth_info.extra.raw_info.login
      new_user.email           = auth_info.extra.raw_info.email
      new_user.oauth_token     = auth_info.credentials.token
      # byebug
      new_user.profile_pic_url  = auth_info.extra.raw_info.avatar_url
    end
  end

  def count(selector)
    @service = GithubService.new

    @service.count(self, selector)
  end

  def contributions
    @service.contributions(self)
  end
end
