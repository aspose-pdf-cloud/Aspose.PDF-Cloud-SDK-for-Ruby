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
  # Provides link to DisplayProperties.
  class DisplayProperties
    # Link to the document.
    attr_accessor :links

    # Gets or sets flag specifying whether position of the document's window will be centerd on the screen.
    attr_accessor :center_window

    # Gets or sets reading order of text: L2R (left to right) or R2L (right to left).
    attr_accessor :direction

    # Gets or sets flag specifying whether document's window title bar should display document title.
    attr_accessor :display_doc_title

    # Gets or sets flag specifying whether menu bar should be hidden when document is active.
    attr_accessor :hide_menu_bar

    # Gets or sets flag specifying whether toolbar should be hidden when document is active.
    attr_accessor :hide_tool_bar

    # Gets or sets flag specifying whether user interface elements should be hidden when document is active.
    attr_accessor :hide_window_ui

    # Gets or sets page mode, specifying how to display the document on exiting full-screen mode.
    attr_accessor :non_full_screen_page_mode

    # Gets or sets page layout which shall be used when the document is opened.
    attr_accessor :page_layout

    # Gets or sets page mode, specifying how document should be displayed when opened.
    attr_accessor :page_mode


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'links' => :'Links',
        :'center_window' => :'CenterWindow',
        :'direction' => :'Direction',
        :'display_doc_title' => :'DisplayDocTitle',
        :'hide_menu_bar' => :'HideMenuBar',
        :'hide_tool_bar' => :'HideToolBar',
        :'hide_window_ui' => :'HideWindowUI',
        :'non_full_screen_page_mode' => :'NonFullScreenPageMode',
        :'page_layout' => :'PageLayout',
        :'page_mode' => :'PageMode'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'links' => :'Array<Link>',
        :'center_window' => :'BOOLEAN',
        :'direction' => :'Direction',
        :'display_doc_title' => :'BOOLEAN',
        :'hide_menu_bar' => :'BOOLEAN',
        :'hide_tool_bar' => :'BOOLEAN',
        :'hide_window_ui' => :'BOOLEAN',
        :'non_full_screen_page_mode' => :'PageMode',
        :'page_layout' => :'PageLayout',
        :'page_mode' => :'PageMode'
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

      if attributes.has_key?(:'CenterWindow')
        self.center_window = attributes[:'CenterWindow']
      end

      if attributes.has_key?(:'Direction')
        self.direction = attributes[:'Direction']
      end

      if attributes.has_key?(:'DisplayDocTitle')
        self.display_doc_title = attributes[:'DisplayDocTitle']
      end

      if attributes.has_key?(:'HideMenuBar')
        self.hide_menu_bar = attributes[:'HideMenuBar']
      end

      if attributes.has_key?(:'HideToolBar')
        self.hide_tool_bar = attributes[:'HideToolBar']
      end

      if attributes.has_key?(:'HideWindowUI')
        self.hide_window_ui = attributes[:'HideWindowUI']
      end

      if attributes.has_key?(:'NonFullScreenPageMode')
        self.non_full_screen_page_mode = attributes[:'NonFullScreenPageMode']
      end

      if attributes.has_key?(:'PageLayout')
        self.page_layout = attributes[:'PageLayout']
      end

      if attributes.has_key?(:'PageMode')
        self.page_mode = attributes[:'PageMode']
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
          links == o.links &&
          center_window == o.center_window &&
          direction == o.direction &&
          display_doc_title == o.display_doc_title &&
          hide_menu_bar == o.hide_menu_bar &&
          hide_tool_bar == o.hide_tool_bar &&
          hide_window_ui == o.hide_window_ui &&
          non_full_screen_page_mode == o.non_full_screen_page_mode &&
          page_layout == o.page_layout &&
          page_mode == o.page_mode
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [links, center_window, direction, display_doc_title, hide_menu_bar, hide_tool_bar, hide_window_ui, non_full_screen_page_mode, page_layout, page_mode].hash
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
