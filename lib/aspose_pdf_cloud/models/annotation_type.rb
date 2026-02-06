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

require 'date'
require 'time'

module AsposePdfCloud
  class AnnotationType
    
    TEXT = "Text".freeze
    CIRCLE = "Circle".freeze
    POLYGON = "Polygon".freeze
    POLY_LINE = "PolyLine".freeze
    LINE = "Line".freeze
    SQUARE = "Square".freeze
    FREE_TEXT = "FreeText".freeze
    HIGHLIGHT = "Highlight".freeze
    UNDERLINE = "Underline".freeze
    SQUIGGLY = "Squiggly".freeze
    STRIKE_OUT = "StrikeOut".freeze
    CARET = "Caret".freeze
    INK = "Ink".freeze
    LINK = "Link".freeze
    POPUP = "Popup".freeze
    FILE_ATTACHMENT = "FileAttachment".freeze
    SOUND = "Sound".freeze
    MOVIE = "Movie".freeze
    SCREEN = "Screen".freeze
    WIDGET = "Widget".freeze
    WATERMARK = "Watermark".freeze
    TRAP_NET = "TrapNet".freeze
    PRINTER_MARK = "PrinterMark".freeze
    REDACTION = "Redaction".freeze
    STAMP = "Stamp".freeze
    RICH_MEDIA = "RichMedia".freeze
    UNKNOWN = "Unknown".freeze
    PDF3_D = "PDF3D".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      # resolve issue with Concstant Name modification (ex: "FooName" to :FOO_NAME)
      # consantValues = AnnotationType.constants.select{|c| c.to_s == value}
      constantValues = AnnotationType.constants.select{ |const_name| AnnotationType.const_get(const_name) == value}
      
      raise "Invalid ENUM value #{value} for class #AnnotationType" if constantValues.empty?
      value
    end
  end

end
