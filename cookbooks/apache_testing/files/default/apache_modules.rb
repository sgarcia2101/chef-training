Ohai.plugin :Apache do
  provides 'apache/modules'

  collect_data :default do
    apache(Mash.new)
    modules_cmd = shell_out('apachectl -t -D DUMP_MODULES')
    apache[:modules] = modules_cmd.stdout

    so = shell_out("apachectl -v")
    # Sample output:
    # Server version: Apache/2.2.15 (Unix)
    # Server built:   Jun 19 2018 15:45:13
    if so.exitstatus == 0
      output = so.stdout.split
      apache[:version] = output[2]
    end
  end
end
