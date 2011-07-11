redis = Redis.new(:host => REDIS_HOST, :port => REDIS_PORT, :thread_safe => true, :db => REDIS_DB)
Resque.redis = redis