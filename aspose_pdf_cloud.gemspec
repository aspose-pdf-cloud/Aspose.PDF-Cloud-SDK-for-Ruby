# -*- encoding: utf-8 -*-
#
=begin
--------------------------------------------------------------------------------------------------------------------
Copyright (c) 2026 Aspose.PDF Cloud
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
--------------------------------------------------------------------------------------------------------------------
=end

require './lib/aspose_pdf_cloud/version'

Gem::Specification.new do |s|
  s.name        = 'aspose_pdf_cloud'
  s.version     = AsposePdfCloud::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Aspose PDF Cloud']
  s.email       = ['']
  s.homepage    = 'https://products.aspose.cloud/pdf/cloud'
  s.summary     = %q{Aspose.PDF Cloud}
  s.description = %q{Aspose.PDF Cloud is a REST API for creating and editing PDF files. Most popular features proposed by Aspose.PDF Cloud: PDF to Word, Convert PDF to Image, Merge PDF, Split PDF, Add Images to PDF, Rotate PDF. It can also be used to convert PDF files to different formats like DOC, HTML, XPS, TIFF and many more. Aspose.PDF Cloud gives you control: create PDFs from scratch or from HTML, XML, template, database, XPS or an image. Render PDFs to image formats such as JPEG, PNG, GIF, BMP, TIFF and many others. Aspose.PDF Cloud helps you manipulate elements of a PDF file like text, annotations, watermarks, signatures, bookmarks, stamps and so on. Its REST API also allows you to manage PDF pages by using features like merging, splitting, and inserting. Add images to a PDF file or convert PDF pages to images.}
  s.license     = 'MIT'

  s.required_ruby_version = '>= 2.6'

  s.add_runtime_dependency 'faraday', '>= 1.9.3'
  s.add_runtime_dependency 'faraday-multipart'

  s.files         = Dir['lib/**/*.rb']
  s.require_paths = ['lib']
end
