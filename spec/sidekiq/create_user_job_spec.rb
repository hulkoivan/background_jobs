require 'rails_helper'

describe CreateUserJob, type: :job do
  it 'creates a user' do
    expect { CreateUserJob.new.perform }.to change(User, :count).by(1)
  end

  it { expect { CreateUserJob.perform_async }.to enqueue_sidekiq_job }
end
