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
  # Represents the privileges for accessing Pdf file.
  class DocumentPrivilege
    # Sets the permission which allow print or not.  true is allow and false or not set is forbidden.
    attr_accessor :allow_print

    # Sets the permission which allow degraded printing or not.  true is allow and false or not set is forbidden.
    attr_accessor :allow_degraded_printing

    # Sets the permission which allow modify contents or not.  true is allow and false or not set is forbidden.
    attr_accessor :allow_modify_contents

    # Sets the permission which allow copy or not.  true is allow and false or not set is forbidden.
    attr_accessor :allow_copy

    # Sets the permission which allow modify annotations or not.  true is allow and false or not set is forbidden.
    attr_accessor :allow_modify_annotations

    # Sets the permission which allow fill in forms or not.  true is allow and false or not set is forbidden.
    attr_accessor :allow_fill_in

    # Sets the permission which allow screen readers or not.  true is allow and false or not set is forbidden.
    attr_accessor :allow_screen_readers

    # Sets the permission which allow assembly or not.  true is allow and false or not set is forbidden.
    attr_accessor :allow_assembly

    # Sets the print level of  document's privilege. Just as the Adobe Professional's Printing Allowed settings. 0: None. 1: Low Resolution (150 dpi). 2: High Resolution.
    attr_accessor :print_allow_level

    # Sets the change level of  document's privilege. Just as the Adobe Professional's Changes Allowed settings. 0: None. 1: Inserting, Deleting and Rotating pages. 2: Filling in form fields and signing existing signature fields. 3: Commenting, filling in form fields, and signing existing signature fields. 4: Any except extracting pages.
    attr_accessor :change_allow_level

    # Sets the copy level of  document's privilege. Just as the Adobe Professional's permission settings. 0: None. 1: Enable text access for screen reader devices for the visually impaired. 2: Enable copying of text, images and other content.
    attr_accessor :copy_allow_level


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'allow_print' => :'AllowPrint',
        :'allow_degraded_printing' => :'AllowDegradedPrinting',
        :'allow_modify_contents' => :'AllowModifyContents',
        :'allow_copy' => :'AllowCopy',
        :'allow_modify_annotations' => :'AllowModifyAnnotations',
        :'allow_fill_in' => :'AllowFillIn',
        :'allow_screen_readers' => :'AllowScreenReaders',
        :'allow_assembly' => :'AllowAssembly',
        :'print_allow_level' => :'PrintAllowLevel',
        :'change_allow_level' => :'ChangeAllowLevel',
        :'copy_allow_level' => :'CopyAllowLevel'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'allow_print' => :'BOOLEAN',
        :'allow_degraded_printing' => :'BOOLEAN',
        :'allow_modify_contents' => :'BOOLEAN',
        :'allow_copy' => :'BOOLEAN',
        :'allow_modify_annotations' => :'BOOLEAN',
        :'allow_fill_in' => :'BOOLEAN',
        :'allow_screen_readers' => :'BOOLEAN',
        :'allow_assembly' => :'BOOLEAN',
        :'print_allow_level' => :'Integer',
        :'change_allow_level' => :'Integer',
        :'copy_allow_level' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'AllowPrint')
        self.allow_print = attributes[:'AllowPrint']
      end

      if attributes.has_key?(:'AllowDegradedPrinting')
        self.allow_degraded_printing = attributes[:'AllowDegradedPrinting']
      end

      if attributes.has_key?(:'AllowModifyContents')
        self.allow_modify_contents = attributes[:'AllowModifyContents']
      end

      if attributes.has_key?(:'AllowCopy')
        self.allow_copy = attributes[:'AllowCopy']
      end

      if attributes.has_key?(:'AllowModifyAnnotations')
        self.allow_modify_annotations = attributes[:'AllowModifyAnnotations']
      end

      if attributes.has_key?(:'AllowFillIn')
        self.allow_fill_in = attributes[:'AllowFillIn']
      end

      if attributes.has_key?(:'AllowScreenReaders')
        self.allow_screen_readers = attributes[:'AllowScreenReaders']
      end

      if attributes.has_key?(:'AllowAssembly')
        self.allow_assembly = attributes[:'AllowAssembly']
      end

      if attributes.has_key?(:'PrintAllowLevel')
        self.print_allow_level = attributes[:'PrintAllowLevel']
      end

      if attributes.has_key?(:'ChangeAllowLevel')
        self.change_allow_level = attributes[:'ChangeAllowLevel']
      end

      if attributes.has_key?(:'CopyAllowLevel')
        self.copy_allow_level = attributes[:'CopyAllowLevel']
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
          allow_print == o.allow_print &&
          allow_degraded_printing == o.allow_degraded_printing &&
          allow_modify_contents == o.allow_modify_contents &&
          allow_copy == o.allow_copy &&
          allow_modify_annotations == o.allow_modify_annotations &&
          allow_fill_in == o.allow_fill_in &&
          allow_screen_readers == o.allow_screen_readers &&
          allow_assembly == o.allow_assembly &&
          print_allow_level == o.print_allow_level &&
          change_allow_level == o.change_allow_level &&
          copy_allow_level == o.copy_allow_level
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [allow_print, allow_degraded_printing, allow_modify_contents, allow_copy, allow_modify_annotations, allow_fill_in, allow_screen_readers, allow_assembly, print_allow_level, change_allow_level, copy_allow_level].hash
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
