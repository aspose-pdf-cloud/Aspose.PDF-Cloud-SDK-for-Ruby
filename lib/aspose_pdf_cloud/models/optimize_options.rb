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
  # Represents Pdf optimize options.
  class OptimizeOptions
    # Specifies document password (if any) encoded with base-64.
    attr_accessor :password

    # If true page contents will be reused when document is optimized for equal pages. LinkDuplcateStreams option must be set to true.
    attr_accessor :allow_reuse_page_content

    # If this flag is set to true images will be compressed in the document. Compression level is specified with ImageQuality property.
    attr_accessor :compress_images

    # Specifies level of image compression when CompressImages flag is used.
    attr_accessor :image_quality

    # If this flag is set to true, Resource streams will be analyzed. If duplicate streams are found (i.e. if stream contents is equal), then thees streams will be stored as one object.  This allows to decrease document size in some cases (for example, when same document was concatenated multiple times).
    attr_accessor :link_duplcate_streams

    # If this flag is set to true, all document objects will be checked and unused objects (i.e. objects which does not have any reference) are removed from document.
    attr_accessor :remove_unused_objects

    # If this flag set to true, every resource is checked on it's usage. If resource is never used, then resources is removed. This may decrease document size for example when pages were extracted from document. 
    attr_accessor :remove_unused_streams

    # Make fonts not embedded if set to true. Unembedding a font means removing the embedded byte stream data of the font included in a PDF document.
    attr_accessor :unembed_fonts

    # If this flag set to true and CompressImages is true images will be resized if image resolution is greater then specified MaxResolution parameter.
    attr_accessor :resize_images

    # Specifies maximum resolution of images. If image has higher resolution it will be scaled.
    attr_accessor :max_resolution

    # Fonts will be converted into subsets if set to true. Only those characters that are actually used in the layout are stored in the PDF. 
    attr_accessor :subset_fonts

    # Remove private information (page piece info).
    attr_accessor :remove_private_info

    # Image encode which will be used.
    attr_accessor :image_encoding

    # Version of compression algorithm. Possible values are: \"Standard\" - standard compression, \"Fast\" - fast (improved compression which is faster then standard but may be applicable not for all images), \"Mixed\" - mixed (standard compression is applied to images which can not be compressed by  faster algorithm, this may give best compression but more slow then \"Fast\" algorithm. Version \"Fast\" is not applicable for resizing images (standard method will be used). Default is \"Standard\".
    attr_accessor :image_compression_version


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'password' => :'Password',
        :'allow_reuse_page_content' => :'AllowReusePageContent',
        :'compress_images' => :'CompressImages',
        :'image_quality' => :'ImageQuality',
        :'link_duplcate_streams' => :'LinkDuplcateStreams',
        :'remove_unused_objects' => :'RemoveUnusedObjects',
        :'remove_unused_streams' => :'RemoveUnusedStreams',
        :'unembed_fonts' => :'UnembedFonts',
        :'resize_images' => :'ResizeImages',
        :'max_resolution' => :'MaxResolution',
        :'subset_fonts' => :'SubsetFonts',
        :'remove_private_info' => :'RemovePrivateInfo',
        :'image_encoding' => :'ImageEncoding',
        :'image_compression_version' => :'ImageCompressionVersion'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'password' => :'String',
        :'allow_reuse_page_content' => :'BOOLEAN',
        :'compress_images' => :'BOOLEAN',
        :'image_quality' => :'Integer',
        :'link_duplcate_streams' => :'BOOLEAN',
        :'remove_unused_objects' => :'BOOLEAN',
        :'remove_unused_streams' => :'BOOLEAN',
        :'unembed_fonts' => :'BOOLEAN',
        :'resize_images' => :'BOOLEAN',
        :'max_resolution' => :'Integer',
        :'subset_fonts' => :'BOOLEAN',
        :'remove_private_info' => :'BOOLEAN',
        :'image_encoding' => :'ImageEncoding',
        :'image_compression_version' => :'ImageCompressionVersion'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Password')
        self.password = attributes[:'Password']
      end

      if attributes.has_key?(:'AllowReusePageContent')
        self.allow_reuse_page_content = attributes[:'AllowReusePageContent']
      end

      if attributes.has_key?(:'CompressImages')
        self.compress_images = attributes[:'CompressImages']
      end

      if attributes.has_key?(:'ImageQuality')
        self.image_quality = attributes[:'ImageQuality']
      end

      if attributes.has_key?(:'LinkDuplcateStreams')
        self.link_duplcate_streams = attributes[:'LinkDuplcateStreams']
      end

      if attributes.has_key?(:'RemoveUnusedObjects')
        self.remove_unused_objects = attributes[:'RemoveUnusedObjects']
      end

      if attributes.has_key?(:'RemoveUnusedStreams')
        self.remove_unused_streams = attributes[:'RemoveUnusedStreams']
      end

      if attributes.has_key?(:'UnembedFonts')
        self.unembed_fonts = attributes[:'UnembedFonts']
      end

      if attributes.has_key?(:'ResizeImages')
        self.resize_images = attributes[:'ResizeImages']
      end

      if attributes.has_key?(:'MaxResolution')
        self.max_resolution = attributes[:'MaxResolution']
      end

      if attributes.has_key?(:'SubsetFonts')
        self.subset_fonts = attributes[:'SubsetFonts']
      end

      if attributes.has_key?(:'RemovePrivateInfo')
        self.remove_private_info = attributes[:'RemovePrivateInfo']
      end

      if attributes.has_key?(:'ImageEncoding')
        self.image_encoding = attributes[:'ImageEncoding']
      end

      if attributes.has_key?(:'ImageCompressionVersion')
        self.image_compression_version = attributes[:'ImageCompressionVersion']
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
          password == o.password &&
          allow_reuse_page_content == o.allow_reuse_page_content &&
          compress_images == o.compress_images &&
          image_quality == o.image_quality &&
          link_duplcate_streams == o.link_duplcate_streams &&
          remove_unused_objects == o.remove_unused_objects &&
          remove_unused_streams == o.remove_unused_streams &&
          unembed_fonts == o.unembed_fonts &&
          resize_images == o.resize_images &&
          max_resolution == o.max_resolution &&
          subset_fonts == o.subset_fonts &&
          remove_private_info == o.remove_private_info &&
          image_encoding == o.image_encoding &&
          image_compression_version == o.image_compression_version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [password, allow_reuse_page_content, compress_images, image_quality, link_duplcate_streams, remove_unused_objects, remove_unused_streams, unembed_fonts, resize_images, max_resolution, subset_fonts, remove_private_info, image_encoding, image_compression_version].hash
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
