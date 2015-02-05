namespace :job do
  desc "Work hard!"
  task :work_hard, [:name, :seconds] => :environment do |t, args|
    puts HardWorker.perform_async(args.name, args.seconds)
  end
end
