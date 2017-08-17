environment 'production'

app_dir = File.expand_path('../../..', __FILE__)
tmp_dir = "#{app_dir}/tmp"
bind "unix://#{tmp_dir}/puma.sock"
pidfile "#{tmp_dir}/puma.pid"
state_path "#{tmp_dir}/puma.state"

workers 2
