require 'bundler'
Bundler.setup

require 'rake4latex'

Rake4LaTeX::Programms['pdflatex'] = {
  'cmd' => 'pdflatex',
  'parameters' => [
    { 'value' => '-shell-escape' },
    { 'value' => '-interaction=batchmode' },
    { 'name' => '-output-directory=',
      'value_key' => :output_dir,
      'optional' => true
    },
    { 'value_key' => :filename }
  ]
}

task :basefile => 'portobello_road.tex'
file 'portobello_road.pdf' => 'portobello_road.tex'

# Force compilation
task :touch => 'portobello_road.tex'

task :clean do
  list = Rake::FileList["**/*.toc", "**/*.ind", "**/*.idx", "**/*.ilg", "**/*.log", "**/*.aux", "**/*.glo", "**/*.ist", "**/*.nlo", "**/*.acn", "**/*.glg", "**/*.gls", "**/*.acr", "**/*.alg", "**/*.tmp.dot", "**/*.tmp.tex", "**/*.out", "**/*.lof"]
  list.each do |file|
    FileUtils.rm(file)
  end
end

#Define the default task
task :default do |t, args|
  Rake::Task[:touch].execute
  Rake::Task[:clean].execute
  Rake::Task['portobello_road.pdf'].execute
  Rake::Task[:make_glossaries].execute
  Rake::Task['portobello_road.pdf'].execute
  Rake::Task[:statistic].execute
  Rake::Task[:clean].execute
end

task :make_glossaries do |t, args|
  sh "makeglossaries portobello_road"
end
