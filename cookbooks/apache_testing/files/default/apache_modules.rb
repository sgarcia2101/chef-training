Ohai.plugin :Apache do
  provides 'apache/modules'

  collect_data :default do
    apache(Mash.new)    

    so = shell_out("apachectl -v")
    # Sample output:
    # Server version: Apache/2.2.15 (Unix)
    # Server built:   Jun 19 2018 15:45:13
    if so.exitstatus == 0
      output = so.stdout.split
      apache[:version] = output[2]
      if output.length >= 10
        apache[:builddate] = "%s %s %s %s" % [output[6], output[7], output[8], output[9]]
      end
    end

    modules_cmd = shell_out('apachectl -t -D DUMP_MODULES')
    apache[:modules] = modules_cmd.stdout.gsub("Loaded Modules:\n ", "").gsub("\n ", "|").gsub("\n", "|").split("|")
  end
end
