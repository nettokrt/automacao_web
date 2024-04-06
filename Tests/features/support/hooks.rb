After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')

    if scenario.failed?
      print_result(scenario_name.downcase!, 'fail')
    else
      print_result(scenario_name.downcase!, 'pass')
    end
end