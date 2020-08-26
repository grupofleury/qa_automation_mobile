require "report_builder"
options = {
  input_path: Dir["log/*.json"],
  report_path: "log/pretty_report",
  report_types: ["html"],
  report_title: "Relatório de Execução dos Testes",
  include_images: true,
}

ReportBuilder.build_report options
