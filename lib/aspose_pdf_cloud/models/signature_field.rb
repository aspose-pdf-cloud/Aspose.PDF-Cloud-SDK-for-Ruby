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
  # Provides SignatureField.
  class SignatureField
    # Link to the document.
    attr_accessor :links

    # Field name.
    attr_accessor :partial_name

    # Full Field name.
    attr_accessor :full_name

    # Field rectangle.
    attr_accessor :rect

    # Field value.
    attr_accessor :value

    # Page index.
    attr_accessor :page_index

    # Gets or sets height of the field.
    attr_accessor :height

    # Gets or sets width of the field.
    attr_accessor :width

    # Z index.
    attr_accessor :z_index

    # Is group.
    attr_accessor :is_group

    # Gets field parent.
    attr_accessor :parent

    # Property for Generator support. Used when field is added to header or footer. If true, this field will created once and it's appearance will be visible on all pages of the document. If false, separated field will be created for every document page.
    attr_accessor :is_shared_field

    # Gets Flags of the field.
    attr_accessor :flags

    # Color of the annotation.
    attr_accessor :color

    # Get the field content.
    attr_accessor :contents

    # Gets or sets a outer margin for paragraph (for pdf generation)
    attr_accessor :margin

    # Field highlighting mode.
    attr_accessor :highlighting

    # Gets HorizontalAlignment of the field.
    attr_accessor :horizontal_alignment

    # Gets VerticalAlignment of the field.
    attr_accessor :vertical_alignment

    # Gets or sets annotation border characteristics.
    attr_accessor :border

    # Gets signature object. This object contains signature data regarding public-key cryptographic standards. Classes PKCS1, PKCS7 and PKCS7Detached represent all supported types of signature objects.
    attr_accessor :signature


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'links' => :'Links',
        :'partial_name' => :'PartialName',
        :'full_name' => :'FullName',
        :'rect' => :'Rect',
        :'value' => :'Value',
        :'page_index' => :'PageIndex',
        :'height' => :'Height',
        :'width' => :'Width',
        :'z_index' => :'ZIndex',
        :'is_group' => :'IsGroup',
        :'parent' => :'Parent',
        :'is_shared_field' => :'IsSharedField',
        :'flags' => :'Flags',
        :'color' => :'Color',
        :'contents' => :'Contents',
        :'margin' => :'Margin',
        :'highlighting' => :'Highlighting',
        :'horizontal_alignment' => :'HorizontalAlignment',
        :'vertical_alignment' => :'VerticalAlignment',
        :'border' => :'Border',
        :'signature' => :'Signature'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'links' => :'Array<Link>',
        :'partial_name' => :'String',
        :'full_name' => :'String',
        :'rect' => :'Rectangle',
        :'value' => :'String',
        :'page_index' => :'Integer',
        :'height' => :'Float',
        :'width' => :'Float',
        :'z_index' => :'Integer',
        :'is_group' => :'BOOLEAN',
        :'parent' => :'FormField',
        :'is_shared_field' => :'BOOLEAN',
        :'flags' => :'Array<AnnotationFlags>',
        :'color' => :'Color',
        :'contents' => :'String',
        :'margin' => :'MarginInfo',
        :'highlighting' => :'LinkHighlightingMode',
        :'horizontal_alignment' => :'HorizontalAlignment',
        :'vertical_alignment' => :'VerticalAlignment',
        :'border' => :'Border',
        :'signature' => :'Signature'
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

      if attributes.has_key?(:'PartialName')
        self.partial_name = attributes[:'PartialName']
      end

      if attributes.has_key?(:'FullName')
        self.full_name = attributes[:'FullName']
      end

      if attributes.has_key?(:'Rect')
        self.rect = attributes[:'Rect']
      end

      if attributes.has_key?(:'Value')
        self.value = attributes[:'Value']
      end

      if attributes.has_key?(:'PageIndex')
        self.page_index = attributes[:'PageIndex']
      end

      if attributes.has_key?(:'Height')
        self.height = attributes[:'Height']
      end

      if attributes.has_key?(:'Width')
        self.width = attributes[:'Width']
      end

      if attributes.has_key?(:'ZIndex')
        self.z_index = attributes[:'ZIndex']
      end

      if attributes.has_key?(:'IsGroup')
        self.is_group = attributes[:'IsGroup']
      end

      if attributes.has_key?(:'Parent')
        self.parent = attributes[:'Parent']
      end

      if attributes.has_key?(:'IsSharedField')
        self.is_shared_field = attributes[:'IsSharedField']
      end

      if attributes.has_key?(:'Flags')
        if (value = attributes[:'Flags']).is_a?(Array)
          self.flags = value
        end
      end

      if attributes.has_key?(:'Color')
        self.color = attributes[:'Color']
      end

      if attributes.has_key?(:'Contents')
        self.contents = attributes[:'Contents']
      end

      if attributes.has_key?(:'Margin')
        self.margin = attributes[:'Margin']
      end

      if attributes.has_key?(:'Highlighting')
        self.highlighting = attributes[:'Highlighting']
      end

      if attributes.has_key?(:'HorizontalAlignment')
        self.horizontal_alignment = attributes[:'HorizontalAlignment']
      end

      if attributes.has_key?(:'VerticalAlignment')
        self.vertical_alignment = attributes[:'VerticalAlignment']
      end

      if attributes.has_key?(:'Border')
        self.border = attributes[:'Border']
      end

      if attributes.has_key?(:'Signature')
        self.signature = attributes[:'Signature']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @page_index.nil?
        invalid_properties.push("invalid value for 'page_index', page_index cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @page_index.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          links == o.links &&
          partial_name == o.partial_name &&
          full_name == o.full_name &&
          rect == o.rect &&
          value == o.value &&
          page_index == o.page_index &&
          height == o.height &&
          width == o.width &&
          z_index == o.z_index &&
          is_group == o.is_group &&
          parent == o.parent &&
          is_shared_field == o.is_shared_field &&
          flags == o.flags &&
          color == o.color &&
          contents == o.contents &&
          margin == o.margin &&
          highlighting == o.highlighting &&
          horizontal_alignment == o.horizontal_alignment &&
          vertical_alignment == o.vertical_alignment &&
          border == o.border &&
          signature == o.signature
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [links, partial_name, full_name, rect, value, page_index, height, width, z_index, is_group, parent, is_shared_field, flags, color, contents, margin, highlighting, horizontal_alignment, vertical_alignment, border, signature].hash
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
