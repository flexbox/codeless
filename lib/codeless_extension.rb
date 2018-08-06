require 'codeless_cli'

class MyFeature < Middleman::Extension
  # All the options for this extension
  option :foo, false, 'Controls whether we foo'

  def initialize(app, options_hash={}, &block)
    super

    puts options.foo
    puts options.foo
    puts options.foo
    puts options.foo
    puts options.foo
    puts options.foo
    puts options.foo
    puts options.foo
    puts options.foo
    puts options.foo
    puts options.foo
  end

  def after_build(builder)
    builder.thor.run './codeless_cli.rb'
  end
end

::Middleman::Extensions.register(:my_feature, MyFeature)
