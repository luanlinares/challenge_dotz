# frozen_string_literal: true

Before do
  @planets = Planetsget.new
  @films = Filmsget.new
end

at_exit do
  time = Time.now
  ReportBuilder.configure do |config|
    config.json_path = 'results/report.json'
    config.report_path = 'results/cucumber_web_report'
    config.report_types = [:html]
    config.color = 'blue'
    config.report_tabs = %w[Overview Features Scenarios Errors]
    config.report_title = 'Challenge Dotz'
    config.compress_images = false
    config.additional_info = { 'Project name' => 'Challenge Dotz', 'Environment' => (ENV['AMBIENTE']).to_s,
                               'Report generated' => time }
  end
  ReportBuilder.build_report
end

After do |scenario|
  scenario_name = scenario.name.gsub(/\s+/, '').tr('/', '')
end
