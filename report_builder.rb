require 'report_builder'

time = Time.now.getutc
ReportBuilder.configure do |config|
 config.json_path = 'report.json'
 config.report_path = 'report/report'
 config.report_types = [:html]
 config.report_tabs = %w[Overview Features Scenarios Errors]
 config.report_title = 'Mekari Test'
 config.compress_images = false
 config.additional_info = { 'Project name' => 'Mekari Test', 'Platform' => 'Android', 'Report generated' => time }
end
ReportBuilder.build_report