# AsposePdfCloud::PdfApi

All URIs are relative to *https://api.aspose.cloud/v3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**copy_file**](PdfApi.md#copy_file) | **PUT** /pdf/storage/file/copy/\{srcPath} | Copy file
[**copy_folder**](PdfApi.md#copy_folder) | **PUT** /pdf/storage/folder/copy/\{srcPath} | Copy folder
[**create_folder**](PdfApi.md#create_folder) | **PUT** /pdf/storage/folder/\{path} | Create the folder
[**delete_annotation**](PdfApi.md#delete_annotation) | **DELETE** /pdf/\{name}/annotations/\{annotationId} | Delete document annotation by ID
[**delete_bookmark**](PdfApi.md#delete_bookmark) | **DELETE** /pdf/\{name}/bookmarks/bookmark/\{bookmarkPath} | Delete document bookmark by ID.
[**delete_document_annotations**](PdfApi.md#delete_document_annotations) | **DELETE** /pdf/\{name}/annotations | Delete all annotations from the document
[**delete_document_bookmarks**](PdfApi.md#delete_document_bookmarks) | **DELETE** /pdf/\{name}/bookmarks/tree | Delete all document bookmarks.
[**delete_document_layer**](PdfApi.md#delete_document_layer) | **DELETE** /pdf/\{name}/layers | Remove document layer.
[**delete_document_link_annotations**](PdfApi.md#delete_document_link_annotations) | **DELETE** /pdf/\{name}/links | Delete all link annotations from the document
[**delete_document_stamps**](PdfApi.md#delete_document_stamps) | **DELETE** /pdf/\{name}/stamps | Delete all stamps from the document
[**delete_document_tables**](PdfApi.md#delete_document_tables) | **DELETE** /pdf/\{name}/tables | Delete all tables from the document
[**delete_field**](PdfApi.md#delete_field) | **DELETE** /pdf/\{name}/fields/\{fieldName} | Delete document field by name.
[**delete_file**](PdfApi.md#delete_file) | **DELETE** /pdf/storage/file/\{path} | Delete file
[**delete_folder**](PdfApi.md#delete_folder) | **DELETE** /pdf/storage/folder/\{path} | Delete folder
[**delete_image**](PdfApi.md#delete_image) | **DELETE** /pdf/\{name}/images/\{imageId} | Delete image from document page.
[**delete_link_annotation**](PdfApi.md#delete_link_annotation) | **DELETE** /pdf/\{name}/links/\{linkId} | Delete document page link annotation by ID
[**delete_page**](PdfApi.md#delete_page) | **DELETE** /pdf/\{name}/pages/\{pageNumber} | Delete document page by its number.
[**delete_page_annotations**](PdfApi.md#delete_page_annotations) | **DELETE** /pdf/\{name}/pages/\{pageNumber}/annotations | Delete all annotations from the page
[**delete_page_link_annotations**](PdfApi.md#delete_page_link_annotations) | **DELETE** /pdf/\{name}/pages/\{pageNumber}/links | Delete all link annotations from the page
[**delete_page_stamps**](PdfApi.md#delete_page_stamps) | **DELETE** /pdf/\{name}/pages/\{pageNumber}/stamps | Delete all stamps from the page
[**delete_page_tables**](PdfApi.md#delete_page_tables) | **DELETE** /pdf/\{name}/pages/\{pageNumber}/tables | Delete all tables from the page
[**delete_properties**](PdfApi.md#delete_properties) | **DELETE** /pdf/\{name}/documentproperties | Delete custom document properties.
[**delete_property**](PdfApi.md#delete_property) | **DELETE** /pdf/\{name}/documentproperties/\{propertyName} | Delete document property.
[**delete_stamp**](PdfApi.md#delete_stamp) | **DELETE** /pdf/\{name}/stamps/\{stampId} | Delete document stamp by ID
[**delete_table**](PdfApi.md#delete_table) | **DELETE** /pdf/\{name}/tables/\{tableId} | Delete document table by ID
[**download_file**](PdfApi.md#download_file) | **GET** /pdf/storage/file/\{path} | Download file
[**get_aps_in_storage_to_pdf**](PdfApi.md#get_aps_in_storage_to_pdf) | **GET** /pdf/create/aps | Convert APS file (located on storage) to PDF format and return resulting file in response. 
[**get_bookmark**](PdfApi.md#get_bookmark) | **GET** /pdf/\{name}/bookmarks/bookmark/\{bookmarkPath} | Read document bookmark.
[**get_bookmarks**](PdfApi.md#get_bookmarks) | **GET** /pdf/\{name}/bookmarks/list/\{bookmarkPath} | Read document bookmarks node list.
[**get_caret_annotation**](PdfApi.md#get_caret_annotation) | **GET** /pdf/\{name}/annotations/caret/\{annotationId} | Read document page caret annotation by ID.
[**get_check_box_field**](PdfApi.md#get_check_box_field) | **GET** /pdf/\{name}/fields/checkbox/\{fieldName} | Read document checkbox field by name.
[**get_circle_annotation**](PdfApi.md#get_circle_annotation) | **GET** /pdf/\{name}/annotations/circle/\{annotationId} | Read document page circle annotation by ID.
[**get_combo_box_field**](PdfApi.md#get_combo_box_field) | **GET** /pdf/\{name}/fields/combobox/\{fieldName} | Read document combobox field by name.
[**get_disc_usage**](PdfApi.md#get_disc_usage) | **GET** /pdf/storage/disc | Get disc usage
[**get_document**](PdfApi.md#get_document) | **GET** /pdf/\{name} | Read common document info.
[**get_document_annotations**](PdfApi.md#get_document_annotations) | **GET** /pdf/\{name}/annotations | Read document page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.
[**get_document_attachment_by_index**](PdfApi.md#get_document_attachment_by_index) | **GET** /pdf/\{name}/attachments/\{attachmentIndex} | Read document attachment info by its index.
[**get_document_attachments**](PdfApi.md#get_document_attachments) | **GET** /pdf/\{name}/attachments | Read document attachments info.
[**get_document_bookmarks**](PdfApi.md#get_document_bookmarks) | **GET** /pdf/\{name}/bookmarks/tree | Read document bookmarks tree.
[**get_document_caret_annotations**](PdfApi.md#get_document_caret_annotations) | **GET** /pdf/\{name}/annotations/caret | Read document caret annotations.
[**get_document_check_box_fields**](PdfApi.md#get_document_check_box_fields) | **GET** /pdf/\{name}/fields/checkbox | Read document checkbox fields.
[**get_document_circle_annotations**](PdfApi.md#get_document_circle_annotations) | **GET** /pdf/\{name}/annotations/circle | Read document circle annotations.
[**get_document_combo_box_fields**](PdfApi.md#get_document_combo_box_fields) | **GET** /pdf/\{name}/fields/combobox | Read document combobox fields.
[**get_document_display_properties**](PdfApi.md#get_document_display_properties) | **GET** /pdf/\{name}/displayproperties | Read document display properties.
[**get_document_file_attachment_annotations**](PdfApi.md#get_document_file_attachment_annotations) | **GET** /pdf/\{name}/annotations/fileattachment | Read document FileAttachment annotations.
[**get_document_free_text_annotations**](PdfApi.md#get_document_free_text_annotations) | **GET** /pdf/\{name}/annotations/freetext | Read document free text annotations.
[**get_document_highlight_annotations**](PdfApi.md#get_document_highlight_annotations) | **GET** /pdf/\{name}/annotations/highlight | Read document highlight annotations.
[**get_document_ink_annotations**](PdfApi.md#get_document_ink_annotations) | **GET** /pdf/\{name}/annotations/ink | Read document ink annotations.
[**get_document_layers**](PdfApi.md#get_document_layers) | **GET** /pdf/\{name}/layers | Gets document layers.
[**get_document_line_annotations**](PdfApi.md#get_document_line_annotations) | **GET** /pdf/\{name}/annotations/line | Read document line annotations.
[**get_document_list_box_fields**](PdfApi.md#get_document_list_box_fields) | **GET** /pdf/\{name}/fields/listbox | Read document listbox fields.
[**get_document_movie_annotations**](PdfApi.md#get_document_movie_annotations) | **GET** /pdf/\{name}/annotations/movie | Read document movie annotations.
[**get_document_poly_line_annotations**](PdfApi.md#get_document_poly_line_annotations) | **GET** /pdf/\{name}/annotations/polyline | Read document polyline annotations.
[**get_document_polygon_annotations**](PdfApi.md#get_document_polygon_annotations) | **GET** /pdf/\{name}/annotations/polygon | Read document polygon annotations.
[**get_document_popup_annotations**](PdfApi.md#get_document_popup_annotations) | **GET** /pdf/\{name}/annotations/popup | Read document popup annotations.
[**get_document_popup_annotations_by_parent**](PdfApi.md#get_document_popup_annotations_by_parent) | **GET** /pdf/\{name}/annotations/\{annotationId}/popup | Read document popup annotations by parent id.
[**get_document_properties**](PdfApi.md#get_document_properties) | **GET** /pdf/\{name}/documentproperties | Read document properties.
[**get_document_property**](PdfApi.md#get_document_property) | **GET** /pdf/\{name}/documentproperties/\{propertyName} | Read document property by name.
[**get_document_radio_button_fields**](PdfApi.md#get_document_radio_button_fields) | **GET** /pdf/\{name}/fields/radiobutton | Read document radiobutton fields.
[**get_document_redaction_annotations**](PdfApi.md#get_document_redaction_annotations) | **GET** /pdf/\{name}/annotations/redaction | Read document redaction annotations.
[**get_document_screen_annotations**](PdfApi.md#get_document_screen_annotations) | **GET** /pdf/\{name}/annotations/screen | Read document screen annotations.
[**get_document_signature_fields**](PdfApi.md#get_document_signature_fields) | **GET** /pdf/\{name}/fields/signature | Read document signature fields.
[**get_document_sound_annotations**](PdfApi.md#get_document_sound_annotations) | **GET** /pdf/\{name}/annotations/sound | Read document sound annotations.
[**get_document_square_annotations**](PdfApi.md#get_document_square_annotations) | **GET** /pdf/\{name}/annotations/square | Read document square annotations.
[**get_document_squiggly_annotations**](PdfApi.md#get_document_squiggly_annotations) | **GET** /pdf/\{name}/annotations/squiggly | Read document squiggly annotations.
[**get_document_stamp_annotations**](PdfApi.md#get_document_stamp_annotations) | **GET** /pdf/\{name}/annotations/stamp | Read document stamp annotations.
[**get_document_stamps**](PdfApi.md#get_document_stamps) | **GET** /pdf/\{name}/stamps | Read document stamps.
[**get_document_strike_out_annotations**](PdfApi.md#get_document_strike_out_annotations) | **GET** /pdf/\{name}/annotations/strikeout | Read document StrikeOut annotations.
[**get_document_tables**](PdfApi.md#get_document_tables) | **GET** /pdf/\{name}/tables | Read document tables.
[**get_document_text_annotations**](PdfApi.md#get_document_text_annotations) | **GET** /pdf/\{name}/annotations/text | Read document text annotations.
[**get_document_text_box_fields**](PdfApi.md#get_document_text_box_fields) | **GET** /pdf/\{name}/fields/textbox | Read document text box fields.
[**get_document_underline_annotations**](PdfApi.md#get_document_underline_annotations) | **GET** /pdf/\{name}/annotations/underline | Read document underline annotations.
[**get_download_document_attachment_by_index**](PdfApi.md#get_download_document_attachment_by_index) | **GET** /pdf/\{name}/attachments/\{attachmentIndex}/download | Download document attachment content by its index.
[**get_epub_in_storage_to_pdf**](PdfApi.md#get_epub_in_storage_to_pdf) | **GET** /pdf/create/epub | Convert EPUB file (located on storage) to PDF format and return resulting file in response. 
[**get_export_fields_from_pdf_to_fdf_in_storage**](PdfApi.md#get_export_fields_from_pdf_to_fdf_in_storage) | **GET** /pdf/\{name}/export/fdf | Export fields from from PDF in storage to FDF file.
[**get_export_fields_from_pdf_to_xfdf_in_storage**](PdfApi.md#get_export_fields_from_pdf_to_xfdf_in_storage) | **GET** /pdf/\{name}/export/xfdf | Export fields from from PDF in storage to XFDF file.
[**get_export_fields_from_pdf_to_xml_in_storage**](PdfApi.md#get_export_fields_from_pdf_to_xml_in_storage) | **GET** /pdf/\{name}/export/xml | Export fields from from PDF in storage to XML file.
[**get_field**](PdfApi.md#get_field) | **GET** /pdf/\{name}/fields/\{fieldName} | Get document field by name.
[**get_fields**](PdfApi.md#get_fields) | **GET** /pdf/\{name}/fields | Get document fields.
[**get_file_attachment_annotation**](PdfApi.md#get_file_attachment_annotation) | **GET** /pdf/\{name}/annotations/fileattachment/\{annotationId} | Read document page FileAttachment annotation by ID.
[**get_file_attachment_annotation_data**](PdfApi.md#get_file_attachment_annotation_data) | **GET** /pdf/\{name}/annotations/fileattachment/\{annotationId}/data | Read document page FileAttachment annotation by ID.
[**get_file_versions**](PdfApi.md#get_file_versions) | **GET** /pdf/storage/version/\{path} | Get file versions
[**get_files_list**](PdfApi.md#get_files_list) | **GET** /pdf/storage/folder/\{path} | Get all files and folders within a folder
[**get_free_text_annotation**](PdfApi.md#get_free_text_annotation) | **GET** /pdf/\{name}/annotations/freetext/\{annotationId} | Read document page free text annotation by ID.
[**get_highlight_annotation**](PdfApi.md#get_highlight_annotation) | **GET** /pdf/\{name}/annotations/highlight/\{annotationId} | Read document page highlight annotation by ID.
[**get_html_in_storage_to_pdf**](PdfApi.md#get_html_in_storage_to_pdf) | **GET** /pdf/create/html | Convert HTML file (located on storage) to PDF format and return resulting file in response. 
[**get_image**](PdfApi.md#get_image) | **GET** /pdf/\{name}/images/\{imageId} | Read document image by ID.
[**get_image_extract_as_gif**](PdfApi.md#get_image_extract_as_gif) | **GET** /pdf/\{name}/images/\{imageId}/extract/gif | Extract document image in GIF format
[**get_image_extract_as_jpeg**](PdfApi.md#get_image_extract_as_jpeg) | **GET** /pdf/\{name}/images/\{imageId}/extract/jpeg | Extract document image in JPEG format
[**get_image_extract_as_png**](PdfApi.md#get_image_extract_as_png) | **GET** /pdf/\{name}/images/\{imageId}/extract/png | Extract document image in PNG format
[**get_image_extract_as_tiff**](PdfApi.md#get_image_extract_as_tiff) | **GET** /pdf/\{name}/images/\{imageId}/extract/tiff | Extract document image in TIFF format
[**get_images**](PdfApi.md#get_images) | **GET** /pdf/\{name}/pages/\{pageNumber}/images | Read document images.
[**get_images_extract_svg**](PdfApi.md#get_images_extract_svg) | **GET** /pdf/\{name}/pages/\{pageNumber}/images/extract/svg | Extract SVG images from document page.
[**get_import_fields_from_fdf_in_storage**](PdfApi.md#get_import_fields_from_fdf_in_storage) | **GET** /pdf/\{name}/import/fdf | Update fields from FDF file in storage.
[**get_import_fields_from_xfdf_in_storage**](PdfApi.md#get_import_fields_from_xfdf_in_storage) | **GET** /pdf/\{name}/import/xfdf | Update fields from XFDF file in storage.
[**get_import_fields_from_xml_in_storage**](PdfApi.md#get_import_fields_from_xml_in_storage) | **GET** /pdf/\{name}/import/xml | Import from XML file (located on storage) to PDF format and return resulting file in response. 
[**get_ink_annotation**](PdfApi.md#get_ink_annotation) | **GET** /pdf/\{name}/annotations/ink/\{annotationId} | Read document page ink annotation by ID.
[**get_line_annotation**](PdfApi.md#get_line_annotation) | **GET** /pdf/\{name}/annotations/line/\{annotationId} | Read document page line annotation by ID.
[**get_link_annotation**](PdfApi.md#get_link_annotation) | **GET** /pdf/\{name}/links/\{linkId} | Read document link annotation by ID.
[**get_list_box_field**](PdfApi.md#get_list_box_field) | **GET** /pdf/\{name}/fields/listbox/\{fieldName} | Read document listbox field by name.
[**get_markdown_in_storage_to_pdf**](PdfApi.md#get_markdown_in_storage_to_pdf) | **GET** /pdf/create/markdown | Convert MD file (located on storage) to PDF format and return resulting file in response. 
[**get_mht_in_storage_to_pdf**](PdfApi.md#get_mht_in_storage_to_pdf) | **GET** /pdf/create/mht | Convert MHT file (located on storage) to PDF format and return resulting file in response. 
[**get_movie_annotation**](PdfApi.md#get_movie_annotation) | **GET** /pdf/\{name}/annotations/movie/\{annotationId} | Read document page movie annotation by ID.
[**get_page**](PdfApi.md#get_page) | **GET** /pdf/\{name}/pages/\{pageNumber} | Read document page info.
[**get_page_annotations**](PdfApi.md#get_page_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations | Read document page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.
[**get_page_caret_annotations**](PdfApi.md#get_page_caret_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/caret | Read document page caret annotations.
[**get_page_check_box_fields**](PdfApi.md#get_page_check_box_fields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/checkbox | Read document page checkbox fields.
[**get_page_circle_annotations**](PdfApi.md#get_page_circle_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/circle | Read document page circle annotations.
[**get_page_combo_box_fields**](PdfApi.md#get_page_combo_box_fields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/combobox | Read document page combobox fields.
[**get_page_convert_to_bmp**](PdfApi.md#get_page_convert_to_bmp) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/bmp | Convert document page to Bmp image and return resulting file in response.
[**get_page_convert_to_emf**](PdfApi.md#get_page_convert_to_emf) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/emf | Convert document page to Emf image and return resulting file in response.
[**get_page_convert_to_gif**](PdfApi.md#get_page_convert_to_gif) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/gif | Convert document page to Gif image and return resulting file in response.
[**get_page_convert_to_jpeg**](PdfApi.md#get_page_convert_to_jpeg) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/jpeg | Convert document page to Jpeg image and return resulting file in response.
[**get_page_convert_to_png**](PdfApi.md#get_page_convert_to_png) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/png | Convert document page to Png image and return resulting file in response.
[**get_page_convert_to_tiff**](PdfApi.md#get_page_convert_to_tiff) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/tiff | Convert document page to Tiff image  and return resulting file in response.
[**get_page_file_attachment_annotations**](PdfApi.md#get_page_file_attachment_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/fileattachment | Read document page FileAttachment annotations.
[**get_page_free_text_annotations**](PdfApi.md#get_page_free_text_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/freetext | Read document page free text annotations.
[**get_page_highlight_annotations**](PdfApi.md#get_page_highlight_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/highlight | Read document page highlight annotations.
[**get_page_ink_annotations**](PdfApi.md#get_page_ink_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/ink | Read document page ink annotations.
[**get_page_line_annotations**](PdfApi.md#get_page_line_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/line | Read document page line annotations.
[**get_page_link_annotation**](PdfApi.md#get_page_link_annotation) | **GET** /pdf/\{name}/pages/\{pageNumber}/links/\{linkId} | Read document page link annotation by ID.
[**get_page_link_annotations**](PdfApi.md#get_page_link_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/links | Read document page link annotations.
[**get_page_list_box_fields**](PdfApi.md#get_page_list_box_fields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/listbox | Read document page listbox fields.
[**get_page_movie_annotations**](PdfApi.md#get_page_movie_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/movie | Read document page movie annotations.
[**get_page_poly_line_annotations**](PdfApi.md#get_page_poly_line_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/polyline | Read document page polyline annotations.
[**get_page_polygon_annotations**](PdfApi.md#get_page_polygon_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/polygon | Read document page polygon annotations.
[**get_page_popup_annotations**](PdfApi.md#get_page_popup_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/popup | Read document page popup annotations.
[**get_page_radio_button_fields**](PdfApi.md#get_page_radio_button_fields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/radiobutton | Read document page radiobutton fields.
[**get_page_redaction_annotations**](PdfApi.md#get_page_redaction_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/redaction | Read document page redaction annotations.
[**get_page_screen_annotations**](PdfApi.md#get_page_screen_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/screen | Read document page screen annotations.
[**get_page_signature_fields**](PdfApi.md#get_page_signature_fields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/signature | Read document page signature fields.
[**get_page_sound_annotations**](PdfApi.md#get_page_sound_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/sound | Read document page sound annotations.
[**get_page_square_annotations**](PdfApi.md#get_page_square_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/square | Read document page square annotations.
[**get_page_squiggly_annotations**](PdfApi.md#get_page_squiggly_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/squiggly | Read document page squiggly annotations.
[**get_page_stamp_annotations**](PdfApi.md#get_page_stamp_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/stamp | Read document page stamp annotations.
[**get_page_stamps**](PdfApi.md#get_page_stamps) | **GET** /pdf/\{name}/pages/\{pageNumber}/stamps | Read page document stamps.
[**get_page_strike_out_annotations**](PdfApi.md#get_page_strike_out_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/strikeout | Read document page StrikeOut annotations.
[**get_page_tables**](PdfApi.md#get_page_tables) | **GET** /pdf/\{name}/pages/\{pageNumber}/tables | Read document page tables.
[**get_page_text**](PdfApi.md#get_page_text) | **GET** /pdf/\{name}/pages/\{pageNumber}/text | Read page text items.
[**get_page_text_annotations**](PdfApi.md#get_page_text_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/text | Read document page text annotations.
[**get_page_text_box_fields**](PdfApi.md#get_page_text_box_fields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/textbox | Read document page text box fields.
[**get_page_underline_annotations**](PdfApi.md#get_page_underline_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/underline | Read document page underline annotations.
[**get_pages**](PdfApi.md#get_pages) | **GET** /pdf/\{name}/pages | Read document pages info.
[**get_pcl_in_storage_to_pdf**](PdfApi.md#get_pcl_in_storage_to_pdf) | **GET** /pdf/create/pcl | Convert PCL file (located on storage) to PDF format and return resulting file in response. 
[**get_pdf_a_in_storage_to_pdf**](PdfApi.md#get_pdf_a_in_storage_to_pdf) | **GET** /pdf/create/pdfa | Convert PDFA file (located on storage) to PDF format and return resulting file in response. 
[**get_pdf_in_storage_to_aps**](PdfApi.md#get_pdf_in_storage_to_aps) | **GET** /pdf/\{name}/convert/aps | Converts PDF document (located on storage) to APS format and returns resulting file in response content
[**get_pdf_in_storage_to_doc**](PdfApi.md#get_pdf_in_storage_to_doc) | **GET** /pdf/\{name}/convert/doc | Converts PDF document (located on storage) to DOC format and returns resulting file in response content.
[**get_pdf_in_storage_to_epub**](PdfApi.md#get_pdf_in_storage_to_epub) | **GET** /pdf/\{name}/convert/epub | Converts PDF document (located on storage) to EPUB format and returns resulting file in response content
[**get_pdf_in_storage_to_html**](PdfApi.md#get_pdf_in_storage_to_html) | **GET** /pdf/\{name}/convert/html | Converts PDF document (located on storage) to Html format and returns resulting file in response content
[**get_pdf_in_storage_to_mobi_xml**](PdfApi.md#get_pdf_in_storage_to_mobi_xml) | **GET** /pdf/\{name}/convert/mobixml | Converts PDF document (located on storage) to MOBIXML format and returns resulting ZIP archive file in response content.
[**get_pdf_in_storage_to_pdf_a**](PdfApi.md#get_pdf_in_storage_to_pdf_a) | **GET** /pdf/\{name}/convert/pdfa | Converts PDF document (located on storage) to PdfA format and returns resulting file in response content
[**get_pdf_in_storage_to_pptx**](PdfApi.md#get_pdf_in_storage_to_pptx) | **GET** /pdf/\{name}/convert/pptx | Converts PDF document (located on storage) to PPTX format and returns resulting file in response content
[**get_pdf_in_storage_to_svg**](PdfApi.md#get_pdf_in_storage_to_svg) | **GET** /pdf/\{name}/convert/svg | Converts PDF document (located on storage) to SVG format and returns resulting file in response content
[**get_pdf_in_storage_to_te_x**](PdfApi.md#get_pdf_in_storage_to_te_x) | **GET** /pdf/\{name}/convert/tex | Converts PDF document (located on storage) to TeX format and returns resulting file in response content
[**get_pdf_in_storage_to_text**](PdfApi.md#get_pdf_in_storage_to_text) | **GET** /pdf/\{name}/convert/text | Converts PDF document (located on storage) to Text format and returns resulting file in response content
[**get_pdf_in_storage_to_tiff**](PdfApi.md#get_pdf_in_storage_to_tiff) | **GET** /pdf/\{name}/convert/tiff | Converts PDF document (located on storage) to TIFF format and returns resulting file in response content
[**get_pdf_in_storage_to_xls**](PdfApi.md#get_pdf_in_storage_to_xls) | **GET** /pdf/\{name}/convert/xls | Converts PDF document (located on storage) to XLS format and returns resulting file in response content
[**get_pdf_in_storage_to_xlsx**](PdfApi.md#get_pdf_in_storage_to_xlsx) | **GET** /pdf/\{name}/convert/xlsx | Converts PDF document (located on storage) to XLSX format and returns resulting file in response content
[**get_pdf_in_storage_to_xml**](PdfApi.md#get_pdf_in_storage_to_xml) | **GET** /pdf/\{name}/convert/xml | Converts PDF document (located on storage) to XML format and returns resulting file in response content
[**get_pdf_in_storage_to_xps**](PdfApi.md#get_pdf_in_storage_to_xps) | **GET** /pdf/\{name}/convert/xps | Converts PDF document (located on storage) to XPS format and returns resulting file in response content
[**get_poly_line_annotation**](PdfApi.md#get_poly_line_annotation) | **GET** /pdf/\{name}/annotations/polyline/\{annotationId} | Read document page polyline annotation by ID.
[**get_polygon_annotation**](PdfApi.md#get_polygon_annotation) | **GET** /pdf/\{name}/annotations/polygon/\{annotationId} | Read document page polygon annotation by ID.
[**get_popup_annotation**](PdfApi.md#get_popup_annotation) | **GET** /pdf/\{name}/annotations/popup/\{annotationId} | Read document page popup annotation by ID.
[**get_ps_in_storage_to_pdf**](PdfApi.md#get_ps_in_storage_to_pdf) | **GET** /pdf/create/ps | Convert PS file (located on storage) to PDF format and return resulting file in response. 
[**get_radio_button_field**](PdfApi.md#get_radio_button_field) | **GET** /pdf/\{name}/fields/radiobutton/\{fieldName} | Read document RadioButton field by name.
[**get_redaction_annotation**](PdfApi.md#get_redaction_annotation) | **GET** /pdf/\{name}/annotations/redaction/\{annotationId} | Read document page redaction annotation by ID.
[**get_screen_annotation**](PdfApi.md#get_screen_annotation) | **GET** /pdf/\{name}/annotations/screen/\{annotationId} | Read document page screen annotation by ID.
[**get_screen_annotation_data**](PdfApi.md#get_screen_annotation_data) | **GET** /pdf/\{name}/annotations/screen/\{annotationId}/data | Read document page screen annotation by ID.
[**get_signature_field**](PdfApi.md#get_signature_field) | **GET** /pdf/\{name}/fields/signature/\{fieldName} | Read document signature field by name.
[**get_sound_annotation**](PdfApi.md#get_sound_annotation) | **GET** /pdf/\{name}/annotations/sound/\{annotationId} | Read document page sound annotation by ID.
[**get_sound_annotation_data**](PdfApi.md#get_sound_annotation_data) | **GET** /pdf/\{name}/annotations/sound/\{annotationId}/data | Read document page sound annotation by ID.
[**get_square_annotation**](PdfApi.md#get_square_annotation) | **GET** /pdf/\{name}/annotations/square/\{annotationId} | Read document page square annotation by ID.
[**get_squiggly_annotation**](PdfApi.md#get_squiggly_annotation) | **GET** /pdf/\{name}/annotations/squiggly/\{annotationId} | Read document page squiggly annotation by ID.
[**get_stamp_annotation**](PdfApi.md#get_stamp_annotation) | **GET** /pdf/\{name}/annotations/stamp/\{annotationId} | Read document page stamp annotation by ID.
[**get_stamp_annotation_data**](PdfApi.md#get_stamp_annotation_data) | **GET** /pdf/\{name}/annotations/stamp/\{annotationId}/data | Read document page stamp annotation by ID.
[**get_strike_out_annotation**](PdfApi.md#get_strike_out_annotation) | **GET** /pdf/\{name}/annotations/strikeout/\{annotationId} | Read document page StrikeOut annotation by ID.
[**get_svg_in_storage_to_pdf**](PdfApi.md#get_svg_in_storage_to_pdf) | **GET** /pdf/create/svg | Convert SVG file (located on storage) to PDF format and return resulting file in response. 
[**get_table**](PdfApi.md#get_table) | **GET** /pdf/\{name}/tables/\{tableId} | Read document page table by ID.
[**get_te_x_in_storage_to_pdf**](PdfApi.md#get_te_x_in_storage_to_pdf) | **GET** /pdf/create/tex | Convert TeX file (located on storage) to PDF format and return resulting file in response. 
[**get_text**](PdfApi.md#get_text) | **GET** /pdf/\{name}/text | Read document text.
[**get_text_annotation**](PdfApi.md#get_text_annotation) | **GET** /pdf/\{name}/annotations/text/\{annotationId} | Read document page text annotation by ID.
[**get_text_box_field**](PdfApi.md#get_text_box_field) | **GET** /pdf/\{name}/fields/textbox/\{fieldName} | Read document text box field by name.
[**get_underline_annotation**](PdfApi.md#get_underline_annotation) | **GET** /pdf/\{name}/annotations/underline/\{annotationId} | Read document page underline annotation by ID.
[**get_verify_signature**](PdfApi.md#get_verify_signature) | **GET** /pdf/\{name}/verifySignature | Verify signature document.
[**get_web_in_storage_to_pdf**](PdfApi.md#get_web_in_storage_to_pdf) | **GET** /pdf/create/web | Convert web page to PDF format and return resulting file in response. 
[**get_words_per_page**](PdfApi.md#get_words_per_page) | **GET** /pdf/\{name}/pages/wordCount | Get number of words per document page.
[**get_xfa_pdf_in_storage_to_acro_form**](PdfApi.md#get_xfa_pdf_in_storage_to_acro_form) | **GET** /pdf/\{name}/convert/xfatoacroform | Converts PDF document which contains XFA form (located on storage) to PDF with AcroForm and returns resulting file response content
[**get_xml_in_storage_to_pdf**](PdfApi.md#get_xml_in_storage_to_pdf) | **GET** /pdf/create/xml | Convert XML file (located on storage) to PDF format and return resulting file in response. 
[**get_xmp_metadata_json**](PdfApi.md#get_xmp_metadata_json) | **GET** /pdf/\{name}/xmpmetadata/json | Gets document XMP Metadata as JSON.
[**get_xmp_metadata_xml**](PdfApi.md#get_xmp_metadata_xml) | **GET** /pdf/\{name}/xmpmetadata/xml | Gets document XMP Metadata as XML file.
[**get_xps_in_storage_to_pdf**](PdfApi.md#get_xps_in_storage_to_pdf) | **GET** /pdf/create/xps | Convert XPS file (located on storage) to PDF format and return resulting file in response. 
[**get_xsl_fo_in_storage_to_pdf**](PdfApi.md#get_xsl_fo_in_storage_to_pdf) | **GET** /pdf/create/xslfo | Convert XslFo file (located on storage) to PDF format and return resulting file in response. 
[**move_file**](PdfApi.md#move_file) | **PUT** /pdf/storage/file/move/\{srcPath} | Move file
[**move_folder**](PdfApi.md#move_folder) | **PUT** /pdf/storage/folder/move/\{srcPath} | Move folder
[**object_exists**](PdfApi.md#object_exists) | **GET** /pdf/storage/exist/\{path} | Check if file or folder exists
[**post_add_document_attachment**](PdfApi.md#post_add_document_attachment) | **POST** /pdf/\{name}/attachments | Adds a file attachment to the PDF document.
[**post_append_document**](PdfApi.md#post_append_document) | **POST** /pdf/\{name}/appendDocument | Append document to existing one.
[**post_bookmark**](PdfApi.md#post_bookmark) | **POST** /pdf/\{name}/bookmarks/bookmark/\{bookmarkPath} | Add document bookmarks.
[**post_change_password_document_in_storage**](PdfApi.md#post_change_password_document_in_storage) | **POST** /pdf/\{name}/changepassword | Change document password in storage.
[**post_check_box_fields**](PdfApi.md#post_check_box_fields) | **POST** /pdf/\{name}/fields/checkbox | Add document checkbox fields.
[**post_combo_box_fields**](PdfApi.md#post_combo_box_fields) | **POST** /pdf/\{name}/fields/combobox | Add document combobox fields.
[**post_compare_pdf**](PdfApi.md#post_compare_pdf) | **POST** /pdf/compare | Compare two PDF documents.
[**post_create_document**](PdfApi.md#post_create_document) | **POST** /pdf/\{name} | Create empty document.
[**post_create_field**](PdfApi.md#post_create_field) | **POST** /pdf/\{name}/fields | Create field.
[**post_decrypt_document_in_storage**](PdfApi.md#post_decrypt_document_in_storage) | **POST** /pdf/\{name}/decrypt | Decrypt document in storage.
[**post_document_image_footer**](PdfApi.md#post_document_image_footer) | **POST** /pdf/\{name}/footer/image | Add document image footer.
[**post_document_image_header**](PdfApi.md#post_document_image_header) | **POST** /pdf/\{name}/header/image | Add document image header.
[**post_document_image_stamps**](PdfApi.md#post_document_image_stamps) | **POST** /pdf/\{name}/stamps/image | Add document pages image stamps.
[**post_document_image_stamps_page_specified**](PdfApi.md#post_document_image_stamps_page_specified) | **POST** /pdf/\{name}/stamps/image/pagespecified | Add document image stamps to specified pages.
[**post_document_page_number_stamps**](PdfApi.md#post_document_page_number_stamps) | **POST** /pdf/\{name}/stamps/pagenumber | Add document page number stamps.
[**post_document_pages_crop**](PdfApi.md#post_document_pages_crop) | **POST** /pdf/\{name}/crop | Crop PDF document pages.
[**post_document_pages_resize**](PdfApi.md#post_document_pages_resize) | **POST** /pdf/\{name}/resize | Rsize PDF document.
[**post_document_pages_rotate**](PdfApi.md#post_document_pages_rotate) | **POST** /pdf/\{name}/rotate | Rotate PDF document.
[**post_document_text_footer**](PdfApi.md#post_document_text_footer) | **POST** /pdf/\{name}/footer/text | Add document text footer.
[**post_document_text_header**](PdfApi.md#post_document_text_header) | **POST** /pdf/\{name}/header/text | Add document text header.
[**post_document_text_replace**](PdfApi.md#post_document_text_replace) | **POST** /pdf/\{name}/text/replace | Document&#39;s replace text method.
[**post_document_text_stamps**](PdfApi.md#post_document_text_stamps) | **POST** /pdf/\{name}/stamps/text | Add document pages text stamps.
[**post_document_text_stamps_page_specified**](PdfApi.md#post_document_text_stamps_page_specified) | **POST** /pdf/\{name}/stamps/text/pagespecified | Add document text stamps to specified pages.
[**post_encrypt_document_in_storage**](PdfApi.md#post_encrypt_document_in_storage) | **POST** /pdf/\{name}/encrypt | Encrypt document in storage.
[**post_flatten_document**](PdfApi.md#post_flatten_document) | **POST** /pdf/\{name}/flatten | Flatten the document.
[**post_html_to_pdf**](PdfApi.md#post_html_to_pdf) | **POST** /pdf/create/html | Convert HTML file (zip archive in request content) to PDF format and return resulting file in response. 
[**post_import_fields_from_fdf**](PdfApi.md#post_import_fields_from_fdf) | **POST** /pdf/\{name}/import/fdf | Update fields from FDF file in request.
[**post_import_fields_from_xfdf**](PdfApi.md#post_import_fields_from_xfdf) | **POST** /pdf/\{name}/import/xfdf | Update fields from XFDF file in request.
[**post_import_fields_from_xml**](PdfApi.md#post_import_fields_from_xml) | **POST** /pdf/\{name}/import/xml | Update fields from XML file in request.
[**post_insert_image**](PdfApi.md#post_insert_image) | **POST** /pdf/\{name}/pages/\{pageNumber}/images | Insert image to document page.
[**post_list_box_fields**](PdfApi.md#post_list_box_fields) | **POST** /pdf/\{name}/fields/listbox | Add document listbox fields.
[**post_move_page**](PdfApi.md#post_move_page) | **POST** /pdf/\{name}/pages/\{pageNumber}/movePage | Move page to new position.
[**post_optimize_document**](PdfApi.md#post_optimize_document) | **POST** /pdf/\{name}/optimize | Optimize document.
[**post_organize_document**](PdfApi.md#post_organize_document) | **POST** /pdf/\{name}/organize | Merge selected pages of a document.
[**post_organize_documents**](PdfApi.md#post_organize_documents) | **POST** /pdf/organize | Merge selected pages of different documents.
[**post_page_caret_annotations**](PdfApi.md#post_page_caret_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/caret | Add document page caret annotations.
[**post_page_certify**](PdfApi.md#post_page_certify) | **POST** /pdf/\{name}/pages/\{pageNumber}/certify | Certify document page.
[**post_page_circle_annotations**](PdfApi.md#post_page_circle_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/circle | Add document page circle annotations.
[**post_page_file_attachment_annotations**](PdfApi.md#post_page_file_attachment_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/fileattachment | Add document page FileAttachment annotations.
[**post_page_free_text_annotations**](PdfApi.md#post_page_free_text_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/freetext | Add document page free text annotations.
[**post_page_highlight_annotations**](PdfApi.md#post_page_highlight_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/highlight | Add document page highlight annotations.
[**post_page_image_stamps**](PdfApi.md#post_page_image_stamps) | **POST** /pdf/\{name}/pages/\{pageNumber}/stamps/image | Add document page image stamps.
[**post_page_ink_annotations**](PdfApi.md#post_page_ink_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/ink | Add document page ink annotations.
[**post_page_line_annotations**](PdfApi.md#post_page_line_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/line | Add document page line annotations.
[**post_page_link_annotations**](PdfApi.md#post_page_link_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/links | Add document page link annotations.
[**post_page_movie_annotations**](PdfApi.md#post_page_movie_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/movie | Add document page movie annotations.
[**post_page_pdf_page_stamps**](PdfApi.md#post_page_pdf_page_stamps) | **POST** /pdf/\{name}/pages/\{pageNumber}/stamps/pdfpage | Add document pdf page stamps.
[**post_page_poly_line_annotations**](PdfApi.md#post_page_poly_line_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/polyline | Add document page polyline annotations.
[**post_page_polygon_annotations**](PdfApi.md#post_page_polygon_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/polygon | Add document page polygon annotations.
[**post_page_redaction_annotations**](PdfApi.md#post_page_redaction_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/redaction | Add document page redaction annotations.
[**post_page_screen_annotations**](PdfApi.md#post_page_screen_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/screen | Add document page screen annotations.
[**post_page_sound_annotations**](PdfApi.md#post_page_sound_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/sound | Add document page sound annotations.
[**post_page_square_annotations**](PdfApi.md#post_page_square_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/square | Add document page square annotations.
[**post_page_squiggly_annotations**](PdfApi.md#post_page_squiggly_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/squiggly | Add document page squiggly annotations.
[**post_page_stamp_annotations**](PdfApi.md#post_page_stamp_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/stamp | Add document page stamp annotations.
[**post_page_strike_out_annotations**](PdfApi.md#post_page_strike_out_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/strikeout | Add document page StrikeOut annotations.
[**post_page_tables**](PdfApi.md#post_page_tables) | **POST** /pdf/\{name}/pages/\{pageNumber}/tables | Add document page tables.
[**post_page_text_annotations**](PdfApi.md#post_page_text_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/text | Add document page text annotations.
[**post_page_text_replace**](PdfApi.md#post_page_text_replace) | **POST** /pdf/\{name}/pages/\{pageNumber}/text/replace | Page&#39;s replace text method.
[**post_page_text_stamps**](PdfApi.md#post_page_text_stamps) | **POST** /pdf/\{name}/pages/\{pageNumber}/stamps/text | Add document page text stamps.
[**post_page_underline_annotations**](PdfApi.md#post_page_underline_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/underline | Add document page underline annotations.
[**post_pdf_to_xlsx**](PdfApi.md#post_pdf_to_xlsx) | **POST** /pdf/convert/xlsx | Converts PDF document (in request content) to XLSX format and uploads and returns resulting file in response content.
[**post_popup_annotation**](PdfApi.md#post_popup_annotation) | **POST** /pdf/\{name}/annotations/\{annotationId}/popup | Add document popup annotations.
[**post_radio_button_fields**](PdfApi.md#post_radio_button_fields) | **POST** /pdf/\{name}/fields/radiobutton | Add document RadioButton fields.
[**post_sign_document**](PdfApi.md#post_sign_document) | **POST** /pdf/\{name}/sign | Sign document.
[**post_sign_page**](PdfApi.md#post_sign_page) | **POST** /pdf/\{name}/pages/\{pageNumber}/sign | Sign page.
[**post_signature_field**](PdfApi.md#post_signature_field) | **POST** /pdf/\{name}/fields/signature | Add document signature field.
[**post_split_document**](PdfApi.md#post_split_document) | **POST** /pdf/\{name}/split | Split document to parts.
[**post_split_range_pdf_document**](PdfApi.md#post_split_range_pdf_document) | **POST** /pdf/\{name}/splitrangepdf | Split document into ranges.
[**post_text_box_fields**](PdfApi.md#post_text_box_fields) | **POST** /pdf/\{name}/fields/textbox | Add document text box fields.
[**post_xmp_metadata**](PdfApi.md#post_xmp_metadata) | **POST** /pdf/\{name}/xmpmetadata | Add or remove XMP Metadata properties.
[**put_add_new_page**](PdfApi.md#put_add_new_page) | **PUT** /pdf/\{name}/pages | Add new page to end of the document.
[**put_add_text**](PdfApi.md#put_add_text) | **PUT** /pdf/\{name}/pages/\{pageNumber}/text | Add text to PDF document page.
[**put_annotations_flatten**](PdfApi.md#put_annotations_flatten) | **PUT** /pdf/\{name}/annotations/flatten | Flattens the annotations of the specified types
[**put_aps_in_storage_to_pdf**](PdfApi.md#put_aps_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/aps | Convert APS file (located on storage) to PDF format and upload resulting file to storage. 
[**put_bookmark**](PdfApi.md#put_bookmark) | **PUT** /pdf/\{name}/bookmarks/bookmark/\{bookmarkPath} | Update document bookmark.
[**put_caret_annotation**](PdfApi.md#put_caret_annotation) | **PUT** /pdf/\{name}/annotations/caret/\{annotationId} | Replace document caret annotation
[**put_change_password_document**](PdfApi.md#put_change_password_document) | **PUT** /pdf/changepassword | Change document password from content.
[**put_check_box_field**](PdfApi.md#put_check_box_field) | **PUT** /pdf/\{name}/fields/checkbox/\{fieldName} | Replace document checkbox field
[**put_circle_annotation**](PdfApi.md#put_circle_annotation) | **PUT** /pdf/\{name}/annotations/circle/\{annotationId} | Replace document circle annotation
[**put_combo_box_field**](PdfApi.md#put_combo_box_field) | **PUT** /pdf/\{name}/fields/combobox/\{fieldName} | Replace document combobox field
[**put_create_document**](PdfApi.md#put_create_document) | **PUT** /pdf/\{name} | Create empty document.
[**put_create_pdf_from_layer**](PdfApi.md#put_create_pdf_from_layer) | **PUT** /pdf/\{name}/layers | Create a separate PDF from a PDF Layer and upload resulting file to storage.
[**put_decrypt_document**](PdfApi.md#put_decrypt_document) | **PUT** /pdf/decrypt | Decrypt document from content.
[**put_document_display_properties**](PdfApi.md#put_document_display_properties) | **PUT** /pdf/\{name}/displayproperties | Update document display properties.
[**put_encrypt_document**](PdfApi.md#put_encrypt_document) | **PUT** /pdf/encrypt | Encrypt document from content.
[**put_epub_in_storage_to_pdf**](PdfApi.md#put_epub_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/epub | Convert EPUB file (located on storage) to PDF format and upload resulting file to storage. 
[**put_export_fields_from_pdf_to_fdf_in_storage**](PdfApi.md#put_export_fields_from_pdf_to_fdf_in_storage) | **PUT** /pdf/\{name}/export/fdf | Export fields from from PDF in storage to FDF file in storage.
[**put_export_fields_from_pdf_to_xfdf_in_storage**](PdfApi.md#put_export_fields_from_pdf_to_xfdf_in_storage) | **PUT** /pdf/\{name}/export/xfdf | Export fields from from PDF in storage to XFDF file in storage.
[**put_export_fields_from_pdf_to_xml_in_storage**](PdfApi.md#put_export_fields_from_pdf_to_xml_in_storage) | **PUT** /pdf/\{name}/export/xml | Export fields from from PDF in storage to XML file in storage.
[**put_fields_flatten**](PdfApi.md#put_fields_flatten) | **PUT** /pdf/\{name}/fields/flatten | Flatten form fields in document.
[**put_file_attachment_annotation**](PdfApi.md#put_file_attachment_annotation) | **PUT** /pdf/\{name}/annotations/fileattachment/\{annotationId} | Replace document FileAttachment annotation
[**put_file_attachment_annotation_data_extract**](PdfApi.md#put_file_attachment_annotation_data_extract) | **PUT** /pdf/\{name}/annotations/fileattachment/\{annotationId}/data/extract | Extract document FileAttachment annotation content to storage
[**put_free_text_annotation**](PdfApi.md#put_free_text_annotation) | **PUT** /pdf/\{name}/annotations/freetext/\{annotationId} | Replace document free text annotation
[**put_highlight_annotation**](PdfApi.md#put_highlight_annotation) | **PUT** /pdf/\{name}/annotations/highlight/\{annotationId} | Replace document highlight annotation
[**put_html_in_storage_to_pdf**](PdfApi.md#put_html_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/html | Convert HTML file (located on storage) to PDF format and upload resulting file to storage. 
[**put_image_extract_as_gif**](PdfApi.md#put_image_extract_as_gif) | **PUT** /pdf/\{name}/images/\{imageId}/extract/gif | Extract document image in GIF format to folder
[**put_image_extract_as_jpeg**](PdfApi.md#put_image_extract_as_jpeg) | **PUT** /pdf/\{name}/images/\{imageId}/extract/jpeg | Extract document image in JPEG format to folder
[**put_image_extract_as_png**](PdfApi.md#put_image_extract_as_png) | **PUT** /pdf/\{name}/images/\{imageId}/extract/png | Extract document image in PNG format to folder
[**put_image_extract_as_tiff**](PdfApi.md#put_image_extract_as_tiff) | **PUT** /pdf/\{name}/images/\{imageId}/extract/tiff | Extract document image in TIFF format to folder
[**put_image_in_storage_to_pdf**](PdfApi.md#put_image_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/images | Convert image file (located on storage) to PDF format and upload resulting file to storage. 
[**put_images_extract_as_gif**](PdfApi.md#put_images_extract_as_gif) | **PUT** /pdf/\{name}/pages/\{pageNumber}/images/extract/gif | Extract document images in GIF format to folder.
[**put_images_extract_as_jpeg**](PdfApi.md#put_images_extract_as_jpeg) | **PUT** /pdf/\{name}/pages/\{pageNumber}/images/extract/jpeg | Extract document images in JPEG format to folder.
[**put_images_extract_as_png**](PdfApi.md#put_images_extract_as_png) | **PUT** /pdf/\{name}/pages/\{pageNumber}/images/extract/png | Extract document images in PNG format to folder.
[**put_images_extract_as_tiff**](PdfApi.md#put_images_extract_as_tiff) | **PUT** /pdf/\{name}/pages/\{pageNumber}/images/extract/tiff | Extract document images in TIFF format to folder.
[**put_import_fields_from_fdf_in_storage**](PdfApi.md#put_import_fields_from_fdf_in_storage) | **PUT** /pdf/\{name}/import/fdf | Update fields from FDF file in storage.
[**put_import_fields_from_xfdf_in_storage**](PdfApi.md#put_import_fields_from_xfdf_in_storage) | **PUT** /pdf/\{name}/import/xfdf | Update fields from XFDF file in storage.
[**put_import_fields_from_xml_in_storage**](PdfApi.md#put_import_fields_from_xml_in_storage) | **PUT** /pdf/\{name}/import/xml | Update fields from XML file in storage.
[**put_ink_annotation**](PdfApi.md#put_ink_annotation) | **PUT** /pdf/\{name}/annotations/ink/\{annotationId} | Replace document ink annotation
[**put_line_annotation**](PdfApi.md#put_line_annotation) | **PUT** /pdf/\{name}/annotations/line/\{annotationId} | Replace document line annotation
[**put_link_annotation**](PdfApi.md#put_link_annotation) | **PUT** /pdf/\{name}/links/\{linkId} | Replace document page link annotations
[**put_list_box_field**](PdfApi.md#put_list_box_field) | **PUT** /pdf/\{name}/fields/listbox/\{fieldName} | Replace document listbox field
[**put_markdown_in_storage_to_pdf**](PdfApi.md#put_markdown_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/markdown | Convert MD file (located on storage) to PDF format and upload resulting file to storage. 
[**put_merge_documents**](PdfApi.md#put_merge_documents) | **PUT** /pdf/\{name}/merge | Merge a list of documents.
[**put_mht_in_storage_to_pdf**](PdfApi.md#put_mht_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/mht | Convert MHT file (located on storage) to PDF format and upload resulting file to storage. 
[**put_movie_annotation**](PdfApi.md#put_movie_annotation) | **PUT** /pdf/\{name}/annotations/movie/\{annotationId} | Replace document movie annotation
[**put_page_add_stamp**](PdfApi.md#put_page_add_stamp) | **PUT** /pdf/\{name}/pages/\{pageNumber}/stamp | Add page stamp.
[**put_page_convert_to_bmp**](PdfApi.md#put_page_convert_to_bmp) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/bmp | Convert document page to bmp image and upload resulting file to storage.
[**put_page_convert_to_emf**](PdfApi.md#put_page_convert_to_emf) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/emf | Convert document page to emf image and upload resulting file to storage.
[**put_page_convert_to_gif**](PdfApi.md#put_page_convert_to_gif) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/gif | Convert document page to gif image and upload resulting file to storage.
[**put_page_convert_to_jpeg**](PdfApi.md#put_page_convert_to_jpeg) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/jpeg | Convert document page to Jpeg image and upload resulting file to storage.
[**put_page_convert_to_png**](PdfApi.md#put_page_convert_to_png) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/png | Convert document page to png image and upload resulting file to storage.
[**put_page_convert_to_tiff**](PdfApi.md#put_page_convert_to_tiff) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/tiff | Convert document page to Tiff image and upload resulting file to storage.
[**put_pcl_in_storage_to_pdf**](PdfApi.md#put_pcl_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/pcl | Convert PCL file (located on storage) to PDF format and upload resulting file to storage. 
[**put_pdf_a_in_storage_to_pdf**](PdfApi.md#put_pdf_a_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/pdfa | Convert PDFA file (located on storage) to PDF format and upload resulting file to storage. 
[**put_pdf_in_request_to_aps**](PdfApi.md#put_pdf_in_request_to_aps) | **PUT** /pdf/convert/aps | Converts PDF document (in request content) to APS format and uploads resulting file to storage.
[**put_pdf_in_request_to_doc**](PdfApi.md#put_pdf_in_request_to_doc) | **PUT** /pdf/convert/doc | Converts PDF document (in request content) to DOC format and uploads resulting file to storage.
[**put_pdf_in_request_to_epub**](PdfApi.md#put_pdf_in_request_to_epub) | **PUT** /pdf/convert/epub | Converts PDF document (in request content) to EPUB format and uploads resulting file to storage.
[**put_pdf_in_request_to_html**](PdfApi.md#put_pdf_in_request_to_html) | **PUT** /pdf/convert/html | Converts PDF document (in request content) to Html format and uploads resulting file to storage.
[**put_pdf_in_request_to_mobi_xml**](PdfApi.md#put_pdf_in_request_to_mobi_xml) | **PUT** /pdf/convert/mobixml | Converts PDF document (in request content) to MOBIXML format and uploads resulting ZIP archive file to storage.
[**put_pdf_in_request_to_pdf_a**](PdfApi.md#put_pdf_in_request_to_pdf_a) | **PUT** /pdf/convert/pdfa | Converts PDF document (in request content) to PdfA format and uploads resulting file to storage.
[**put_pdf_in_request_to_pptx**](PdfApi.md#put_pdf_in_request_to_pptx) | **PUT** /pdf/convert/pptx | Converts PDF document (in request content) to PPTX format and uploads resulting file to storage.
[**put_pdf_in_request_to_svg**](PdfApi.md#put_pdf_in_request_to_svg) | **PUT** /pdf/convert/svg | Converts PDF document (in request content) to SVG format and uploads resulting file to storage.
[**put_pdf_in_request_to_te_x**](PdfApi.md#put_pdf_in_request_to_te_x) | **PUT** /pdf/convert/tex | Converts PDF document (in request content) to TeX format and uploads resulting file to storage.
[**put_pdf_in_request_to_tiff**](PdfApi.md#put_pdf_in_request_to_tiff) | **PUT** /pdf/convert/tiff | Converts PDF document (in request content) to TIFF format and uploads resulting file to storage.
[**put_pdf_in_request_to_xls**](PdfApi.md#put_pdf_in_request_to_xls) | **PUT** /pdf/convert/xls | Converts PDF document (in request content) to XLS format and uploads resulting file to storage.
[**put_pdf_in_request_to_xlsx**](PdfApi.md#put_pdf_in_request_to_xlsx) | **PUT** /pdf/convert/xlsx | Converts PDF document (in request content) to XLSX format and uploads resulting file to storage.
[**put_pdf_in_request_to_xml**](PdfApi.md#put_pdf_in_request_to_xml) | **PUT** /pdf/convert/xml | Converts PDF document (in request content) to XML format and uploads resulting file to storage.
[**put_pdf_in_request_to_xps**](PdfApi.md#put_pdf_in_request_to_xps) | **PUT** /pdf/convert/xps | Converts PDF document (in request content) to XPS format and uploads resulting file to storage.
[**put_pdf_in_storage_to_aps**](PdfApi.md#put_pdf_in_storage_to_aps) | **PUT** /pdf/\{name}/convert/aps | Converts PDF document (located on storage) to APS format and uploads resulting file to storage
[**put_pdf_in_storage_to_doc**](PdfApi.md#put_pdf_in_storage_to_doc) | **PUT** /pdf/\{name}/convert/doc | Converts PDF document (located on storage) to DOC format and uploads resulting file to storage.
[**put_pdf_in_storage_to_epub**](PdfApi.md#put_pdf_in_storage_to_epub) | **PUT** /pdf/\{name}/convert/epub | Converts PDF document (located on storage) to EPUB format and uploads resulting file to storage
[**put_pdf_in_storage_to_html**](PdfApi.md#put_pdf_in_storage_to_html) | **PUT** /pdf/\{name}/convert/html | Converts PDF document (located on storage) to Html format and uploads resulting file to storage
[**put_pdf_in_storage_to_mobi_xml**](PdfApi.md#put_pdf_in_storage_to_mobi_xml) | **PUT** /pdf/\{name}/convert/mobixml | Converts PDF document (located on storage) to MOBIXML format and uploads resulting ZIP archive file to storage
[**put_pdf_in_storage_to_pdf_a**](PdfApi.md#put_pdf_in_storage_to_pdf_a) | **PUT** /pdf/\{name}/convert/pdfa | Converts PDF document (located on storage) to PdfA format and uploads resulting file to storage
[**put_pdf_in_storage_to_pptx**](PdfApi.md#put_pdf_in_storage_to_pptx) | **PUT** /pdf/\{name}/convert/pptx | Converts PDF document (located on storage) to PPTX format and uploads resulting file to storage
[**put_pdf_in_storage_to_svg**](PdfApi.md#put_pdf_in_storage_to_svg) | **PUT** /pdf/\{name}/convert/svg | Converts PDF document (located on storage) to SVG format and uploads resulting file to storage
[**put_pdf_in_storage_to_te_x**](PdfApi.md#put_pdf_in_storage_to_te_x) | **PUT** /pdf/\{name}/convert/tex | Converts PDF document (located on storage) to TeX format and uploads resulting file to storage
[**put_pdf_in_storage_to_tiff**](PdfApi.md#put_pdf_in_storage_to_tiff) | **PUT** /pdf/\{name}/convert/tiff | Converts PDF document (located on storage) to TIFF format and uploads resulting file to storage
[**put_pdf_in_storage_to_xls**](PdfApi.md#put_pdf_in_storage_to_xls) | **PUT** /pdf/\{name}/convert/xls | Converts PDF document (located on storage) to XLS format and uploads resulting file to storage
[**put_pdf_in_storage_to_xlsx**](PdfApi.md#put_pdf_in_storage_to_xlsx) | **PUT** /pdf/\{name}/convert/xlsx | Converts PDF document (located on storage) to XLSX format and uploads resulting file to storage
[**put_pdf_in_storage_to_xml**](PdfApi.md#put_pdf_in_storage_to_xml) | **PUT** /pdf/\{name}/convert/xml | Converts PDF document (located on storage) to XML format and uploads resulting file to storage
[**put_pdf_in_storage_to_xps**](PdfApi.md#put_pdf_in_storage_to_xps) | **PUT** /pdf/\{name}/convert/xps | Converts PDF document (located on storage) to XPS format and uploads resulting file to storage
[**put_poly_line_annotation**](PdfApi.md#put_poly_line_annotation) | **PUT** /pdf/\{name}/annotations/polyline/\{annotationId} | Replace document polyline annotation
[**put_polygon_annotation**](PdfApi.md#put_polygon_annotation) | **PUT** /pdf/\{name}/annotations/polygon/\{annotationId} | Replace document polygon annotation
[**put_popup_annotation**](PdfApi.md#put_popup_annotation) | **PUT** /pdf/\{name}/annotations/popup/\{annotationId} | Replace document popup annotation
[**put_privileges**](PdfApi.md#put_privileges) | **PUT** /pdf/\{name}/privileges | Update privilege document.
[**put_ps_in_storage_to_pdf**](PdfApi.md#put_ps_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/ps | Convert PS file (located on storage) to PDF format and upload resulting file to storage. 
[**put_radio_button_field**](PdfApi.md#put_radio_button_field) | **PUT** /pdf/\{name}/fields/radiobutton/\{fieldName} | Replace document RadioButton field
[**put_redaction_annotation**](PdfApi.md#put_redaction_annotation) | **PUT** /pdf/\{name}/annotations/redaction/\{annotationId} | Replace document redaction annotation
[**put_replace_image**](PdfApi.md#put_replace_image) | **PUT** /pdf/\{name}/images/\{imageId} | Replace document image.
[**put_replace_multiple_image**](PdfApi.md#put_replace_multiple_image) | **PUT** /pdf/\{name}/images/replace | Replace document multiple image.
[**put_screen_annotation**](PdfApi.md#put_screen_annotation) | **PUT** /pdf/\{name}/annotations/screen/\{annotationId} | Replace document screen annotation
[**put_screen_annotation_data_extract**](PdfApi.md#put_screen_annotation_data_extract) | **PUT** /pdf/\{name}/annotations/screen/\{annotationId}/data/extract | Extract document screen annotation content to storage
[**put_searchable_document**](PdfApi.md#put_searchable_document) | **PUT** /pdf/\{name}/ocr | Create searchable PDF document. Generate OCR layer for images in input PDF document.
[**put_set_property**](PdfApi.md#put_set_property) | **PUT** /pdf/\{name}/documentproperties/\{propertyName} | Add/update document property.
[**put_signature_field**](PdfApi.md#put_signature_field) | **PUT** /pdf/\{name}/fields/signature/\{fieldName} | Replace document signature field.
[**put_sound_annotation**](PdfApi.md#put_sound_annotation) | **PUT** /pdf/\{name}/annotations/sound/\{annotationId} | Replace document sound annotation
[**put_sound_annotation_data_extract**](PdfApi.md#put_sound_annotation_data_extract) | **PUT** /pdf/\{name}/annotations/sound/\{annotationId}/data/extract | Extract document sound annotation content to storage
[**put_square_annotation**](PdfApi.md#put_square_annotation) | **PUT** /pdf/\{name}/annotations/square/\{annotationId} | Replace document square annotation
[**put_squiggly_annotation**](PdfApi.md#put_squiggly_annotation) | **PUT** /pdf/\{name}/annotations/squiggly/\{annotationId} | Replace document squiggly annotation
[**put_stamp_annotation**](PdfApi.md#put_stamp_annotation) | **PUT** /pdf/\{name}/annotations/stamp/\{annotationId} | Replace document stamp annotation
[**put_stamp_annotation_data_extract**](PdfApi.md#put_stamp_annotation_data_extract) | **PUT** /pdf/\{name}/annotations/stamp/\{annotationId}/data/extract | Extract document stamp annotation content to storage
[**put_strike_out_annotation**](PdfApi.md#put_strike_out_annotation) | **PUT** /pdf/\{name}/annotations/strikeout/\{annotationId} | Replace document StrikeOut annotation
[**put_svg_in_storage_to_pdf**](PdfApi.md#put_svg_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/svg | Convert SVG file (located on storage) to PDF format and upload resulting file to storage. 
[**put_table**](PdfApi.md#put_table) | **PUT** /pdf/\{name}/tables/\{tableId} | Replace document page table.
[**put_te_x_in_storage_to_pdf**](PdfApi.md#put_te_x_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/tex | Convert TeX file (located on storage) to PDF format and upload resulting file to storage. 
[**put_text_annotation**](PdfApi.md#put_text_annotation) | **PUT** /pdf/\{name}/annotations/text/\{annotationId} | Replace document text annotation
[**put_text_box_field**](PdfApi.md#put_text_box_field) | **PUT** /pdf/\{name}/fields/textbox/\{fieldName} | Replace document text box field
[**put_underline_annotation**](PdfApi.md#put_underline_annotation) | **PUT** /pdf/\{name}/annotations/underline/\{annotationId} | Replace document underline annotation
[**put_update_field**](PdfApi.md#put_update_field) | **PUT** /pdf/\{name}/fields/\{fieldName} | Update field.
[**put_update_fields**](PdfApi.md#put_update_fields) | **PUT** /pdf/\{name}/fields | Update fields.
[**put_web_in_storage_to_pdf**](PdfApi.md#put_web_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/web | Convert web page to PDF format and upload resulting file to storage. 
[**put_xfa_pdf_in_request_to_acro_form**](PdfApi.md#put_xfa_pdf_in_request_to_acro_form) | **PUT** /pdf/convert/xfatoacroform | Converts PDF document which contains XFA form (in request content) to PDF with AcroForm and uploads resulting file to storage.
[**put_xfa_pdf_in_storage_to_acro_form**](PdfApi.md#put_xfa_pdf_in_storage_to_acro_form) | **PUT** /pdf/\{name}/convert/xfatoacroform | Converts PDF document which contains XFA form (located on storage) to PDF with AcroForm and uploads resulting file to storage
[**put_xml_in_storage_to_pdf**](PdfApi.md#put_xml_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/xml | Convert XML file (located on storage) to PDF format and upload resulting file to storage. 
[**put_xps_in_storage_to_pdf**](PdfApi.md#put_xps_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/xps | Convert XPS file (located on storage) to PDF format and upload resulting file to storage. 
[**put_xsl_fo_in_storage_to_pdf**](PdfApi.md#put_xsl_fo_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/xslfo | Convert XslFo file (located on storage) to PDF format and upload resulting file to storage. 
[**storage_exists**](PdfApi.md#storage_exists) | **GET** /pdf/storage/\{storageName}/exist | Check if storage exists
[**upload_file**](PdfApi.md#upload_file) | **PUT** /pdf/storage/file/\{path} | Upload file


# **copy_file**
> copy_file(src_path, dest_path, opts)

Copy file

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source file path e.g. &#39;/folder/file.ext&#39; | 
 **dest_path** | **String**| Destination file path | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 
 **version_id** | **String**| File version ID to copy | [optional] 

### Return type

nil (empty response body)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **copy_folder**
> copy_folder(src_path, dest_path, opts)

Copy folder

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source folder path e.g. &#39;/src&#39; | 
 **dest_path** | **String**| Destination folder path e.g. &#39;/dst&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 

### Return type

nil (empty response body)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_folder**
> create_folder(path, opts)

Create the folder

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path to create e.g. &#39;folder_1/folder_2/&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

nil (empty response body)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_annotation**
> AsposeResponse delete_annotation(name, annotation_id, opts)

Delete document annotation by ID

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_bookmark**
> AsposeResponse delete_bookmark(name, bookmark_path, opts)

Delete document bookmark by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **bookmark_path** | **String**| The bookmark path. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_document_annotations**
> AsposeResponse delete_document_annotations(name, opts)

Delete all annotations from the document

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_document_bookmarks**
> AsposeResponse delete_document_bookmarks(name, opts)

Delete all document bookmarks.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_document_layer**
> AsposeResponse delete_document_layer(name, page_number, layer_id, opts)

Remove document layer.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| Layer page. | 
 **layer_id** | **String**| Layer Id. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **pass_base64** | **String**| The password (Base64). | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_document_link_annotations**
> AsposeResponse delete_document_link_annotations(name, opts)

Delete all link annotations from the document

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_document_stamps**
> AsposeResponse delete_document_stamps(name, opts)

Delete all stamps from the document

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_document_tables**
> AsposeResponse delete_document_tables(name, opts)

Delete all tables from the document

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_field**
> AsposeResponse delete_field(name, field_name, opts)

Delete document field by name.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **field_name** | **String**| The field name/ | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_file**
> delete_file(path, opts)

Delete file

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/folder/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID to delete | [optional] 

### Return type

nil (empty response body)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_folder**
> delete_folder(path, opts)

Delete folder

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path e.g. &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **recursive** | **BOOLEAN**| Enable to delete folders, subfolders and files | [optional] [default to false]

### Return type

nil (empty response body)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_image**
> AsposeResponse delete_image(name, image_id, opts)

Delete image from document page.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| Image ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_link_annotation**
> AsposeResponse delete_link_annotation(name, link_id, opts)

Delete document page link annotation by ID

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **link_id** | **String**| The link ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_page**
> AsposeResponse delete_page(name, page_number, opts)

Delete document page by its number.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_page_annotations**
> AsposeResponse delete_page_annotations(name, page_number, opts)

Delete all annotations from the page

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_page_link_annotations**
> AsposeResponse delete_page_link_annotations(name, page_number, opts)

Delete all link annotations from the page

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_page_stamps**
> AsposeResponse delete_page_stamps(name, page_number, opts)

Delete all stamps from the page

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_page_tables**
> AsposeResponse delete_page_tables(name, page_number, opts)

Delete all tables from the page

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_properties**
> AsposeResponse delete_properties(name, opts)

Delete custom document properties.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_property**
> AsposeResponse delete_property(name, property_name, opts)

Delete document property.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **property_name** | **String**| Property name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_stamp**
> AsposeResponse delete_stamp(name, stamp_id, opts)

Delete document stamp by ID

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **stamp_id** | **String**| The stamp ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_table**
> AsposeResponse delete_table(name, table_id, opts)

Delete document table by ID

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **table_id** | **String**| The table ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **download_file**
> File download_file(path, opts)

Download file

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/folder/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID to download | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_aps_in_storage_to_pdf**
> File get_aps_in_storage_to_pdf(src_path, opts)

Convert APS file (located on storage) to PDF format and return resulting file in response. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.xps) | 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_bookmark**
> BookmarkResponse get_bookmark(name, bookmark_path, opts)

Read document bookmark.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **bookmark_path** | **String**| The bookmark path. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**BookmarkResponse**](BookmarkResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_bookmarks**
> BookmarksResponse get_bookmarks(name, bookmark_path, opts)

Read document bookmarks node list.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **bookmark_path** | **String**| The bookmark path. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**BookmarksResponse**](BookmarksResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_caret_annotation**
> CaretAnnotationResponse get_caret_annotation(name, annotation_id, opts)

Read document page caret annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**CaretAnnotationResponse**](CaretAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_check_box_field**
> CheckBoxFieldResponse get_check_box_field(name, field_name, opts)

Read document checkbox field by name.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **field_name** | **String**| The field name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**CheckBoxFieldResponse**](CheckBoxFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_circle_annotation**
> CircleAnnotationResponse get_circle_annotation(name, annotation_id, opts)

Read document page circle annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**CircleAnnotationResponse**](CircleAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_combo_box_field**
> ComboBoxFieldResponse get_combo_box_field(name, field_name, opts)

Read document combobox field by name.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **field_name** | **String**| The field name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**ComboBoxFieldResponse**](ComboBoxFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_disc_usage**
> DiscUsage get_disc_usage(opts)

Get disc usage

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**DiscUsage**](DiscUsage.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document**
> DocumentResponse get_document(name, opts)

Read common document info.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 

### Return type

[**DocumentResponse**](DocumentResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_annotations**
> AnnotationsInfoResponse get_document_annotations(name, opts)

Read document page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AnnotationsInfoResponse**](AnnotationsInfoResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_attachment_by_index**
> AttachmentResponse get_document_attachment_by_index(name, attachment_index, opts)

Read document attachment info by its index.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **attachment_index** | **Integer**| The attachment index. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AttachmentResponse**](AttachmentResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_attachments**
> AttachmentsResponse get_document_attachments(name, opts)

Read document attachments info.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AttachmentsResponse**](AttachmentsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_bookmarks**
> BookmarksResponse get_document_bookmarks(name, opts)

Read document bookmarks tree.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**BookmarksResponse**](BookmarksResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_caret_annotations**
> CaretAnnotationsResponse get_document_caret_annotations(name, opts)

Read document caret annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**CaretAnnotationsResponse**](CaretAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_check_box_fields**
> CheckBoxFieldsResponse get_document_check_box_fields(name, opts)

Read document checkbox fields.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**CheckBoxFieldsResponse**](CheckBoxFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_circle_annotations**
> CircleAnnotationsResponse get_document_circle_annotations(name, opts)

Read document circle annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**CircleAnnotationsResponse**](CircleAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_combo_box_fields**
> ComboBoxFieldsResponse get_document_combo_box_fields(name, opts)

Read document combobox fields.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**ComboBoxFieldsResponse**](ComboBoxFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_display_properties**
> DisplayPropertiesResponse get_document_display_properties(name, opts)

Read document display properties.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **storage** | **String**|  | [optional] 
 **folder** | **String**|  | [optional] 

### Return type

[**DisplayPropertiesResponse**](DisplayPropertiesResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_file_attachment_annotations**
> FileAttachmentAnnotationsResponse get_document_file_attachment_annotations(name, opts)

Read document FileAttachment annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**FileAttachmentAnnotationsResponse**](FileAttachmentAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_free_text_annotations**
> FreeTextAnnotationsResponse get_document_free_text_annotations(name, opts)

Read document free text annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**FreeTextAnnotationsResponse**](FreeTextAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_highlight_annotations**
> HighlightAnnotationsResponse get_document_highlight_annotations(name, opts)

Read document highlight annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**HighlightAnnotationsResponse**](HighlightAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_ink_annotations**
> InkAnnotationsResponse get_document_ink_annotations(name, opts)

Read document ink annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**InkAnnotationsResponse**](InkAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_layers**
> DocumentLayers get_document_layers(name, opts)

Gets document layers.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **pass_base64** | **String**| The password (Base64). | [optional] 

### Return type

[**DocumentLayers**](DocumentLayers.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_line_annotations**
> LineAnnotationsResponse get_document_line_annotations(name, opts)

Read document line annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**LineAnnotationsResponse**](LineAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_list_box_fields**
> ListBoxFieldsResponse get_document_list_box_fields(name, opts)

Read document listbox fields.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**ListBoxFieldsResponse**](ListBoxFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_movie_annotations**
> MovieAnnotationsResponse get_document_movie_annotations(name, opts)

Read document movie annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**MovieAnnotationsResponse**](MovieAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_poly_line_annotations**
> PolyLineAnnotationsResponse get_document_poly_line_annotations(name, opts)

Read document polyline annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**PolyLineAnnotationsResponse**](PolyLineAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_polygon_annotations**
> PolygonAnnotationsResponse get_document_polygon_annotations(name, opts)

Read document polygon annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**PolygonAnnotationsResponse**](PolygonAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_popup_annotations**
> PopupAnnotationsResponse get_document_popup_annotations(name, opts)

Read document popup annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**PopupAnnotationsResponse**](PopupAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_popup_annotations_by_parent**
> PopupAnnotationsResponse get_document_popup_annotations_by_parent(name, annotation_id, opts)

Read document popup annotations by parent id.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The parent annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**PopupAnnotationsResponse**](PopupAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_properties**
> DocumentPropertiesResponse get_document_properties(name, opts)

Read document properties.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**DocumentPropertiesResponse**](DocumentPropertiesResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_property**
> DocumentPropertyResponse get_document_property(name, property_name, opts)

Read document property by name.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **property_name** | **String**| Property name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**DocumentPropertyResponse**](DocumentPropertyResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_radio_button_fields**
> RadioButtonFieldsResponse get_document_radio_button_fields(name, opts)

Read document radiobutton fields.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**RadioButtonFieldsResponse**](RadioButtonFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_redaction_annotations**
> RedactionAnnotationsResponse get_document_redaction_annotations(name, opts)

Read document redaction annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**RedactionAnnotationsResponse**](RedactionAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_screen_annotations**
> ScreenAnnotationsResponse get_document_screen_annotations(name, opts)

Read document screen annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**ScreenAnnotationsResponse**](ScreenAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_signature_fields**
> SignatureFieldsResponse get_document_signature_fields(name, opts)

Read document signature fields.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**SignatureFieldsResponse**](SignatureFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_sound_annotations**
> SoundAnnotationsResponse get_document_sound_annotations(name, opts)

Read document sound annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**SoundAnnotationsResponse**](SoundAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_square_annotations**
> SquareAnnotationsResponse get_document_square_annotations(name, opts)

Read document square annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**SquareAnnotationsResponse**](SquareAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_squiggly_annotations**
> SquigglyAnnotationsResponse get_document_squiggly_annotations(name, opts)

Read document squiggly annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**SquigglyAnnotationsResponse**](SquigglyAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_stamp_annotations**
> StampAnnotationsResponse get_document_stamp_annotations(name, opts)

Read document stamp annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**StampAnnotationsResponse**](StampAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_stamps**
> StampsInfoResponse get_document_stamps(name, opts)

Read document stamps.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**StampsInfoResponse**](StampsInfoResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_strike_out_annotations**
> StrikeOutAnnotationsResponse get_document_strike_out_annotations(name, opts)

Read document StrikeOut annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**StrikeOutAnnotationsResponse**](StrikeOutAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_tables**
> TablesRecognizedResponse get_document_tables(name, opts)

Read document tables.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **storage** | **String**|  | [optional] 
 **folder** | **String**|  | [optional] 

### Return type

[**TablesRecognizedResponse**](TablesRecognizedResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_text_annotations**
> TextAnnotationsResponse get_document_text_annotations(name, opts)

Read document text annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**TextAnnotationsResponse**](TextAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_text_box_fields**
> TextBoxFieldsResponse get_document_text_box_fields(name, opts)

Read document text box fields.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**TextBoxFieldsResponse**](TextBoxFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_underline_annotations**
> UnderlineAnnotationsResponse get_document_underline_annotations(name, opts)

Read document underline annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**UnderlineAnnotationsResponse**](UnderlineAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_download_document_attachment_by_index**
> File get_download_document_attachment_by_index(name, attachment_index, opts)

Download document attachment content by its index.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **attachment_index** | **Integer**| The attachment index. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_epub_in_storage_to_pdf**
> File get_epub_in_storage_to_pdf(src_path, opts)

Convert EPUB file (located on storage) to PDF format and return resulting file in response. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.epub) | 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_export_fields_from_pdf_to_fdf_in_storage**
> File get_export_fields_from_pdf_to_fdf_in_storage(name, opts)

Export fields from from PDF in storage to FDF file.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_export_fields_from_pdf_to_xfdf_in_storage**
> File get_export_fields_from_pdf_to_xfdf_in_storage(name, opts)

Export fields from from PDF in storage to XFDF file.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_export_fields_from_pdf_to_xml_in_storage**
> File get_export_fields_from_pdf_to_xml_in_storage(name, opts)

Export fields from from PDF in storage to XML file.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_field**
> FieldResponse get_field(name, field_name, opts)

Get document field by name.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **field_name** | **String**| The field name (name should be encoded). | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**FieldResponse**](FieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_fields**
> FieldsResponse get_fields(name, opts)

Get document fields.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**FieldsResponse**](FieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_file_attachment_annotation**
> FileAttachmentAnnotationResponse get_file_attachment_annotation(name, annotation_id, opts)

Read document page FileAttachment annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**FileAttachmentAnnotationResponse**](FileAttachmentAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_file_attachment_annotation_data**
> File get_file_attachment_annotation_data(name, annotation_id, opts)

Read document page FileAttachment annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_file_versions**
> FileVersions get_file_versions(path, opts)

Get file versions

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**FileVersions**](FileVersions.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_files_list**
> FilesList get_files_list(path, opts)

Get all files and folders within a folder

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path e.g. &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**FilesList**](FilesList.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_free_text_annotation**
> FreeTextAnnotationResponse get_free_text_annotation(name, annotation_id, opts)

Read document page free text annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**FreeTextAnnotationResponse**](FreeTextAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_highlight_annotation**
> HighlightAnnotationResponse get_highlight_annotation(name, annotation_id, opts)

Read document page highlight annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**HighlightAnnotationResponse**](HighlightAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_html_in_storage_to_pdf**
> File get_html_in_storage_to_pdf(src_path, opts)

Convert HTML file (located on storage) to PDF format and return resulting file in response. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.zip) | 
 **html_file_name** | **String**| Name of HTML file in ZIP. | [optional] 
 **height** | **Float**| Page height | [optional] 
 **width** | **Float**| Page width | [optional] 
 **is_landscape** | **BOOLEAN**| Is page landscaped | [optional] 
 **margin_left** | **Float**| Page margin left | [optional] 
 **margin_bottom** | **Float**| Page margin bottom | [optional] 
 **margin_right** | **Float**| Page margin right | [optional] 
 **margin_top** | **Float**| Page margin top | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_image**
> ImageResponse get_image(name, image_id, opts)

Read document image by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| Image ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**ImageResponse**](ImageResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_image_extract_as_gif**
> File get_image_extract_as_gif(name, image_id, opts)

Extract document image in GIF format

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| Image ID. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_image_extract_as_jpeg**
> File get_image_extract_as_jpeg(name, image_id, opts)

Extract document image in JPEG format

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| Image ID. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_image_extract_as_png**
> File get_image_extract_as_png(name, image_id, opts)

Extract document image in PNG format

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| Image ID. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_image_extract_as_tiff**
> File get_image_extract_as_tiff(name, image_id, opts)

Extract document image in TIFF format

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| Image ID. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_images**
> ImagesResponse get_images(name, page_number, opts)

Read document images.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**ImagesResponse**](ImagesResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_images_extract_svg**
> SvgImages get_images_extract_svg(name, page_number, opts)

Extract SVG images from document page.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **pass_base64** | **String**| The password (Base64). | [optional] 

### Return type

[**SvgImages**](SvgImages.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_import_fields_from_fdf_in_storage**
> File get_import_fields_from_fdf_in_storage(name, fdf_file_path, opts)

Update fields from FDF file in storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **fdf_file_path** | **String**| The Fdf file path. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_import_fields_from_xfdf_in_storage**
> File get_import_fields_from_xfdf_in_storage(name, xfdf_file_path, opts)

Update fields from XFDF file in storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **xfdf_file_path** | **String**| The XFDF file path. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_import_fields_from_xml_in_storage**
> File get_import_fields_from_xml_in_storage(name, xml_file_path, opts)

Import from XML file (located on storage) to PDF format and return resulting file in response. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **xml_file_path** | **String**| Full source filename (ex. /folder1/folder2/template.xml) | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_ink_annotation**
> InkAnnotationResponse get_ink_annotation(name, annotation_id, opts)

Read document page ink annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**InkAnnotationResponse**](InkAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_line_annotation**
> LineAnnotationResponse get_line_annotation(name, annotation_id, opts)

Read document page line annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**LineAnnotationResponse**](LineAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_link_annotation**
> LinkAnnotationResponse get_link_annotation(name, link_id, opts)

Read document link annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **link_id** | **String**| The link ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**LinkAnnotationResponse**](LinkAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_list_box_field**
> ListBoxFieldResponse get_list_box_field(name, field_name, opts)

Read document listbox field by name.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **field_name** | **String**| The field name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**ListBoxFieldResponse**](ListBoxFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_markdown_in_storage_to_pdf**
> File get_markdown_in_storage_to_pdf(src_path, opts)

Convert MD file (located on storage) to PDF format and return resulting file in response. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.md) | 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_mht_in_storage_to_pdf**
> File get_mht_in_storage_to_pdf(src_path, opts)

Convert MHT file (located on storage) to PDF format and return resulting file in response. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.mht) | 
 **height** | **Float**| Page height | [optional] 
 **width** | **Float**| Page width | [optional] 
 **margin_left** | **Float**| Page margin left | [optional] 
 **margin_bottom** | **Float**| Page margin bottom | [optional] 
 **margin_right** | **Float**| Page margin right | [optional] 
 **margin_top** | **Float**| Page margin top | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_movie_annotation**
> MovieAnnotationResponse get_movie_annotation(name, annotation_id, opts)

Read document page movie annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**MovieAnnotationResponse**](MovieAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page**
> DocumentPageResponse get_page(name, page_number, opts)

Read document page info.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**DocumentPageResponse**](DocumentPageResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_annotations**
> AnnotationsInfoResponse get_page_annotations(name, page_number, opts)

Read document page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AnnotationsInfoResponse**](AnnotationsInfoResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_caret_annotations**
> CaretAnnotationsResponse get_page_caret_annotations(name, page_number, opts)

Read document page caret annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**CaretAnnotationsResponse**](CaretAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_check_box_fields**
> CheckBoxFieldsResponse get_page_check_box_fields(name, page_number, opts)

Read document page checkbox fields.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**CheckBoxFieldsResponse**](CheckBoxFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_circle_annotations**
> CircleAnnotationsResponse get_page_circle_annotations(name, page_number, opts)

Read document page circle annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**CircleAnnotationsResponse**](CircleAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_combo_box_fields**
> ComboBoxFieldsResponse get_page_combo_box_fields(name, page_number, opts)

Read document page combobox fields.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**ComboBoxFieldsResponse**](ComboBoxFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_convert_to_bmp**
> File get_page_convert_to_bmp(name, page_number, opts)

Convert document page to Bmp image and return resulting file in response.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_page_convert_to_emf**
> File get_page_convert_to_emf(name, page_number, opts)

Convert document page to Emf image and return resulting file in response.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_page_convert_to_gif**
> File get_page_convert_to_gif(name, page_number, opts)

Convert document page to Gif image and return resulting file in response.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_page_convert_to_jpeg**
> File get_page_convert_to_jpeg(name, page_number, opts)

Convert document page to Jpeg image and return resulting file in response.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_page_convert_to_png**
> File get_page_convert_to_png(name, page_number, opts)

Convert document page to Png image and return resulting file in response.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_page_convert_to_tiff**
> File get_page_convert_to_tiff(name, page_number, opts)

Convert document page to Tiff image  and return resulting file in response.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_page_file_attachment_annotations**
> FileAttachmentAnnotationsResponse get_page_file_attachment_annotations(name, page_number, opts)

Read document page FileAttachment annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**FileAttachmentAnnotationsResponse**](FileAttachmentAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_free_text_annotations**
> FreeTextAnnotationsResponse get_page_free_text_annotations(name, page_number, opts)

Read document page free text annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**FreeTextAnnotationsResponse**](FreeTextAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_highlight_annotations**
> HighlightAnnotationsResponse get_page_highlight_annotations(name, page_number, opts)

Read document page highlight annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**HighlightAnnotationsResponse**](HighlightAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_ink_annotations**
> InkAnnotationsResponse get_page_ink_annotations(name, page_number, opts)

Read document page ink annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**InkAnnotationsResponse**](InkAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_line_annotations**
> LineAnnotationsResponse get_page_line_annotations(name, page_number, opts)

Read document page line annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**LineAnnotationsResponse**](LineAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_link_annotation**
> LinkAnnotationResponse get_page_link_annotation(name, page_number, link_id, opts)

Read document page link annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **link_id** | **String**| The link ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**LinkAnnotationResponse**](LinkAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_link_annotations**
> LinkAnnotationsResponse get_page_link_annotations(name, page_number, opts)

Read document page link annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**LinkAnnotationsResponse**](LinkAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_list_box_fields**
> ListBoxFieldsResponse get_page_list_box_fields(name, page_number, opts)

Read document page listbox fields.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**ListBoxFieldsResponse**](ListBoxFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_movie_annotations**
> MovieAnnotationsResponse get_page_movie_annotations(name, page_number, opts)

Read document page movie annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**MovieAnnotationsResponse**](MovieAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_poly_line_annotations**
> PolyLineAnnotationsResponse get_page_poly_line_annotations(name, page_number, opts)

Read document page polyline annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**PolyLineAnnotationsResponse**](PolyLineAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_polygon_annotations**
> PolygonAnnotationsResponse get_page_polygon_annotations(name, page_number, opts)

Read document page polygon annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**PolygonAnnotationsResponse**](PolygonAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_popup_annotations**
> PopupAnnotationsResponse get_page_popup_annotations(name, page_number, opts)

Read document page popup annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**PopupAnnotationsResponse**](PopupAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_radio_button_fields**
> RadioButtonFieldsResponse get_page_radio_button_fields(name, page_number, opts)

Read document page radiobutton fields.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**RadioButtonFieldsResponse**](RadioButtonFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_redaction_annotations**
> RedactionAnnotationsResponse get_page_redaction_annotations(name, page_number, opts)

Read document page redaction annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**RedactionAnnotationsResponse**](RedactionAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_screen_annotations**
> ScreenAnnotationsResponse get_page_screen_annotations(name, page_number, opts)

Read document page screen annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**ScreenAnnotationsResponse**](ScreenAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_signature_fields**
> SignatureFieldsResponse get_page_signature_fields(name, page_number, opts)

Read document page signature fields.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**SignatureFieldsResponse**](SignatureFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_sound_annotations**
> SoundAnnotationsResponse get_page_sound_annotations(name, page_number, opts)

Read document page sound annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**SoundAnnotationsResponse**](SoundAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_square_annotations**
> SquareAnnotationsResponse get_page_square_annotations(name, page_number, opts)

Read document page square annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**SquareAnnotationsResponse**](SquareAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_squiggly_annotations**
> SquigglyAnnotationsResponse get_page_squiggly_annotations(name, page_number, opts)

Read document page squiggly annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**SquigglyAnnotationsResponse**](SquigglyAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_stamp_annotations**
> StampAnnotationsResponse get_page_stamp_annotations(name, page_number, opts)

Read document page stamp annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**StampAnnotationsResponse**](StampAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_stamps**
> StampsInfoResponse get_page_stamps(name, page_number, opts)

Read page document stamps.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 

### Return type

[**StampsInfoResponse**](StampsInfoResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_strike_out_annotations**
> StrikeOutAnnotationsResponse get_page_strike_out_annotations(name, page_number, opts)

Read document page StrikeOut annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**StrikeOutAnnotationsResponse**](StrikeOutAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_tables**
> TablesRecognizedResponse get_page_tables(name, page_number, opts)

Read document page tables.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **page_number** | **Integer**|  | 
 **storage** | **String**|  | [optional] 
 **folder** | **String**|  | [optional] 

### Return type

[**TablesRecognizedResponse**](TablesRecognizedResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_text**
> TextRectsResponse get_page_text(name, page_number, llx, lly, urx, ury, opts)

Read page text items.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| Number of page (starting from 1). | 
 **llx** | **Float**| X-coordinate of lower - left corner. | 
 **lly** | **Float**| Y - coordinate of lower-left corner. | 
 **urx** | **Float**| X - coordinate of upper-right corner. | 
 **ury** | **Float**| Y - coordinate of upper-right corner. | 
 **format** | **Array&lt;String&gt;**| List of formats for search. | [optional] 
 **regex** | **String**| Formats are specified as a regular expression. | [optional] 
 **split_rects** | **BOOLEAN**| Split result fragments (default is true). | [optional] [default to true]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**TextRectsResponse**](TextRectsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_text_annotations**
> TextAnnotationsResponse get_page_text_annotations(name, page_number, opts)

Read document page text annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**TextAnnotationsResponse**](TextAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_text_box_fields**
> TextBoxFieldsResponse get_page_text_box_fields(name, page_number, opts)

Read document page text box fields.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**TextBoxFieldsResponse**](TextBoxFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_underline_annotations**
> UnderlineAnnotationsResponse get_page_underline_annotations(name, page_number, opts)

Read document page underline annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**UnderlineAnnotationsResponse**](UnderlineAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_pages**
> DocumentPagesResponse get_pages(name, opts)

Read document pages info.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**DocumentPagesResponse**](DocumentPagesResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_pcl_in_storage_to_pdf**
> File get_pcl_in_storage_to_pdf(src_path, opts)

Convert PCL file (located on storage) to PDF format and return resulting file in response. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.pcl) | 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_a_in_storage_to_pdf**
> File get_pdf_a_in_storage_to_pdf(src_path, opts)

Convert PDFA file (located on storage) to PDF format and return resulting file in response. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.pdf) | 
 **dont_optimize** | **BOOLEAN**| If set, document resources will not be optimized. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_aps**
> File get_pdf_in_storage_to_aps(name, opts)

Converts PDF document (located on storage) to APS format and returns resulting file in response content

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_doc**
> File get_pdf_in_storage_to_doc(name, opts)

Converts PDF document (located on storage) to DOC format and returns resulting file in response content.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **add_return_to_line_end** | **BOOLEAN**| Add return to line end. | [optional] 
 **format** | **String**| Allows to specify .doc or .docx file format. | [optional] 
 **image_resolution_x** | **Integer**| Image resolution X. | [optional] 
 **image_resolution_y** | **Integer**| Image resolution Y. | [optional] 
 **max_distance_between_text_lines** | **Float**| Max distance between text lines. | [optional] 
 **mode** | **String**| Allows to control how a PDF document is converted into a word processing document. | [optional] 
 **recognize_bullets** | **BOOLEAN**| Recognize bullets. | [optional] 
 **relative_horizontal_proximity** | **Float**| Relative horizontal proximity. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_epub**
> File get_pdf_in_storage_to_epub(name, opts)

Converts PDF document (located on storage) to EPUB format and returns resulting file in response content

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **content_recognition_mode** | **String**| Property tunes conversion for this or that desirable method of recognition of content. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_html**
> File get_pdf_in_storage_to_html(name, opts)

Converts PDF document (located on storage) to Html format and returns resulting file in response content

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **additional_margin_width_in_points** | **Integer**| Defines width of margin that will be forcibly left around that output HTML-areas. | [optional] 
 **compress_svg_graphics_if_any** | **BOOLEAN**| The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving. | [optional] 
 **convert_marked_content_to_layers** | **BOOLEAN**| If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with &quot;data-pdflayer&quot; attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content. | [optional] 
 **default_font_name** | **String**| Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used. | [optional] 
 **document_type** | **String**| Result document type. | [optional] 
 **fixed_layout** | **BOOLEAN**| The value indicating whether that HTML is created as fixed layout. | [optional] 
 **image_resolution** | **Integer**| Resolution for image rendering. | [optional] 
 **minimal_line_width** | **Integer**| This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers. | [optional] 
 **prevent_glyphs_grouping** | **BOOLEAN**| This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true. | [optional] 
 **split_css_into_pages** | **BOOLEAN**| When multipage-mode selected(i.e &#39;SplitIntoPages&#39; is &#39;true&#39;), then this attribute defines whether should be created separate CSS-file for each result HTML page. | [optional] 
 **split_into_pages** | **BOOLEAN**| The flag that indicates whether each page of source document will be converted into it&#39;s own target HTML document, i.e whether result HTML will be splitted into several HTML-pages. | [optional] 
 **use_z_order** | **BOOLEAN**| If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects. | [optional] 
 **antialiasing_processing** | **String**| The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML. | [optional] 
 **css_class_names_prefix** | **String**| When PDFtoHTML converter generates result CSSs, CSS class names (something like &quot;.stl_01 {}&quot; ... &quot;.stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix. | [optional] 
 **explicit_list_of_saved_pages** | **Array&lt;Integer&gt;**| With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF. | [optional] 
 **font_encoding_strategy** | **String**| Defines encoding special rule to tune PDF decoding for current document. | [optional] 
 **font_saving_mode** | **String**| Defines font saving mode that will be used during saving of PDF to desirable format. | [optional] 
 **html_markup_generation_mode** | **String**| Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments. | [optional] 
 **letters_positioning_method** | **String**| The mode of positioning of letters in words in result HTML. | [optional] 
 **pages_flow_type_depends_on_viewers_screen_size** | **BOOLEAN**| If attribute &#39;SplitOnPages&#x3D;false&#39;, than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer. | [optional] 
 **parts_embedding_mode** | **String**| It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities. | [optional] 
 **raster_images_saving_mode** | **String**| Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML. | [optional] 
 **remove_empty_areas_on_top_and_bottom** | **BOOLEAN**| Defines whether in created HTML will be removed top and bottom empty area without any content (if any). | [optional] 
 **save_shadowed_texts_as_transparent_texts** | **BOOLEAN**| Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard). | [optional] 
 **save_transparent_texts** | **BOOLEAN**| Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML. | [optional] 
 **special_folder_for_all_images** | **String**| The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional] 
 **special_folder_for_svg_images** | **String**| The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional] 
 **try_save_text_underlining_and_strikeouting_in_css** | **BOOLEAN**| PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text&#39;s underlining and put this info into CSS instead of drawing of underlining graphically. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **flow_layout_paragraph_full_width** | **BOOLEAN**| This attribute specifies full width paragraph text for Flow mode, FixedLayout &#x3D; false. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_mobi_xml**
> File get_pdf_in_storage_to_mobi_xml(name, opts)

Converts PDF document (located on storage) to MOBIXML format and returns resulting ZIP archive file in response content.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_pdf_a**
> File get_pdf_in_storage_to_pdf_a(name, type, opts)

Converts PDF document (located on storage) to PdfA format and returns resulting file in response content

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **type** | **String**| Type of PdfA format. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_pptx**
> File get_pdf_in_storage_to_pptx(name, opts)

Converts PDF document (located on storage) to PPTX format and returns resulting file in response content

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **separate_images** | **BOOLEAN**| Separate images. | [optional] 
 **slides_as_images** | **BOOLEAN**| Slides as images. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_svg**
> File get_pdf_in_storage_to_svg(name, opts)

Converts PDF document (located on storage) to SVG format and returns resulting file in response content

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **compress_output_to_zip_archive** | **BOOLEAN**| Specifies whether output will be created as one zip-archive. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_te_x**
> File get_pdf_in_storage_to_te_x(name, opts)

Converts PDF document (located on storage) to TeX format and returns resulting file in response content

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_text**
> File get_pdf_in_storage_to_text(name, opts)

Converts PDF document (located on storage) to Text format and returns resulting file in response content

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_tiff**
> File get_pdf_in_storage_to_tiff(name, opts)

Converts PDF document (located on storage) to TIFF format and returns resulting file in response content

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **brightness** | **Float**| Image brightness. | [optional] 
 **compression** | **String**| Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. | [optional] 
 **color_depth** | **String**| Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. | [optional] 
 **left_margin** | **Integer**| Left image margin. | [optional] 
 **right_margin** | **Integer**| Right image margin. | [optional] 
 **top_margin** | **Integer**| Top image margin. | [optional] 
 **bottom_margin** | **Integer**| Bottom image margin. | [optional] 
 **orientation** | **String**| Image orientation. Possible values are: None, Landscape, Portait. | [optional] 
 **skip_blank_pages** | **BOOLEAN**| Skip blank pages flag. | [optional] 
 **width** | **Integer**| Image width. | [optional] 
 **height** | **Integer**| Image height. | [optional] 
 **x_resolution** | **Integer**| Horizontal resolution. | [optional] 
 **y_resolution** | **Integer**| Vertical resolution. | [optional] 
 **page_index** | **Integer**| Start page to export. | [optional] 
 **page_count** | **Integer**| Number of pages to export. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_xls**
> File get_pdf_in_storage_to_xls(name, opts)

Converts PDF document (located on storage) to XLS format and returns resulting file in response content

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **insert_blank_column_at_first** | **BOOLEAN**| Insert blank column at first | [optional] 
 **minimize_the_number_of_worksheets** | **BOOLEAN**| Minimize the number of worksheets | [optional] 
 **scale_factor** | **Float**| Scale factor (Obsolete) | [optional] 
 **uniform_worksheets** | **BOOLEAN**| Uniform worksheets | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_xlsx**
> File get_pdf_in_storage_to_xlsx(name, opts)

Converts PDF document (located on storage) to XLSX format and returns resulting file in response content

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **insert_blank_column_at_first** | **BOOLEAN**| Insert blank column at first | [optional] 
 **minimize_the_number_of_worksheets** | **BOOLEAN**| Minimize the number of worksheets | [optional] 
 **scale_factor** | **Float**| Scale factor (Obsolete) | [optional] 
 **uniform_worksheets** | **BOOLEAN**| Uniform worksheets | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_xml**
> File get_pdf_in_storage_to_xml(name, opts)

Converts PDF document (located on storage) to XML format and returns resulting file in response content

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_xps**
> File get_pdf_in_storage_to_xps(name, opts)

Converts PDF document (located on storage) to XPS format and returns resulting file in response content

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_poly_line_annotation**
> PolyLineAnnotationResponse get_poly_line_annotation(name, annotation_id, opts)

Read document page polyline annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**PolyLineAnnotationResponse**](PolyLineAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_polygon_annotation**
> PolygonAnnotationResponse get_polygon_annotation(name, annotation_id, opts)

Read document page polygon annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**PolygonAnnotationResponse**](PolygonAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_popup_annotation**
> PopupAnnotationResponse get_popup_annotation(name, annotation_id, opts)

Read document page popup annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**PopupAnnotationResponse**](PopupAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_ps_in_storage_to_pdf**
> File get_ps_in_storage_to_pdf(src_path, opts)

Convert PS file (located on storage) to PDF format and return resulting file in response. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.ps) | 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_radio_button_field**
> RadioButtonFieldResponse get_radio_button_field(name, field_name, opts)

Read document RadioButton field by name.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **field_name** | **String**| The field name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**RadioButtonFieldResponse**](RadioButtonFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_redaction_annotation**
> RedactionAnnotationResponse get_redaction_annotation(name, annotation_id, opts)

Read document page redaction annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**RedactionAnnotationResponse**](RedactionAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_screen_annotation**
> ScreenAnnotationResponse get_screen_annotation(name, annotation_id, opts)

Read document page screen annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**ScreenAnnotationResponse**](ScreenAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_screen_annotation_data**
> File get_screen_annotation_data(name, annotation_id, opts)

Read document page screen annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_signature_field**
> SignatureFieldResponse get_signature_field(name, field_name, opts)

Read document signature field by name.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **field_name** | **String**| The field name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**SignatureFieldResponse**](SignatureFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_sound_annotation**
> SoundAnnotationResponse get_sound_annotation(name, annotation_id, opts)

Read document page sound annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**SoundAnnotationResponse**](SoundAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_sound_annotation_data**
> File get_sound_annotation_data(name, annotation_id, opts)

Read document page sound annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_square_annotation**
> SquareAnnotationResponse get_square_annotation(name, annotation_id, opts)

Read document page square annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**SquareAnnotationResponse**](SquareAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_squiggly_annotation**
> SquigglyAnnotationResponse get_squiggly_annotation(name, annotation_id, opts)

Read document page squiggly annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**SquigglyAnnotationResponse**](SquigglyAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_stamp_annotation**
> StampAnnotationResponse get_stamp_annotation(name, annotation_id, opts)

Read document page stamp annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**StampAnnotationResponse**](StampAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_stamp_annotation_data**
> File get_stamp_annotation_data(name, annotation_id, opts)

Read document page stamp annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_strike_out_annotation**
> StrikeOutAnnotationResponse get_strike_out_annotation(name, annotation_id, opts)

Read document page StrikeOut annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**StrikeOutAnnotationResponse**](StrikeOutAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_svg_in_storage_to_pdf**
> File get_svg_in_storage_to_pdf(src_path, opts)

Convert SVG file (located on storage) to PDF format and return resulting file in response. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.svg) | 
 **adjust_page_size** | **BOOLEAN**| Adjust page size | [optional] 
 **height** | **Float**| Page height | [optional] 
 **width** | **Float**| Page width | [optional] 
 **is_landscape** | **BOOLEAN**| Is page landscaped | [optional] 
 **margin_left** | **Float**| Page margin left | [optional] 
 **margin_bottom** | **Float**| Page margin bottom | [optional] 
 **margin_right** | **Float**| Page margin right | [optional] 
 **margin_top** | **Float**| Page margin top | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_table**
> TableRecognizedResponse get_table(name, table_id, opts)

Read document page table by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **table_id** | **String**| The table ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**TableRecognizedResponse**](TableRecognizedResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_te_x_in_storage_to_pdf**
> File get_te_x_in_storage_to_pdf(src_path, opts)

Convert TeX file (located on storage) to PDF format and return resulting file in response. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.tex) | 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_text**
> TextRectsResponse get_text(name, llx, lly, urx, ury, opts)

Read document text.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **llx** | **Float**| X-coordinate of lower - left corner. | 
 **lly** | **Float**| Y - coordinate of lower-left corner. | 
 **urx** | **Float**| X - coordinate of upper-right corner. | 
 **ury** | **Float**| Y - coordinate of upper-right corner. | 
 **format** | **Array&lt;String&gt;**| List of formats for search. | [optional] 
 **regex** | **String**| Formats are specified as a regular expression. | [optional] 
 **split_rects** | **BOOLEAN**| Split result fragments (default is true). | [optional] [default to true]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**TextRectsResponse**](TextRectsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_text_annotation**
> TextAnnotationResponse get_text_annotation(name, annotation_id, opts)

Read document page text annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**TextAnnotationResponse**](TextAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_text_box_field**
> TextBoxFieldResponse get_text_box_field(name, field_name, opts)

Read document text box field by name.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **field_name** | **String**| The field name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**TextBoxFieldResponse**](TextBoxFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_underline_annotation**
> UnderlineAnnotationResponse get_underline_annotation(name, annotation_id, opts)

Read document page underline annotation by ID.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**UnderlineAnnotationResponse**](UnderlineAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_verify_signature**
> SignatureVerifyResponse get_verify_signature(name, sign_name, opts)

Verify signature document.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **sign_name** | **String**| Sign name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**SignatureVerifyResponse**](SignatureVerifyResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_web_in_storage_to_pdf**
> File get_web_in_storage_to_pdf(url, opts)

Convert web page to PDF format and return resulting file in response. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| Source url | 
 **height** | **Float**| Page height | [optional] 
 **width** | **Float**| Page width | [optional] 
 **is_landscape** | **BOOLEAN**| Is page landscaped | [optional] 
 **margin_left** | **Float**| Page margin left | [optional] 
 **margin_bottom** | **Float**| Page margin bottom | [optional] 
 **margin_right** | **Float**| Page margin right | [optional] 
 **margin_top** | **Float**| Page margin top | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_words_per_page**
> WordCountResponse get_words_per_page(name, opts)

Get number of words per document page.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**WordCountResponse**](WordCountResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_xfa_pdf_in_storage_to_acro_form**
> File get_xfa_pdf_in_storage_to_acro_form(name, opts)

Converts PDF document which contains XFA form (located on storage) to PDF with AcroForm and returns resulting file response content

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_xml_in_storage_to_pdf**
> File get_xml_in_storage_to_pdf(src_path, opts)

Convert XML file (located on storage) to PDF format and return resulting file in response. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.xml) | 
 **xsl_file_path** | **String**| Full XSL source filename (ex. /folder1/folder2/template.xsl) | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_xmp_metadata_json**
> XmpMetadata get_xmp_metadata_json(name, opts)

Gets document XMP Metadata as JSON.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **pass_base64** | **String**| The password (Base64). | [optional] 

### Return type

[**XmpMetadata**](XmpMetadata.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_xmp_metadata_xml**
> File get_xmp_metadata_xml(name, opts)

Gets document XMP Metadata as XML file.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **pass_base64** | **String**| The password (Base64). | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_xps_in_storage_to_pdf**
> File get_xps_in_storage_to_pdf(src_path, opts)

Convert XPS file (located on storage) to PDF format and return resulting file in response. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.xps) | 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_xsl_fo_in_storage_to_pdf**
> File get_xsl_fo_in_storage_to_pdf(src_path, opts)

Convert XslFo file (located on storage) to PDF format and return resulting file in response. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.xslfo) | 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **move_file**
> move_file(src_path, dest_path, opts)

Move file

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source file path e.g. &#39;/src.ext&#39; | 
 **dest_path** | **String**| Destination file path e.g. &#39;/dest.ext&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 
 **version_id** | **String**| File version ID to move | [optional] 

### Return type

nil (empty response body)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **move_folder**
> move_folder(src_path, dest_path, opts)

Move folder

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Folder path to move e.g. &#39;/folder&#39; | 
 **dest_path** | **String**| Destination folder path to move to e.g &#39;/dst&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 

### Return type

nil (empty response body)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **object_exists**
> ObjectExist object_exists(path, opts)

Check if file or folder exists

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File or folder path e.g. &#39;/file.ext&#39; or &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID | [optional] 

### Return type

[**ObjectExist**](ObjectExist.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_add_document_attachment**
> AttachmentsResponse post_add_document_attachment(name, attachment_info, opts)

Adds a file attachment to the PDF document.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **attachment_info** | [**AttachmentInfo**](AttachmentInfo.md)| AttachmentInfoAttachmentInfo instance. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AttachmentsResponse**](AttachmentsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_append_document**
> DocumentResponse post_append_document(name, append_file, opts)

Append document to existing one.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The original document name. | 
 **append_file** | **String**| Append file server path. | 
 **start_page** | **Integer**| Appending start page. | [optional] [default to 0]
 **end_page** | **Integer**| Appending end page. | [optional] [default to 0]
 **storage** | **String**| The documents storage. | [optional] 
 **folder** | **String**| The original document folder. | [optional] 

### Return type

[**DocumentResponse**](DocumentResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_bookmark**
> BookmarksResponse post_bookmark(name, bookmark_path, bookmarks, opts)

Add document bookmarks.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **bookmark_path** | **String**| The parent bookmark path. Specify an empty string when adding a bookmark to the root. | 
 **bookmarks** | [**Array&lt;Bookmark&gt;**](Bookmark.md)| The array of bookmark. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**BookmarksResponse**](BookmarksResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_change_password_document_in_storage**
> AsposeResponse post_change_password_document_in_storage(name, owner_password, new_user_password, new_owner_password, opts)

Change document password in storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **owner_password** | **String**| Owner password (encrypted Base64). | 
 **new_user_password** | **String**| New user password (encrypted Base64). | 
 **new_owner_password** | **String**| New owner password (encrypted Base64). | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_check_box_fields**
> AsposeResponse post_check_box_fields(name, fields, opts)

Add document checkbox fields.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **fields** | [**Array&lt;CheckBoxField&gt;**](CheckBoxField.md)| The array of field. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_combo_box_fields**
> AsposeResponse post_combo_box_fields(name, fields, opts)

Add document combobox fields.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **fields** | [**Array&lt;ComboBoxField&gt;**](ComboBoxField.md)| The array of field. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_compare_pdf**
> AsposeResponse post_compare_pdf(path1, path2, out_path, opts)

Compare two PDF documents.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path1** | **String**| Path to first PDF document. | 
 **path2** | **String**| Path to second PDF document. | 
 **out_path** | **String**| Full filename of the resulting document. | 
 **storage** | **String**| The documents storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_create_document**
> DocumentResponse post_create_document(name, document_config, opts)

Create empty document.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The new document name. | 
 **document_config** | [**DocumentConfig**](DocumentConfig.md)| The document config for new document. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The new document folder. | [optional] 

### Return type

[**DocumentResponse**](DocumentResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_create_field**
> AsposeResponse post_create_field(name, page, field, opts)

Create field.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page** | **Integer**| Document page number. | 
 **field** | [**Field**](Field.md)| Field with the field data. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_decrypt_document_in_storage**
> AsposeResponse post_decrypt_document_in_storage(name, password, opts)

Decrypt document in storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **password** | **String**| The password (encrypted Base64). | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_document_image_footer**
> AsposeResponse post_document_image_footer(name, image_footer, opts)

Add document image footer.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_footer** | [**ImageFooter**](ImageFooter.md)| The image footer. | 
 **start_page_number** | **Integer**| The start page number. | [optional] 
 **end_page_number** | **Integer**| The end page number. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_document_image_header**
> AsposeResponse post_document_image_header(name, image_header, opts)

Add document image header.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_header** | [**ImageHeader**](ImageHeader.md)| The image header. | 
 **start_page_number** | **Integer**| The start page number. | [optional] 
 **end_page_number** | **Integer**| The end page number. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_document_image_stamps**
> AsposeResponse post_document_image_stamps(name, stamps, opts)

Add document pages image stamps.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **stamps** | [**Array&lt;ImageStamp&gt;**](ImageStamp.md)| The array of stamp. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_document_image_stamps_page_specified**
> AsposeResponse post_document_image_stamps_page_specified(name, stamps, opts)

Add document image stamps to specified pages.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **stamps** | [**Array&lt;ImageStampPageSpecified&gt;**](ImageStampPageSpecified.md)| The array of stamps. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_document_page_number_stamps**
> AsposeResponse post_document_page_number_stamps(name, stamp, opts)

Add document page number stamps.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **stamp** | [**PageNumberStamp**](PageNumberStamp.md)| The stamp. | 
 **start_page_number** | **Integer**| The start page number. | [optional] 
 **end_page_number** | **Integer**| The end page number. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_document_pages_crop**
> AsposeResponse post_document_pages_crop(name, pages, rect, opts)

Crop PDF document pages.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **pages** | **String**| Comma separated list of pages and page ranges. (Example: 1,3-5,8) | 
 **rect** | [**Rectangle**](Rectangle.md)| Rectangle of document area. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_document_pages_resize**
> AsposeResponse post_document_pages_resize(name, height, width, pages, opts)

Rsize PDF document.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **height** | **Float**| Page Height | 
 **width** | **Float**| Page width | 
 **pages** | **String**| Comma separated list of pages and page ranges. (Example: 1,3-5,8) | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_document_pages_rotate**
> AsposeResponse post_document_pages_rotate(name, rotation_angle, pages, opts)

Rotate PDF document.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **rotation_angle** | **String**| Rotation Angle (CKW). Can be 90, 180, 270. | 
 **pages** | **String**| Comma separated list of pages and page ranges. (Example: 1,3-5,8) | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_document_text_footer**
> AsposeResponse post_document_text_footer(name, text_footer, opts)

Add document text footer.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **text_footer** | [**TextFooter**](TextFooter.md)| The text footer. | 
 **start_page_number** | **Integer**| The start page number. | [optional] 
 **end_page_number** | **Integer**| The end page number. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_document_text_header**
> AsposeResponse post_document_text_header(name, text_header, opts)

Add document text header.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **text_header** | [**TextHeader**](TextHeader.md)| The text header. | 
 **start_page_number** | **Integer**| The start page number. | [optional] 
 **end_page_number** | **Integer**| The end page number. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_document_text_replace**
> TextReplaceResponse post_document_text_replace(name, text_replace, opts)

Document's replace text method.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **text_replace** | [**TextReplaceListRequest**](TextReplaceListRequest.md)|  | 
 **storage** | **String**|  | [optional] 
 **folder** | **String**|  | [optional] 

### Return type

[**TextReplaceResponse**](TextReplaceResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_document_text_stamps**
> AsposeResponse post_document_text_stamps(name, stamps, opts)

Add document pages text stamps.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **stamps** | [**Array&lt;TextStamp&gt;**](TextStamp.md)| The array of stamp. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_document_text_stamps_page_specified**
> AsposeResponse post_document_text_stamps_page_specified(name, stamps, opts)

Add document text stamps to specified pages.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **stamps** | [**Array&lt;TextStampPageSpecified&gt;**](TextStampPageSpecified.md)| The array of stamps. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_encrypt_document_in_storage**
> AsposeResponse post_encrypt_document_in_storage(name, user_password, owner_password, crypto_algorithm, opts)

Encrypt document in storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **user_password** | **String**| User password (encrypted Base64). | 
 **owner_password** | **String**| Owner password (encrypted Base64). | 
 **crypto_algorithm** | **String**| Cryptographic algorithm, see CryptoAlgorithm for details. | 
 **permissions_flags** | [**Array&lt;PermissionsFlags&gt;**](PermissionsFlags.md)| Array of document permissions, see PermissionsFlags for details. | [optional] 
 **use_pdf20** | **BOOLEAN**| Support for revision 6 (Extension 8). | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_flatten_document**
> AsposeResponse post_flatten_document(name, opts)

Flatten the document.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **update_appearances** | **BOOLEAN**| If set, all field appearances will be regenerated before flattening. This option may help if field is incorrectly flattened. This option may decrease performance.. | [optional] 
 **call_events** | **BOOLEAN**| If set, formatting and other JavaScript events will be called. | [optional] 
 **hide_buttons** | **BOOLEAN**| If set, buttons will be removed from flattened document. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_html_to_pdf**
> File post_html_to_pdf(opts)

Convert HTML file (zip archive in request content) to PDF format and return resulting file in response. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **html_file_name** | **String**| Name of HTML file in ZIP. | [optional] 
 **height** | **Float**| Page height | [optional] 
 **width** | **Float**| Page width | [optional] 
 **is_landscape** | **BOOLEAN**| Is page landscaped | [optional] 
 **margin_left** | **Float**| Page margin left | [optional] 
 **margin_bottom** | **Float**| Page margin bottom | [optional] 
 **margin_right** | **Float**| Page margin right | [optional] 
 **margin_top** | **Float**| Page margin top | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: multipart/form-data



# **post_import_fields_from_fdf**
> AsposeResponse post_import_fields_from_fdf(name, opts)

Update fields from FDF file in request.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **fdf_data** | **File**| Fdf file. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_import_fields_from_xfdf**
> AsposeResponse post_import_fields_from_xfdf(name, opts)

Update fields from XFDF file in request.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **xfdf_data** | **File**| Xfdf file. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_import_fields_from_xml**
> AsposeResponse post_import_fields_from_xml(name, opts)

Update fields from XML file in request.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **xml_data** | **File**| Xml file. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_insert_image**
> AsposeResponse post_insert_image(name, page_number, llx, lly, urx, ury, opts)

Insert image to document page.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **llx** | **Float**| Coordinate lower left X. | 
 **lly** | **Float**| Coordinate lower left Y. | 
 **urx** | **Float**| Coordinate upper right X. | 
 **ury** | **Float**| Coordinate upper right Y. | 
 **image_file_path** | **String**| Path to image file if specified. Request content is used otherwise. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **image** | **File**| Image file. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_list_box_fields**
> AsposeResponse post_list_box_fields(name, fields, opts)

Add document listbox fields.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **fields** | [**Array&lt;ListBoxField&gt;**](ListBoxField.md)| The array of field. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_move_page**
> AsposeResponse post_move_page(name, page_number, new_index, opts)

Move page to new position.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **new_index** | **Integer**| The new page position/index. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_optimize_document**
> AsposeResponse post_optimize_document(name, options, opts)

Optimize document.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **options** | [**OptimizeOptions**](OptimizeOptions.md)| The optimization options. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_organize_document**
> AsposeResponse post_organize_document(name, pages, out_path, opts)

Merge selected pages of a document.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The original document name. | 
 **pages** | **String**| 1-based page numbers of the source document that make up the resulting document. | 
 **out_path** | **String**| Full filename of the resulting document. | 
 **storage** | **String**| The documents storage. | [optional] 
 **folder** | **String**| The source document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_organize_documents**
> AsposeResponse post_organize_documents(organize_documents, out_path, opts)

Merge selected pages of different documents.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organize_documents** | [**OrganizeDocumentRequest**](OrganizeDocumentRequest.md)| Array of OrganizeDocumentData to make up the resulting document. | 
 **out_path** | **String**| Full filename of the resulting document. | 
 **storage** | **String**| The documents storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_caret_annotations**
> AsposeResponse post_page_caret_annotations(name, page_number, annotations, opts)

Add document page caret annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;CaretAnnotation&gt;**](CaretAnnotation.md)| The array of annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_certify**
> AsposeResponse post_page_certify(name, page_number, sign, doc_mdp_access_permission_type, opts)

Certify document page.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **sign** | [**Signature**](Signature.md)| Signature object containing signature data. | 
 **doc_mdp_access_permission_type** | **String**| The access permissions granted for this document. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_circle_annotations**
> AsposeResponse post_page_circle_annotations(name, page_number, annotations, opts)

Add document page circle annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;CircleAnnotation&gt;**](CircleAnnotation.md)| The array of annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_file_attachment_annotations**
> AsposeResponse post_page_file_attachment_annotations(name, page_number, annotations, opts)

Add document page FileAttachment annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;FileAttachmentAnnotation&gt;**](FileAttachmentAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_free_text_annotations**
> AsposeResponse post_page_free_text_annotations(name, page_number, annotations, opts)

Add document page free text annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;FreeTextAnnotation&gt;**](FreeTextAnnotation.md)| The array of annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_highlight_annotations**
> AsposeResponse post_page_highlight_annotations(name, page_number, annotations, opts)

Add document page highlight annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;HighlightAnnotation&gt;**](HighlightAnnotation.md)| The array of annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_image_stamps**
> AsposeResponse post_page_image_stamps(name, page_number, stamps, opts)

Add document page image stamps.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **stamps** | [**Array&lt;ImageStamp&gt;**](ImageStamp.md)| The array of stamp. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_ink_annotations**
> AsposeResponse post_page_ink_annotations(name, page_number, annotations, opts)

Add document page ink annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;InkAnnotation&gt;**](InkAnnotation.md)| The array of annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_line_annotations**
> AsposeResponse post_page_line_annotations(name, page_number, annotations, opts)

Add document page line annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;LineAnnotation&gt;**](LineAnnotation.md)| The array of annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_link_annotations**
> AsposeResponse post_page_link_annotations(name, page_number, links, opts)

Add document page link annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **links** | [**Array&lt;LinkAnnotation&gt;**](LinkAnnotation.md)| Array of link annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_movie_annotations**
> AsposeResponse post_page_movie_annotations(name, page_number, annotations, opts)

Add document page movie annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;MovieAnnotation&gt;**](MovieAnnotation.md)| The array of annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_pdf_page_stamps**
> AsposeResponse post_page_pdf_page_stamps(name, page_number, stamps, opts)

Add document pdf page stamps.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **stamps** | [**Array&lt;PdfPageStamp&gt;**](PdfPageStamp.md)| The array of stamp. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_poly_line_annotations**
> AsposeResponse post_page_poly_line_annotations(name, page_number, annotations, opts)

Add document page polyline annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;PolyLineAnnotation&gt;**](PolyLineAnnotation.md)| The array of annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_polygon_annotations**
> AsposeResponse post_page_polygon_annotations(name, page_number, annotations, opts)

Add document page polygon annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;PolygonAnnotation&gt;**](PolygonAnnotation.md)| The array of annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_redaction_annotations**
> AsposeResponse post_page_redaction_annotations(name, page_number, annotations, opts)

Add document page redaction annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;RedactionAnnotation&gt;**](RedactionAnnotation.md)| The array of annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **apply** | **BOOLEAN**| Apply redaction immediately after adding. | [optional] [default to false]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_screen_annotations**
> AsposeResponse post_page_screen_annotations(name, page_number, annotations, opts)

Add document page screen annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;ScreenAnnotation&gt;**](ScreenAnnotation.md)| The array of annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_sound_annotations**
> AsposeResponse post_page_sound_annotations(name, page_number, annotations, opts)

Add document page sound annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;SoundAnnotation&gt;**](SoundAnnotation.md)| The array of annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_square_annotations**
> AsposeResponse post_page_square_annotations(name, page_number, annotations, opts)

Add document page square annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;SquareAnnotation&gt;**](SquareAnnotation.md)| The array of annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_squiggly_annotations**
> AsposeResponse post_page_squiggly_annotations(name, page_number, annotations, opts)

Add document page squiggly annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;SquigglyAnnotation&gt;**](SquigglyAnnotation.md)| The array of annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_stamp_annotations**
> AsposeResponse post_page_stamp_annotations(name, page_number, annotations, opts)

Add document page stamp annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;StampAnnotation&gt;**](StampAnnotation.md)| The array of annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_strike_out_annotations**
> AsposeResponse post_page_strike_out_annotations(name, page_number, annotations, opts)

Add document page StrikeOut annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;StrikeOutAnnotation&gt;**](StrikeOutAnnotation.md)| The array of annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_tables**
> AsposeResponse post_page_tables(name, page_number, tables, opts)

Add document page tables.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **tables** | [**Array&lt;Table&gt;**](Table.md)| The array of table. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_text_annotations**
> AsposeResponse post_page_text_annotations(name, page_number, annotations, opts)

Add document page text annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;TextAnnotation&gt;**](TextAnnotation.md)| The array of annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_text_replace**
> TextReplaceResponse post_page_text_replace(name, page_number, text_replace_list_request, opts)

Page's replace text method.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **page_number** | **Integer**|  | 
 **text_replace_list_request** | [**TextReplaceListRequest**](TextReplaceListRequest.md)|  | 
 **storage** | **String**|  | [optional] 
 **folder** | **String**|  | [optional] 

### Return type

[**TextReplaceResponse**](TextReplaceResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_text_stamps**
> AsposeResponse post_page_text_stamps(name, page_number, stamps, opts)

Add document page text stamps.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **stamps** | [**Array&lt;TextStamp&gt;**](TextStamp.md)| The array of stamp. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_underline_annotations**
> AsposeResponse post_page_underline_annotations(name, page_number, annotations, opts)

Add document page underline annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;UnderlineAnnotation&gt;**](UnderlineAnnotation.md)| The array of annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_pdf_to_xlsx**
> File post_pdf_to_xlsx(opts)

Converts PDF document (in request content) to XLSX format and uploads and returns resulting file in response content.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **insert_blank_column_at_first** | **BOOLEAN**| Insert blank column at first | [optional] 
 **minimize_the_number_of_worksheets** | **BOOLEAN**| Minimize the number of worksheets | [optional] 
 **uniform_worksheets** | **BOOLEAN**| Uniform worksheets | [optional] 
 **password** | **String**| The password (Base64). | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

**File**

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: multipart/form-data



# **post_popup_annotation**
> AsposeResponse post_popup_annotation(name, annotation_id, annotation, opts)

Add document popup annotations.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The parent annotation ID. | 
 **annotation** | [**PopupAnnotation**](PopupAnnotation.md)| The annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_radio_button_fields**
> AsposeResponse post_radio_button_fields(name, fields, opts)

Add document RadioButton fields.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **fields** | [**Array&lt;RadioButtonField&gt;**](RadioButtonField.md)| The array of field. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_sign_document**
> AsposeResponse post_sign_document(name, sign, opts)

Sign document.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **sign** | [**Signature**](Signature.md)| Signature object containing signature data. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_sign_page**
> AsposeResponse post_sign_page(name, page_number, sign, opts)

Sign page.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **sign** | [**Signature**](Signature.md)| Signature object containing signature data. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_signature_field**
> AsposeResponse post_signature_field(name, field, opts)

Add document signature field.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **field** | [**SignatureField**](SignatureField.md)| The field. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_split_document**
> SplitResultResponse post_split_document(name, opts)

Split document to parts.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **format** | **String**| Resulting documents format. | [optional] 
 **from** | **Integer**| Start page if defined. | [optional] 
 **to** | **Integer**| End page if defined. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 

### Return type

[**SplitResultResponse**](SplitResultResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_split_range_pdf_document**
> SplitResultResponse post_split_range_pdf_document(name, options, opts)

Split document into ranges.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **options** | [**SplitRangePdfOptions**](SplitRangePdfOptions.md)| The splitting options. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 

### Return type

[**SplitResultResponse**](SplitResultResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_text_box_fields**
> AsposeResponse post_text_box_fields(name, fields, opts)

Add document text box fields.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **fields** | [**Array&lt;TextBoxField&gt;**](TextBoxField.md)| The array of field. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_xmp_metadata**
> AsposeResponse post_xmp_metadata(name, metadata, opts)

Add or remove XMP Metadata properties.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **metadata** | [**XmpMetadata**](XmpMetadata.md)| XmpMetadata instance. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **pass_base64** | **String**| The password (Base64). | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_add_new_page**
> DocumentPagesResponse put_add_new_page(name, opts)

Add new page to end of the document.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**DocumentPagesResponse**](DocumentPagesResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_add_text**
> AsposeResponse put_add_text(name, page_number, paragraph, opts)

Add text to PDF document page.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| Number of page (starting from 1). | 
 **paragraph** | [**Paragraph**](Paragraph.md)| Paragraph data. | 
 **folder** | **String**| Document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_annotations_flatten**
> AsposeResponse put_annotations_flatten(name, opts)

Flattens the annotations of the specified types

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **start_page** | **Integer**| The start page number. | [optional] 
 **end_page** | **Integer**| The end page number. | [optional] 
 **annotation_types** | [**Array&lt;AnnotationType&gt;**](AnnotationType.md)| Array of annotation types. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_aps_in_storage_to_pdf**
> AsposeResponse put_aps_in_storage_to_pdf(name, src_path, opts)

Convert APS file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.xps) | 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_bookmark**
> BookmarkResponse put_bookmark(name, bookmark_path, bookmark, opts)

Update document bookmark.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **bookmark_path** | **String**| The bookmark path. | 
 **bookmark** | [**Bookmark**](Bookmark.md)| The bookmark. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**BookmarkResponse**](BookmarkResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_caret_annotation**
> CaretAnnotationResponse put_caret_annotation(name, annotation_id, annotation, opts)

Replace document caret annotation

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**CaretAnnotation**](CaretAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**CaretAnnotationResponse**](CaretAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_change_password_document**
> AsposeResponse put_change_password_document(out_path, owner_password, new_user_password, new_owner_password, opts)

Change document password from content.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.doc) | 
 **owner_password** | **String**| Owner password (encrypted Base64). | 
 **new_user_password** | **String**| New user password (encrypted Base64). | 
 **new_owner_password** | **String**| New owner password (encrypted Base64). | 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be changed password. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_check_box_field**
> CheckBoxFieldResponse put_check_box_field(name, field_name, field, opts)

Replace document checkbox field

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **field_name** | **String**| The field name. | 
 **field** | [**CheckBoxField**](CheckBoxField.md)| The field. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**CheckBoxFieldResponse**](CheckBoxFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_circle_annotation**
> CircleAnnotationResponse put_circle_annotation(name, annotation_id, annotation, opts)

Replace document circle annotation

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**CircleAnnotation**](CircleAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**CircleAnnotationResponse**](CircleAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_combo_box_field**
> ComboBoxFieldResponse put_combo_box_field(name, field_name, field, opts)

Replace document combobox field

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **field_name** | **String**| The field name. | 
 **field** | [**ComboBoxField**](ComboBoxField.md)| The field. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**ComboBoxFieldResponse**](ComboBoxFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_create_document**
> DocumentResponse put_create_document(name, opts)

Create empty document.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The new document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The new document folder. | [optional] 

### Return type

[**DocumentResponse**](DocumentResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_create_pdf_from_layer**
> AsposeResponse put_create_pdf_from_layer(name, page_number, out_path, layer_id, opts)

Create a separate PDF from a PDF Layer and upload resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **out_path** | **String**| The out path of result image. | 
 **layer_id** | **String**| Layer Id. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **pass_base64** | **String**| The password (Base64). | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_decrypt_document**
> AsposeResponse put_decrypt_document(out_path, password, opts)

Decrypt document from content.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.doc) | 
 **password** | **String**| The password (encrypted Base64). | 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be decrypted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_document_display_properties**
> DisplayPropertiesResponse put_document_display_properties(name, display_properties, opts)

Update document display properties.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **display_properties** | [**DisplayProperties**](DisplayProperties.md)| The display properties. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**DisplayPropertiesResponse**](DisplayPropertiesResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_encrypt_document**
> AsposeResponse put_encrypt_document(out_path, user_password, owner_password, crypto_algorithm, opts)

Encrypt document from content.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.doc) | 
 **user_password** | **String**| User password (encrypted Base64). | 
 **owner_password** | **String**| Owner password (encrypted Base64). | 
 **crypto_algorithm** | **String**| Cryptographic algorithm, see CryptoAlgorithm for details. | 
 **permissions_flags** | [**Array&lt;PermissionsFlags&gt;**](PermissionsFlags.md)| Array of document permissions, see PermissionsFlags for details. | [optional] 
 **use_pdf20** | **BOOLEAN**| Support for revision 6 (Extension 8). | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be encrypted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_epub_in_storage_to_pdf**
> AsposeResponse put_epub_in_storage_to_pdf(name, src_path, opts)

Convert EPUB file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.epub) | 
 **storage** | **String**| The document storage. | [optional] 
 **dst_folder** | **String**| The destination document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_export_fields_from_pdf_to_fdf_in_storage**
> AsposeResponse put_export_fields_from_pdf_to_fdf_in_storage(name, fdf_output_file_path, opts)

Export fields from from PDF in storage to FDF file in storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **fdf_output_file_path** | **String**| The output Fdf file path. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_export_fields_from_pdf_to_xfdf_in_storage**
> AsposeResponse put_export_fields_from_pdf_to_xfdf_in_storage(name, xfdf_output_file_path, opts)

Export fields from from PDF in storage to XFDF file in storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **xfdf_output_file_path** | **String**| The output xfdf file path. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_export_fields_from_pdf_to_xml_in_storage**
> AsposeResponse put_export_fields_from_pdf_to_xml_in_storage(name, xml_output_file_path, opts)

Export fields from from PDF in storage to XML file in storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **xml_output_file_path** | **String**| The output xml file path. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_fields_flatten**
> AsposeResponse put_fields_flatten(name, opts)

Flatten form fields in document.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_file_attachment_annotation**
> FileAttachmentAnnotationResponse put_file_attachment_annotation(name, annotation_id, annotation, opts)

Replace document FileAttachment annotation

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**FileAttachmentAnnotation**](FileAttachmentAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**FileAttachmentAnnotationResponse**](FileAttachmentAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_file_attachment_annotation_data_extract**
> AsposeResponse put_file_attachment_annotation_data_extract(name, annotation_id, opts)

Extract document FileAttachment annotation content to storage

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **out_folder** | **String**| The output folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_free_text_annotation**
> FreeTextAnnotationResponse put_free_text_annotation(name, annotation_id, annotation, opts)

Replace document free text annotation

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**FreeTextAnnotation**](FreeTextAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**FreeTextAnnotationResponse**](FreeTextAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_highlight_annotation**
> HighlightAnnotationResponse put_highlight_annotation(name, annotation_id, annotation, opts)

Replace document highlight annotation

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**HighlightAnnotation**](HighlightAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**HighlightAnnotationResponse**](HighlightAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_html_in_storage_to_pdf**
> AsposeResponse put_html_in_storage_to_pdf(name, src_path, opts)

Convert HTML file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.zip) | 
 **html_file_name** | **String**| Name of HTML file in ZIP. | [optional] 
 **height** | **Float**| Page height | [optional] 
 **width** | **Float**| Page width | [optional] 
 **is_landscape** | **BOOLEAN**| Is page landscaped | [optional] 
 **margin_left** | **Float**| Page margin left | [optional] 
 **margin_bottom** | **Float**| Page margin bottom | [optional] 
 **margin_right** | **Float**| Page margin right | [optional] 
 **margin_top** | **Float**| Page margin top | [optional] 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_image_extract_as_gif**
> AsposeResponse put_image_extract_as_gif(name, image_id, opts)

Extract document image in GIF format to folder

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| Image ID. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **dest_folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_image_extract_as_jpeg**
> AsposeResponse put_image_extract_as_jpeg(name, image_id, opts)

Extract document image in JPEG format to folder

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| Image ID. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **dest_folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_image_extract_as_png**
> AsposeResponse put_image_extract_as_png(name, image_id, opts)

Extract document image in PNG format to folder

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| Image ID. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **dest_folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_image_extract_as_tiff**
> AsposeResponse put_image_extract_as_tiff(name, image_id, opts)

Extract document image in TIFF format to folder

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| Image ID. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **dest_folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_image_in_storage_to_pdf**
> AsposeResponse put_image_in_storage_to_pdf(name, image_templates, opts)

Convert image file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_templates** | [**ImageTemplatesRequest**](ImageTemplatesRequest.md)| ImageTemplatesRequestImage templates | 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_images_extract_as_gif**
> AsposeResponse put_images_extract_as_gif(name, page_number, opts)

Extract document images in GIF format to folder.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **dest_folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_images_extract_as_jpeg**
> AsposeResponse put_images_extract_as_jpeg(name, page_number, opts)

Extract document images in JPEG format to folder.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **dest_folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_images_extract_as_png**
> AsposeResponse put_images_extract_as_png(name, page_number, opts)

Extract document images in PNG format to folder.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **dest_folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_images_extract_as_tiff**
> AsposeResponse put_images_extract_as_tiff(name, page_number, opts)

Extract document images in TIFF format to folder.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **dest_folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_import_fields_from_fdf_in_storage**
> AsposeResponse put_import_fields_from_fdf_in_storage(name, fdf_file_path, opts)

Update fields from FDF file in storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **fdf_file_path** | **String**| The Fdf file path. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_import_fields_from_xfdf_in_storage**
> AsposeResponse put_import_fields_from_xfdf_in_storage(name, xfdf_file_path, opts)

Update fields from XFDF file in storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **xfdf_file_path** | **String**| The XFDF file path. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_import_fields_from_xml_in_storage**
> AsposeResponse put_import_fields_from_xml_in_storage(name, xml_file_path, opts)

Update fields from XML file in storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **xml_file_path** | **String**| Full source filename (ex. /folder1/folder2/template.xml) | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_ink_annotation**
> InkAnnotationResponse put_ink_annotation(name, annotation_id, annotation, opts)

Replace document ink annotation

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**InkAnnotation**](InkAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**InkAnnotationResponse**](InkAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_line_annotation**
> LineAnnotationResponse put_line_annotation(name, annotation_id, annotation, opts)

Replace document line annotation

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**LineAnnotation**](LineAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**LineAnnotationResponse**](LineAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_link_annotation**
> LinkAnnotationResponse put_link_annotation(name, link_id, link, opts)

Replace document page link annotations

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **link_id** | **String**| The link ID. | 
 **link** | [**LinkAnnotation**](LinkAnnotation.md)| Link annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**LinkAnnotationResponse**](LinkAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_list_box_field**
> ListBoxFieldResponse put_list_box_field(name, field_name, field, opts)

Replace document listbox field

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **field_name** | **String**| The field name. | 
 **field** | [**ListBoxField**](ListBoxField.md)| The field. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**ListBoxFieldResponse**](ListBoxFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_markdown_in_storage_to_pdf**
> AsposeResponse put_markdown_in_storage_to_pdf(name, src_path, opts)

Convert MD file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.md) | 
 **storage** | **String**| The document storage. | [optional] 
 **dst_folder** | **String**| The destination document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_merge_documents**
> DocumentResponse put_merge_documents(name, merge_documents, opts)

Merge a list of documents.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Resulting document name. | 
 **merge_documents** | [**MergeDocuments**](MergeDocuments.md)| MergeDocuments with a list of documents. | 
 **storage** | **String**| Resulting document storage. | [optional] 
 **folder** | **String**| Resulting document folder. | [optional] 

### Return type

[**DocumentResponse**](DocumentResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_mht_in_storage_to_pdf**
> AsposeResponse put_mht_in_storage_to_pdf(name, src_path, opts)

Convert MHT file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.mht) | 
 **height** | **Float**| Page height | [optional] 
 **width** | **Float**| Page width | [optional] 
 **margin_left** | **Float**| Page margin left | [optional] 
 **margin_bottom** | **Float**| Page margin bottom | [optional] 
 **margin_right** | **Float**| Page margin right | [optional] 
 **margin_top** | **Float**| Page margin top | [optional] 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_movie_annotation**
> MovieAnnotationResponse put_movie_annotation(name, annotation_id, annotation, opts)

Replace document movie annotation

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**MovieAnnotation**](MovieAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**MovieAnnotationResponse**](MovieAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_page_add_stamp**
> AsposeResponse put_page_add_stamp(name, page_number, stamp, opts)

Add page stamp.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **stamp** | [**Stamp**](Stamp.md)| Stamp with data. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_page_convert_to_bmp**
> AsposeResponse put_page_convert_to_bmp(name, page_number, out_path, opts)

Convert document page to bmp image and upload resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **out_path** | **String**| The out path of result image. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_page_convert_to_emf**
> AsposeResponse put_page_convert_to_emf(name, page_number, out_path, opts)

Convert document page to emf image and upload resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **out_path** | **String**| The out path of result image. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_page_convert_to_gif**
> AsposeResponse put_page_convert_to_gif(name, page_number, out_path, opts)

Convert document page to gif image and upload resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **out_path** | **String**| The out path of result image. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_page_convert_to_jpeg**
> AsposeResponse put_page_convert_to_jpeg(name, page_number, out_path, opts)

Convert document page to Jpeg image and upload resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **out_path** | **String**| The out path of result image. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_page_convert_to_png**
> AsposeResponse put_page_convert_to_png(name, page_number, out_path, opts)

Convert document page to png image and upload resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **out_path** | **String**| The out path of result image. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_page_convert_to_tiff**
> AsposeResponse put_page_convert_to_tiff(name, page_number, out_path, opts)

Convert document page to Tiff image and upload resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **out_path** | **String**| The out path of result image. | 
 **width** | **Integer**| The converted image width. | [optional] [default to 0]
 **height** | **Integer**| The converted image height. | [optional] [default to 0]
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pcl_in_storage_to_pdf**
> AsposeResponse put_pcl_in_storage_to_pdf(name, src_path, opts)

Convert PCL file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.pcl) | 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_a_in_storage_to_pdf**
> AsposeResponse put_pdf_a_in_storage_to_pdf(name, src_path, opts)

Convert PDFA file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.pdf) | 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **dont_optimize** | **BOOLEAN**| If set, document resources will not be optimized. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_request_to_aps**
> AsposeResponse put_pdf_in_request_to_aps(out_path, opts)

Converts PDF document (in request content) to APS format and uploads resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.aps) | 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_doc**
> AsposeResponse put_pdf_in_request_to_doc(out_path, opts)

Converts PDF document (in request content) to DOC format and uploads resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.doc) | 
 **add_return_to_line_end** | **BOOLEAN**| Add return to line end. | [optional] 
 **format** | **String**| Allows to specify .doc or .docx file format. | [optional] 
 **image_resolution_x** | **Integer**| Image resolution X. | [optional] 
 **image_resolution_y** | **Integer**| Image resolution Y. | [optional] 
 **max_distance_between_text_lines** | **Float**| Max distance between text lines. | [optional] 
 **mode** | **String**| Allows to control how a PDF document is converted into a word processing document. | [optional] 
 **recognize_bullets** | **BOOLEAN**| Recognize bullets. | [optional] 
 **relative_horizontal_proximity** | **Float**| Relative horizontal proximity. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_epub**
> AsposeResponse put_pdf_in_request_to_epub(out_path, opts)

Converts PDF document (in request content) to EPUB format and uploads resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.epub) | 
 **content_recognition_mode** | **String**| Property tunes conversion for this or that desirable method of recognition of content. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_html**
> AsposeResponse put_pdf_in_request_to_html(out_path, opts)

Converts PDF document (in request content) to Html format and uploads resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.html) | 
 **additional_margin_width_in_points** | **Integer**| Defines width of margin that will be forcibly left around that output HTML-areas. | [optional] 
 **compress_svg_graphics_if_any** | **BOOLEAN**| The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving. | [optional] 
 **convert_marked_content_to_layers** | **BOOLEAN**| If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with &quot;data-pdflayer&quot; attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content. | [optional] 
 **default_font_name** | **String**| Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used. | [optional] 
 **document_type** | **String**| Result document type. | [optional] 
 **fixed_layout** | **BOOLEAN**| The value indicating whether that HTML is created as fixed layout. | [optional] 
 **image_resolution** | **Integer**| Resolution for image rendering. | [optional] 
 **minimal_line_width** | **Integer**| This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers. | [optional] 
 **prevent_glyphs_grouping** | **BOOLEAN**| This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true. | [optional] 
 **split_css_into_pages** | **BOOLEAN**| When multipage-mode selected(i.e &#39;SplitIntoPages&#39; is &#39;true&#39;), then this attribute defines whether should be created separate CSS-file for each result HTML page. | [optional] 
 **split_into_pages** | **BOOLEAN**| The flag that indicates whether each page of source document will be converted into it&#39;s own target HTML document, i.e whether result HTML will be splitted into several HTML-pages. | [optional] 
 **use_z_order** | **BOOLEAN**| If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects. | [optional] 
 **antialiasing_processing** | **String**| The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML. | [optional] 
 **css_class_names_prefix** | **String**| When PDFtoHTML converter generates result CSSs, CSS class names (something like &quot;.stl_01 {}&quot; ... &quot;.stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix. | [optional] 
 **explicit_list_of_saved_pages** | **Array&lt;Integer&gt;**| With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF. | [optional] 
 **font_encoding_strategy** | **String**| Defines encoding special rule to tune PDF decoding for current document. | [optional] 
 **font_saving_mode** | **String**| Defines font saving mode that will be used during saving of PDF to desirable format. | [optional] 
 **html_markup_generation_mode** | **String**| Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments. | [optional] 
 **letters_positioning_method** | **String**| The mode of positioning of letters in words in result HTML. | [optional] 
 **pages_flow_type_depends_on_viewers_screen_size** | **BOOLEAN**| If attribute &#39;SplitOnPages&#x3D;false&#39;, than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer. | [optional] 
 **parts_embedding_mode** | **String**| It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities. | [optional] 
 **raster_images_saving_mode** | **String**| Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML. | [optional] 
 **remove_empty_areas_on_top_and_bottom** | **BOOLEAN**| Defines whether in created HTML will be removed top and bottom empty area without any content (if any). | [optional] 
 **save_shadowed_texts_as_transparent_texts** | **BOOLEAN**| Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard). | [optional] 
 **save_transparent_texts** | **BOOLEAN**| Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML. | [optional] 
 **special_folder_for_all_images** | **String**| The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional] 
 **special_folder_for_svg_images** | **String**| The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional] 
 **try_save_text_underlining_and_strikeouting_in_css** | **BOOLEAN**| PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text&#39;s underlining and put this info into CSS instead of drawing of underlining graphically. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **flow_layout_paragraph_full_width** | **BOOLEAN**| This attribute specifies full width paragraph text for Flow mode, FixedLayout &#x3D; false. | [optional] 
 **output_format** | **String**| This parameter determines the type of result. The zip archive will be uploaded into the storage if the parameter is &quot;Zip&quot; or missed (default). In case of the &quot;Folder&quot;, all resulting files and directories will be uploaded to the folder of the resulting HTML file. | [optional] [default to Zip]
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_mobi_xml**
> AsposeResponse put_pdf_in_request_to_mobi_xml(out_path, opts)

Converts PDF document (in request content) to MOBIXML format and uploads resulting ZIP archive file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.mobixml) | 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_pdf_a**
> AsposeResponse put_pdf_in_request_to_pdf_a(out_path, type, opts)

Converts PDF document (in request content) to PdfA format and uploads resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.pdf) | 
 **type** | **String**| Type of PdfA format. | 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_pptx**
> AsposeResponse put_pdf_in_request_to_pptx(out_path, opts)

Converts PDF document (in request content) to PPTX format and uploads resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.pptx) | 
 **separate_images** | **BOOLEAN**| Separate images. | [optional] 
 **slides_as_images** | **BOOLEAN**| Slides as images. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_svg**
> AsposeResponse put_pdf_in_request_to_svg(out_path, opts)

Converts PDF document (in request content) to SVG format and uploads resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.svg) | 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_te_x**
> AsposeResponse put_pdf_in_request_to_te_x(out_path, opts)

Converts PDF document (in request content) to TeX format and uploads resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.tex) | 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_tiff**
> AsposeResponse put_pdf_in_request_to_tiff(out_path, opts)

Converts PDF document (in request content) to TIFF format and uploads resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.tiff) | 
 **brightness** | **Float**| Image brightness. | [optional] 
 **compression** | **String**| Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. | [optional] 
 **color_depth** | **String**| Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. | [optional] 
 **left_margin** | **Integer**| Left image margin. | [optional] 
 **right_margin** | **Integer**| Right image margin. | [optional] 
 **top_margin** | **Integer**| Top image margin. | [optional] 
 **bottom_margin** | **Integer**| Bottom image margin. | [optional] 
 **orientation** | **String**| Image orientation. Possible values are: None, Landscape, Portait. | [optional] 
 **skip_blank_pages** | **BOOLEAN**| Skip blank pages flag. | [optional] 
 **width** | **Integer**| Image width. | [optional] 
 **height** | **Integer**| Image height. | [optional] 
 **x_resolution** | **Integer**| Horizontal resolution. | [optional] 
 **y_resolution** | **Integer**| Vertical resolution. | [optional] 
 **page_index** | **Integer**| Start page to export. | [optional] 
 **page_count** | **Integer**| Number of pages to export. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_xls**
> AsposeResponse put_pdf_in_request_to_xls(out_path, opts)

Converts PDF document (in request content) to XLS format and uploads resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.xls) | 
 **insert_blank_column_at_first** | **BOOLEAN**| Insert blank column at first | [optional] 
 **minimize_the_number_of_worksheets** | **BOOLEAN**| Minimize the number of worksheets | [optional] 
 **scale_factor** | **Float**| Scale factor (Obsolete) | [optional] 
 **uniform_worksheets** | **BOOLEAN**| Uniform worksheets | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_xlsx**
> AsposeResponse put_pdf_in_request_to_xlsx(out_path, opts)

Converts PDF document (in request content) to XLSX format and uploads resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.xlsx) | 
 **insert_blank_column_at_first** | **BOOLEAN**| Insert blank column at first | [optional] 
 **minimize_the_number_of_worksheets** | **BOOLEAN**| Minimize the number of worksheets | [optional] 
 **scale_factor** | **Float**| Scale factor (Obsolete) | [optional] 
 **uniform_worksheets** | **BOOLEAN**| Uniform worksheets | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_xml**
> AsposeResponse put_pdf_in_request_to_xml(out_path, opts)

Converts PDF document (in request content) to XML format and uploads resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.xml) | 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_xps**
> AsposeResponse put_pdf_in_request_to_xps(out_path, opts)

Converts PDF document (in request content) to XPS format and uploads resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.xps) | 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_storage_to_aps**
> AsposeResponse put_pdf_in_storage_to_aps(name, out_path, opts)

Converts PDF document (located on storage) to APS format and uploads resulting file to storage

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.aps) | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_doc**
> AsposeResponse put_pdf_in_storage_to_doc(name, out_path, opts)

Converts PDF document (located on storage) to DOC format and uploads resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.doc) | 
 **add_return_to_line_end** | **BOOLEAN**| Add return to line end. | [optional] 
 **format** | **String**| Allows to specify .doc or .docx file format. | [optional] 
 **image_resolution_x** | **Integer**| Image resolution X. | [optional] 
 **image_resolution_y** | **Integer**| Image resolution Y. | [optional] 
 **max_distance_between_text_lines** | **Float**| Max distance between text lines. | [optional] 
 **mode** | **String**| Allows to control how a PDF document is converted into a word processing document. | [optional] 
 **recognize_bullets** | **BOOLEAN**| Recognize bullets. | [optional] 
 **relative_horizontal_proximity** | **Float**| Relative horizontal proximity. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_epub**
> AsposeResponse put_pdf_in_storage_to_epub(name, out_path, opts)

Converts PDF document (located on storage) to EPUB format and uploads resulting file to storage

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.epub) | 
 **content_recognition_mode** | **String**| Property tunes conversion for this or that desirable method of recognition of content. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_html**
> AsposeResponse put_pdf_in_storage_to_html(name, out_path, opts)

Converts PDF document (located on storage) to Html format and uploads resulting file to storage

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.html) | 
 **additional_margin_width_in_points** | **Integer**| Defines width of margin that will be forcibly left around that output HTML-areas. | [optional] 
 **compress_svg_graphics_if_any** | **BOOLEAN**| The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving. | [optional] 
 **convert_marked_content_to_layers** | **BOOLEAN**| If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with &quot;data-pdflayer&quot; attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content. | [optional] 
 **default_font_name** | **String**| Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used. | [optional] 
 **document_type** | **String**| Result document type. | [optional] 
 **fixed_layout** | **BOOLEAN**| The value indicating whether that HTML is created as fixed layout. | [optional] 
 **image_resolution** | **Integer**| Resolution for image rendering. | [optional] 
 **minimal_line_width** | **Integer**| This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers. | [optional] 
 **prevent_glyphs_grouping** | **BOOLEAN**| This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true. | [optional] 
 **split_css_into_pages** | **BOOLEAN**| When multipage-mode selected(i.e &#39;SplitIntoPages&#39; is &#39;true&#39;), then this attribute defines whether should be created separate CSS-file for each result HTML page. | [optional] 
 **split_into_pages** | **BOOLEAN**| The flag that indicates whether each page of source document will be converted into it&#39;s own target HTML document, i.e whether result HTML will be splitted into several HTML-pages. | [optional] 
 **use_z_order** | **BOOLEAN**| If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects. | [optional] 
 **antialiasing_processing** | **String**| The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML. | [optional] 
 **css_class_names_prefix** | **String**| When PDFtoHTML converter generates result CSSs, CSS class names (something like &quot;.stl_01 {}&quot; ... &quot;.stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix. | [optional] 
 **explicit_list_of_saved_pages** | **Array&lt;Integer&gt;**| With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF. | [optional] 
 **font_encoding_strategy** | **String**| Defines encoding special rule to tune PDF decoding for current document. | [optional] 
 **font_saving_mode** | **String**| Defines font saving mode that will be used during saving of PDF to desirable format. | [optional] 
 **html_markup_generation_mode** | **String**| Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments. | [optional] 
 **letters_positioning_method** | **String**| The mode of positioning of letters in words in result HTML. | [optional] 
 **pages_flow_type_depends_on_viewers_screen_size** | **BOOLEAN**| If attribute &#39;SplitOnPages&#x3D;false&#39;, than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer. | [optional] 
 **parts_embedding_mode** | **String**| It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities. | [optional] 
 **raster_images_saving_mode** | **String**| Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML. | [optional] 
 **remove_empty_areas_on_top_and_bottom** | **BOOLEAN**| Defines whether in created HTML will be removed top and bottom empty area without any content (if any). | [optional] 
 **save_shadowed_texts_as_transparent_texts** | **BOOLEAN**| Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard). | [optional] 
 **save_transparent_texts** | **BOOLEAN**| Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML. | [optional] 
 **special_folder_for_all_images** | **String**| The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional] 
 **special_folder_for_svg_images** | **String**| The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional] 
 **try_save_text_underlining_and_strikeouting_in_css** | **BOOLEAN**| PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text&#39;s underlining and put this info into CSS instead of drawing of underlining graphically. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **flow_layout_paragraph_full_width** | **BOOLEAN**| This attribute specifies full width paragraph text for Flow mode, FixedLayout &#x3D; false. | [optional] 
 **output_format** | **String**| This parameter determines the type of result. The zip archive will be uploaded into the storage if the parameter is &quot;Zip&quot; or missed (default). In case of the &quot;Folder&quot;, all resulting files and directories will be uploaded to the folder of the resulting HTML file. | [optional] [default to Zip]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_mobi_xml**
> AsposeResponse put_pdf_in_storage_to_mobi_xml(name, out_path, opts)

Converts PDF document (located on storage) to MOBIXML format and uploads resulting ZIP archive file to storage

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.mobixml) | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_pdf_a**
> AsposeResponse put_pdf_in_storage_to_pdf_a(name, out_path, type, opts)

Converts PDF document (located on storage) to PdfA format and uploads resulting file to storage

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.pdf) | 
 **type** | **String**| Type of PdfA format. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_pptx**
> AsposeResponse put_pdf_in_storage_to_pptx(name, out_path, opts)

Converts PDF document (located on storage) to PPTX format and uploads resulting file to storage

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.pptx) | 
 **separate_images** | **BOOLEAN**| Separate images. | [optional] 
 **slides_as_images** | **BOOLEAN**| Slides as images. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| Base64 encoded password. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_svg**
> AsposeResponse put_pdf_in_storage_to_svg(name, out_path, opts)

Converts PDF document (located on storage) to SVG format and uploads resulting file to storage

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.svg) | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_te_x**
> AsposeResponse put_pdf_in_storage_to_te_x(name, out_path, opts)

Converts PDF document (located on storage) to TeX format and uploads resulting file to storage

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.tex) | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_tiff**
> AsposeResponse put_pdf_in_storage_to_tiff(name, out_path, opts)

Converts PDF document (located on storage) to TIFF format and uploads resulting file to storage

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.tiff) | 
 **brightness** | **Float**| Image brightness. | [optional] 
 **compression** | **String**| Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. | [optional] 
 **color_depth** | **String**| Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. | [optional] 
 **left_margin** | **Integer**| Left image margin. | [optional] 
 **right_margin** | **Integer**| Right image margin. | [optional] 
 **top_margin** | **Integer**| Top image margin. | [optional] 
 **bottom_margin** | **Integer**| Bottom image margin. | [optional] 
 **orientation** | **String**| Image orientation. Possible values are: None, Landscape, Portait. | [optional] 
 **skip_blank_pages** | **BOOLEAN**| Skip blank pages flag. | [optional] 
 **width** | **Integer**| Image width. | [optional] 
 **height** | **Integer**| Image height. | [optional] 
 **x_resolution** | **Integer**| Horizontal resolution. | [optional] 
 **y_resolution** | **Integer**| Vertical resolution. | [optional] 
 **page_index** | **Integer**| Start page to export. | [optional] 
 **page_count** | **Integer**| Number of pages to export. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_xls**
> AsposeResponse put_pdf_in_storage_to_xls(name, out_path, opts)

Converts PDF document (located on storage) to XLS format and uploads resulting file to storage

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.xls) | 
 **insert_blank_column_at_first** | **BOOLEAN**| Insert blank column at first | [optional] 
 **minimize_the_number_of_worksheets** | **BOOLEAN**| Minimize the number of worksheets | [optional] 
 **scale_factor** | **Float**| Scale factor (Obsolete) | [optional] 
 **uniform_worksheets** | **BOOLEAN**| Uniform worksheets | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_xlsx**
> AsposeResponse put_pdf_in_storage_to_xlsx(name, out_path, opts)

Converts PDF document (located on storage) to XLSX format and uploads resulting file to storage

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.xlsx) | 
 **insert_blank_column_at_first** | **BOOLEAN**| Insert blank column at first | [optional] 
 **minimize_the_number_of_worksheets** | **BOOLEAN**| Minimize the number of worksheets | [optional] 
 **scale_factor** | **Float**| Scale factor (Obsolete) | [optional] 
 **uniform_worksheets** | **BOOLEAN**| Uniform worksheets | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_xml**
> AsposeResponse put_pdf_in_storage_to_xml(name, out_path, opts)

Converts PDF document (located on storage) to XML format and uploads resulting file to storage

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.xml) | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_xps**
> AsposeResponse put_pdf_in_storage_to_xps(name, out_path, opts)

Converts PDF document (located on storage) to XPS format and uploads resulting file to storage

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.xps) | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_poly_line_annotation**
> PolyLineAnnotationResponse put_poly_line_annotation(name, annotation_id, annotation, opts)

Replace document polyline annotation

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**PolyLineAnnotation**](PolyLineAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**PolyLineAnnotationResponse**](PolyLineAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_polygon_annotation**
> PolygonAnnotationResponse put_polygon_annotation(name, annotation_id, annotation, opts)

Replace document polygon annotation

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**PolygonAnnotation**](PolygonAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**PolygonAnnotationResponse**](PolygonAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_popup_annotation**
> PopupAnnotationResponse put_popup_annotation(name, annotation_id, annotation, opts)

Replace document popup annotation

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**PopupAnnotation**](PopupAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**PopupAnnotationResponse**](PopupAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_privileges**
> AsposeResponse put_privileges(name, privileges, opts)

Update privilege document.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **privileges** | [**DocumentPrivilege**](DocumentPrivilege.md)| Document privileges. DocumentPrivilege | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_ps_in_storage_to_pdf**
> AsposeResponse put_ps_in_storage_to_pdf(name, src_path, opts)

Convert PS file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.ps) | 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_radio_button_field**
> RadioButtonFieldResponse put_radio_button_field(name, field_name, field, opts)

Replace document RadioButton field

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **field_name** | **String**| The field name. | 
 **field** | [**RadioButtonField**](RadioButtonField.md)| The field. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**RadioButtonFieldResponse**](RadioButtonFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_redaction_annotation**
> RedactionAnnotationResponse put_redaction_annotation(name, annotation_id, annotation, opts)

Replace document redaction annotation

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**RedactionAnnotation**](RedactionAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **apply** | **BOOLEAN**| Apply redaction immediately after adding. | [optional] [default to false]

### Return type

[**RedactionAnnotationResponse**](RedactionAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_replace_image**
> ImageResponse put_replace_image(name, image_id, opts)

Replace document image.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| The image ID. | 
 **image_file_path** | **String**| Path to image file if specified. Request content is used otherwise. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **image** | **File**| Image file. | [optional] 

### Return type

[**ImageResponse**](ImageResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_replace_multiple_image**
> ImagesResponse put_replace_multiple_image(name, image_ids, opts)

Replace document multiple image.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_ids** | **Array&lt;String&gt;**| The image IDs. | 
 **image_file_path** | **String**| Path to image file if specified. Request content is used otherwise. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **image** | **File**| Image file. | [optional] 

### Return type

[**ImagesResponse**](ImagesResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_screen_annotation**
> ScreenAnnotationResponse put_screen_annotation(name, annotation_id, annotation, opts)

Replace document screen annotation

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**ScreenAnnotation**](ScreenAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**ScreenAnnotationResponse**](ScreenAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_screen_annotation_data_extract**
> AsposeResponse put_screen_annotation_data_extract(name, annotation_id, out_file_path, opts)

Extract document screen annotation content to storage

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **out_file_path** | **String**| The output file path. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_searchable_document**
> AsposeResponse put_searchable_document(name, opts)

Create searchable PDF document. Generate OCR layer for images in input PDF document.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **lang** | **String**| language for OCR engine. Possible values: eng, ara, bel, ben, bul, ces, dan, deu, ell, fin, fra, heb, hin, ind, isl, ita, jpn, kor, nld, nor, pol, por, ron, rus, spa, swe, tha, tur, ukr, vie, chi_sim, chi_tra or thier combination e.g. eng,rus  | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_set_property**
> DocumentPropertyResponse put_set_property(name, property_name, value, opts)

Add/update document property.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **property_name** | **String**| Property name. | 
 **value** | **String**| Property value. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **password** | **String**| The password (Base64). | [optional] 

### Return type

[**DocumentPropertyResponse**](DocumentPropertyResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_signature_field**
> SignatureFieldResponse put_signature_field(name, field_name, field, opts)

Replace document signature field.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **field_name** | **String**| The field name. | 
 **field** | [**SignatureField**](SignatureField.md)| The field. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**SignatureFieldResponse**](SignatureFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_sound_annotation**
> SoundAnnotationResponse put_sound_annotation(name, annotation_id, annotation, opts)

Replace document sound annotation

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**SoundAnnotation**](SoundAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**SoundAnnotationResponse**](SoundAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_sound_annotation_data_extract**
> AsposeResponse put_sound_annotation_data_extract(name, annotation_id, out_file_path, opts)

Extract document sound annotation content to storage

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **out_file_path** | **String**| The output file path. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_square_annotation**
> SquareAnnotationResponse put_square_annotation(name, annotation_id, annotation, opts)

Replace document square annotation

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**SquareAnnotation**](SquareAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**SquareAnnotationResponse**](SquareAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_squiggly_annotation**
> SquigglyAnnotationResponse put_squiggly_annotation(name, annotation_id, annotation, opts)

Replace document squiggly annotation

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**SquigglyAnnotation**](SquigglyAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**SquigglyAnnotationResponse**](SquigglyAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_stamp_annotation**
> StampAnnotationResponse put_stamp_annotation(name, annotation_id, annotation, opts)

Replace document stamp annotation

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**StampAnnotation**](StampAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**StampAnnotationResponse**](StampAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_stamp_annotation_data_extract**
> AsposeResponse put_stamp_annotation_data_extract(name, annotation_id, out_file_path, opts)

Extract document stamp annotation content to storage

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **out_file_path** | **String**| The output file path. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_strike_out_annotation**
> StrikeOutAnnotationResponse put_strike_out_annotation(name, annotation_id, annotation, opts)

Replace document StrikeOut annotation

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**StrikeOutAnnotation**](StrikeOutAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**StrikeOutAnnotationResponse**](StrikeOutAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_svg_in_storage_to_pdf**
> AsposeResponse put_svg_in_storage_to_pdf(name, src_path, opts)

Convert SVG file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.svg) | 
 **adjust_page_size** | **BOOLEAN**| Adjust page size | [optional] 
 **height** | **Float**| Page height | [optional] 
 **width** | **Float**| Page width | [optional] 
 **is_landscape** | **BOOLEAN**| Is page landscaped | [optional] 
 **margin_left** | **Float**| Page margin left | [optional] 
 **margin_bottom** | **Float**| Page margin bottom | [optional] 
 **margin_right** | **Float**| Page margin right | [optional] 
 **margin_top** | **Float**| Page margin top | [optional] 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_table**
> AsposeResponse put_table(name, table_id, table, opts)

Replace document page table.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **table_id** | **String**| The table ID. | 
 **table** | [**Table**](Table.md)| The table. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_te_x_in_storage_to_pdf**
> AsposeResponse put_te_x_in_storage_to_pdf(name, src_path, opts)

Convert TeX file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.tex) | 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_text_annotation**
> TextAnnotationResponse put_text_annotation(name, annotation_id, annotation, opts)

Replace document text annotation

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**TextAnnotation**](TextAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**TextAnnotationResponse**](TextAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_text_box_field**
> TextBoxFieldResponse put_text_box_field(name, field_name, field, opts)

Replace document text box field

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **field_name** | **String**| The field name. | 
 **field** | [**TextBoxField**](TextBoxField.md)| The field. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**TextBoxFieldResponse**](TextBoxFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_underline_annotation**
> UnderlineAnnotationResponse put_underline_annotation(name, annotation_id, annotation, opts)

Replace document underline annotation

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**UnderlineAnnotation**](UnderlineAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**UnderlineAnnotationResponse**](UnderlineAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_update_field**
> FieldResponse put_update_field(name, field_name, field, opts)

Update field.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **field_name** | **String**| The name of a field to be updated. | 
 **field** | [**Field**](Field.md)| Field with the field data. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**FieldResponse**](FieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_update_fields**
> FieldsResponse put_update_fields(name, fields, opts)

Update fields.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **fields** | [**Fields**](Fields.md)| Fields with the fields data. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**FieldsResponse**](FieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_web_in_storage_to_pdf**
> AsposeResponse put_web_in_storage_to_pdf(name, url, opts)

Convert web page to PDF format and upload resulting file to storage. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **url** | **String**| Source url | 
 **height** | **Float**| Page height | [optional] 
 **width** | **Float**| Page width | [optional] 
 **is_landscape** | **BOOLEAN**| Is page landscaped | [optional] 
 **margin_left** | **Float**| Page margin left | [optional] 
 **margin_bottom** | **Float**| Page margin bottom | [optional] 
 **margin_right** | **Float**| Page margin right | [optional] 
 **margin_top** | **Float**| Page margin top | [optional] 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_xfa_pdf_in_request_to_acro_form**
> AsposeResponse put_xfa_pdf_in_request_to_acro_form(out_path, opts)

Converts PDF document which contains XFA form (in request content) to PDF with AcroForm and uploads resulting file to storage.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.pdf) | 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_xfa_pdf_in_storage_to_acro_form**
> AsposeResponse put_xfa_pdf_in_storage_to_acro_form(name, out_path, opts)

Converts PDF document which contains XFA form (located on storage) to PDF with AcroForm and uploads resulting file to storage

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.pdf) | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_xml_in_storage_to_pdf**
> AsposeResponse put_xml_in_storage_to_pdf(name, src_path, opts)

Convert XML file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.xml) | 
 **xsl_file_path** | **String**| Full XSL source filename (ex. /folder1/folder2/template.xsl) | [optional] 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_xps_in_storage_to_pdf**
> AsposeResponse put_xps_in_storage_to_pdf(name, src_path, opts)

Convert XPS file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.xps) | 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_xsl_fo_in_storage_to_pdf**
> AsposeResponse put_xsl_fo_in_storage_to_pdf(name, src_path, opts)

Convert XslFo file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.xpsfo) | 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **storage_exists**
> StorageExist storage_exists(storage_name)

Check if storage exists

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_name** | **String**| Storage name | 

### Return type

[**StorageExist**](StorageExist.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **upload_file**
> FilesUploadResult upload_file(path, file, opts)

Upload file

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.              | 
 **file** | **File**| File to upload | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**FilesUploadResult**](FilesUploadResult.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



