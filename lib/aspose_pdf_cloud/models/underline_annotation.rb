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
  # Provides UnderlineAnnotation.
  class UnderlineAnnotation
    # Link to the document.
    attr_accessor :links

    # Color of the annotation.
    attr_accessor :color

    # Get the annotation content.
    attr_accessor :contents

    # The date and time when the annotation was last modified.
    attr_accessor :modified

    # Gets ID of the annotation.
    attr_accessor :id

    # Gets Flags of the annotation.
    attr_accessor :flags

    # Gets Name of the annotation.
    attr_accessor :name

    # Gets Rect of the annotation.
    attr_accessor :rect

    # Gets PageIndex of the annotation.
    attr_accessor :page_index

    # Gets ZIndex of the annotation.
    attr_accessor :z_index

    # Gets HorizontalAlignment of the annotation.
    attr_accessor :horizontal_alignment

    # Gets VerticalAlignment of the annotation.
    attr_accessor :vertical_alignment

    # The date and time when the annotation was created.
    attr_accessor :creation_date

    # Get the annotation subject.
    attr_accessor :subject

    # Get the annotation title.
    attr_accessor :title

    # Get the annotation RichText.
    attr_accessor :rich_text

    # Gets or sets an array of points specifying the coordinates of n quadrilaterals. Each quadrilateral encompasses a word or group of contiguous words in the text underlying the annotation.
    attr_accessor :quad_points


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'links' => :'Links',
        :'color' => :'Color',
        :'contents' => :'Contents',
        :'modified' => :'Modified',
        :'id' => :'Id',
        :'flags' => :'Flags',
        :'name' => :'Name',
        :'rect' => :'Rect',
        :'page_index' => :'PageIndex',
        :'z_index' => :'ZIndex',
        :'horizontal_alignment' => :'HorizontalAlignment',
        :'vertical_alignment' => :'VerticalAlignment',
        :'creation_date' => :'CreationDate',
        :'subject' => :'Subject',
        :'title' => :'Title',
        :'rich_text' => :'RichText',
        :'quad_points' => :'QuadPoints'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'links' => :'Array<Link>',
        :'color' => :'Color',
        :'contents' => :'String',
        :'modified' => :'String',
        :'id' => :'String',
        :'flags' => :'Array<AnnotationFlags>',
        :'name' => :'String',
        :'rect' => :'Rectangle',
        :'page_index' => :'Integer',
        :'z_index' => :'Integer',
        :'horizontal_alignment' => :'HorizontalAlignment',
        :'vertical_alignment' => :'VerticalAlignment',
        :'creation_date' => :'String',
        :'subject' => :'String',
        :'title' => :'String',
        :'rich_text' => :'String',
        :'quad_points' => :'Array<Point>'
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

      if attributes.has_key?(:'Color')
        self.color = attributes[:'Color']
      end

      if attributes.has_key?(:'Contents')
        self.contents = attributes[:'Contents']
      end

      if attributes.has_key?(:'Modified')
        self.modified = attributes[:'Modified']
      end

      if attributes.has_key?(:'Id')
        self.id = attributes[:'Id']
      end

      if attributes.has_key?(:'Flags')
        if (value = attributes[:'Flags']).is_a?(Array)
          self.flags = value
        end
      end

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'Rect')
        self.rect = attributes[:'Rect']
      end

      if attributes.has_key?(:'PageIndex')
        self.page_index = attributes[:'PageIndex']
      end

      if attributes.has_key?(:'ZIndex')
        self.z_index = attributes[:'ZIndex']
      end

      if attributes.has_key?(:'HorizontalAlignment')
        self.horizontal_alignment = attributes[:'HorizontalAlignment']
      end

      if attributes.has_key?(:'VerticalAlignment')
        self.vertical_alignment = attributes[:'VerticalAlignment']
      end

      if attributes.has_key?(:'CreationDate')
        self.creation_date = attributes[:'CreationDate']
      end

      if attributes.has_key?(:'Subject')
        self.subject = attributes[:'Subject']
      end

      if attributes.has_key?(:'Title')
        self.title = attributes[:'Title']
      end

      if attributes.has_key?(:'RichText')
        self.rich_text = attributes[:'RichText']
      end

      if attributes.has_key?(:'QuadPoints')
        if (value = attributes[:'QuadPoints']).is_a?(Array)
          self.quad_points = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @rect.nil?
        invalid_properties.push("invalid value for 'rect', rect cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @rect.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          links == o.links &&
          color == o.color &&
          contents == o.contents &&
          modified == o.modified &&
          id == o.id &&
          flags == o.flags &&
          name == o.name &&
          rect == o.rect &&
          page_index == o.page_index &&
          z_index == o.z_index &&
          horizontal_alignment == o.horizontal_alignment &&
          vertical_alignment == o.vertical_alignment &&
          creation_date == o.creation_date &&
          subject == o.subject &&
          title == o.title &&
          rich_text == o.rich_text &&
          quad_points == o.quad_points
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [links, color, contents, modified, id, flags, name, rect, page_index, z_index, horizontal_alignment, vertical_alignment, creation_date, subject, title, rich_text, quad_points].hash
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
