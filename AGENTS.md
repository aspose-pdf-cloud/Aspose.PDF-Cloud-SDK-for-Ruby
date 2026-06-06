# Aspose.PDF Cloud SDK for Ruby — Agent Analysis

> **Repository:** [aspose-pdf-cloud/aspose-pdf-cloud-ruby](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-ruby)  
> **Version:** 26.4.0 | **Gem:** `aspose_pdf_cloud`  
> **License:** MIT | **Ruby Version:** >= 2.6  
> **API Version:** v3.0

---

## 1. Repository Overview

The **Aspose.PDF Cloud SDK for Ruby** is a generated REST API client that wraps the Aspose.PDF Cloud API v3.0. It enables Ruby applications to perform a wide range of PDF document processing operations — creation, manipulation, conversion, and rendering — entirely in the cloud.

The SDK follows a **Ruby gem structure** (`lib/aspose_pdf_cloud/`) with the `AsposePdfCloud` module containing sub-modules for the API client, models, configuration, and error handling.

---

## 2. Architecture & Core Components

### 2.1 Package Structure

```
aspose-pdf-cloud-ruby/
├── lib/
│   ├── aspose_pdf_cloud.rb            # Entry point, requires all models + api + client
│   └── aspose_pdf_cloud/
│       ├── api_client.rb              # ApiClient — Faraday HTTP client, OAuth2 (488 lines)
│       ├── api_error.rb               # ApiError — extends StandardError (47 lines)
│       ├── configuration.rb           # Configuration — attr_accessor-based (182 lines)
│       ├── version.rb                 # VERSION constant
│       ├── api/
│       │   └── pdf_api.rb            # PdfApi — 1,500+ API methods (~31,466 lines)
│       └── models/
│           ├── aspose_response.rb     # Base response type
│           └── {292 model files}      # One file per PDF concept
├── test/
│   ├── faraday_config.rb              # Timeout configuration for Faraday
│   └── pdf_tests.rb                   # Unit tests
├── test_data/                         # PDF fixture files
├── Examples/                          # Runnable annotation examples (111 files)
│   ├── example_data/                  # Example data files
│   ├── get_*.rb                       # GET annotation examples
│   ├── post_*.rb                      # POST annotation examples
│   ├── put_*.rb                       # PUT annotation examples
│   └── delete_*.rb                    # DELETE annotation examples
├── settings/
│   └── credentials.json               # API credentials template
├── docs/                              # Markdown API documentation
├── aspose_pdf_cloud.gemspec           # Gem specification
├── Gemfile                            # Dependency file
└── README.md                          # Usage examples and overview
```

### 2.2 Core Files

| File | Purpose |
|------|---------|
| **`lib/aspose_pdf_cloud/api/pdf_api.rb`** | `PdfApi` — the main API surface with all REST endpoint methods (~31,466 lines, 1,500+ methods) |
| **`lib/aspose_pdf_cloud/api_client.rb`** | `ApiClient` — Faraday-based HTTP client, OAuth2 client credentials flow, request building, response deserialization, multipart upload support |
| **`lib/aspose_pdf_cloud/configuration.rb`** | `Configuration` — attr_accessor-based class with `self_host`, `self_host_url`, `client_secret`, `client_id`, `host`, `access_token`, `debugging`, `timeout`, `verify_ssl`, `proxy` settings |
| **`lib/aspose_pdf_cloud/api_error.rb`** | `ApiError` — extends `StandardError` with `code`, `response_headers`, `response_body` attributes |
| **`lib/aspose_pdf_cloud.rb`** | Package entry point requiring all model classes, `ApiClient`, `ApiError`, `Configuration`, `Version`, and `PdfApi` |

### 2.3 Key Architectural Decisions

- **Faraday HTTP client**: The SDK uses `faraday >= 1.9.3` with `faraday-multipart` for all HTTP communication — the de facto standard HTTP library for Ruby
- **Constructor-based Auth**: `PdfApi.new(client_id, client_secret, host=nil, self_host=false)` — auth credentials passed directly to the constructor
- **Options Hash pattern**: Optional parameters passed as a Hash (`opts = { :folder => 'tempFolder' }`) — Ruby convention
- **Snake_case API**: All API methods and parameters use snake_case naming: `get_page_annotations`, `post_page_circle_annotations`
- **Custom headers**: `x-aspose-client: ruby sdk`, `x-aspose-client-version: 26.4.0`

---

## 3. Data Model Organization

### 3.1 Model Files (293 files)

All models are in `lib/aspose_pdf_cloud/models/`, organized by PDF concept:

| Category | Example Files |
|----------|---------------|
| **Annotations** | `annotation.rb`, `annotation_info.rb`, `annotation_type.rb`, `annotation_flags.rb`, `annotation_state.rb`, `caret_annotation.rb`, `circle_annotation.rb`, `file_attachment_annotation.rb`, `free_text_annotation.rb`, `highlight_annotation.rb`, `ink_annotation.rb`, `line_annotation.rb`, `link_annotation.rb`, `movie_annotation.rb`, `polygon_annotation.rb`, `poly_line_annotation.rb`, `popup_annotation.rb`, `redaction_annotation.rb`, `screen_annotation.rb`, `sound_annotation.rb`, `square_annotation.rb`, `squiggly_annotation.rb`, `stamp_annotation.rb`, `strike_out_annotation.rb`, `text_annotation.rb`, `underline_annotation.rb` |
| **Form Fields** | `field.rb`, `field_type.rb`, `form_field.rb`, `check_box_field.rb`, `combo_box_field.rb`, `list_box_field.rb`, `radio_button_field.rb`, `text_box_field.rb`, `signature_field.rb`, `choice_field.rb` |
| **Document** | `document.rb`, `document_config.rb`, `document_property.rb`, `document_properties.rb`, `display_properties.rb`, `document_privilege.rb`, `document_layers.rb`, `xmp_metadata.rb` |
| **Pages** | `page.rb`, `pages.rb`, `page_layout.rb`, `page_mode.rb`, `page_range.rb`, `page_word_count.rb`, `word_count.rb` |
| **Stamps** | `stamp.rb`, `stamp_base.rb`, `image_stamp.rb`, `text_stamp.rb`, `page_number_stamp.rb`, `pdf_page_stamp.rb`, `image_stamp_page_specified.rb`, `text_stamp_page_specified.rb`, `stamp_info.rb`, `stamp_type.rb`, `stamp_icon.rb` |
| **Headers/Footers** | `image_header.rb`, `image_footer.rb`, `text_header.rb`, `text_footer.rb` |
| **Tables** | `table.rb`, `table_broken.rb`, `row.rb`, `cell.rb`, `table_recognized.rb`, `row_recognized.rb`, `cell_recognized.rb` |
| **Conversions** | `doc_format.rb`, `html_document_type.rb`, `epub_recognition_mode.rb`, `color_depth.rb`, `compression_type.rb`, `output_format.rb` |
| **Storage** | `file_version.rb`, `file_versions.rb`, `files_list.rb`, `files_upload_result.rb`, `disc_usage.rb`, `object_exist.rb`, `storage_exist.rb`, `storage_file.rb` |
| **Signatures** | `signature.rb`, `signature_field.rb`, `signature_type.rb`, `signature_custom_appearance.rb`, `timestamp_settings.rb`, `signature_verify_response.rb` |
| **Primitives** | `color.rb`, `point.rb`, `rectangle.rb`, `dash.rb`, `border.rb`, `border_info.rb`, `margin_info.rb`, `graph_info.rb`, `link.rb`, `link_element.rb`, `position.rb`, `segment.rb`, `text_state.rb`, `text_style.rb`, `text_line.rb`, `text_rect.rb` |
| **Enums** | `annotation_type.rb`, `border_style.rb`, `border_effect.rb`, `cap_style.rb`, `direction.rb`, `font_styles.rb`, `horizontal_alignment.rb`, `justification.rb`, `line_ending.rb`, `line_spacing.rb`, `crypto_algorithm.rb`, `permissions_flags.rb`, `shape_type.rb`, `wrap_mode.rb`, `stamp_type.rb`, `file_icon.rb`, `sound_encoding.rb`, `sound_icon.rb` |

### 3.2 Response Type Naming Convention

- **Single entity:** `{Entity}Response` — e.g., `DocumentResponse`, `BookmarkResponse`, `CircleAnnotationResponse`
- **Collection:** `{Entity}sResponse` or `{Entity}esResponse` — e.g., `BookmarksResponse`, `CircleAnnotationsResponse`, `FieldsResponse`, `ImagesResponse`
- **Base:** `AsposeResponse` with `Code` (int) and `Status` (string)

---

## 4. API Capabilities

### 4.1 Document Operations

| Method | Description |
|--------|-------------|
| `get_document` | Read document info |
| `put_create_document` | Create empty document |
| `post_create_document` | Create document with config |
| `post_optimize_document` | Optimize document (compress images, remove unused objects, unembed fonts) |
| `post_split_document` | Split document into pages |
| `post_split_range_pdf_document` | Split by page ranges |
| `post_organize_document` | Reorder pages |
| `post_organize_documents` | Organize pages from multiple documents |
| `post_merge_documents` | Merge multiple documents |

### 4.2 Page Operations

| Method | Description |
|--------|-------------|
| `get_page` | Read page info |
| `post_page` | Add new page |
| `delete_page` | Delete page by number |
| `post_move_page` | Move page to new position |
| `post_document_pages_rotate` | Rotate pages by angle |
| `post_document_pages_resize` | Resize pages |
| `post_document_pages_crop` | Crop pages |
| `get_page_convert_to_tiff` / `put_page_convert_to_tiff` | Convert page to TIFF |
| `get_page_convert_to_jpeg` / `put_page_convert_to_jpeg` | Convert page to JPEG |
| `get_page_convert_to_png` / `put_page_convert_to_png` | Convert page to PNG |
| `get_page_convert_to_emf` / `put_page_convert_to_emf` | Convert page to EMF |
| `get_page_convert_to_bmp` / `put_page_convert_to_bmp` | Convert page to BMP |
| `get_page_convert_to_gif` / `put_page_convert_to_gif` | Convert page to GIF |
| `post_page_image_stamps` | Add image stamp to page |
| `post_page_text_stamps` | Add text stamp to page |
| `post_page_pdf_page_stamps` | Add PDF page stamp to page |
| `post_page_page_number_stamps` | Add page number stamp |

### 4.3 Annotations (15+ Types)

Each annotation type supports full CRUD operations:

| Operation | Pattern |
|-----------|---------|
| **Get all** | `get_document_{type}_annotations(name, opts)` |
| **Get by page** | `get_page_{type}_annotations(name, page_number, opts)` |
| **Get by ID** | `get_{type}_annotation(name, annotation_id, opts)` |
| **Create** | `post_page_{type}_annotations(name, page_number, annotation, opts)` |
| **Update** | `put_{type}_annotation(name, annotation_id, annotation, opts)` |
| **Delete** | `delete_annotation(name, annotation_id, opts)` |

Supported annotation types: Caret, Circle, FileAttachment, FreeText, Highlight, Ink, Line, Link, Movie, Polygon, PolyLine, Popup, Redaction, Screen, Sound, Square, Squiggly, Stamp, StrikeOut, Text, Underline.

### 4.4 Form Fields (8 Types)

| Field Type | Operations |
|------------|------------|
| CheckBox, ComboBox, ListBox, RadioButton, TextBox, Signature | Get document fields, get page fields, get by name, create, update, delete |
| General | `get_fields`, `put_update_fields`, `post_flatten_document` |
| Import/Export | XML, FDF, XFDF formats (GET and PUT for each) |

### 4.5 Bookmarks

| Method | Description |
|--------|-------------|
| `get_document_bookmarks` | Get bookmark tree |
| `get_bookmarks` | Get bookmarks at path |
| `get_bookmark` | Get single bookmark |
| `post_bookmark` | Add bookmark |
| `put_bookmark` | Update bookmark |
| `delete_bookmark` | Delete bookmark |
| `delete_document_bookmarks` | Delete all bookmarks |

### 4.6 Conversions

**PDF → Other formats:**
DOC, DOCX, EPUB, Excel (XLS/XLSX), HTML, MobiXML, PDF/A, PPTX, SVG, TEX, TIFF, XLS, XML, XPS, and more.

**Other formats → PDF:**
APS, BMP, EPUB, GIF, HTML, JPEG, Markdown, MHTML, PCL, PNG, PS, SVG, TeX, Web, XML, XPS, XSL FO, images.

**Pattern:** `get_{format}_in_storage_to_pdf` / `put_{format}_in_storage_to_pdf` for each source format.

### 4.7 Storage & File Management

| Method | Description |
|--------|-------------|
| `upload_file` | Upload file to cloud storage |
| `download_file` | Download file from cloud storage |
| `copy_file` / `move_file` / `delete_file` | File operations |
| `create_folder` / `copy_folder` / `move_folder` / `delete_folder` | Folder operations |
| `get_files_list` | List files in folder |
| `get_disc_usage` | Get storage usage |
| `object_exists` / `storage_exists` | Check existence |
| `get_file_versions` | List file versions |

### 4.8 Other Features

| Feature | Key Methods |
|---------|-------------|
| **Text** | `get_text`, `get_page_text`, `put_add_text` |
| **Images** | `get_images`, `get_image`, `delete_image`, `post_insert_image` |
| **Links** | `get_page_link_annotations`, `post_page_link_annotations`, `put_link_annotation`, `delete_link_annotation` |
| **Stamps** | `get_document_stamps`, `post_page_text_stamps`, `post_page_image_stamps`, `delete_stamp` |
| **Tables** | `get_document_tables`, `post_page_tables`, `put_table`, `delete_table` |
| **Watermarks** | Via image stamps |
| **Headers/Footers** | Via text/image stamps |
| **Encryption** | `put_encrypt_document`, `put_decrypt_document`, `put_change_password_document` |
| **Properties** | `get_document_properties`, `put_set_property`, `delete_property` |
| **XMP Metadata** | `get_xmp_metadata_json`, `get_xmp_metadata_xml`, `post_xmp_metadata` |
| **Layers** | `get_document_layers`, `delete_document_layer` |
| **Compare** | `post_compare_document` |
| **Privileges** | `put_privileges` |
| **OCR** | `put_searchable_document` |

---

## 5. Testing Infrastructure

### 5.1 Test Files (`test/`)

- **`pdf_tests.rb`** — Main unit test file with all test cases
- **`faraday_config.rb`** — Faraday timeout configuration (reads `FARADAY_TIMEOUT` env var)
- Reads credentials from `settings/credentials.json`
- Uses `PdfApi.new(client_id, client_secret, ...)` for API client creation
- Provides `upload_file(name)` helper for pre-uploading test files
- Supports both public cloud and self-hosted modes

### 5.2 Credentials Format (`settings/credentials.json`)

```json
{
    "client_secret": "YOUR_CLIENT_SECRET",
    "client_id": "YOUR_CLIENT_ID",
    "api_url": "https://api.aspose.cloud/v3.0",
    "self_host": false
}
```

### 5.3 Test Pattern

```ruby
require 'aspose_pdf_cloud'
include AsposePdfCloud

@pdf_api = PdfApi.new('YOUR_CLIENT_ID', 'YOUR_CLIENT_SECRET')
file_name = 'PdfWithAnnotations.pdf'
page_number = 2

opts = {
  :folder => 'TempPdfCloud'
}
response = @pdf_api.get_page_annotations(file_name, page_number, opts)
puts response.code
```

### 5.4 Test Fixtures

Test fixture PDF files are located in `test_data/`:
- `4pages.pdf`, `4pagesEncrypted.pdf`, `4pagesPdfA.pdf` — multi-page documents
- `33226.p12` — certificate for digital signatures
- `33539.jpg`, `44781.jpg` — image files
- `5pages.aps`, `5pages.pdf` — additional documents
- `adbe.x509.rsa_sha1.valid.pdf` — signed PDF

### 5.5 Running Tests

```bash
rake test
```

---

## 6. Examples (`Examples/`)

The `Examples/` directory contains **111 runnable Ruby files** focused primarily on annotation CRUD operations. Unlike other SDKs, the Ruby SDK uses a flat `Examples/` directory structure rather than a `Uses-Cases/` directory with domain-specific subdirectories.

### 6.1 Example Categories

| Category | Example Files |
|----------|---------------|
| **GET operations** | `get_page_annotations.rb`, `get_circle_annotation.rb`, `get_text_annotation.rb`, `get_screen_annotation.rb`, `get_document_annotations.rb`, `get_stamp_annotation.rb`, etc. |
| **POST operations** | `post_page_circle_annotations.rb`, `post_page_text_annotations.rb`, `post_page_stamp_annotations.rb`, `post_popup_annotation.rb`, etc. |
| **PUT operations** | `put_circle_annotation.rb`, `put_text_annotation.rb`, `put_stamp_annotation.rb`, `put_annotations_flatten.rb`, etc. |
| **DELETE operations** | `delete_annotation.rb`, `delete_page_annotations.rb`, `delete_document_annotations.rb` |
| **Data extraction** | `get_stamp_annotation_data.rb`, `get_screen_annotation_data.rb`, `get_sound_annotation_data.rb`, `put_screen_annotation_data_extract.rb`, etc. |

### 6.2 Example Data

The `Examples/example_data/` directory contains:
- `PdfWithAnnotations.pdf` — Sample PDF with pre-existing annotations
- `fileName.txt` — Additional test data files

### 6.3 Example Pattern

Each example file demonstrates a single API operation:

```ruby
@pdf_api = PdfApi.new('YOUR_CLIENT_ID', 'YOUR_CLIENT_SECRET')
file_name = 'PdfWithAnnotations.pdf'

# Perform operation
response = @pdf_api.get_circle_annotation(file_name, annotation_id, opts)
puts response.code
```

---

## 7. Design Patterns & Conventions

### 7.1 Code Generation

The SDK is **auto-generated** from the OpenAPI specification. Evidence:
- `.swagger-codegen-ignore` file present
- Consistent, repetitive method structure across all 1,500+ API methods
- Uniform model structure across all 293 model files
- Predictable naming patterns: `get_{entity}`, `post_{entity}`, `put_{entity}`, `delete_{entity}`

### 7.2 Key Conventions

| Convention | Description |
|------------|-------------|
| **Ruby gem** | `aspose_pdf_cloud` — standard Ruby gem packaging |
| **Module namespace** | `AsposePdfCloud` — all classes inside this module |
| **Snake_case API** | All API methods use snake_case: `get_page_annotations`, `put_create_document` |
| **MIT license header** | Every Ruby file starts with the same copyright block (embedded in `=begin ... =end`) |
| **Options Hash** | Optional parameters passed as a Ruby Hash: `opts = { :folder => 'tempFolder' }` |
| **Self-host support** | `PdfApi.new('', '', 'SELFHOST_URL', true)` skips OAuth2 authentication |
| **Faraday HTTP client** | Uses `faraday >= 1.9.3` with `faraday-multipart` for HTTP requests |
| **Constructor auth** | `PdfApi.new(client_id, client_secret, host=nil, self_host=false)` |
| **Custom headers** | `x-aspose-client: ruby sdk`, `x-aspose-client-version: 26.4.0` |

### 7.3 Configuration Pattern

```ruby
require 'aspose_pdf_cloud'
include AsposePdfCloud

# Public cloud
@pdf_api = PdfApi.new('YOUR_CLIENT_ID', 'YOUR_CLIENT_SECRET')

# Self-hosted
@pdf_api = PdfApi.new('', '', 'https://self-hosted-api.example.com', true)

# With options
opts = {
  :folder => 'TempPdfCloud'
}
response = @pdf_api.get_page_annotations(file_name, page_number, opts)
```

### 7.4 Error Handling

```ruby
include AsposePdfCloud

begin
  response = @pdf_api.get_page_annotations(file_name, page_number, opts)
rescue ApiError => e
  # e.code              — HTTP status code
  # e.response_headers  — HTTP response headers
  # e.response_body     — raw response body
  puts "Error #{e.code}: #{e.message}"
end
```

---

## 8. Dependencies & Build

### 8.1 Dependencies

| Dependency | Version | Purpose |
|------------|---------|---------|
| `ruby` | >= 2.6 | Language runtime |
| `faraday` | >= 1.9.3 | HTTP client library |
| `faraday-multipart` | * | Multipart request support |
| `minitest` | ~> 5.11.3 (dev) | Unit testing |
| `rake` | * (dev) | Build automation |
| `rubocop` | ~> 1.74.0 (dev) | Code style checking |
| `ci_reporter_minitest` | * (dev) | CI test reporting |

### 8.2 Installation

Via Gemfile:

```ruby
gem 'aspose_pdf_cloud', '~> 26.4.0'
```

Or build from source:

```bash
gem build aspose_pdf_cloud.gemspec
gem install ./aspose_pdf_cloud-26.4.0.gem
```

---

## 9. Documentation

The `docs/` directory contains **Markdown files** with API reference documentation:

- `PdfApi.md` — Full API method reference
- `{Model}.md` — One file per model type (e.g., `Document.md`, `Annotation.md`, `Bookmark.md`)
- `{Response}.md` — One file per response type (e.g., `DocumentResponse.md`, `AnnotationsResponse.md`)

---

