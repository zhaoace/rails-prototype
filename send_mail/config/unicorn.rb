module Rails
  class <<self
    def root
      File.expand_path(__FILE__).split('/')[0..-3].join('/')
    end
  end
end
rails_env = ENV["RAILS_ENV"] || "production"

preload_app true
working_directory Rails.root
pid "#{Rails.root}/tmp/pids/unicorn.pid"
stderr_path "#{Rails.root}/log/unicornerr.log"
stdout_path "#{Rails.root}/log/unicornout.log"

listen 5000, :tcp_nopush => false

# 这里设置监听地址，将与nginx配置关联
# listen "/tmp/unicorn.dothide.sock"
# worker_processes 6
# timeout 120

if GC.respond_to?(:copy_on_write_friendly=)
  GC.copy_on_write_friendly = true
end

before_fork do |server, worker|
  old_pid = "#{Rails.root}/tmp/pids/unicorn.pid.oldbin"
  if File.exists?(old_pid) && server.pid != old_pid
    begin
      Process.kill("QUIT", File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
      puts "Send 'QUIT' signal to unicorn error!"
    end
  end
end
