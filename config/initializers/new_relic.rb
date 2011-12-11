# Ensure the agent is started using Unicorn
# This is needed when using Unicorn and preload_app is not set to true.
# See http://support.newrelic.com/kb/troubleshooting/unicorn-no-data
if defined?(Unicorn) && Rails.env.production?
  NewRelic::Agent.after_fork(force_reconnect: true)
end
