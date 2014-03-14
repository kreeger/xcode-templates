require 'rake'
require 'logger'

LOGGER = Logger.new(STDOUT)
LOGGER.formatter = ->(s, d, p, m) { "#{d.strftime('%H:%M:%S.%L')} #{s}: #{m}\n" }
LOGGER.level = Logger::INFO

SOURCE = '_Templates'
DESTINATION = "Kreeger's Templates"

task :default => :build

desc 'Build out the templates directory so Xcode can use it.'
task :build => [:prepare, :compile, :move_supporting_files]

task :prepare do
  directory = File.expand_path(DESTINATION)
  LOGGER.info "Preparing destination directory: #{directory}"
  FileUtils.mkdir_p directory
end

task :compile do
  LOGGER.info "Compiling #{Dir['_Templates/*.json'].count} templates."
  Dir[File.join(SOURCE, '*.json')].each do |file|
    basename = File.basename(file).gsub('.json', '.xctemplate')
    dest = File.join(DESTINATION, basename, "TemplateInfo.plist")
    LOGGER.debug "Converting #{file} to #{basename}"
    FileUtils.mkdir_p File.dirname("#{dest}")
    command "plutil -convert xml1 \"#{file}\" -o \"#{dest}\""
  end
end

task :move_supporting_files do
  LOGGER.info "Moving other supporting files."
  Dir[File.join(SOURCE, '*')].each do |file|
    next if file =~ /^\./
    next unless File.directory?(file)
    destination = File.join(DESTINATION, "#{File.basename(file)}.xctemplate")
    FileUtils.cp_r Dir["#{file}/*"], destination
  end
end

task :cleanup do
  FileUtils.rm_r DESTINATION
end

def command(cmd)
  LOGGER.debug cmd
  system cmd
end
