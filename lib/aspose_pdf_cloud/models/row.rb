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
  # Represents a row of the table.
  class Row
    # Gets or sets the background color.
    attr_accessor :background_color

    # Gets or sets the border.
    attr_accessor :border

    # Sets the cells of the row.
    attr_accessor :cells

    # Gets default cell border;
    attr_accessor :default_cell_border

    # Gets height for row;
    attr_accessor :min_row_height

    # Gets fixed row height - row may have fixed height;
    attr_accessor :fixed_row_height

    # Gets fixed row is in new page - page with this property should be printed to next page Default false;
    attr_accessor :is_in_new_page

    # Gets is row can be broken between two pages
    attr_accessor :is_row_broken

    # Gets or sets default text state for row cells
    attr_accessor :default_cell_text_state

    # Gets or sets default margin for row cells
    attr_accessor :default_cell_padding

    # Gets or sets the vertical alignment.
    attr_accessor :vertical_alignment


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'background_color' => :'BackgroundColor',
        :'border' => :'Border',
        :'cells' => :'Cells',
        :'default_cell_border' => :'DefaultCellBorder',
        :'min_row_height' => :'MinRowHeight',
        :'fixed_row_height' => :'FixedRowHeight',
        :'is_in_new_page' => :'IsInNewPage',
        :'is_row_broken' => :'IsRowBroken',
        :'default_cell_text_state' => :'DefaultCellTextState',
        :'default_cell_padding' => :'DefaultCellPadding',
        :'vertical_alignment' => :'VerticalAlignment'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'background_color' => :'Color',
        :'border' => :'BorderInfo',
        :'cells' => :'Array<Cell>',
        :'default_cell_border' => :'BorderInfo',
        :'min_row_height' => :'Float',
        :'fixed_row_height' => :'Float',
        :'is_in_new_page' => :'BOOLEAN',
        :'is_row_broken' => :'BOOLEAN',
        :'default_cell_text_state' => :'TextState',
        :'default_cell_padding' => :'MarginInfo',
        :'vertical_alignment' => :'VerticalAlignment'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'BackgroundColor')
        self.background_color = attributes[:'BackgroundColor']
      end

      if attributes.has_key?(:'Border')
        self.border = attributes[:'Border']
      end

      if attributes.has_key?(:'Cells')
        if (value = attributes[:'Cells']).is_a?(Array)
          self.cells = value
        end
      end

      if attributes.has_key?(:'DefaultCellBorder')
        self.default_cell_border = attributes[:'DefaultCellBorder']
      end

      if attributes.has_key?(:'MinRowHeight')
        self.min_row_height = attributes[:'MinRowHeight']
      end

      if attributes.has_key?(:'FixedRowHeight')
        self.fixed_row_height = attributes[:'FixedRowHeight']
      end

      if attributes.has_key?(:'IsInNewPage')
        self.is_in_new_page = attributes[:'IsInNewPage']
      end

      if attributes.has_key?(:'IsRowBroken')
        self.is_row_broken = attributes[:'IsRowBroken']
      end

      if attributes.has_key?(:'DefaultCellTextState')
        self.default_cell_text_state = attributes[:'DefaultCellTextState']
      end

      if attributes.has_key?(:'DefaultCellPadding')
        self.default_cell_padding = attributes[:'DefaultCellPadding']
      end

      if attributes.has_key?(:'VerticalAlignment')
        self.vertical_alignment = attributes[:'VerticalAlignment']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @cells.nil?
        invalid_properties.push("invalid value for 'cells', cells cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @cells.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          background_color == o.background_color &&
          border == o.border &&
          cells == o.cells &&
          default_cell_border == o.default_cell_border &&
          min_row_height == o.min_row_height &&
          fixed_row_height == o.fixed_row_height &&
          is_in_new_page == o.is_in_new_page &&
          is_row_broken == o.is_row_broken &&
          default_cell_text_state == o.default_cell_text_state &&
          default_cell_padding == o.default_cell_padding &&
          vertical_alignment == o.vertical_alignment
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [background_color, border, cells, default_cell_border, min_row_height, fixed_row_height, is_in_new_page, is_row_broken, default_cell_text_state, default_cell_padding, vertical_alignment].hash
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
