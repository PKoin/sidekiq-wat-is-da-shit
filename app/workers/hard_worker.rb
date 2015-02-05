class HardWorker
  include Sidekiq::Worker
  sidekiq_options retry: 1

  def perform(name, seconds)
    fail 'Oops! I did it again.' if name == 'britney'

    logger.debug "#{ name }: I'm doing hard work… ZzZ"
    sleep seconds.to_i
    logger.debug "#{ name }: IT'S OK. I'M NOT SLEEPING!"
  end
end
