require 'report_builder'
require 'date'

at_exit do
  ReportBuilder.configure do |config|
    config.input_path = 'reports/report.json'
    config.report_path = 'reports/report'
    config.report_types = [:html]
    config.report_title = "Report Test"
    config.voice_commands = true
    config.color = 'green'
    config.additional_info = {DateTime: DateTime.now, Project: 'teste_'}
  end
  ReportBuilder.build_report
end