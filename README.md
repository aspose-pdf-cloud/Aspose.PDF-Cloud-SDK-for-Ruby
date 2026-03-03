![](https://img.shields.io/badge/api-v3.0-lightgrey) ![Gem](https://img.shields.io/gem/v/aspose_pdf_cloud) ![Gem](https://img.shields.io/gem/dt/aspose_pdf_cloud) [![GitHub license](https://img.shields.io/github/license/aspose-pdf-cloud/aspose-pdf-cloud-ruby)](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-ruby/blob/master/LICENSE)
# Ruby REST API to Process PDF in Cloud
[Aspose.PDF Cloud](https://products.aspose.cloud/pdf) is a true REST API that enables you to perform a wide range of document processing operations including creation, manipulation, conversion and rendering of PDF documents in the cloud.

Our Cloud SDKs are wrappers around REST API in various programming languages, allowing you to process documents in language of your choice quickly and easily, gaining all benefits of strong types and IDE highlights. This repository contains new generation SDKs for Aspose.PDF Cloud and examples.

These SDKs are now fully supported. If you have any questions, see any bugs or have enhancement request, feel free to reach out to us at [Free Support Forums](https://forum.aspose.cloud/c/pdf).

Extract Text & Images of a PDF document online https://products.aspose.app/pdf/parser.

## PDF Processing Features
- Add PDF document's header & footer in text or image format.
- Add tables & stamps (text or image) to PDF documents.
- Append multiple PDF documents to an existing file.
- Work with PDF attachments, annotations, & form fields.
- Apply encryption or decryption to PDF documents & set a password.
- Delete all stamps & tables from a page or entire PDF document.
- Delete a specific stamp or table from the PDF document by its ID.
- Replace single or multiple instances of text on a PDF page or from the entire document.
- Extensive support for converting PDF documents to various other file formats.
- Extract various elements of PDF files & make PDF documents optimized.

## Read & Write PDF Formats
PDF, EPUB, HTML, TeX, SVG, XML, XPS, FDF, XFDF

## Save PDF As
XLS, XLSX, PPTX, DOC, DOCX, MobiXML, JPEG, EMF, PNG, BMP, GIF, TIFF, Text

## Read PDF Formats
MHT, PCL, PS, XSLFO, MD

## Enhancements in Version 26.2
- Added import/export xml method
- A new version of Aspose.PDF Cloud was prepared using the latest version of Aspose.PDF for .NET.

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build aspose_pdf_cloud.gemspec
```

Then either install the gem locally:

```shell
gem install ./aspose_pdf_cloud-26.2.0.gem
```
(for development, run `gem install --dev ./aspose_pdf_cloud-26.2.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'aspose_pdf_cloud', '~> 26.2.0'

### Install from Git

The Ruby gem is hosted at a git repository: https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-ruby . 
Add the following in the Gemfile:

    gem 'aspose_pdf_cloud', :git => 'https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-ruby.git'

## Get PDF Page Annotations in Ruby

```ruby
    # Get your ClientId and ClientSecret from https://dashboard.aspose.cloud (free registration required).
    @pdf_api = PdfApi.new('MY_CLIENT_ID', 'MY_CLIENT_SECRET')    
    file_name = 'PdfWithAnnotations.pdf'
    page_number = 2
    opts = {
      :folder => 'tempFolder'
    }
    response = @pdf_api.get_page_annotations(file_name, page_number, opts)
```

## SelfHost Aspose.PDF Cloud
Create **PdfApi** object without **client_secret** and **client_id** parameters, but with **host** parameter set to *url of SelfHost Aspose.PDF Cloud* and **self_host** parameter set to *true*:
```ruby
    @pdf_api = PdfApi.new('', '', 'MY_SELFHOST_URL', true)
```

## Unit Tests
Aspose PDF SDK includes a suite of unit tests within the "test" subdirectory. These Unit Tests also serves as examples of how to use the Aspose PDF SDK.

## Licensing
All Aspose.PDF Cloud SDKs are licensed under [MIT License](LICENSE).
