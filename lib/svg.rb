# [Imported from http://github.com/cveneziani/middleman-boilerplate/]
require 'oga'

# SVG file inliner
#
# Examples
#
#   SVG.inline('images/square.svg', class: 'logo', alt: 'Website logo')
#   # => "<svg role="img" aria-label="Website logo" class="logo"
#          width="100" height="100" xmlns="http://www.w3.org/2000/svg">
#           <desc>Website logo</desc>
#           <path d="M10 10 H 90 V 90 H 10 L 10 10"/>
#         </svg>"
class SVG
  private

  attr_reader :file_path, :options

  public

  # Public: Convert a SVG file into an inline version
  #
  # file_path - The file path of the SVG file
  # options   - Hash of options (default: {})
  #             :class - String for any class(es) to be applied to the `svg` tag
  #                      Override any existing class value.
  #             :alt   - String used to add accessibility and SEO to the SVG
  #                      - Set `role="img"` and `aria-label` attributes
  #                      - Add a `desc` element
  #
  # Examples
  #
  #   SVG.inline('images/square.svg')
  #   # => "<svg class="default-class" width="100" height="100"
  #          xmlns="http://www.w3.org/2000/svg">
  #           <path d="M10 10 H 90 V 90 H 10 L 10 10"/>
  #         </svg>"
  #   SVG.inline('images/square.svg', class: 'logo', alt: 'Website logo')
  #   # => "<svg role="img" aria-label="Website logo" class="logo"
  #          width="100" height="100" xmlns="http://www.w3.org/2000/svg">
  #           <desc>Website logo</desc>
  #           <path d="M10 10 H 90 V 90 H 10 L 10 10"/>
  #         </svg>"
  #
  # Returns the inlined SVG as a String
  def self.inline(file_path, options={})
    new(file_path, options).inline
  end

  def initialize(file_path, options={})
    @file_path = file_path
    @options   = options
  end

  # Public: See doc of .inline method.
  def inline
    return read_file if options.empty?
    inline_with_options
  end

  private

  def inline_with_options
    document        = Oga.parse_xml(File.open(file_path))
    svg             = document.css('svg').first

    svg.set('role', 'img')

    apply_class_option(svg) if options[:class]
    apply_alt_option(svg)   if options[:alt]

    document.to_xml
  end

  def apply_alt_option(svg)
    desc            = Oga::XML::Element.new(name: :desc)
    desc.inner_text = options[:alt]

    svg.set('aria-label', options[:alt])
    svg.children << desc
  end

  def apply_class_option(svg)
    svg.set(:class, options[:class])
  end

  def read_file
    File.read(file_path)
  end
end
