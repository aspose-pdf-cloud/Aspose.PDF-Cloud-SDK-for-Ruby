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
  # Provides link to bookmark.
  class Bookmark
    # Link to the document.
    attr_accessor :links

    # Get the Title;
    attr_accessor :title

    # Is bookmark italic.
    attr_accessor :italic

    # Is bookmark bold.
    attr_accessor :bold

    # Get the color
    attr_accessor :color

    # Gets or sets the action bound with the bookmark. If PageNumber is presented the action can not be specified. The action type includes: \"GoTo\", \"GoToR\", \"Launch\", \"Named\".
    attr_accessor :action

    # Gets or sets bookmark's hierarchy level.
    attr_accessor :level

    # Gets or sets bookmark's destination page. Required if action is set as string.Empty.
    attr_accessor :destination

    # Gets or sets the type of display bookmark's destination page.
    attr_accessor :page_display

    # Gets or sets the bottom coordinate of page display.
    attr_accessor :page_display_bottom

    # Gets or sets the left coordinate of page display.
    attr_accessor :page_display_left

    # Gets or sets the right coordinate of page display.
    attr_accessor :page_display_right

    # Gets or sets the top coordinate of page display.
    attr_accessor :page_display_top

    # Gets or sets the zoom factor of page display.
    attr_accessor :page_display_zoom

    # Gets or sets the number of bookmark's destination page. 
    attr_accessor :page_number

    # Gets or sets the file (path) which is required for \"GoToR\" action of bookmark.
    attr_accessor :remote_file

    # The children bookmarks.
    attr_accessor :bookmarks


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'links' => :'Links',
        :'title' => :'Title',
        :'italic' => :'Italic',
        :'bold' => :'Bold',
        :'color' => :'Color',
        :'action' => :'Action',
        :'level' => :'Level',
        :'destination' => :'Destination',
        :'page_display' => :'PageDisplay',
        :'page_display_bottom' => :'PageDisplay_Bottom',
        :'page_display_left' => :'PageDisplay_Left',
        :'page_display_right' => :'PageDisplay_Right',
        :'page_display_top' => :'PageDisplay_Top',
        :'page_display_zoom' => :'PageDisplay_Zoom',
        :'page_number' => :'PageNumber',
        :'remote_file' => :'RemoteFile',
        :'bookmarks' => :'Bookmarks'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'links' => :'Array<Link>',
        :'title' => :'String',
        :'italic' => :'BOOLEAN',
        :'bold' => :'BOOLEAN',
        :'color' => :'Color',
        :'action' => :'String',
        :'level' => :'Integer',
        :'destination' => :'String',
        :'page_display' => :'String',
        :'page_display_bottom' => :'Integer',
        :'page_display_left' => :'Integer',
        :'page_display_right' => :'Integer',
        :'page_display_top' => :'Integer',
        :'page_display_zoom' => :'Integer',
        :'page_number' => :'Integer',
        :'remote_file' => :'String',
        :'bookmarks' => :'Bookmarks'
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

      if attributes.has_key?(:'Title')
        self.title = attributes[:'Title']
      end

      if attributes.has_key?(:'Italic')
        self.italic = attributes[:'Italic']
      end

      if attributes.has_key?(:'Bold')
        self.bold = attributes[:'Bold']
      end

      if attributes.has_key?(:'Color')
        self.color = attributes[:'Color']
      end

      if attributes.has_key?(:'Action')
        self.action = attributes[:'Action']
      end

      if attributes.has_key?(:'Level')
        self.level = attributes[:'Level']
      end

      if attributes.has_key?(:'Destination')
        self.destination = attributes[:'Destination']
      end

      if attributes.has_key?(:'PageDisplay')
        self.page_display = attributes[:'PageDisplay']
      end

      if attributes.has_key?(:'PageDisplay_Bottom')
        self.page_display_bottom = attributes[:'PageDisplay_Bottom']
      end

      if attributes.has_key?(:'PageDisplay_Left')
        self.page_display_left = attributes[:'PageDisplay_Left']
      end

      if attributes.has_key?(:'PageDisplay_Right')
        self.page_display_right = attributes[:'PageDisplay_Right']
      end

      if attributes.has_key?(:'PageDisplay_Top')
        self.page_display_top = attributes[:'PageDisplay_Top']
      end

      if attributes.has_key?(:'PageDisplay_Zoom')
        self.page_display_zoom = attributes[:'PageDisplay_Zoom']
      end

      if attributes.has_key?(:'PageNumber')
        self.page_number = attributes[:'PageNumber']
      end

      if attributes.has_key?(:'RemoteFile')
        self.remote_file = attributes[:'RemoteFile']
      end

      if attributes.has_key?(:'Bookmarks')
        self.bookmarks = attributes[:'Bookmarks']
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
          title == o.title &&
          italic == o.italic &&
          bold == o.bold &&
          color == o.color &&
          action == o.action &&
          level == o.level &&
          destination == o.destination &&
          page_display == o.page_display &&
          page_display_bottom == o.page_display_bottom &&
          page_display_left == o.page_display_left &&
          page_display_right == o.page_display_right &&
          page_display_top == o.page_display_top &&
          page_display_zoom == o.page_display_zoom &&
          page_number == o.page_number &&
          remote_file == o.remote_file &&
          bookmarks == o.bookmarks
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [links, title, italic, bold, color, action, level, destination, page_display, page_display_bottom, page_display_left, page_display_right, page_display_top, page_display_zoom, page_number, remote_file, bookmarks].hash
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
