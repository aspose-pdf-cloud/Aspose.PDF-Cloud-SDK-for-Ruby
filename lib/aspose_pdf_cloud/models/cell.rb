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
  # Represents a cell of the table's row.
  class Cell
    # Gets or sets the cell have border.
    attr_accessor :is_no_border

    # Gets or sets the padding.
    attr_accessor :margin

    # Gets or sets the border.
    attr_accessor :border

    # Gets or sets the background color.
    attr_accessor :background_color

    # Gets or sets the background image file.
    attr_accessor :background_image_file

    # Gets or sets path of the background image file from storage.
    attr_accessor :background_image_storage_file

    # Gets or sets the alignment.
    attr_accessor :alignment

    # Gets or sets the default cell text state.
    attr_accessor :default_cell_text_state

    # Gets or sets the cell's formatted text.
    attr_accessor :paragraphs

    # Gets or sets the cell's text word wrapped.
    attr_accessor :is_word_wrapped

    # Gets or sets the vertical alignment.
    attr_accessor :vertical_alignment

    # Gets or sets the column span.
    attr_accessor :col_span

    # Gets or sets the row span.
    attr_accessor :row_span

    # Gets or sets the column width.
    attr_accessor :width

    # Gets or sets Html fragment.
    attr_accessor :html_fragment

    # Gets or sets ImageFragment list.
    attr_accessor :images


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'is_no_border' => :'IsNoBorder',
        :'margin' => :'Margin',
        :'border' => :'Border',
        :'background_color' => :'BackgroundColor',
        :'background_image_file' => :'BackgroundImageFile',
        :'background_image_storage_file' => :'BackgroundImageStorageFile',
        :'alignment' => :'Alignment',
        :'default_cell_text_state' => :'DefaultCellTextState',
        :'paragraphs' => :'Paragraphs',
        :'is_word_wrapped' => :'IsWordWrapped',
        :'vertical_alignment' => :'VerticalAlignment',
        :'col_span' => :'ColSpan',
        :'row_span' => :'RowSpan',
        :'width' => :'Width',
        :'html_fragment' => :'HtmlFragment',
        :'images' => :'Images'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'is_no_border' => :'BOOLEAN',
        :'margin' => :'MarginInfo',
        :'border' => :'BorderInfo',
        :'background_color' => :'Color',
        :'background_image_file' => :'String',
        :'background_image_storage_file' => :'String',
        :'alignment' => :'HorizontalAlignment',
        :'default_cell_text_state' => :'TextState',
        :'paragraphs' => :'Array<TextRect>',
        :'is_word_wrapped' => :'BOOLEAN',
        :'vertical_alignment' => :'VerticalAlignment',
        :'col_span' => :'Integer',
        :'row_span' => :'Integer',
        :'width' => :'Float',
        :'html_fragment' => :'String',
        :'images' => :'Array<ImageFragment>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'IsNoBorder')
        self.is_no_border = attributes[:'IsNoBorder']
      end

      if attributes.has_key?(:'Margin')
        self.margin = attributes[:'Margin']
      end

      if attributes.has_key?(:'Border')
        self.border = attributes[:'Border']
      end

      if attributes.has_key?(:'BackgroundColor')
        self.background_color = attributes[:'BackgroundColor']
      end

      if attributes.has_key?(:'BackgroundImageFile')
        self.background_image_file = attributes[:'BackgroundImageFile']
      end

      if attributes.has_key?(:'BackgroundImageStorageFile')
        self.background_image_storage_file = attributes[:'BackgroundImageStorageFile']
      end

      if attributes.has_key?(:'Alignment')
        self.alignment = attributes[:'Alignment']
      end

      if attributes.has_key?(:'DefaultCellTextState')
        self.default_cell_text_state = attributes[:'DefaultCellTextState']
      end

      if attributes.has_key?(:'Paragraphs')
        if (value = attributes[:'Paragraphs']).is_a?(Array)
          self.paragraphs = value
        end
      end

      if attributes.has_key?(:'IsWordWrapped')
        self.is_word_wrapped = attributes[:'IsWordWrapped']
      end

      if attributes.has_key?(:'VerticalAlignment')
        self.vertical_alignment = attributes[:'VerticalAlignment']
      end

      if attributes.has_key?(:'ColSpan')
        self.col_span = attributes[:'ColSpan']
      end

      if attributes.has_key?(:'RowSpan')
        self.row_span = attributes[:'RowSpan']
      end

      if attributes.has_key?(:'Width')
        self.width = attributes[:'Width']
      end

      if attributes.has_key?(:'HtmlFragment')
        self.html_fragment = attributes[:'HtmlFragment']
      end

      if attributes.has_key?(:'Images')
        if (value = attributes[:'Images']).is_a?(Array)
          self.images = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          is_no_border == o.is_no_border &&
          margin == o.margin &&
          border == o.border &&
          background_color == o.background_color &&
          background_image_file == o.background_image_file &&
          background_image_storage_file == o.background_image_storage_file &&
          alignment == o.alignment &&
          default_cell_text_state == o.default_cell_text_state &&
          paragraphs == o.paragraphs &&
          is_word_wrapped == o.is_word_wrapped &&
          vertical_alignment == o.vertical_alignment &&
          col_span == o.col_span &&
          row_span == o.row_span &&
          width == o.width &&
          html_fragment == o.html_fragment &&
          images == o.images
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [is_no_border, margin, border, background_color, background_image_file, background_image_storage_file, alignment, default_cell_text_state, paragraphs, is_word_wrapped, vertical_alignment, col_span, row_span, width, html_fragment, images].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = AsposePdfCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
