# Pdf Report Generator

It is a Ruby Gem to transform [**CDISC**](https://www.cdisc.org/) HTML + CSS reports into PDFs using the command-line utility [wkhtmltopdf](https://wkhtmltopdf.org/). This Gem is a stand alone package just based on the binaries of the utility.  

## Prerequirements

For be able to use the Gem succesfully you need to have installed on your machine the required binaries: [wkhtmltopdf](https://wkhtmltopdf.org/downloads.html) 
 
 The Gem is documentated using [Yard](https://yardoc.org/index.html) and for be able to see the generated docs be sure to have **Yard** installed in your application. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pdf-report-generator'
```
Or for local development you can set the path to the Gem:

```ruby
gem 'pdf-report-generator',  path: 'path/of/the/gem/pdf-report-generator' 
```	 
And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pdf-report-generator
   
## Usage

You can use CdiscChangesReport class to create template as like this:

```ruby
Reports::CdiscChangesReport.new.create(results, cls, current_user) render pdf: "cdisc_changes.pdf", page_size: current_user.paper_size, orientation:
'Landscape' end
end
```
Call body method from CdiscChangesReport to WickedCore and globle variable.

## Description

This Gem has the purpose to generate PDF reports from the **CDISC** HTML reports and making it in a short time as possible, even for large files.

The tool has the capacity to receive dynamic content like from a dynamically generated HTML view, which fed it from a form in precedence and transform that to a PDF. It has a specific layout in the Gem itself to conditionally submit form updates.

The Gem has the inbuilt capability to replace relative paths for assets to their absolute paths as it is required while rendering HTML as a string using **wkhtmltopdf** binary.

It has the feature to just take template name in case of static HTML reports pdf generation. Just place files in public folder in case of rails rack app and on providing a template file name to Gem instance.

No deadlock to single server processing. Reduced extra HTTP requests using resources within provided HTML and remove cross-domain URLs when rendering pdf requires wkhtmltopdf to hit your server again (for images, js, css)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/pdf-report-generator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Pdf::Report::Generator project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/pdf-report-generator/blob/master/CODE_OF_CONDUCT.md).
