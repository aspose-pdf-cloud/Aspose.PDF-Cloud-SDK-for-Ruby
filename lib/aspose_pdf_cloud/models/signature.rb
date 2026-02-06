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
  # Represents signature.
  class Signature
    # Gets or sets the signature path.
    attr_accessor :signature_path

    # Gets or sets the type of the signature.
    attr_accessor :signature_type

    # Gets or sets the signature password.
    attr_accessor :password

    # Sets or gets a graphic appearance for the signature. Property value represents an image file name.
    attr_accessor :appearance

    # Gets or sets the reason of the signature.
    attr_accessor :reason

    # Gets or sets the contact of the signature.
    attr_accessor :contact

    # Gets or sets the location of the signature.
    attr_accessor :location

    # Gets or sets a value indicating whether this Signature is visible. Supports only when signing particular page.
    attr_accessor :visible

    # Gets or sets the visible rectangle of the signature. Supports only when signing particular page.
    attr_accessor :rectangle

    # Gets or sets the name of the signature field. Supports only when signing document with particular form field.
    attr_accessor :form_field_name

    # Gets or sets the name of the person or authority signing the document..
    attr_accessor :authority

    # Gets or sets the time of signing.
    attr_accessor :date

    # Gets or sets the showproperties in signature field
    attr_accessor :show_properties

    # Gets/sets timestamp settings.
    attr_accessor :timestamp_settings

    # Verify the document regarding this signature and return true if document is valid or otherwise false.
    attr_accessor :is_valid

    # Gets/sets the custom appearance.
    attr_accessor :custom_appearance


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'signature_path' => :'SignaturePath',
        :'signature_type' => :'SignatureType',
        :'password' => :'Password',
        :'appearance' => :'Appearance',
        :'reason' => :'Reason',
        :'contact' => :'Contact',
        :'location' => :'Location',
        :'visible' => :'Visible',
        :'rectangle' => :'Rectangle',
        :'form_field_name' => :'FormFieldName',
        :'authority' => :'Authority',
        :'date' => :'Date',
        :'show_properties' => :'ShowProperties',
        :'timestamp_settings' => :'TimestampSettings',
        :'is_valid' => :'IsValid',
        :'custom_appearance' => :'CustomAppearance'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'signature_path' => :'String',
        :'signature_type' => :'SignatureType',
        :'password' => :'String',
        :'appearance' => :'String',
        :'reason' => :'String',
        :'contact' => :'String',
        :'location' => :'String',
        :'visible' => :'BOOLEAN',
        :'rectangle' => :'Rectangle',
        :'form_field_name' => :'String',
        :'authority' => :'String',
        :'date' => :'String',
        :'show_properties' => :'BOOLEAN',
        :'timestamp_settings' => :'TimestampSettings',
        :'is_valid' => :'BOOLEAN',
        :'custom_appearance' => :'SignatureCustomAppearance'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'SignaturePath')
        self.signature_path = attributes[:'SignaturePath']
      end

      if attributes.has_key?(:'SignatureType')
        self.signature_type = attributes[:'SignatureType']
      end

      if attributes.has_key?(:'Password')
        self.password = attributes[:'Password']
      end

      if attributes.has_key?(:'Appearance')
        self.appearance = attributes[:'Appearance']
      end

      if attributes.has_key?(:'Reason')
        self.reason = attributes[:'Reason']
      end

      if attributes.has_key?(:'Contact')
        self.contact = attributes[:'Contact']
      end

      if attributes.has_key?(:'Location')
        self.location = attributes[:'Location']
      end

      if attributes.has_key?(:'Visible')
        self.visible = attributes[:'Visible']
      end

      if attributes.has_key?(:'Rectangle')
        self.rectangle = attributes[:'Rectangle']
      end

      if attributes.has_key?(:'FormFieldName')
        self.form_field_name = attributes[:'FormFieldName']
      end

      if attributes.has_key?(:'Authority')
        self.authority = attributes[:'Authority']
      end

      if attributes.has_key?(:'Date')
        self.date = attributes[:'Date']
      end

      if attributes.has_key?(:'ShowProperties')
        self.show_properties = attributes[:'ShowProperties']
      end

      if attributes.has_key?(:'TimestampSettings')
        self.timestamp_settings = attributes[:'TimestampSettings']
      end

      if attributes.has_key?(:'IsValid')
        self.is_valid = attributes[:'IsValid']
      end

      if attributes.has_key?(:'CustomAppearance')
        self.custom_appearance = attributes[:'CustomAppearance']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @signature_path.nil?
        invalid_properties.push("invalid value for 'signature_path', signature_path cannot be nil.")
      end

      if @signature_path.to_s.length < 1
        invalid_properties.push("invalid value for 'signature_path', the character length must be great than or equal to 1.")
      end

      if @signature_type.nil?
        invalid_properties.push("invalid value for 'signature_type', signature_type cannot be nil.")
      end

      if @visible.nil?
        invalid_properties.push("invalid value for 'visible', visible cannot be nil.")
      end

      if @show_properties.nil?
        invalid_properties.push("invalid value for 'show_properties', show_properties cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @signature_path.nil?
      return false if @signature_path.to_s.length < 1
      return false if @signature_type.nil?
      return false if @visible.nil?
      return false if @show_properties.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] signature_path Value to be assigned
    def signature_path=(signature_path)
      if signature_path.nil?
        fail ArgumentError, "signature_path cannot be nil"
      end

      if signature_path.to_s.length < 1
        fail ArgumentError, "invalid value for 'signature_path', the character length must be great than or equal to 1."
      end

      @signature_path = signature_path
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          signature_path == o.signature_path &&
          signature_type == o.signature_type &&
          password == o.password &&
          appearance == o.appearance &&
          reason == o.reason &&
          contact == o.contact &&
          location == o.location &&
          visible == o.visible &&
          rectangle == o.rectangle &&
          form_field_name == o.form_field_name &&
          authority == o.authority &&
          date == o.date &&
          show_properties == o.show_properties &&
          timestamp_settings == o.timestamp_settings &&
          is_valid == o.is_valid &&
          custom_appearance == o.custom_appearance
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [signature_path, signature_type, password, appearance, reason, contact, location, visible, rectangle, form_field_name, authority, date, show_properties, timestamp_settings, is_valid, custom_appearance].hash
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
