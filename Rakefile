task default: %w[test]

task :test do
  puts "\n 🔨  Building project\n"
  try "bundle exec middleman build"
end

task :deploy do
  puts "\n 🚀  Copying GitHub-specific files\n"
  try "cp -rv ./github/* ./build/"

  puts "\n 🚀  Deploying to GitHub\n"
  try "bundle exec middleman deploy"
end

namespace :travis do
  task :script do
    Rake::Task["test"].invoke
  end

  task :after_success do
    puts "\n 👌  Running Travis Deployment\n"
    puts "\n 👌  Setting up Git access\n"
    try "echo ${GH_TOKEN} > ./.git/credentials"
    try "git config --global user.name ${GH_USER}"
    try "git config --global user.email ${GH_EMAIL}"
    try "git remote set-url origin \"https://${GH_TOKEN}@github.com:flexbox/${GH_TITLE}.git\""

    Rake::Task["deploy"].invoke
  end
end

def try(command)
  system command
  if $? != 0 then
    raise "Command: `#{command}` exited with code #{$?.exitstatus}"
  end
end
