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
  # Represents a table that can be added to the page.
  class Table
    # Link to the document.
    attr_accessor :links

    # Gets HorizontalAlignment of the table alignment.
    attr_accessor :alignment

    # Gets HorizontalAlignment of the table alignment.
    attr_accessor :horizontal_alignment

    # Gets VerticalAlignment of the annotation.
    attr_accessor :vertical_alignment

    # Gets or sets the table top coordinate.
    attr_accessor :top

    # Gets or sets the table left coordinate.
    attr_accessor :left

    # Gets or sets the default cell text state.
    attr_accessor :default_cell_text_state

    # Gets or sets the default cell padding.
    attr_accessor :default_cell_padding

    # Gets or sets the border.
    attr_accessor :border

    # Gets or sets a outer margin for paragraph (for pdf generation)
    attr_accessor :margin

    # Sets the rows of the table.
    attr_accessor :rows

    # Gets default cell border;
    attr_accessor :default_column_width

    # Gets default cell border;
    attr_accessor :default_cell_border

    # Gets or sets table vertial broken;
    attr_accessor :broken

    # Gets the column widths of the table.
    attr_accessor :column_widths

    # Gets the first rows count repeated for several pages
    attr_accessor :repeating_rows_count

    # Gets or sets the maximum columns count for table
    attr_accessor :repeating_columns_count

    # Gets the style for repeating rows
    attr_accessor :repeating_rows_style

    # Gets or sets the styles of the border corners
    attr_accessor :corner_style

    # Gets or sets break text for table
    attr_accessor :break_text

    # Gets or sets table background color
    attr_accessor :background_color

    # Gets or sets border included in column widhts.
    attr_accessor :is_borders_included

    # Gets or sets the table column adjustment.
    attr_accessor :column_adjustment

    # Gets ZIndex of the annotation.
    attr_accessor :z_index


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'links' => :'Links',
        :'alignment' => :'Alignment',
        :'horizontal_alignment' => :'HorizontalAlignment',
        :'vertical_alignment' => :'VerticalAlignment',
        :'top' => :'Top',
        :'left' => :'Left',
        :'default_cell_text_state' => :'DefaultCellTextState',
        :'default_cell_padding' => :'DefaultCellPadding',
        :'border' => :'Border',
        :'margin' => :'Margin',
        :'rows' => :'Rows',
        :'default_column_width' => :'DefaultColumnWidth',
        :'default_cell_border' => :'DefaultCellBorder',
        :'broken' => :'Broken',
        :'column_widths' => :'ColumnWidths',
        :'repeating_rows_count' => :'RepeatingRowsCount',
        :'repeating_columns_count' => :'RepeatingColumnsCount',
        :'repeating_rows_style' => :'RepeatingRowsStyle',
        :'corner_style' => :'CornerStyle',
        :'break_text' => :'BreakText',
        :'background_color' => :'BackgroundColor',
        :'is_borders_included' => :'IsBordersIncluded',
        :'column_adjustment' => :'ColumnAdjustment',
        :'z_index' => :'ZIndex'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'links' => :'Array<Link>',
        :'alignment' => :'HorizontalAlignment',
        :'horizontal_alignment' => :'HorizontalAlignment',
        :'vertical_alignment' => :'VerticalAlignment',
        :'top' => :'Float',
        :'left' => :'Float',
        :'default_cell_text_state' => :'TextState',
        :'default_cell_padding' => :'MarginInfo',
        :'border' => :'BorderInfo',
        :'margin' => :'MarginInfo',
        :'rows' => :'Array<Row>',
        :'default_column_width' => :'String',
        :'default_cell_border' => :'BorderInfo',
        :'broken' => :'TableBroken',
        :'column_widths' => :'String',
        :'repeating_rows_count' => :'Integer',
        :'repeating_columns_count' => :'Integer',
        :'repeating_rows_style' => :'TextState',
        :'corner_style' => :'BorderCornerStyle',
        :'break_text' => :'TextRect',
        :'background_color' => :'Color',
        :'is_borders_included' => :'BOOLEAN',
        :'column_adjustment' => :'ColumnAdjustment',
        :'z_index' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Links')
        if (value = attributes[:'Links']).is_a?(Array)
          self.links = value
        end
      end

      if attributes.has_key?(:'Alignment')
        self.alignment = attributes[:'Alignment']
      end

      if attributes.has_key?(:'HorizontalAlignment')
        self.horizontal_alignment = attributes[:'HorizontalAlignment']
      end

      if attributes.has_key?(:'VerticalAlignment')
        self.vertical_alignment = attributes[:'VerticalAlignment']
      end

      if attributes.has_key?(:'Top')
        self.top = attributes[:'Top']
      end

      if attributes.has_key?(:'Left')
        self.left = attributes[:'Left']
      end

      if attributes.has_key?(:'DefaultCellTextState')
        self.default_cell_text_state = attributes[:'DefaultCellTextState']
      end

      if attributes.has_key?(:'DefaultCellPadding')
        self.default_cell_padding = attributes[:'DefaultCellPadding']
      end

      if attributes.has_key?(:'Border')
        self.border = attributes[:'Border']
      end

      if attributes.has_key?(:'Margin')
        self.margin = attributes[:'Margin']
      end

      if attributes.has_key?(:'Rows')
        if (value = attributes[:'Rows']).is_a?(Array)
          self.rows = value
        end
      end

      if attributes.has_key?(:'DefaultColumnWidth')
        self.default_column_width = attributes[:'DefaultColumnWidth']
      end

      if attributes.has_key?(:'DefaultCellBorder')
        self.default_cell_border = attributes[:'DefaultCellBorder']
      end

      if attributes.has_key?(:'Broken')
        self.broken = attributes[:'Broken']
      end

      if attributes.has_key?(:'ColumnWidths')
        self.column_widths = attributes[:'ColumnWidths']
      end

      if attributes.has_key?(:'RepeatingRowsCount')
        self.repeating_rows_count = attributes[:'RepeatingRowsCount']
      end

      if attributes.has_key?(:'RepeatingColumnsCount')
        self.repeating_columns_count = attributes[:'RepeatingColumnsCount']
      end

      if attributes.has_key?(:'RepeatingRowsStyle')
        self.repeating_rows_style = attributes[:'RepeatingRowsStyle']
      end

      if attributes.has_key?(:'CornerStyle')
        self.corner_style = attributes[:'CornerStyle']
      end

      if attributes.has_key?(:'BreakText')
        self.break_text = attributes[:'BreakText']
      end

      if attributes.has_key?(:'BackgroundColor')
        self.background_color = attributes[:'BackgroundColor']
      end

      if attributes.has_key?(:'IsBordersIncluded')
        self.is_borders_included = attributes[:'IsBordersIncluded']
      end

      if attributes.has_key?(:'ColumnAdjustment')
        self.column_adjustment = attributes[:'ColumnAdjustment']
      end

      if attributes.has_key?(:'ZIndex')
        self.z_index = attributes[:'ZIndex']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @rows.nil?
        invalid_properties.push("invalid value for 'rows', rows cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @rows.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          links == o.links &&
          alignment == o.alignment &&
          horizontal_alignment == o.horizontal_alignment &&
          vertical_alignment == o.vertical_alignment &&
          top == o.top &&
          left == o.left &&
          default_cell_text_state == o.default_cell_text_state &&
          default_cell_padding == o.default_cell_padding &&
          border == o.border &&
          margin == o.margin &&
          rows == o.rows &&
          default_column_width == o.default_column_width &&
          default_cell_border == o.default_cell_border &&
          broken == o.broken &&
          column_widths == o.column_widths &&
          repeating_rows_count == o.repeating_rows_count &&
          repeating_columns_count == o.repeating_columns_count &&
          repeating_rows_style == o.repeating_rows_style &&
          corner_style == o.corner_style &&
          break_text == o.break_text &&
          background_color == o.background_color &&
          is_borders_included == o.is_borders_included &&
          column_adjustment == o.column_adjustment &&
          z_index == o.z_index
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [links, alignment, horizontal_alignment, vertical_alignment, top, left, default_cell_text_state, default_cell_padding, border, margin, rows, default_column_width, default_cell_border, broken, column_widths, repeating_rows_count, repeating_columns_count, repeating_rows_style, corner_style, break_text, background_color, is_borders_included, column_adjustment, z_index].hash
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
