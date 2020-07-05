set :stage :production
server '45.79.191.45', user: 'indexical', roles: [:app, :web, :db]

set :puma_nginx, :app
set :default_env, {
  "PATH": "$HOME/.rbenv/bin:$HOME/.yarn/bin:$PATH",
  "CURRENT_GIT_SHA": (`git rev-parse HEAD`).strip
}
