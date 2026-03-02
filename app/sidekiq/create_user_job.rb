class CreateUserJob
  include Sidekiq::Job
  sidekiq_options queue: :critical

  def perform(*args)
    User.create(name: FFaker::Name.first_name, surname: FFaker::Name.last_name)
  end
end
