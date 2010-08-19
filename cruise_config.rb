Project.configure do |project|
  project.scheduler.polling_interval = 1.minute

  case project.name
  when "client_library_dotnet_integration_master"
    project.build_command = "CRUISE_BUILD=#{project.name} GATEWAY_PORT=6010 rake cruise"
    project.triggered_by :gateway_master
  end
end
