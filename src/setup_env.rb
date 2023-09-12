require 'json'

def setup_env
  env_path = './env.json'
  serialized_env = File.read(env_path)
  return JSON.parse(serialized_env)
end
