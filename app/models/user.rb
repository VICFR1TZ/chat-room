class User < ApplicationRecord

  validates_uniqueness_of :username

  def self.generate
    adjectives = ['Ancient', 'Creative', 'Dangerous', 'Critical', 'Effective', 'Flying', 'gilded']
    nouns = ['Highway', 'Intern', 'Jackhammer', 'Trader', 'Boss', 'Lion', 'Master', 'FR1TZ']
    number = rand.to_s[2..4]
    username = "#{adjectives.sample}-#{nouns.sample}-#{number}"
    create(username: username)
  end

end
