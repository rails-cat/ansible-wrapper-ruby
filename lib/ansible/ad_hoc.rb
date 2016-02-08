module Ansible
  module AdHoc
    extend self
    BIN = 'ansible'

    def run(cmd, _opts={})
      cmd_line = [Ansible.env_string, BIN, cmd]*' '
      `#{cmd_line}`
    end
  end
end