require 'rake'
require 'logger'

LOGGER = Logger.new(STDOUT)
LOGGER.formatter = ->(s, d, p, m) { "#{s}: #{m}\n" }
LOGGER.level = Logger::INFO

# SOURCE = '_Templates'
# DESTINATION = "Kreeger's Templates"

ROUTES = {
  '_File Templates' => "Kreeger's File Templates",
}

task default: :build

desc 'Build out the templates directory so Xcode can use it.'
task build: [:prepare, :compile, :move_supporting_files]

task :prepare do
  ROUTES.each do |source, dest|
    directory = File.expand_path(dest)
    LOGGER.info "Preparing destination directory: #{directory}"
    FileUtils.mkdir_p directory
  end
end

task :compile do
  ROUTES.each do |source, dest|
    Dir[File.join(source, '*.json')].each do |file|
      basename = File.basename(file).gsub('.json', '.xctemplate')
      dest = File.join(dest, basename, 'TemplateInfo.plist')
      LOGGER.debug "Converting #{file} to #{basename}"
      FileUtils.mkdir_p File.dirname("#{dest}")
      command "plutil -convert xml1 \"#{file}\" -o \"#{dest}\""
    end
  end
end

task :move_supporting_files do
  LOGGER.info 'Moving other supporting files.'
  ROUTES.each do |source, dest|
    Dir[File.join(source, '*')].each do |file|
      next if file =~ /^\./
      next unless File.directory?(file)
      destination = File.join(dest, "#{File.basename(file)}.xctemplate")
      FileUtils.cp_r Dir["#{file}/*"], destination
    end
  end
end

task :cleanup do
  ROUTES.each { |source, dest| FileUtils.rm_r dest }
end

def command(cmd)
  LOGGER.debug cmd
  system cmd
end
