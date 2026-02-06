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
  # Represents Pdf stamps.
  class Stamp
    # Gets the stamp type.
    attr_accessor :type

    # Sets or gets a bool value that indicates the content is stamped as background. If the value is true, the stamp content is layed at the bottom. By defalt, the value is false, the stamp content is layed at the top.
    attr_accessor :background

    # Gets or sets bottom margin of stamp.
    attr_accessor :bottom_margin

    # Gets or sets Horizontal alignment of stamp on the page. 
    attr_accessor :horizontal_alignment

    # Gets or sets left margin of stamp.
    attr_accessor :left_margin

    # Gets or sets a value to indicate the stamp opacity. The value is from 0.0 to 1.0. By default the value is 1.0.
    attr_accessor :opacity

    # Gets or sets right margin of stamp.
    attr_accessor :right_margin

    # Sets or gets the rotation of stamp content according Rotation values. Note. This property is for set angles which are multiples of 90 degrees (0, 90, 180, 270 degrees). To set arbitrary angle use RotateAngle property.  If angle set by ArbitraryAngle is not multiple of 90 then Rotate property returns Rotation.None.
    attr_accessor :rotate

    # Gets or sets rotate angle of stamp in degrees. This property allows to set arbitrary rotate angle. 
    attr_accessor :rotate_angle

    # Gets or sets top margin of stamp.
    attr_accessor :top_margin

    # Gets or sets vertical alignment of stamp on page.
    attr_accessor :vertical_alignment

    # Horizontal stamp coordinate, starting from the left.
    attr_accessor :x_indent

    # Vertical stamp coordinate, starting from the bottom.
    attr_accessor :y_indent

    # Zooming factor of the stamp. Allows to scale stamp.
    attr_accessor :zoom

    # Alignment of the text inside the stamp.
    attr_accessor :text_alignment

    # Gets or sets string value which is used as stamp on the page.
    attr_accessor :value

    # Gets text properties of the stamp. See TextState for details.
    attr_accessor :text_state

    # Gets or sets the file name.
    attr_accessor :file_name

    # Gets or sets image width. Setting this property allos to scal image horizontally.
    attr_accessor :width

    # Gets or sets image height. Setting this image allows to scale image vertically.
    attr_accessor :height

    # Gets or sets the index of the page.
    attr_accessor :page_index

    # Gets or sets value of the number of starting page. Other pages will be numbered starting from this value.
    attr_accessor :starting_number


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'Type',
        :'background' => :'Background',
        :'bottom_margin' => :'BottomMargin',
        :'horizontal_alignment' => :'HorizontalAlignment',
        :'left_margin' => :'LeftMargin',
        :'opacity' => :'Opacity',
        :'right_margin' => :'RightMargin',
        :'rotate' => :'Rotate',
        :'rotate_angle' => :'RotateAngle',
        :'top_margin' => :'TopMargin',
        :'vertical_alignment' => :'VerticalAlignment',
        :'x_indent' => :'XIndent',
        :'y_indent' => :'YIndent',
        :'zoom' => :'Zoom',
        :'text_alignment' => :'TextAlignment',
        :'value' => :'Value',
        :'text_state' => :'TextState',
        :'file_name' => :'FileName',
        :'width' => :'Width',
        :'height' => :'Height',
        :'page_index' => :'PageIndex',
        :'starting_number' => :'StartingNumber'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'StampType',
        :'background' => :'BOOLEAN',
        :'bottom_margin' => :'Float',
        :'horizontal_alignment' => :'HorizontalAlignment',
        :'left_margin' => :'Float',
        :'opacity' => :'Float',
        :'right_margin' => :'Float',
        :'rotate' => :'Rotation',
        :'rotate_angle' => :'Float',
        :'top_margin' => :'Float',
        :'vertical_alignment' => :'VerticalAlignment',
        :'x_indent' => :'Float',
        :'y_indent' => :'Float',
        :'zoom' => :'Float',
        :'text_alignment' => :'HorizontalAlignment',
        :'value' => :'String',
        :'text_state' => :'TextState',
        :'file_name' => :'String',
        :'width' => :'Float',
        :'height' => :'Float',
        :'page_index' => :'Integer',
        :'starting_number' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Type')
        self.type = attributes[:'Type']
      end

      if attributes.has_key?(:'Background')
        self.background = attributes[:'Background']
      end

      if attributes.has_key?(:'BottomMargin')
        self.bottom_margin = attributes[:'BottomMargin']
      end

      if attributes.has_key?(:'HorizontalAlignment')
        self.horizontal_alignment = attributes[:'HorizontalAlignment']
      end

      if attributes.has_key?(:'LeftMargin')
        self.left_margin = attributes[:'LeftMargin']
      end

      if attributes.has_key?(:'Opacity')
        self.opacity = attributes[:'Opacity']
      end

      if attributes.has_key?(:'RightMargin')
        self.right_margin = attributes[:'RightMargin']
      end

      if attributes.has_key?(:'Rotate')
        self.rotate = attributes[:'Rotate']
      end

      if attributes.has_key?(:'RotateAngle')
        self.rotate_angle = attributes[:'RotateAngle']
      end

      if attributes.has_key?(:'TopMargin')
        self.top_margin = attributes[:'TopMargin']
      end

      if attributes.has_key?(:'VerticalAlignment')
        self.vertical_alignment = attributes[:'VerticalAlignment']
      end

      if attributes.has_key?(:'XIndent')
        self.x_indent = attributes[:'XIndent']
      end

      if attributes.has_key?(:'YIndent')
        self.y_indent = attributes[:'YIndent']
      end

      if attributes.has_key?(:'Zoom')
        self.zoom = attributes[:'Zoom']
      end

      if attributes.has_key?(:'TextAlignment')
        self.text_alignment = attributes[:'TextAlignment']
      end

      if attributes.has_key?(:'Value')
        self.value = attributes[:'Value']
      end

      if attributes.has_key?(:'TextState')
        self.text_state = attributes[:'TextState']
      end

      if attributes.has_key?(:'FileName')
        self.file_name = attributes[:'FileName']
      end

      if attributes.has_key?(:'Width')
        self.width = attributes[:'Width']
      end

      if attributes.has_key?(:'Height')
        self.height = attributes[:'Height']
      end

      if attributes.has_key?(:'PageIndex')
        self.page_index = attributes[:'PageIndex']
      end

      if attributes.has_key?(:'StartingNumber')
        self.starting_number = attributes[:'StartingNumber']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          background == o.background &&
          bottom_margin == o.bottom_margin &&
          horizontal_alignment == o.horizontal_alignment &&
          left_margin == o.left_margin &&
          opacity == o.opacity &&
          right_margin == o.right_margin &&
          rotate == o.rotate &&
          rotate_angle == o.rotate_angle &&
          top_margin == o.top_margin &&
          vertical_alignment == o.vertical_alignment &&
          x_indent == o.x_indent &&
          y_indent == o.y_indent &&
          zoom == o.zoom &&
          text_alignment == o.text_alignment &&
          value == o.value &&
          text_state == o.text_state &&
          file_name == o.file_name &&
          width == o.width &&
          height == o.height &&
          page_index == o.page_index &&
          starting_number == o.starting_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, background, bottom_margin, horizontal_alignment, left_margin, opacity, right_margin, rotate, rotate_angle, top_margin, vertical_alignment, x_indent, y_indent, zoom, text_alignment, value, text_state, file_name, width, height, page_index, starting_number].hash
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
