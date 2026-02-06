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

require 'minitest/autorun'
require 'minitest/unit'
require 'base64'

require_relative '../lib/aspose_pdf_cloud'

class PdfTest < Minitest::Test
  include MiniTest::Assertions
  include AsposePdfCloud

  def setup
    servercreds_json = File.read('settings/credentials.json')
    creds = JSON.parse(servercreds_json)
    self_host = creds.has_key?('self_host') ? creds['self_host'] : false
    client_secret = creds.has_key?('client_secret') ? creds['client_secret'] : ''
    client_id = creds.has_key?('client_id') ? creds['client_id'] : ''
    product_uri = creds.has_key?('api_url') ? creds['api_url'] : ''
    @pdf_api = PdfApi.new(client_secret, client_id, product_uri, self_host)
    @temp_folder = 'TempPdfCloud'
    @test_data_folder = 'test_data/'
    config = @pdf_api.api_client.config
    config.scheme = 'http'
  end

  def teardown
  end

  def upload_file(file_name)
    response = @pdf_api.upload_file(@temp_folder + '/' + file_name, ::File.open(@test_data_folder + file_name, 'r') do |io|
      io.read(io.size)
    end)
    assert(response, "Failed to upload #{file_name} file.")
  end

  # Annotations Tests

  def test_get_document_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_annotations(file_name, opts)
    assert(response, 'Failed to read document annotations.')
  end

  def test_delete_document_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.delete_document_annotations(file_name, opts)
    assert(response, 'Failed to delete document annotations.')
  end

  def test_get_page_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 2
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read document page annotations.')
  end

  def test_delete_page_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 2
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.delete_page_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read document page annotations.')
  end

  def test_delete_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.delete_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to delete annotation.')
  end

  def test_put_annotations_flatten
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      end_page: 2,
      annotation_types: [AnnotationType::STAMP],
      folder: @temp_folder
    }

    response = @pdf_api.put_annotations_flatten(file_name, opts)
    assert(response, 'Failed to make annotations flatten.')
  end

  # Screen Annotations Tests

  def test_get_document_screen_annotations
    file_name = 'PdfWithScreenAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_screen_annotations(file_name, opts)
    assert(response, 'Failed to read document screen annotations.')
  end

  def test_get_page_screen_annotations
    file_name = 'PdfWithScreenAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_screen_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page screen annotations.')
  end

  def test_post_page_screen_annotations
    file_name = 'PdfWithScreenAnnotations.pdf'
    upload_file(file_name)

    attachment_file = 'ScreenMovie.swf'
    upload_file(attachment_file)

    page_number = 1

    opts = {
      folder: @temp_folder
    }

    annotation = ScreenAnnotation.new
    annotation.name = 'Test Screen Annotation'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.modified = '02/02/2018 12:00:00.000 AM'
    annotation.file_path = @temp_folder + '/' + attachment_file

    response = @pdf_api.post_page_screen_annotations(file_name, page_number, [annotation], opts)
    assert(response, 'Failed to add screen annotations into page.')
  end

  def test_get_screen_annotation
    file_name = 'PdfWithScreenAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_screen_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document screen annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_screen_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page screen annotations.')
  end

  def test_put_screen_annotation
    file_name = 'PdfWithScreenAnnotations.pdf'
    upload_file(file_name)

    attachment_file = 'ScreenMovie.swf'
    upload_file(attachment_file)

    opts = {
      folder: @temp_folder
    }

    annotation = ScreenAnnotation.new
    annotation.name = 'Test Screen Annotation Updated'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.modified = '03/04/2018 12:00:00.000 AM'
    annotation.file_path = @temp_folder + '/' + attachment_file

    annotations_response = @pdf_api.get_document_screen_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document screen annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_screen_annotation(file_name, annotation_id, annotation, opts)
    assert(response, 'Failed to replace screen annotation.')
  end

  def test_get_screen_annotation_data
    file_name = 'PdfWithScreenAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_screen_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document screen annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_screen_annotation_data(file_name, annotation_id, opts)
    assert(response, 'Failed to read page screen annotation data.')
  end

  def test_put_screen_annotation_data_extract
    file_name = 'PdfWithScreenAnnotations.pdf'
    upload_file(file_name)

    out_file_path = @temp_folder + '/screen.dat'

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_screen_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document screen annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_screen_annotation_data_extract(file_name, annotation_id, out_file_path, opts)
    assert(response, 'Failed to read page screen annotation data.')
  end

  # Tables Tests

  def test_delete_document_tables
    file_name = 'PdfWithTable.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.delete_document_tables(file_name, opts)
    assert(response, 'Failed to delete document tables.')
  end

  def test_get_document_tables
    file_name = 'PdfWithTable.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_tables(file_name, opts)
    assert(response, 'Failed to read document tables.')
  end

  def test_get_page_tables
    file_name = 'PdfWithTable.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_tables(file_name, page_number, opts)
    assert(response, 'Failed to read page tables.')
  end

  def test_delete_page_tables
    file_name = 'PdfWithTable.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.delete_page_tables(file_name, page_number, opts)
    assert(response, 'Failed to delete page tables.')
  end

  def test_get_table
    file_name = 'PdfWithTable.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    tables_response = @pdf_api.get_document_tables(file_name, opts)
    assert(tables_response, 'Failed to read document tables.')
    table_id = tables_response[0].tables.list[0].id

    response = @pdf_api.get_table(file_name, table_id, opts)
    assert(response, 'Failed to read table.')
  end

  def test_delete_table
    file_name = 'PdfWithTable.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    tables_response = @pdf_api.get_document_tables(file_name, opts)
    assert(tables_response, 'Failed to read document tables.')
    table_id = tables_response[0].tables.list[0].id

    response = @pdf_api.delete_table(file_name, table_id, opts)
    assert(response, 'Failed to delete table.')
  end

  def test_post_page_tables
    file_name = '4pages.pdf'
    upload_file(file_name)

    page_number = 1

    opts = {
      folder: @temp_folder
    }

    table = __draw_table

    response = @pdf_api.post_page_tables(file_name, page_number, [table], opts)
    assert(response, 'Failed to add tables.')
  end

  def test_put_table
    file_name = 'PdfWithTable.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    tables_response = @pdf_api.get_document_tables(file_name, opts)
    assert(tables_response, 'Failed to read document tables.')
    table_id = tables_response[0].tables.list[0].id

    table = __draw_table

    response = @pdf_api.put_table(file_name, table_id, table, opts)
    assert(response, 'Failed to update table.')
  end

  def __draw_table
    colorBlack = Color.new({ A: 0xFF, R: 0, G: 0, B: 0 })
    borderGraphInfo = GraphInfo.new({ Color: colorBlack, LineWidth: 1 })
    image = 'Penguins.jpg'
    Table.new({
                Top: 100,
                ColumnWidths: '150 300',
                IsBordersIncluded: true,
                DefaultCellTextState: TextState.new({ FontSize: 11,
                                                      ForegroundColor: Color.new({ A: 255, R: 0,
                                                                                   G: 255, B: 0 }) }),
                Margin: MarginInfo.new({
                                         Bottom: 10,
                                         Left: 10,
                                         Right: 10,
                                         Top: 10
                                       }),
                Border: BorderInfo.new({
                                         Top: borderGraphInfo,
                                         Left: borderGraphInfo
                                       }),
                DefaultCellBorder: BorderInfo.new({
                                                    Right: borderGraphInfo
                                                  }),
                DefaultCellPadding: MarginInfo.new({
                                                     Top: 5,
                                                     Left: 5,
                                                     Right: 5,
                                                     Bottom: 5
                                                   }),
                Rows: [
                  Row.new({
                            MinRowHeight: 100,
                            Border: BorderInfo.new({
                                                     Bottom: borderGraphInfo
                                                   }),
                            Cells: [
                              Cell.new({
                                         Paragraphs: [
                                           TextRect.new({
                                                          Text: 'BackgroundImageStorageFile field, from storage file',
                                                          HorizontalAlignment: HorizontalAlignment::CENTER,
                                                          TextState: TextState.new({
                                                                                     FontSize: 10, ForegroundColor: Color.new({
                                                                                                                                A: 0xff, R: 0x3d, G: 0x8e, B: 0xc4
                                                                                                                              })
                                                                                   })
                                                        })
                                         ]
                                       }),
                              Cell.new({
                                         BackgroundColor: colorBlack,
                                         BackgroundImageStorageFile: "#{@temp_folder}/#{image}"
                                       })
                            ]
                          }),
                  Row.new({
                            MinRowHeight: 100,
                            Border: BorderInfo.new({ Bottom: borderGraphInfo }),
                            Cells: [
                              Cell.new({
                                         Paragraphs: [
                                           TextRect.new({
                                                          Text: 'HtmlFragment',
                                                          HorizontalAlignment: HorizontalAlignment::CENTER,
                                                          TextState: TextState.new({
                                                                                     FontSize: 10,
                                                                                     ForegroundColor: Color.new({
                                                                                                                  A: 255, R: 0x3d, G: 0x8e, B: 0xc4
                                                                                                                })
                                                                                   })
                                                        })
                                         ]
                                       }),
                              Cell.new({ HtmlFragment: '<ul><li>First</li><li>Second</li></ul>' })
                            ]
                          }),
                  Row.new({
                            FixedRowHeight: 100,
                            Border: BorderInfo.new({ Bottom: borderGraphInfo }),
                            Cells: [
                              Cell.new({
                                         Paragraphs: [
                                           TextRect.new({ Text: 'FixedRowHeight = 100' }),
                                           TextRect.new({
                                                          Text: 'Images field, from storage file, without Margin and Size',
                                                          HorizontalAlignment: HorizontalAlignment::CENTER,
                                                          TextState: TextState.new({
                                                                                     FontSize: 10, ForegroundColor: Color.new({
                                                                                                                                A: 255, R: 0x3d, G: 0x8e, B: 0xc4
                                                                                                                              })
                                                                                   })
                                                        })
                                         ]
                                       }),
                              Cell.new({
                                         BackgroundColor: colorBlack,
                                         Images: [ImageFragment.new({ ImageFile: "#{@temp_folder}/#{image}" })]
                                       })
                            ]
                          }),
                  Row.new({
                            FixedRowHeight: 100,
                            Border: BorderInfo.new({ Bottom: borderGraphInfo }),
                            Cells: [
                              Cell.new({
                                         Paragraphs: [
                                           TextRect.new({ Text: 'FixedRowHeight = 100' }),
                                           TextRect.new({
                                                          Text: 'Images field, from storage file, with no Margin and Size = 150x50',
                                                          HorizontalAlignment: HorizontalAlignment::CENTER,
                                                          TextState: TextState.new({
                                                                                     FontSize: 10, ForegroundColor: Color.new({
                                                                                                                                A: 255, R: 0x3d, G: 0x8e, B: 0xc4
                                                                                                                              })
                                                                                   })
                                                        })
                                         ]
                                       }),
                              Cell.new({
                                         BackgroundColor: colorBlack,
                                         Images: [
                                           ImageFragment.new({
                                                               ImageFile: "#{@temp_folder}/#{image}",
                                                               ImageScale: 0.1
                                                             })
                                         ]
                                       })
                            ]
                          })
                ]
              })
  end

  # Stamp Annotations Tests

  def test_get_document_stamp_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_stamp_annotations(file_name, opts)
    assert(response, 'Failed to read document Stamp annotations.')
  end

  def test_get_page_stamp_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_stamp_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page Stamp annotations.')
  end

  def test_post_page_stamp_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    attachment_file = '4pages.pdf'
    upload_file(attachment_file)

    page_number = 1

    opts = {
      folder: @temp_folder
    }

    annotation = StampAnnotation.new
    annotation.name = 'Test Stamp Annotation'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.modified = '02/02/2018 12:00:00.000 AM'
    annotation.file_path = @temp_folder + '/' + attachment_file

    response = @pdf_api.post_page_stamp_annotations(file_name, page_number, [annotation], opts)
    assert(response, 'Failed to add Stamp annotations into page.')
  end

  def test_get_stamp_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_stamp_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document Stamp annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_stamp_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page Stamp annotations.')
  end

  def test_put_stamp_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    attachment_file = '4pages.pdf'
    upload_file(attachment_file)

    opts = {
      folder: @temp_folder
    }

    annotation = StampAnnotation.new
    annotation.name = 'Test Stamp Annotation Updated'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.z_index = 1
    annotation.rich_text = 'Rich text'
    annotation.subject = 'Subj'
    annotation.title = 'Title'
    annotation.modified = '03/04/2018 12:00:00.000 AM'
    annotation.file_path = @temp_folder + '/' + attachment_file

    annotations_response = @pdf_api.get_document_stamp_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document Stamp annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_stamp_annotation(file_name, annotation_id, annotation, opts)
    assert(response, 'Failed to replace Stamp annotation.')
  end

  def test_get_stamp_annotation_data
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_stamp_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document Stamp annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_stamp_annotation_data(file_name, annotation_id, opts)
    assert(response, 'Failed to read page Stamp annotation data.')
  end

  def test_put_stamp_annotation_data_extract
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    out_file_path = 'stamp.dat'
    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_stamp_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document Stamp annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_stamp_annotation_data_extract(file_name, annotation_id, out_file_path, opts)
    assert(response, 'Failed to read page Stamp annotation data.')
  end

  # PolyLine Annotations Tests

  def test_get_document_poly_line_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_poly_line_annotations(file_name, opts)
    assert(response, 'Failed to read document polyline annotations.')
  end

  def test_post_page_poly_line_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = PolyLineAnnotation.new
    annotation.name = 'Test poly_line'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.vertices = [
      Point.new({ X: 10, Y: 10 }),
      Point.new({ X: 20, Y: 10 }),
      Point.new({ X: 10, Y: 20 }),
      Point.new({ X: 10, Y: 10 })
    ]

    response = @pdf_api.post_page_poly_line_annotations(file_name, 1, [annotation], opts)
    assert(response, 'Failed to add polyline annotations into page.')
  end

  def test_get_page_poly_line_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_poly_line_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page polyline annotations.')
  end

  def test_get_poly_line_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_poly_line_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document polyline annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_poly_line_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page polyline annotations.')
  end

  def test_put_poly_line_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = PolyLineAnnotation.new
    annotation.name = 'Test poly_line'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.vertices = [
      Point.new({ X: 10, Y: 10 }),
      Point.new({ X: 20, Y: 10 }),
      Point.new({ X: 10, Y: 20 }),
      Point.new({ X: 10, Y: 10 })
    ]

    annotations_response = @pdf_api.get_document_poly_line_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document polyline annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_poly_line_annotation(file_name, annotation_id, annotation, opts)
    assert(response, 'Failed to replace polyline annotation.')
  end

  # File Attachment Annotations Tests

  def test_get_document_file_attachment_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_file_attachment_annotations(file_name, opts)
    assert(response, 'Failed to read document file attachment annotations.')
  end

  def test_get_page_file_attachment_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 2
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_file_attachment_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page file attachment annotations.')
  end

  def test_post_page_file_attachment_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    attachment_file = '4pages.pdf'
    upload_file(attachment_file)

    page_number = 1

    opts = {
      folder: @temp_folder
    }

    annotation = FileAttachmentAnnotation.new
    annotation.name = 'Test FileAttachment Annotation'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.modified = '02/02/2018 12:00:00.000 AM'
    annotation.file_path = @temp_folder + '/' + attachment_file
    annotation.file_name = attachment_file

    response = @pdf_api.post_page_file_attachment_annotations(file_name, page_number, [annotation], opts)
    assert(response, 'Failed to add file attachment annotations into page.')
  end

  def test_get_file_attachment_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_file_attachment_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document file attachment annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_file_attachment_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page file attachment annotations.')
  end

  def test_put_file_attachment_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    attachment_file = '4pages.pdf'
    upload_file(attachment_file)

    opts = {
      folder: @temp_folder
    }

    annotation = FileAttachmentAnnotation.new
    annotation.name = 'Test FileAttachment Annotation Updated'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text Updated'
    annotation.subject = 'Subj Updated'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.modified = '03/04/2018 12:00:00.000 AM'
    annotation.file_path = @temp_folder + '/' + attachment_file
    annotation.file_name = attachment_file

    annotations_response = @pdf_api.get_document_file_attachment_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document file attachment annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_file_attachment_annotation(file_name, annotation_id, annotation, opts)
    assert(response, 'Failed to replace file attachment annotation.')
  end

  def test_get_file_attachment_annotation_data
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_file_attachment_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document file attachment annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_file_attachment_annotation_data(file_name, annotation_id, opts)
    assert(response, 'Failed to read page file attachment annotation data.')
  end

  def test_put_file_attachment_annotation_data_extract
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_file_attachment_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document file attachment annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_file_attachment_annotation_data_extract(file_name, annotation_id, opts)
    assert(response, 'Failed to read page file attachment annotation data.')
  end

  # Sound Annotations Tests

  def test_get_document_sound_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_sound_annotations(file_name, opts)
    assert(response, 'Failed to read document sound annotations.')
  end

  def test_get_page_sound_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 2
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_sound_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page sound annotations.')
  end

  def test_post_page_sound_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    attachment_file = '4pages.pdf'
    upload_file(attachment_file)

    page_number = 1

    opts = {
      folder: @temp_folder
    }

    annotation = FileAttachmentAnnotation.new
    annotation.name = 'Test Sound Annotation'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.modified = '02/02/2018 12:00:00.000 AM'
    annotation.file_path = @temp_folder + '/' + attachment_file

    response = @pdf_api.post_page_sound_annotations(file_name, page_number, [annotation], opts)
    assert(response, 'Failed to add sound annotations into page.')
  end

  def test_get_sound_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_sound_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document sound annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_sound_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page sound annotations.')
  end

  def test_put_sound_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    attachment_file = '4pages.pdf'
    upload_file(attachment_file)

    opts = {
      folder: @temp_folder
    }

    annotation = FileAttachmentAnnotation.new
    annotation.name = 'Test FileAttachment Annotation Updated'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text Updated'
    annotation.subject = 'Subj Updated'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.modified = '03/04/2018 12:00:00.000 AM'
    annotation.file_path = @temp_folder + '/' + attachment_file

    annotations_response = @pdf_api.get_document_sound_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document sound annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_sound_annotation(file_name, annotation_id, annotation, opts)
    assert(response, 'Failed to replace sound annotation.')
  end

  def test_get_sound_annotation_data
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_sound_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document sound annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_sound_annotation_data(file_name, annotation_id, opts)
    assert(response, 'Failed to read page sound annotation data.')
  end

  def test_put_sound_annotation_data_extract
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    out_file_path = 'outFile.dat'
    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_sound_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document sound annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_sound_annotation_data_extract(file_name, annotation_id, out_file_path, opts)
    assert(response, 'Failed to read page sound annotation data.')
  end

  # Polygon Annotations Tests

  def test_get_document_polygon_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_polygon_annotations(file_name, opts)
    assert(response, 'Failed to read document polygon annotations.')
  end

  def test_post_page_polygon_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = PolygonAnnotation.new
    annotation.name = 'Test polygon'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.vertices = [
      Point.new({ X: 10, Y: 10 }),
      Point.new({ X: 20, Y: 10 }),
      Point.new({ X: 10, Y: 20 }),
      Point.new({ X: 10, Y: 10 })
    ]

    response = @pdf_api.post_page_polygon_annotations(file_name, 1, [annotation], opts)
    assert(response, 'Failed to add polygon annotations into page.')
  end

  def test_get_page_polygon_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_polygon_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page polygon annotations.')
  end

  def test_get_polygon_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_polygon_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document polygon annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_polygon_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page polygon annotations.')
  end

  def test_put_polygon_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = PolygonAnnotation.new
    annotation.name = 'Test polygon'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.vertices = [
      Point.new({ X: 10, Y: 10 }),
      Point.new({ X: 20, Y: 10 }),
      Point.new({ X: 10, Y: 20 }),
      Point.new({ X: 10, Y: 10 })
    ]

    annotations_response = @pdf_api.get_document_polygon_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document polygon annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_polygon_annotation(file_name, annotation_id, annotation, opts)
    assert(response, 'Failed to replace polygon annotation.')
  end

  # Circle Annotations Tests

  def test_get_document_circle_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_circle_annotations(file_name, opts)
    assert(response, 'Failed to read document circle annotations.')
  end

  def test_post_page_circle_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = CircleAnnotation.new
    annotation.name = 'Test circle'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'

    response = @pdf_api.post_page_circle_annotations(file_name, 1, [annotation], opts)
    assert(response, 'Failed to add circle annotations into page.')
  end

  def test_get_page_circle_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_circle_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page circle annotations.')
  end

  def test_get_circle_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_circle_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document circle annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_circle_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page circle annotations.')
  end

  def test_put_circle_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = CircleAnnotation.new
    annotation.name = 'Test circle'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1

    annotations_response = @pdf_api.get_document_circle_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document circle annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_circle_annotation(file_name, annotation_id, annotation, opts)
    assert(response, 'Failed to replace circle annotation.')
  end

  # Square Annotations Tests

  def test_get_document_square_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_square_annotations(file_name, opts)
    assert(response, 'Failed to read document square annotations.')
  end

  def test_post_page_square_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = SquareAnnotation.new
    annotation.name = 'Test square'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'

    response = @pdf_api.post_page_square_annotations(file_name, 1, [annotation], opts)
    assert(response, 'Failed to add square annotations into page.')
  end

  def test_get_page_square_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_square_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page square annotations.')
  end

  def test_get_square_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_square_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document square annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_square_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page square annotations.')
  end

  def test_put_square_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = SquareAnnotation.new
    annotation.name = 'Test square'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1

    annotations_response = @pdf_api.get_document_square_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document square annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_square_annotation(file_name, annotation_id, annotation, opts)
    assert(response, 'Failed to replace square annotation.')
  end

  # Line Annotations Tests

  def test_get_document_line_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_line_annotations(file_name, opts)
    assert(response, 'Failed to read document line annotations.')
  end

  def test_post_page_line_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = LineAnnotation.new
    annotation.name = 'Test Line'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.starting = Point.new({ X: 10, Y: 10 })
    annotation.ending = Point.new({ X: 100, Y: 100 })

    response = @pdf_api.post_page_line_annotations(file_name, 1, [annotation], opts)
    assert(response, 'Failed to add line annotations into page.')
  end

  def test_get_page_line_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_line_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page line annotations.')
  end

  def test_get_line_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_line_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document line annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_line_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page line annotations.')
  end

  def test_put_line_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = LineAnnotation.new
    annotation.name = 'Test Line'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.starting = Point.new({ X: 10, Y: 10 })
    annotation.ending = Point.new({ X: 100, Y: 100 })

    annotations_response = @pdf_api.get_document_line_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document line annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_line_annotation(file_name, annotation_id, annotation, opts)
    assert(response, 'Failed to replace line annotation.')
  end

  # Movie Annotations Tests

  def test_get_document_movie_annotations
    file_name = 'PdfWithAnnotations1.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_movie_annotations(file_name, opts)
    assert(response, 'Failed to read document movie annotations.')
  end

  def test_post_page_movie_annotations
    file_name = 'PdfWithAnnotations1.pdf'
    upload_file(file_name)

    attachment_file = '4pages.pdf'
    upload_file(attachment_file)

    opts = {
      folder: @temp_folder
    }

    annotation = MovieAnnotation.new
    annotation.name = 'Test Movie Annotation'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.z_index = 1
    annotation.file_path = attachment_file
    annotation.modified = '02/02/2018 12:00:00.000 AM'

    response = @pdf_api.post_page_movie_annotations(file_name, 1, [annotation], opts)
    assert(response, 'Failed to add movie annotations into page.')
  end

  def test_get_page_movie_annotations
    file_name = 'PdfWithAnnotations1.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_movie_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page movie annotations.')
  end

  def test_get_movie_annotation
    file_name = 'PdfWithAnnotations1.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_movie_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document movie annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_movie_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page movie annotations.')
  end

  def test_put_movie_annotation
    file_name = 'PdfWithAnnotations1.pdf'
    upload_file(file_name)

    attachment_file = '4pages.pdf'
    upload_file(attachment_file)

    opts = {
      folder: @temp_folder
    }

    annotation = MovieAnnotation.new
    annotation.name = 'Test Movie Annotation'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.z_index = 1
    annotation.file_path = attachment_file
    annotation.modified = '02/02/2018 12:00:00.000 AM'

    annotations_response = @pdf_api.get_document_movie_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document movie annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_movie_annotation(file_name, annotation_id, annotation, opts)
    assert(response, 'Failed to replace movie annotation.')
  end

  # Free Text Annotations Tests

  def test_get_document_free_text_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_free_text_annotations(file_name, opts)
    assert(response, 'Failed to read document free text annotations.')
  end

  def test_post_page_free_text_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    text_style = TextStyle.new
    text_style.font_size = 12
    text_style.font = 'Arial'
    text_style.foreground_color = Color.new({ A: 0xFF, R: 0, G: 0xFF, B: 0 })
    text_style.background_color = Color.new({ A: 0xFF, R: 0xFF, G: 0, B: 0 })

    annotation = FreeTextAnnotation.new
    annotation.name = 'Test Free Text'
    annotation.text_style = text_style
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.intent = FreeTextIntent::FREE_TEXT_TYPE_WRITER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Text Box Subj'
    annotation.z_index = 1
    annotation.justification = Justification::CENTER
    annotation.title = 'Title'

    response = @pdf_api.post_page_free_text_annotations(file_name, 1, [annotation], opts)
    assert(response, 'Failed to add free text annotations into page.')
  end

  def test_get_page_free_text_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_free_text_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page free text annotations.')
  end

  def test_get_free_text_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_free_text_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document free text annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_free_text_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page free text annotations.')
  end

  def test_put_free_text_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    text_style = TextStyle.new
    text_style.font_size = 12
    text_style.font = 'Arial'
    text_style.foreground_color = Color.new({ A: 0xFF, R: 0, G: 0xFF, B: 0 })
    text_style.background_color = Color.new({ A: 0xFF, R: 0xFF, G: 0, B: 0 })

    annotation = FreeTextAnnotation.new
    annotation.name = 'Test Free Text'
    annotation.text_style = text_style
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.intent = FreeTextIntent::FREE_TEXT_TYPE_WRITER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Text Box Subj'
    annotation.z_index = 1
    annotation.justification = Justification::CENTER
    annotation.title = 'Title'

    annotations_response = @pdf_api.get_document_free_text_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document free text annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_free_text_annotation(file_name, annotation_id, annotation, opts)
    assert(response, 'Failed to replace free text annotation.')
  end

  # Header and Footer Tests

  def test_post_document_text_header
    name = '4pages.pdf'
    upload_file(name)

    text_state = TextState.new
    text_state.font_size = 14
    text_state.font = 'Arial Bold'
    text_state.foreground_color = Color.new({ A: 0xFF, R: 0, G: 0xFF, B: 0 })
    text_state.background_color = Color.new({ A: 0xFF, R: 0xFF, G: 0, B: 0 })
    text_state.font_style = FontStyles::BOLD

    header = TextHeader.new
    header.background = true
    header.left_margin = 1
    header.right_margin = 2
    header.top_margin = 20
    header.horizontal_alignment = HorizontalAlignment::CENTER
    header.opacity = 1
    header.rotate = Rotation::NONE
    header.rotate_angle = 0
    header.x_indent = 0
    header.y_indent = 0
    header.zoom = 1
    header.text_alignment = HorizontalAlignment::CENTER
    header.value = 'Header'
    header.text_state = text_state

    opts = {
      folder: @temp_folder,
      start_page_number: 2,
      end_page_number: 3
    }
    response = @pdf_api.post_document_text_header(name, header, opts)
    assert(response, 'Failed to add text header.')
  end

  def test_post_document_text_footer
    name = '4pages.pdf'
    upload_file(name)

    text_state = TextState.new
    text_state.font_size = 14
    text_state.font = 'Arial Bold'
    text_state.foreground_color = Color.new({ A: 0xFF, R: 0, G: 0xFF, B: 0 })
    text_state.background_color = Color.new({ A: 0xFF, R: 0xFF, G: 0, B: 0 })
    text_state.font_style = FontStyles::BOLD

    footer = TextFooter.new
    footer.background = true
    footer.left_margin = 1
    footer.right_margin = 2
    footer.bottom_margin = 20
    footer.horizontal_alignment = HorizontalAlignment::CENTER
    footer.opacity = 1
    footer.rotate = Rotation::NONE
    footer.rotate_angle = 0
    footer.x_indent = 0
    footer.y_indent = 0
    footer.zoom = 1
    footer.text_alignment = HorizontalAlignment::CENTER
    footer.value = 'Footer'
    footer.text_state = text_state

    opts = {
      folder: @temp_folder,
      start_page_number: 2,
      end_page_number: 3
    }
    response = @pdf_api.post_document_text_footer(name, footer, opts)
    assert(response, 'Failed to add text footer.')
  end

  def test_post_document_image_header
    name = '4pages.pdf'
    upload_file(name)

    image = 'Koala.jpg'
    upload_file(image)

    header = ImageHeader.new
    header.background = true
    header.left_margin = 1
    header.right_margin = 2
    header.top_margin = 20
    header.horizontal_alignment = HorizontalAlignment::CENTER
    header.opacity = 1
    header.rotate = Rotation::NONE
    header.rotate_angle = 0
    header.x_indent = 0
    header.y_indent = 0
    header.zoom = 0.1
    header.file_name = @temp_folder + '/' + image

    opts = {
      folder: @temp_folder,
      start_page_number: 2,
      end_page_number: 3
    }
    response = @pdf_api.post_document_image_header(name, header, opts)
    assert(response, 'Failed to add image header.')
  end

  def test_post_document_image_footer
    name = '4pages.pdf'
    upload_file(name)

    image = 'Koala.jpg'
    upload_file(image)

    footer = ImageFooter.new
    footer.background = true
    footer.left_margin = 1
    footer.right_margin = 2
    footer.bottom_margin = 20
    footer.horizontal_alignment = HorizontalAlignment::CENTER
    footer.opacity = 1
    footer.rotate = Rotation::NONE
    footer.rotate_angle = 0
    footer.x_indent = 0
    footer.y_indent = 0
    footer.zoom = 0.1
    footer.file_name = @temp_folder + '/' + image

    opts = {
      folder: @temp_folder,
      start_page_number: 2,
      end_page_number: 3
    }
    response = @pdf_api.post_document_image_footer(name, footer, opts)
    assert(response, 'Failed to add image footer.')
  end

  # Text Annotations Tests

  def test_get_document_text_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_text_annotations(file_name, opts)
    assert(response, 'Failed to read document text annotations.')
  end

  def test_post_page_text_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = TextAnnotation.new
    annotation.name = 'Test Free Text'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Text Box Subj'
    annotation.z_index = 1
    annotation.state = AnnotationState::UNDEFINED

    response = @pdf_api.post_page_text_annotations(file_name, 1, [annotation], opts)
    assert(response, 'Failed to add text annotations into page.')
  end

  def test_get_page_text_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_text_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page text annotations.')
  end

  def test_get_text_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_text_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document text annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_text_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page text annotations.')
  end

  def test_put_text_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = TextAnnotation.new
    annotation.name = 'Test Free Text'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Text Box Subj'
    annotation.z_index = 1
    annotation.state = AnnotationState::UNDEFINED

    annotations_response = @pdf_api.get_document_text_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document text annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_text_annotation(file_name, annotation_id, annotation, opts)
    assert(response, 'Failed to replace text annotation.')
  end

  # Highlight Annotations Tests

  def test_get_document_highlight_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_highlight_annotations(file_name, opts)
    assert(response, 'Failed to read document highlight annotations.')
  end

  def test_post_page_highlight_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = HighlightAnnotation.new
    annotation.name = 'Test highlight'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.quad_points = [
      Point.new({ X: 10, Y: 10 }),
      Point.new({ X: 20, Y: 10 }),
      Point.new({ X: 10, Y: 20 }),
      Point.new({ X: 10, Y: 10 })
    ]

    response = @pdf_api.post_page_highlight_annotations(file_name, 1, [annotation], opts)
    assert(response, 'Failed to add highlight annotations into page.')
  end

  def test_get_page_highlight_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_highlight_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page highlight annotations.')
  end

  def test_get_highlight_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_highlight_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document highlight annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_highlight_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page highlight annotations.')
  end

  def test_put_highlight_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = HighlightAnnotation.new
    annotation.name = 'Test highlight'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.quad_points = [
      Point.new({ X: 10, Y: 10 }),
      Point.new({ X: 20, Y: 10 }),
      Point.new({ X: 10, Y: 20 }),
      Point.new({ X: 10, Y: 10 })
    ]

    annotations_response = @pdf_api.get_document_highlight_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document highlight annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_highlight_annotation(file_name, annotation_id, annotation, opts)
    assert(response, 'Failed to replace highlight annotation.')
  end

  # Underline Annotations Tests

  def test_get_document_underline_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_underline_annotations(file_name, opts)
    assert(response, 'Failed to read document underline annotations.')
  end

  def test_post_page_underline_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = UnderlineAnnotation.new
    annotation.name = 'Test underline'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.quad_points = [
      Point.new({ X: 10, Y: 10 }),
      Point.new({ X: 20, Y: 10 }),
      Point.new({ X: 10, Y: 20 }),
      Point.new({ X: 10, Y: 10 })
    ]
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    response = @pdf_api.post_page_underline_annotations(file_name, 1, [annotation], opts)
    assert(response, 'Failed to add underline annotations into page.')
  end

  def test_get_page_underline_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_underline_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page underline annotations.')
  end

  def test_get_underline_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_underline_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document underline annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_underline_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page underline annotations.')
  end

  def test_put_underline_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = UnderlineAnnotation.new
    annotation.name = 'Test underline'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.quad_points = [
      Point.new({ X: 10, Y: 10 }),
      Point.new({ X: 20, Y: 10 }),
      Point.new({ X: 10, Y: 20 }),
      Point.new({ X: 10, Y: 10 })
    ]
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    annotations_response = @pdf_api.get_document_underline_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document underline annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_underline_annotation(file_name, annotation_id, annotation, opts)
    assert(response, 'Failed to replace underline annotation.')
  end

  # Redaction Annotations Tests

  def test_get_document_redaction_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_redaction_annotations(file_name, opts)
    assert(response, 'Failed to read document redaction annotations.')
  end

  def test_post_page_redaction_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = RedactionAnnotation.new
    annotation.name = 'Test Redaction Annotation'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.z_index = 1
    annotation.quad_point = [
      Point.new({ X: 11, Y: 42 }),
      Point.new({ X: 33, Y: 44 })
    ]
    annotation.modified = '02/02/2018 12:00:00.000 AM'

    response = @pdf_api.post_page_redaction_annotations(file_name, 1, [annotation], opts)
    assert(response, 'Failed to add redaction annotations into page.')
  end

  def test_get_page_redaction_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_redaction_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page redaction annotations.')
  end

  def test_get_redaction_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_redaction_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document redaction annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_redaction_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page redaction annotations.')
  end

  def test_put_redaction_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = RedactionAnnotation.new
    annotation.name = 'Test Redaction Annotation Updated'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.z_index = 1
    annotation.quad_point = [
      Point.new({ X: 12, Y: 43 }),
      Point.new({ X: 33, Y: 44 })
    ]
    annotation.modified = '02/02/2018 12:00:00.000 AM'

    annotations_response = @pdf_api.get_document_redaction_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document redaction annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_redaction_annotation(file_name, annotation_id, annotation, opts)
    assert(response, 'Failed to replace redaction annotation.')
  end

  # Squiggly Annotations Tests

  def test_get_document_squiggly_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_squiggly_annotations(file_name, opts)
    assert(response, 'Failed to read document squiggly annotations.')
  end

  def test_post_page_squiggly_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = SquigglyAnnotation.new
    annotation.name = 'Test squiggly'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.quad_points = [
      Point.new({ X: 10, Y: 10 }),
      Point.new({ X: 20, Y: 10 }),
      Point.new({ X: 10, Y: 20 }),
      Point.new({ X: 10, Y: 10 })
    ]
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    response = @pdf_api.post_page_squiggly_annotations(file_name, 1, [annotation], opts)
    assert(response, 'Failed to add squiggly annotations into page.')
  end

  def test_get_page_squiggly_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_squiggly_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page squiggly annotations.')
  end

  def test_get_squiggly_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_squiggly_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document squiggly annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_squiggly_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page squiggly annotations.')
  end

  def test_put_squiggly_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = SquigglyAnnotation.new
    annotation.name = 'Test squiggly'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.quad_points = [
      Point.new({ X: 10, Y: 10 }),
      Point.new({ X: 20, Y: 10 }),
      Point.new({ X: 10, Y: 20 }),
      Point.new({ X: 10, Y: 10 })
    ]
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    annotations_response = @pdf_api.get_document_squiggly_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document squiggly annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_squiggly_annotation(file_name, annotation_id, annotation, opts)
    assert(response, 'Failed to replace squiggly annotation.')
  end

  # StrikeOut Annotations Tests

  def test_get_document_strike_out_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_strike_out_annotations(file_name, opts)
    assert(response, 'Failed to read document strikeout annotations.')
  end

  def test_post_page_strike_out_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = StrikeOutAnnotation.new
    annotation.name = 'Test strike_out'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.quad_points = [
      Point.new({ X: 10, Y: 10 }),
      Point.new({ X: 20, Y: 10 }),
      Point.new({ X: 10, Y: 20 }),
      Point.new({ X: 10, Y: 10 })
    ]
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    response = @pdf_api.post_page_strike_out_annotations(file_name, 1, [annotation], opts)
    assert(response, 'Failed to add strikeout annotations into page.')
  end

  def test_get_page_strike_out_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_strike_out_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page strikeout annotations.')
  end

  def test_get_strike_out_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_strike_out_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document strikeout annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_strike_out_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page strikeout annotations.')
  end

  def test_put_strike_out_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = StrikeOutAnnotation.new
    annotation.name = 'Test strike_out'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.quad_points = [
      Point.new({ X: 10, Y: 10 }),
      Point.new({ X: 20, Y: 10 }),
      Point.new({ X: 10, Y: 20 }),
      Point.new({ X: 10, Y: 10 })
    ]
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    annotations_response = @pdf_api.get_document_strike_out_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document strikeout annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_strike_out_annotation(file_name, annotation_id, annotation, opts)
    assert(response, 'Failed to replace strikeout annotation.')
  end

  # Caret Annotations Tests

  def test_get_document_caret_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_caret_annotations(file_name, opts)
    assert(response, 'Failed to read document caret annotations.')
  end

  def test_post_page_caret_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = CaretAnnotation.new
    annotation.name = 'Test caret'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.frame = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    response = @pdf_api.post_page_caret_annotations(file_name, 1, [annotation], opts)
    assert(response, 'Failed to add caret annotations into page.')
  end

  def test_get_page_caret_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_caret_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page caret annotations.')
  end

  def test_get_caret_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_caret_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document caret annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_caret_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page caret annotations.')
  end

  def test_put_caret_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = CaretAnnotation.new
    annotation.name = 'Test caret'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.frame = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    annotations_response = @pdf_api.get_document_caret_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document caret annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_caret_annotation(file_name, annotation_id, annotation, opts)
    assert(response, 'Failed to replace caret annotation.')
  end

  # Ink Annotations Tests

  def test_get_document_ink_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_ink_annotations(file_name, opts)
    assert(response, 'Failed to read document ink annotations.')
  end

  def test_post_page_ink_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = InkAnnotation.new
    annotation.name = 'Test ink'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.ink_list = [
      [
        Point.new({ X: 10, Y: 40 }),
        Point.new({ X: 30, Y: 40 })
      ],
      [
        Point.new({ X: 10, Y: 20 }),
        Point.new({ X: 20, Y: 20 }),
        Point.new({ X: 30, Y: 20 })
      ]
    ]
    annotation.cap_style = CapStyle::ROUNDED
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    response = @pdf_api.post_page_ink_annotations(file_name, 1, [annotation], opts)
    assert(response, 'Failed to add ink annotations into page.')
  end

  def test_get_page_ink_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_ink_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page ink annotations.')
  end

  def test_get_ink_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_ink_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document ink annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_ink_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page ink annotations.')
  end

  def test_put_ink_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = InkAnnotation.new
    annotation.name = 'Test ink'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.ink_list = [
      [
        Point.new({ X: 10, Y: 40 }),
        Point.new({ X: 30, Y: 40 })
      ],
      [
        Point.new({ X: 10, Y: 20 }),
        Point.new({ X: 20, Y: 20 }),
        Point.new({ X: 30, Y: 20 })
      ]
    ]
    annotation.cap_style = CapStyle::ROUNDED
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    annotations_response = @pdf_api.get_document_ink_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document ink annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_ink_annotation(file_name, annotation_id, annotation, opts)
    assert(response, 'Failed to replace ink annotation.')
  end

  # Popup Annotations Tests

  def test_get_document_popup_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_popup_annotations(file_name, opts)
    assert(response, 'Failed to read document popup annotations.')
  end

  def test_get_document_popup_annotations_by_parent
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    parent_id = 'GI5TAOZRGU3CYNZSGEWDCNZWFQ3TGOI'
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_popup_annotations_by_parent(file_name, parent_id, opts)
    assert(response, 'Failed to read document popup annotations.')
  end

  def test_post_popup_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    parent_id = 'GI5TCMR3GE2TQLBSGM3CYMJYGUWDENRV'
    opts = {
      folder: @temp_folder
    }

    annotation = PopupAnnotation.new
    annotation.name = 'Test popup'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.z_index = 1
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    response = @pdf_api.post_popup_annotation(file_name, parent_id, annotation, opts)
    assert(response, 'Failed to add popup annotations into page.')
  end

  def test_get_page_popup_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_popup_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page popup annotations.')
  end

  def test_get_popup_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_document_popup_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document popup annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_popup_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page popup annotations.')
  end

  def test_put_popup_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    annotation = PopupAnnotation.new
    annotation.name = 'Test popup'
    annotation.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 200, URY: 200 })
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.z_index = 1
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    annotations_response = @pdf_api.get_document_popup_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document popup annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_popup_annotation(file_name, annotation_id, annotation, opts)
    assert(response, 'Failed to replace popup annotation.')
  end

  # Append Tests

  def test_post_append_document_using_query_params
    file_name = 'PdfWithImages2.pdf'
    append_file_name = '4pages.pdf'
    append_file = @temp_folder + '/' + append_file_name

    upload_file(file_name)
    upload_file(append_file_name)

    opts = {
      startPage: 2,
      endPage: 4,
      folder: @temp_folder
    }

    response = @pdf_api.post_append_document(file_name, append_file, opts)
    assert(response, 'Failed to append document to existing one.')
  end

  # Attachments Tests

  def test_get_document_attachment_by_index
    file_name = 'PdfWithEmbeddedFiles.pdf'
    upload_file(file_name)

    attachment_index = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_attachment_by_index(file_name, attachment_index, opts)
    assert(response, 'Failed to read document attachment info by its index')
  end

  def test_get_document_attachments
    file_name = 'PdfWithEmbeddedFiles.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_attachments(file_name, opts)
    assert(response, 'Failed to read document attachments info.')
  end

  def test_get_download_document_attachment_by_index
    file_name = 'PdfWithEmbeddedFiles.pdf'
    upload_file(file_name)

    attachment_index = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_download_document_attachment_by_index(file_name, attachment_index, opts)
    assert(response, 'Failed to download document attachment content by its index.')
  end

  # Encrypt Decrypt Tests

  def test_put_encrypt_document
    file_name = '4pages.pdf'
    upload_file(file_name)

    out_path = @temp_folder + '/' + file_name
    user_password = 'user $^Password!&'
    owner_password = 'owner\//? $12^Password!&'

    opts = {
      file: ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }

    response = @pdf_api.put_encrypt_document(out_path, Base64.encode64(user_password),
                                             Base64.encode64(owner_password), CryptoAlgorithm::AE_SX128, opts)
    assert(response, 'Failed to encrypt document.')
  end

  def test_post_encrypt_document_in_storage
    file_name = '4pages.pdf'
    upload_file(file_name)

    user_password = 'user $^Password!&'
    owner_password = 'owner\//? $12^Password!&'

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.post_encrypt_document_in_storage(file_name, Base64.encode64(user_password),
                                                         Base64.encode64(owner_password), CryptoAlgorithm::AE_SX128, opts)
    assert(response, 'Failed to encrypt document.')
  end

  def test_put_decrypt_document
    file_name = '4pagesEncrypted.pdf'
    upload_file(file_name)

    out_path = @temp_folder + '/' + file_name
    user_password = 'user $^Password!&'

    opts = {
      file: ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }

    response = @pdf_api.put_decrypt_document(out_path, Base64.encode64(user_password), opts)
    assert(response, 'Failed to decrypt document.')
  end

  def test_post_decrypt_document_in_storage
    file_name = '4pagesEncrypted.pdf'
    upload_file(file_name)

    user_password = 'user $^Password!&'

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.post_decrypt_document_in_storage(file_name, Base64.encode64(user_password), opts)
    assert(response, 'Failed to decrypt document.')
  end

  def test_put_change_password_document
    file_name = '4pagesEncrypted.pdf'
    upload_file(file_name)

    out_path = @temp_folder + '/' + file_name

    owner_password = 'owner\//? $12^Password!&'
    new_user_password = 'user new\//? $12^Password!&'
    new_owner_password = 'owner new\//? $12^Password!&'

    opts = {
      file: ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }

    response = @pdf_api.put_change_password_document(out_path, Base64.encode64(owner_password),
                                                     Base64.encode64(new_user_password), Base64.encode64(new_owner_password), opts)
    assert(response, 'Failed to change document password.')
  end

  def test_post_change_password_document_in_storage
    file_name = '4pagesEncrypted.pdf'
    upload_file(file_name)

    owner_password = 'owner\//? $12^Password!&'
    new_user_password = 'user new\//? $12^Password!&'
    new_owner_password = 'owner new\//? $12^Password!&'

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.post_change_password_document_in_storage(file_name, Base64.encode64(owner_password),
                                                                 Base64.encode64(new_user_password), Base64.encode64(new_owner_password), opts)
    assert(response, 'Failed to change document password.')
  end

  # Convert Tests

  def test_get_pdf_in_storage_to_doc
    file_name = '4pages.pdf'
    upload_file(file_name)
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.get_pdf_in_storage_to_doc(file_name, opts)
    assert(response, 'Failed to convert PDF to DOC.')
  end

  def test_put_pdf_in_storage_to_doc
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.doc'
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_doc(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to DOC.')
  end

  def test_put_pdf_in_request_to_doc
    file_name = '4pages.pdf'
    res_file = 'result.doc'
    opts = {
      file: ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
      # :file => @test_data_folder + file_name
    }
    response = @pdf_api.put_pdf_in_request_to_tiff(@temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to DOC.')
  end

  def test_get_pdf_in_storage_to_pdf_a
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_pdf_in_storage_to_pdf_a(file_name, PdfAType::PDFA1_A, opts)
    assert(response, 'Failed to convert PDF to PDFA.')
  end

  def test_put_pdf_in_storage_to_pdf_a
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.pdf'

    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_pdf_a(file_name, @temp_folder + '/' + res_file, PdfAType::PDFA1_A, opts)
    assert(response, 'Failed to convert PDF to PDFA.')
  end

  def test_put_pdf_in_request_to_pdf_a
    file_name = '4pages.pdf'

    res_file = 'result.pdf'

    opts = {
      file: ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_pdf_a(@temp_folder + '/' + res_file, PdfAType::PDFA1_A, opts)
    assert(response, 'Failed to convert PDF to PDFA.')
  end

  def test_get_pdf_in_storage_to_tiff
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_pdf_in_storage_to_tiff(file_name, opts)
    assert(response, 'Failed to convert PDF to Tiff.')
  end

  def test_put_pdf_in_storage_to_tiff
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.tiff'

    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_tiff(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to Tiff.')
  end

  def test_put_pdf_in_request_to_tiff
    file_name = '4pages.pdf'

    res_file = 'result.pdf'

    opts = {
      file: ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_tiff(@temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to Tiff.')
  end

  def test_get_pdf_in_storage_to_svg
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_pdf_in_storage_to_svg(file_name, opts)
    assert(response, 'Failed to convert PDF to SVG.')
  end

  def test_put_pdf_in_storage_to_svg
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.svg'

    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_svg(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to SVG.')
  end

  def test_put_pdf_in_request_to_svg
    file_name = '4pages.pdf'

    res_file = 'result.svg'

    opts = {
      file: ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_svg(@temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to SVG.')
  end

  def test_get_pdf_in_storage_to_xps
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_pdf_in_storage_to_xps(file_name, opts)
    assert(response, 'Failed to convert PDF to XPS.')
  end

  def test_put_pdf_in_storage_to_xps
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.xps'

    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_xps(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to XPS.')
  end

  def test_put_pdf_in_request_to_xps
    file_name = '4pages.pdf'

    res_file = 'result.xps'

    opts = {
      file: ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_xps(@temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to XPS.')
  end

  def test_get_pdf_in_storage_to_xls
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_pdf_in_storage_to_xls(file_name, opts)
    assert(response, 'Failed to convert PDF to XLS.')
  end

  def test_put_pdf_in_storage_to_xls
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.xls'

    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_xls(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to XLS.')
  end

  def test_put_pdf_in_request_to_xls
    file_name = '4pages.pdf'

    res_file = 'result.xls'

    opts = {
      file: ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_xls(@temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to XLS.')
  end

  def test_get_pdf_in_storage_to_html
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.get_pdf_in_storage_to_html(file_name, opts)
    assert(response, 'Failed to convert PDF to HTML.')
  end

  def test_put_pdf_in_storage_to_html
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result_4pages.html'

    opts = {
      folder: @temp_folder,
      output_format: OutputFormat::FOLDER
    }
    response = @pdf_api.put_pdf_in_storage_to_html(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to HTML.')
  end

  def test_put_pdf_in_request_to_html
    file_name = '4pages.pdf'

    res_file = 'result.zip'

    opts = {
      file: ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_html(@temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to HTML.')
  end

  def test_get_pdf_in_storage_to_epub
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.get_pdf_in_storage_to_epub(file_name, opts)
    assert(response, 'Failed to convert PDF to EPUB.')
  end

  def test_put_pdf_in_storage_to_epub
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.epub'

    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_epub(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to EPUB.')
  end

  def test_put_pdf_in_request_to_epub
    file_name = '4pages.pdf'

    res_file = 'result.epub'

    opts = {
      file: ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_epub(@temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to EPUB.')
  end

  def test_get_pdf_in_storage_to_pptx
    file_name = '4pages.pdf'
    upload_file(file_name)
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.get_pdf_in_storage_to_pptx(file_name, opts)
    assert(response, 'Failed to convert PDF to PPTX.')
  end

  def test_get_pdf_in_storage_to_pptx_with_password
    file_name = '4pagesEncrypted.pdf'
    upload_file(file_name)
    opts = {
      folder: @temp_folder,
      password: Base64.encode64('user $^Password!&')
    }
    response = @pdf_api.get_pdf_in_storage_to_pptx(file_name, opts)
    assert(response, 'Failed to convert PDF to PPTX.')
  end

  def test_put_pdf_in_storage_to_pptx
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.pptx'
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_pptx(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to PPTX.')
  end

  def test_put_pdf_in_storage_to_pptx_with_password
    file_name = '4pagesEncrypted.pdf'
    upload_file(file_name)
    res_file = 'result.pptx'
    opts = {
      folder: @temp_folder,
      password: Base64.encode64('user $^Password!&')
    }
    response = @pdf_api.put_pdf_in_storage_to_pptx(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to PPTX.')
  end

  def test_put_pdf_in_request_to_pptx
    file_name = '4pages.pdf'
    res_file = 'result.pptx'
    opts = {
      file: ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_pptx(@temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to PPTX.')
  end

  def test_put_pdf_in_request_to_pptx_with_password
    file_name = '4pagesEncrypted.pdf'
    res_file = 'result.pptx'
    opts = {
      file: ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) },
      password: Base64.encode64('user $^Password!&')
    }
    response = @pdf_api.put_pdf_in_request_to_pptx(@temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to PPTX.')
  end

  def test_get_pdf_in_storage_to_te_x
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_pdf_in_storage_to_te_x(file_name, opts)
    assert(response, 'Failed to convert PDF to Tex.')
  end

  def test_put_pdf_in_storage_to_te_x
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.tex'
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_te_x(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to TeX.')
  end

  def test_put_pdf_in_request_to_te_x
    file_name = '4pages.pdf'
    res_file = 'result.tex'
    opts = {
      file: ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_te_x(@temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to TeX.')
  end

  def test_get_pdf_in_storage_to_mobi_xml
    file_name = '4pages.pdf'
    upload_file(file_name)
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.get_pdf_in_storage_to_mobi_xml(file_name, opts)
    assert(response, 'Failed to convert PDF to Moby Xml.')
  end

  def test_put_pdf_in_storage_to_mobi_xml
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.mobi'
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_mobi_xml(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to Moby Xml.')
  end

  def test_put_pdf_in_request_to_mobi_xml
    file_name = '4pages.pdf'
    res_file = 'result.mobi'
    opts = {
      file: ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_mobi_xml(@temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to Moby Xml.')
  end

  def test_get_xfa_pdf_in_storage_to_acro_form
    file_name = 'PdfWithXfaForm.pdf'
    upload_file(file_name)
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.get_xfa_pdf_in_storage_to_acro_form(file_name, opts)
    assert(response, 'Failed to convert Xfa PDF to Acro form.')
  end

  def test_put_xfa_pdf_in_storage_to_acro_form
    file_name = 'PdfWithXfaForm.pdf'
    upload_file(file_name)
    res_file = 'result.pdf'
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.put_xfa_pdf_in_storage_to_acro_form(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert Xfa PDF to Acro form.')
  end

  def test_put_xfa_pdf_in_request_to_acro_form
    file_name = 'PdfWithXfaForm.pdf'

    res_file = 'result.pdf'

    opts = {
      file: ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_xfa_pdf_in_request_to_acro_form(@temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert Xfa PDF to Acro form.')
  end

  def test_get_pdf_in_storage_to_xml
    file_name = '4pages.pdf'
    upload_file(file_name)
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.get_pdf_in_storage_to_xml(file_name, opts)
    assert(response, 'Failed to convert PDF to Xml.')
  end

  def test_put_pdf_in_storage_to_xml
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.xml'
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_xml(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to Xml.')
  end

  def test_put_pdf_in_request_to_xml
    file_name = '4pages.pdf'
    res_file = 'result.xml'
    opts = {
      file: ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_xml(@temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to Xml.')
  end

  def test_get_pdf_in_storage_to_xlsx
    file_name = '4pages.pdf'
    upload_file(file_name)
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.get_pdf_in_storage_to_xlsx(file_name, opts)
    assert(response, 'Failed to convert PDF to XLS.')
  end

  def test_put_pdf_in_storage_to_xlsx
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.xlsx'
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_xlsx(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to XLS.')
  end

  def test_put_pdf_in_request_to_xlsx
    file_name = '4pages.pdf'
    res_file = 'result.xlsx'
    opts = {
      file: ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_xlsx(@temp_folder + '/' + res_file, opts)
    assert(response, 'Failed to convert PDF to XLS.')
  end

  def test_post_pdf_to_xlsx
    file_name = '4pages.pdf'
    opts = {
      file: ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.post_pdf_to_xlsx(opts)
    assert(response, 'Failed to convert PDF to XLS.')
  end

  def test_get_pdf_in_storage_to_text
    file_name = '4pages.pdf'
    upload_file(file_name)
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.get_pdf_in_storage_to_text(file_name, opts)
    assert(response, 'Failed to convert PDF to Text.')
  end

  # Convert to PDF Tests

  def test_get_epub_in_storage_to_pdf
    file_name = '4pages.epub'
    upload_file(file_name)

    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_epub_in_storage_to_pdf(src_path)
    assert(response, 'Failed to convert epub to pdf.')
  end

  def test_put_epub_in_storage_to_pdf
    file_name = '4pages.epub'
    upload_file(file_name)
    result_name = 'fromEpub.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
      dst_folder: @temp_folder
    }
    response = @pdf_api.put_epub_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert epub to pdf.')
  end

  def test_get_web_in_storage_to_pdf
    url = 'http://google.com'

    response = @pdf_api.get_web_in_storage_to_pdf(url)
    assert(response, 'Failed to convert web page to pdf.')
  end

  def test_put_web_in_storage_to_pdf
    url = 'http://google.com'
    result_name = 'fromWeb.pdf'

    opts = {
      dst_folder: @temp_folder
    }
    response = @pdf_api.put_web_in_storage_to_pdf(result_name, url, opts)
    assert(response, 'Failed to convert web page to pdf.')
  end

  def test_get_te_x_in_storage_to_pdf
    file_name = 'sample.tex'
    upload_file(file_name)

    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_te_x_in_storage_to_pdf(src_path)
    assert(response, 'Failed to convert TeX to pdf.')
  end

  def test_put_te_x_in_storage_to_pdf
    file_name = 'sample.tex'
    upload_file(file_name)
    result_name = 'fromTex.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
      dst_folder: @temp_folder
    }
    response = @pdf_api.put_te_x_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert TeX to pdf.')
  end

  def test_get_mht_in_storage_to_pdf
    file_name = 'MhtExample.mht'
    upload_file(file_name)

    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_mht_in_storage_to_pdf(src_path)
    assert(response, 'Failed to convert mht to pdf.')
  end

  def test_put_mht_in_storage_to_pdf
    file_name = 'MhtExample.mht'
    upload_file(file_name)
    result_name = 'fromMht.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
      dst_folder: @temp_folder
    }
    response = @pdf_api.put_mht_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert mht to pdf.')
  end

  def test_get_html_in_storage_to_pdf
    file_name = 'HtmlWithImage.zip'
    upload_file(file_name)

    html_file_name = 'HtmlWithImage.html'
    opts = {
      height: 650,
      width: 250,
      html_file_name: html_file_name
    }
    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_html_in_storage_to_pdf(src_path, opts)
    assert(response, 'Failed to convert html to pdf.')
  end

  def test_put_html_in_storage_to_pdf
    file_name = 'HtmlWithImage.zip'
    upload_file(file_name)
    html_file_name = 'HtmlWithImage.html'

    result_name = 'fromMht.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
      dst_folder: @temp_folder,
      height: 650,
      width: 250,
      html_file_name: html_file_name
    }
    response = @pdf_api.put_html_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert html to pdf.')
  end

  def test_get_xsl_fo_in_storage_to_pdf
    file_name = 'XslfoExample.xslfo'
    upload_file(file_name)

    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_xsl_fo_in_storage_to_pdf(src_path)
    assert(response, 'Failed to convert xslfo to pdf.')
  end

  def test_put_xsl_fo_in_storage_to_pdf
    file_name = 'XslfoExample.xslfo'
    upload_file(file_name)
    result_name = 'fromXslFo.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
      dst_folder: @temp_folder
    }
    response = @pdf_api.put_xsl_fo_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert xslfo to pdf.')
  end

  def test_get_xps_in_storage_to_pdf
    file_name = 'Simple.xps'
    upload_file(file_name)

    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_xps_in_storage_to_pdf(src_path)
    assert(response, 'Failed to convert xps to pdf.')
  end

  def test_put_xps_in_storage_to_pdf
    file_name = 'Simple.xps'
    upload_file(file_name)
    result_name = 'fromXps.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
      dst_folder: @temp_folder
    }
    response = @pdf_api.put_xps_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert xps to pdf.')
  end

  def test_get_svg_in_storage_to_pdf
    file_name = 'Simple.svg'
    upload_file(file_name)

    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_svg_in_storage_to_pdf(src_path)
    assert(response, 'Failed to convert svg to pdf.')
  end

  def test_put_svg_in_storage_to_pdf
    file_name = 'Simple.svg'
    upload_file(file_name)
    result_name = 'fromSvg.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
      dst_folder: @temp_folder
    }
    response = @pdf_api.put_svg_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert svg to pdf.')
  end

  def test_get_pcl_in_storage_to_pdf
    file_name = 'template.pcl'
    upload_file(file_name)

    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_pcl_in_storage_to_pdf(src_path)
    assert(response, 'Failed to convert pcl to pdf.')
  end

  def test_put_pcl_in_storage_to_pdf
    file_name = 'template.pcl'
    upload_file(file_name)
    result_name = 'fromPcl.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
      dst_folder: @temp_folder
    }
    response = @pdf_api.put_pcl_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert pcl to pdf.')
  end

  def test_get_xml_in_storage_to_pdf
    file_name = 'template.xml'
    upload_file(file_name)

    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_xml_in_storage_to_pdf(src_path)
    assert(response, 'Failed to convert xml to pdf.')
  end

  def test_put_xml_in_storage_to_pdf
    file_name = 'template.xml'
    upload_file(file_name)
    result_name = 'fromXml.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
      dst_folder: @temp_folder
    }
    response = @pdf_api.put_xml_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert xml to pdf.')
  end

  def test_get_ps_in_storage_to_pdf
    file_name = 'Typography.PS'
    upload_file(file_name)

    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_ps_in_storage_to_pdf(src_path)
    assert(response, 'Failed to convert ps to pdf.')
  end

  def test_put_ps_in_storage_to_pdf
    file_name = 'Typography.PS'
    upload_file(file_name)
    result_name = 'fromPs.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
      dst_folder: @temp_folder
    }
    response = @pdf_api.put_ps_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert ps to pdf.')
  end

  def test_put_image_in_storage_to_pdf
    data_file_1 = '33539.jpg'
    upload_file(data_file_1)

    data_file_2 = '44781.jpg'
    upload_file(data_file_2)

    result_name = 'result.pdf'

    image_template_1 = ImageTemplate.new
    image_template_1.image_path = @temp_folder + '/' + data_file_1
    image_template_1.image_src_type = ImageSrcType::COMMON

    image_template_2 = ImageTemplate.new
    image_template_2.image_path = @temp_folder + '/' + data_file_2
    image_template_2.image_src_type = ImageSrcType::COMMON

    image_templates_request = ImageTemplatesRequest.new
    image_templates_request.is_ocr = true
    image_templates_request.ocr_langs = 'eng'
    image_templates_request.images_list = [image_template_1, image_template_2]

    opts = {
      dst_folder: @temp_folder
    }

    response = @pdf_api.put_image_in_storage_to_pdf(result_name, image_templates_request, opts)
    assert(response, 'Failed to convert images to pdf.')
  end

  def test_get_markdown_in_storage_to_pdf
    file_name = 'mixed.md'
    upload_file(file_name)

    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_markdown_in_storage_to_pdf(src_path)
    assert(response, 'Failed to convert markdown to pdf.')
  end

  def test_put_markdow_in_storage_to_pdf
    file_name = 'mixed.md'
    upload_file(file_name)
    result_name = 'fromMd.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
      dst_folder: @temp_folder
    }
    response = @pdf_api.put_markdown_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert markdown to pdf.')
  end

  def test_get_pdf_a_in_storage_to_pdf
    file_name = '4pagesPdfA.pdf'
    upload_file(file_name)

    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_pdf_a_in_storage_to_pdf(src_path)
    assert(response, 'Failed to convert pdfa to pdf.')
  end

  def test_put_pdf_a_in_storage_to_pdf
    file_name = '4pagesPdfA.pdf'
    upload_file(file_name)
    result_name = 'fromPdfA.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
      dst_folder: @temp_folder
    }
    response = @pdf_api.put_pdf_a_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert pdfa to pdf.')
  end

  # Document Tests

  def test_get_document
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document(file_name, opts)
    assert(response, 'Failed to read common document info.')
  end

  def test_post_optimize_document
    file_name = '4pages.pdf'
    upload_file(file_name)

    optimize_options = OptimizeOptions.new
    optimize_options.allow_reuse_page_content = false
    optimize_options.compress_images = true
    optimize_options.image_quality = 100
    optimize_options.link_duplcate_streams = true
    optimize_options.remove_unused_objects = true
    optimize_options.remove_unused_streams = true
    optimize_options.unembed_fonts = true

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.post_optimize_document(file_name, optimize_options, opts)
    assert(response, 'Failed to optimize document.')
  end

  def test_post_optimize_document_with_password
    file_name = '4pagesEncrypted.pdf'
    upload_file(file_name)
    optimize_options = OptimizeOptions.new
    optimize_options.password = Base64.encode64('user $^Password!&')
    optimize_options.allow_reuse_page_content = false
    optimize_options.compress_images = true
    optimize_options.image_quality = 100
    optimize_options.link_duplcate_streams = true
    optimize_options.remove_unused_objects = true
    optimize_options.remove_unused_streams = true
    optimize_options.unembed_fonts = true
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.post_optimize_document(file_name, optimize_options, opts)
    assert(response, 'Failed to optimize document.')
  end

  def test_post_split_document
    file_name = '4pages.pdf'
    upload_file(file_name)
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.post_split_document(file_name, opts)
    assert(response, 'Failed to split document to parts.')
  end

  def test_post_split_range_pdf_document
    file_name = '4pages.pdf'
    upload_file(file_name)
    pageRange1 = PageRange.new
    pageRange1.to = 2
    pageRange2 = PageRange.new
    pageRange2.from = 3
    pageRange3 = PageRange.new
    pageRange3.from = 2
    pageRange3.to = 3
    range_options = SplitRangePdfOptions.new
    range_options.page_ranges = [pageRange1, pageRange2, pageRange3]
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.post_split_range_pdf_document(file_name, range_options, opts)
    assert(response, 'Failed to split document to ranges.')
  end

  def test_put_create_empty_document
    file_name = 'empty.pdf'

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_create_document(file_name, opts)
    assert(response, 'Failed to create new document')
  end

  def test_post_create_document
    file_name = 'empty_post.pdf'

    opts = {
      folder: @temp_folder
    }

    prop = DocumentProperty.new
    prop.name = 'prop1'
    prop.value = 'val1'

    props = DocumentProperties.new
    props.list = [prop]

    display_props = DisplayProperties.new
    display_props.center_window = true
    display_props.hide_menu_bar = true

    page_config = DefaultPageConfig.new
    page_config.height = 100
    page_config.width = 100

    config = DocumentConfig.new
    config.document_properties = props
    config.display_properties = display_props
    config.default_page_config = page_config

    response = @pdf_api.post_create_document(file_name, config, opts)
    assert(response, 'Failed to create new document')
  end

  def test_get_document_display_properties
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_display_properties(file_name, opts)
    assert(response, 'Failed to read document display properties.')
  end

  def test_put_document_display_properties
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    properties = DisplayProperties.new
    properties.center_window = true
    properties.direction = Direction::L2_R
    properties.display_doc_title = true
    properties.hide_menu_bar = true
    properties.hide_tool_bar = true
    properties.hide_window_ui = true
    properties.non_full_screen_page_mode = PageMode::USE_NONE
    properties.page_layout = PageLayout::TWO_PAGE_LEFT
    properties.page_mode = PageMode::USE_OC

    response = @pdf_api.put_document_display_properties(file_name, properties, opts)
    assert(response, 'Failed to update document display properties.')
  end

  def test_post_organize_document
    file_name = '4pages.pdf'
    upload_file(file_name)
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.post_organize_document(file_name, '1,4-2', @temp_folder + '/' + file_name, opts)
    assert(response, 'Failed to organize document.')
  end

  def test_post_organize_documents
    file_name1 = '4pages.pdf'
    upload_file(file_name1)
    file_name2 = 'marketing.pdf'
    upload_file(file_name2)
    data1 = OrganizeDocumentData.new
    data1.path = @temp_folder + '/' + file_name1
    data1.pages = '4-2'
    data2 = OrganizeDocumentData.new
    data2.path = @temp_folder + '/' + file_name2
    data2.pages = '2'
    data3 = OrganizeDocumentData.new
    data3.path = @temp_folder + '/' + file_name1
    data3.pages = '3,1'
    request = OrganizeDocumentRequest.new
    request.list = [data1, data2, data3]
    response = @pdf_api.post_organize_documents(request, @temp_folder + '/OrganizeMany.pdf')
    assert(response, 'Failed to organize documents.')
  end

  # Fields Tests

  def test_get_field
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }
    field_name = 'textField'

    response = @pdf_api.get_field(file_name, field_name, opts)
    assert(response, 'Failed to get document field by name.')
  end

  def test_get_fields
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_fields(file_name, opts)
    assert(response, 'Failed to get document fields.')
  end

  def test_post_create_field
    file_name = 'Hello_world.pdf'
    upload_file(file_name)

    rect = Rectangle.new
    rect.llx = 50
    rect.lly = 200
    rect.urx = 200
    rect.ury = 400

    field = Field.new
    field.name = 'checkboxfield'
    field.values = ['1']
    field.type = 'Boolean'
    field.rect = rect

    page_number = 1

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.post_create_field(file_name, page_number, field, opts)
    assert(response, 'Failed to create field.')
  end

  def test_put_update_field
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    field_name = 'textField'

    field = Field.new
    field.name = field_name
    field.values = ['Text field updated value.']
    field.type = FieldType::TEXT

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_update_field(file_name, field_name, field, opts)
    assert(response, 'Failed to update fields.')
  end

  def test_put_update_fields
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    field_name = 'textField'

    field = Field.new
    field.name = field_name
    field.values = ['Text field updated value.']
    field.type = FieldType::TEXT

    fields = Fields.new
    fields.list = [field]

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_update_fields(file_name, fields, opts)
    assert(response, 'Failed to update fields.')
  end

  def test_delete_field
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    field_name = 'textField'

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.delete_field(file_name, field_name, opts)
    assert(response, 'Failed to delete fields.')
  end

  def test_put_fields_flatten
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_fields_flatten(file_name, opts)
    assert(response, 'Failed to make fields flatten.')
  end

  def test_post_flatten_document
    name = 'PdfWithAcroForm.pdf'
    upload_file(name)

    opts = {
      hideButtons: true,
      folder: @temp_folder
    }

    response = @pdf_api.post_flatten_document(name, opts)
    assert(response, 'Failed flatten document.')
  end

  def test_get_document_sigignature_fields
    file_name = 'adbe.x509.rsa_sha1.valid.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_signature_fields(file_name, opts)
    assert(response, 'Failed to read document signature fields.')
  end

  def test_get_page_sigignature_fields
    file_name = 'adbe.x509.rsa_sha1.valid.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_signature_fields(file_name, page_number, opts)
    assert(response, 'Failed to read page signature fields.')
  end

  def test_post_sigignature_field
    file_name = '4pages.pdf'
    upload_file(file_name)

    signature_name = '33226.p12'
    upload_file(signature_name)

    signature = Signature.new
    signature.authority = 'Sergey Smal'
    signature.contact = 'test@mail.ru'
    signature.date = '08/01/2012 12:15:00.000 PM'
    signature.form_field_name = 'Signature1'
    signature.location = 'Ukraine'
    signature.password = 'sIikZSmz'
    signature.rectangle = Rectangle.new({ LLX: 100, LLY: 100, URX: 500, URY: 200 })
    signature.signature_path = @temp_folder + '/' + signature_name
    signature.signature_type = SignatureType::PKCS7
    signature.visible = true
    signature.show_properties = false

    field = SignatureField.new
    field.partial_name = 'sign1'
    field.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 500, URY: 200 })
    field.signature = signature
    field.page_index = 1

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.post_signature_field(file_name, field, opts)
    assert(response, 'Failed to create signature field.')
  end

  def test_put_sigignature_field
    file_name = 'adbe.x509.rsa_sha1.valid.pdf'
    upload_file(file_name)

    signature_name = '33226.p12'
    upload_file(signature_name)

    signature = Signature.new
    signature.authority = 'Sergey Smal'
    signature.contact = 'test@mail.ru'
    signature.date = '08/01/2012 12:15:00.000 PM'
    signature.form_field_name = 'Signature1'
    signature.location = 'Ukraine'
    signature.password = 'sIikZSmz'
    signature.rectangle = Rectangle.new({ LLX: 100, LLY: 100, URX: 500, URY: 200 })
    signature.signature_path = @temp_folder + '/' + signature_name
    signature.signature_type = SignatureType::PKCS7
    signature.visible = true
    signature.show_properties = false

    field = SignatureField.new
    field.partial_name = 'sign1'
    field.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 500, URY: 200 })
    field.signature = signature
    field.page_index = 1

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_signature_field(file_name, 'Signature1', field, opts)
    assert(response, 'Failed to update signature field.')
  end

  def test_get_sigignature_field
    file_name = 'adbe.x509.rsa_sha1.valid.pdf'
    upload_file(file_name)

    field_name = 'Signature1'
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_signature_field(file_name, field_name, opts)
    assert(response, 'Failed to read signature field.')
  end

  def test_get_document_text_box_fields
    file_name = 'FormDataTextBox.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_text_box_fields(file_name, opts)
    assert(response, 'Failed to read document text box fields.')
  end

  def test_get_page_text_box_fields
    file_name = 'FormDataTextBox.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_text_box_fields(file_name, page_number, opts)
    assert(response, 'Failed to read page text box fields.')
  end

  def test_get_text_box_field
    file_name = 'FormDataTextBox.pdf'
    upload_file(file_name)

    field_name = 'Petitioner'
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_text_box_field(file_name, field_name, opts)
    assert(response, 'Failed to read text box field.')
  end

  def test_post_text_box_fields
    file_name = '4pages.pdf'
    upload_file(file_name)

    text_box_field = TextBoxField.new
    text_box_field.color = Color.new({ A: 0xFF, R: 0, G: 0xFF, B: 0 })
    text_box_field.multiline = true
    text_box_field.max_len = 100
    text_box_field.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 500, URY: 200 })
    text_box_field.value = 'Text value'
    text_box_field.partial_name = 'testField'
    text_box_field.page_index = 1
    text_box_field.is_group = false

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.post_text_box_fields(file_name, [text_box_field], opts)
    assert(response, 'Failed to insert text box fields.')
  end

  def test_put_text_box_field
    file_name = 'FormDataTextBox.pdf'
    upload_file(file_name)

    field_name = 'Petitioner'

    text_box_field = TextBoxField.new
    text_box_field.color = Color.new({ A: 0xFF, R: 0, G: 0xFF, B: 0 })
    text_box_field.multiline = true
    text_box_field.max_len = 100
    text_box_field.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 500, URY: 200 })
    text_box_field.value = 'Text value'
    text_box_field.partial_name = 'testField'
    text_box_field.page_index = 1
    text_box_field.is_group = false

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_text_box_field(file_name, field_name, text_box_field, opts)
    assert(response, 'Failed to update text box field.')
  end

  def test_get_document_check_box_fields
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_check_box_fields(file_name, opts)
    assert(response, 'Failed to read document check box fields.')
  end

  def test_get_page_check_box_fields
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_check_box_fields(file_name, page_number, opts)
    assert(response, 'Failed to read page check box fields.')
  end

  def test_get_check_box_field
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    field_name = 'checkboxField'
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_check_box_field(file_name, field_name, opts)
    assert(response, 'Failed to read check box field.')
  end

  def test_post_check_box_fields
    file_name = '4pages.pdf'
    upload_file(file_name)

    field = CheckBoxField.new
    field.color = Color.new({ A: 0xFF, R: 0, G: 0xFF, B: 0 })
    field.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 500, URY: 200 })
    field.export_value = 'true'
    field.partial_name = 'testField'
    field.page_index = 1
    field.is_group = false
    field.checked = true
    field.style = BoxStyle::CROSS

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.post_check_box_fields(file_name, [field], opts)
    assert(response, 'Failed to insert check box fields.')
  end

  def test_put_check_box_field
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    field_name = 'checkboxField'

    field = CheckBoxField.new
    field.color = Color.new({ A: 0xFF, R: 0, G: 0xFF, B: 0 })
    field.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 500, URY: 200 })
    field.export_value = 'true'
    field.partial_name = 'testField'
    field.page_index = 1
    field.is_group = false
    field.checked = true
    field.style = BoxStyle::CROSS

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_text_box_field(file_name, field_name, field, opts)
    assert(response, 'Failed to update check box field.')
  end

  def test_get_document_radio_button_fields
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_radio_button_fields(file_name, opts)
    assert(response, 'Failed to read document radio button fields.')
  end

  def test_get_page_radio_button_fields
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_radio_button_fields(file_name, page_number, opts)
    assert(response, 'Failed to read page radio button fields.')
  end

  def test_get_radio_button_field
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    field_name = 'radiobuttonField'
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_radio_button_field(file_name, field_name, opts)
    assert(response, 'Failed to read radio button field.')
  end

  def test_post_radio_button_fields
    file_name = '4pages.pdf'
    upload_file(file_name)

    field = RadioButtonField.new
    field.color = Color.new({ A: 0xFF, R: 0, G: 0xFF, B: 0 })
    field.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 160, URY: 140 })
    field.partial_name = 'testField'
    field.page_index = 1
    field.is_group = false
    field.selected = 1
    field.style = BoxStyle::CROSS
    field.margin = MarginInfo.new({ Bottom: 0, Left: 0, Right: 0, Top: 0 })
    field.radio_button_options_field = [
      RadioButtonOptionField.new({
                                   PageIndex: 1,
                                   IsGroup: false,
                                   OptionName: '1',
                                   Rect: Rectangle.new({ LLX: 100, LLY: 130, URX: 160, URY: 140 }),
                                   Style: BoxStyle::SQUARE
                                 }),
      RadioButtonOptionField.new({
                                   PageIndex: 1,
                                   IsGroup: false,
                                   OptionName: '2',
                                   Rect: Rectangle.new({ LLX: 150, LLY: 120, URX: 160, URY: 130 }),
                                   Style: BoxStyle::SQUARE
                                 })
    ]

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.post_radio_button_fields(file_name, [field], opts)
    assert(response, 'Failed to insert radio button fields.')
  end

  def test_put_radio_button_field
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    field_name = 'radiobuttonField'

    field = RadioButtonField.new
    field.color = Color.new({ A: 0xFF, R: 0, G: 0xFF, B: 0 })
    field.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 160, URY: 140 })
    field.partial_name = 'testField'
    field.page_index = 1
    field.is_group = false
    field.selected = 1
    field.style = BoxStyle::CROSS
    field.margin = MarginInfo.new({ Bottom: 0, Left: 0, Right: 0, Top: 0 })
    field.radio_button_options_field = [
      RadioButtonOptionField.new({
                                   PageIndex: 1,
                                   IsGroup: false,
                                   OptionName: '1',
                                   Rect: Rectangle.new({ LLX: 100, LLY: 130, URX: 160, URY: 140 }),
                                   Style: BoxStyle::SQUARE
                                 }),
      RadioButtonOptionField.new({
                                   PageIndex: 1,
                                   IsGroup: false,
                                   OptionName: '2',
                                   Rect: Rectangle.new({ LLX: 150, LLY: 120, URX: 160, URY: 130 }),
                                   Style: BoxStyle::SQUARE
                                 })
    ]

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_radio_button_field(file_name, field_name, field, opts)
    assert(response, 'Failed to update radio button field.')
  end

  def test_get_document_combo_box_fields
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_combo_box_fields(file_name, opts)
    assert(response, 'Failed to read document combobox fields.')
  end

  def test_get_page_combo_box_fields
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_combo_box_fields(file_name, page_number, opts)
    assert(response, 'Failed to read page combo box fields.')
  end

  def test_get_combo_box_field
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    field_name = 'comboboxField'
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_combo_box_field(file_name, field_name, opts)
    assert(response, 'Failed to read combo box field.')
  end

  def test_post_combo_box_fields
    file_name = '4pages.pdf'
    upload_file(file_name)

    field = ComboBoxField.new
    field.color = Color.new({ A: 0xFF, R: 0, G: 0xFF, B: 0 })
    field.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 160, URY: 140 })
    field.partial_name = 'testField'
    field.page_index = 1
    field.is_group = false
    field.selected = 2
    field.margin = MarginInfo.new({ Bottom: 0, Left: 0, Right: 0, Top: 0 })
    field.options = [
      Option.new({
                   Name: 'one',
                   Value: 'one'
                 }),
      Option.new({
                   Name: 'two',
                   Value: 'two'
                 })
    ]

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.post_combo_box_fields(file_name, [field], opts)
    assert(response, 'Failed to insert combo box fields.')
  end

  def test_put_combo_box_field
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    field_name = 'comboboxField'

    field = ComboBoxField.new
    field.color = Color.new({ A: 0xFF, R: 0, G: 0xFF, B: 0 })
    field.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 160, URY: 140 })
    field.partial_name = 'testField'
    field.page_index = 1
    field.is_group = false
    field.selected = 2
    field.margin = MarginInfo.new({ Bottom: 0, Left: 0, Right: 0, Top: 0 })
    field.options = [
      Option.new({
                   Name: 'one',
                   Value: 'one'
                 }),
      Option.new({
                   Name: 'two',
                   Value: 'two'
                 })
    ]

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_combo_box_field(file_name, field_name, field, opts)
    assert(response, 'Failed to update combo box field.')
  end

  def test_get_document_list_box_fields
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_list_box_fields(file_name, opts)
    assert(response, 'Failed to read document listbox fields.')
  end

  def test_get_page_list_box_fields
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_list_box_fields(file_name, page_number, opts)
    assert(response, 'Failed to read page list box fields.')
  end

  def test_get_list_box_field
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    field_name = 'listboxField'
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_list_box_field(file_name, field_name, opts)
    assert(response, 'Failed to read list box field.')
  end

  def test_post_list_box_fields
    file_name = '4pages.pdf'
    upload_file(file_name)

    field = ListBoxField.new
    field.page_index = 1
    field.selected_items = [1, 4]
    field.multi_select = true
    field.color = Color.new({ A: 0xFF, R: 0, G: 0xFF, B: 0 })
    field.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 160, URY: 140 })
    field.partial_name = 'testField'
    field.margin = MarginInfo.new({ Bottom: 0, Left: 0, Right: 0, Top: 0 })
    field.options = [
      Option.new({
                   Name: 'one',
                   Value: 'one'
                 }),
      Option.new({
                   Name: 'two',
                   Value: 'two'
                 }),
      Option.new({
                   Name: 'three',
                   Value: 'three'
                 }),
      Option.new({
                   Name: 'four',
                   Value: 'four'
                 })
    ]

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.post_list_box_fields(file_name, [field], opts)
    assert(response, 'Failed to insert list box fields.')
  end

  def test_put_list_box_field
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    field_name = 'listboxField'

    field = ListBoxField.new
    field.page_index = 1
    field.selected_items = [1, 4]
    field.multi_select = true
    field.color = Color.new({ A: 0xFF, R: 0, G: 0xFF, B: 0 })
    field.rect = Rectangle.new({ LLX: 100, LLY: 100, URX: 160, URY: 140 })
    field.partial_name = 'testField'
    field.margin = MarginInfo.new({ Bottom: 0, Left: 0, Right: 0, Top: 0 })
    field.options = [
      Option.new({
                   Name: 'one',
                   Value: 'one'
                 }),
      Option.new({
                   Name: 'two',
                   Value: 'two'
                 }),
      Option.new({
                   Name: 'three',
                   Value: 'three'
                 }),
      Option.new({
                   Name: 'four',
                   Value: 'four'
                 })
    ]

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_list_box_field(file_name, field_name, field, opts)
    assert(response, 'Failed to update list box field.')
  end

  # Stamp Tests

  def test_get_document_stamps
    file_name = 'PageNumberStamp.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_stamps(file_name, opts)
    assert(response, 'Failed to read document Stamps.')
  end

  def test_delete_document_stamps
    file_name = 'PageNumberStamp.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.delete_document_stamps(file_name, opts)
    assert(response, 'Failed to delete document Stamps.')
  end

  def test_get_page_stamps
    file_name = 'PageNumberStamp.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_stamps(file_name, page_number, opts)
    assert(response, 'Failed to read page Stamps.')
  end

  def test_delete_page_stamps
    file_name = 'PageNumberStamp.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.delete_page_stamps(file_name, page_number, opts)
    assert(response, 'Failed to delete page Stamps.')
  end

  def test_post_page_text_stamps
    file_name = 'PageNumberStamp.pdf'
    upload_file(file_name)

    page_number = 1

    opts = {
      folder: @temp_folder
    }

    text_state = TextState.new
    text_state.font_size = 14

    stamp = TextStamp.new
    stamp.background = true
    stamp.left_margin = 1
    stamp.right_margin = 2
    stamp.top_margin = 3
    stamp.bottom_margin = 4
    stamp.horizontal_alignment = HorizontalAlignment::CENTER
    stamp.vertical_alignment = VerticalAlignment::CENTER
    stamp.opacity = 1
    stamp.rotate = Rotation::NONE
    stamp.rotate_angle = 0
    stamp.x_indent = 0
    stamp.y_indent = 0
    stamp.zoom = 1
    stamp.text_alignment = HorizontalAlignment::CENTER
    stamp.value = 'Text Stamp'
    stamp.text_state = text_state

    response = @pdf_api.post_page_text_stamps(file_name, page_number, [stamp], opts)
    assert(response, 'Failed to add Text Stamp into page.')
  end

  def test_post_document_text_stamps
    file_name = 'PageNumberStamp.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    text_state = TextState.new
    text_state.font_size = 14

    stamp = TextStamp.new
    stamp.background = true
    stamp.left_margin = 1
    stamp.right_margin = 2
    stamp.top_margin = 3
    stamp.bottom_margin = 4
    stamp.horizontal_alignment = HorizontalAlignment::CENTER
    stamp.vertical_alignment = VerticalAlignment::CENTER
    stamp.opacity = 1
    stamp.rotate = Rotation::NONE
    stamp.rotate_angle = 0
    stamp.x_indent = 0
    stamp.y_indent = 0
    stamp.zoom = 1
    stamp.text_alignment = HorizontalAlignment::CENTER
    stamp.value = 'Text Stamp'
    stamp.text_state = text_state

    response = @pdf_api.post_document_text_stamps(file_name, [stamp], opts)
    assert(response, 'Failed to add Text Stamp into document.')
  end

  def test_post_document_text_stamps_page_specified
    file_name = 'PageNumberStamp.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    text_state = TextState.new
    text_state.font_size = 14

    stamp1 = TextStampPageSpecified.new
    stamp1.page_number = 2
    stamp1.background = true
    stamp1.left_margin = 1
    stamp1.right_margin = 2
    stamp1.top_margin = 3
    stamp1.bottom_margin = 4
    stamp1.horizontal_alignment = HorizontalAlignment::CENTER
    stamp1.vertical_alignment = VerticalAlignment::CENTER
    stamp1.opacity = 1
    stamp1.rotate = Rotation::NONE
    stamp1.rotate_angle = 0
    stamp1.x_indent = 0
    stamp1.y_indent = 0
    stamp1.zoom = 1
    stamp1.text_alignment = HorizontalAlignment::CENTER
    stamp1.value = 'Text Stamp 1'
    stamp1.text_state = text_state

    stamp2 = TextStampPageSpecified.new
    stamp2.page_number = 2
    stamp2.background = true
    stamp2.left_margin = 1
    stamp2.right_margin = 2
    stamp2.top_margin = 3
    stamp2.bottom_margin = 4
    stamp2.horizontal_alignment = HorizontalAlignment::CENTER
    stamp2.vertical_alignment = VerticalAlignment::CENTER
    stamp2.opacity = 1
    stamp2.rotate = Rotation::NONE
    stamp2.rotate_angle = 0
    stamp2.x_indent = 0
    stamp2.y_indent = 0
    stamp2.zoom = 1
    stamp2.text_alignment = HorizontalAlignment::CENTER
    stamp2.value = 'Text Stamp 2'
    stamp2.text_state = text_state

    response = @pdf_api.post_document_text_stamps_page_specified(file_name, [stamp1, stamp2], opts)
    assert(response, 'Failed to add Text Stamp into document.')
  end

  def test_post_page_image_stamps
    file_name = 'PageNumberStamp.pdf'
    upload_file(file_name)

    image_name = 'Koala.jpg'
    upload_file(image_name)

    page_number = 1

    opts = {
      folder: @temp_folder
    }

    stamp = ImageStamp.new
    stamp.background = true
    stamp.left_margin = 1
    stamp.right_margin = 2
    stamp.top_margin = 3
    stamp.bottom_margin = 4
    stamp.horizontal_alignment = HorizontalAlignment::CENTER
    stamp.vertical_alignment = VerticalAlignment::CENTER
    stamp.opacity = 1
    stamp.rotate = Rotation::NONE
    stamp.rotate_angle = 0
    stamp.x_indent = 0
    stamp.y_indent = 0
    stamp.zoom = 1
    stamp.file_name = @temp_folder + '/' + image_name

    response = @pdf_api.post_page_image_stamps(file_name, page_number, [stamp], opts)
    assert(response, 'Failed to add Image Stamp into page.')
  end

  def test_post_document_image_stamps
    file_name = 'PageNumberStamp.pdf'
    upload_file(file_name)

    image_name = 'Koala.jpg'
    upload_file(image_name)

    opts = {
      folder: @temp_folder
    }

    stamp = ImageStamp.new
    stamp.background = true
    stamp.left_margin = 1
    stamp.right_margin = 2
    stamp.top_margin = 3
    stamp.bottom_margin = 4
    stamp.horizontal_alignment = HorizontalAlignment::CENTER
    stamp.vertical_alignment = VerticalAlignment::CENTER
    stamp.opacity = 1
    stamp.rotate = Rotation::NONE
    stamp.rotate_angle = 0
    stamp.x_indent = 0
    stamp.y_indent = 0
    stamp.zoom = 1
    stamp.file_name = @temp_folder + '/' + image_name

    response = @pdf_api.post_document_image_stamps(file_name, [stamp], opts)
    assert(response, 'Failed to add Image Stamp into document.')
  end

  def test_post_document_image_stamps_page_specified
    file_name = 'PageNumberStamp.pdf'
    upload_file(file_name)

    image_name = 'Koala.jpg'
    upload_file(image_name)

    opts = {
      folder: @temp_folder
    }

    stamp1 = ImageStampPageSpecified.new
    stamp1.page_number = 2
    stamp1.background = true
    stamp1.left_margin = 1
    stamp1.right_margin = 2
    stamp1.top_margin = 3
    stamp1.bottom_margin = 4
    stamp1.horizontal_alignment = HorizontalAlignment::CENTER
    stamp1.vertical_alignment = VerticalAlignment::CENTER
    stamp1.opacity = 1
    stamp1.rotate = Rotation::NONE
    stamp1.rotate_angle = 0
    stamp1.x_indent = 0
    stamp1.y_indent = 0
    stamp1.zoom = 1
    stamp1.file_name = @temp_folder + '/' + image_name

    stamp2 = ImageStampPageSpecified.new
    stamp2.page_number = 4
    stamp2.background = true
    stamp2.left_margin = 1
    stamp2.right_margin = 2
    stamp2.top_margin = 3
    stamp2.bottom_margin = 4
    stamp2.horizontal_alignment = HorizontalAlignment::CENTER
    stamp2.vertical_alignment = VerticalAlignment::CENTER
    stamp2.opacity = 1
    stamp2.rotate = Rotation::NONE
    stamp2.rotate_angle = 0
    stamp2.x_indent = 0
    stamp2.y_indent = 0
    stamp2.zoom = 1
    stamp2.file_name = @temp_folder + '/' + image_name

    response = @pdf_api.post_document_image_stamps(file_name, [stamp1, stamp2], opts)
    assert(response, 'Failed to add Image Stamp into document.')
  end

  def test_post_page_pdf_page_stamps
    file_name = 'PageNumberStamp.pdf'
    upload_file(file_name)

    pdf_name = '4pages.pdf'
    upload_file(pdf_name)

    page_number = 1

    opts = {
      folder: @temp_folder
    }

    stamp = PdfPageStamp.new
    stamp.background = true
    stamp.left_margin = 1
    stamp.right_margin = 2
    stamp.top_margin = 3
    stamp.bottom_margin = 4
    stamp.horizontal_alignment = HorizontalAlignment::CENTER
    stamp.vertical_alignment = VerticalAlignment::CENTER
    stamp.opacity = 1
    stamp.rotate = Rotation::NONE
    stamp.rotate_angle = 0
    stamp.x_indent = 0
    stamp.y_indent = 0
    stamp.zoom = 1
    stamp.file_name = @temp_folder + '/' + pdf_name
    stamp.page_index = 2

    response = @pdf_api.post_page_pdf_page_stamps(file_name, page_number, [stamp], opts)
    assert(response, 'Failed to add PdfPage Stamp into page.')
  end

  def test_delete_stamp
    file_name = 'PageNumberStamp.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    stamps_response = @pdf_api.get_document_stamps(file_name, opts)
    assert(stamps_response, 'Failed to read document Stamps.')
    stamp_id = stamps_response[0].stamps.list[0].id

    response = @pdf_api.delete_stamp(file_name, stamp_id, opts)
    assert(response, 'Failed to delete Stamp.')
  end

  def test_post_document_page_number_stamps
    name = '4pages.pdf'
    upload_file(name)

    opts = {
      folder: @temp_folder,
      start_page_number: 2,
      end_page_number: 3
    }

    stamp = PageNumberStamp.new
    stamp.background = true
    stamp.left_margin = 1
    stamp.right_margin = 2
    stamp.top_margin = 3
    stamp.bottom_margin = 4
    stamp.horizontal_alignment = HorizontalAlignment::CENTER
    stamp.vertical_alignment = VerticalAlignment::BOTTOM
    stamp.opacity = 1
    stamp.rotate = Rotation::NONE
    stamp.rotate_angle = 0
    stamp.x_indent = 0
    stamp.y_indent = 0
    stamp.zoom = 1
    stamp.starting_number = 3
    stamp.value = 'Page #'

    response = @pdf_api.post_document_page_number_stamps(name, stamp, opts)
    assert(response, 'Failed to add Page number stamp.')
  end

  # Images Tests

  def test_get_image
    file_name = 'PdfWithImages2.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(file_name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id

    response = @pdf_api.get_image(file_name, image_id, opts)
    assert(response, 'Failed to read document image by image id.')
  end

  def test_delete_image
    file_name = 'PdfWithImages2.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(file_name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id

    response = @pdf_api.delete_image(file_name, image_id, opts)
    assert(response, 'Failed to delete document image.')
  end

  def test_get_images
    file_name = 'PdfWithImages2.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_images(file_name, page_number, opts)
    assert(response, 'Failed to read page images.')
  end

  def test_put_replace_image
    file_name = 'PdfWithImages2.pdf'
    upload_file(file_name)
    image_file_name = 'Koala.jpg'
    upload_file(image_file_name)
    opts = {
      image_file_path: @temp_folder + '/' + image_file_name,
      folder: @temp_folder
    }
    page_number = 1
    responseImages = @pdf_api.get_images(file_name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id
    response = @pdf_api.put_replace_image(file_name, image_id, opts)
    assert(response, 'Failed to replace document image.')
  end

  def test_put_replace_multiple_image
    file_name = 'PdfWithImages.pdf'
    upload_file(file_name)
    image_file_name = 'butterfly.jpg'
    upload_file(image_file_name)
    opts = {
      image_file_path: @temp_folder + '/' + image_file_name,
      folder: @temp_folder
    }
    responseImages1 = @pdf_api.get_images(file_name, 1, opts)
    assert(responseImages1, 'Failed to read document images.')
    image_id1 = responseImages1[0].images.list[0].id
    responseImages2 = @pdf_api.get_images(file_name, 16, opts)
    assert(responseImages2, 'Failed to read document images.')
    image_id2 = responseImages2[0].images.list[0].id
    image_ids = [image_id1, image_id2]
    response = @pdf_api.put_replace_multiple_image(file_name, image_ids, opts)
    assert(response, 'Failed to replace document images.')
  end

  def test_post_insert_image
    file_name = 'PdfWithImages2.pdf'
    upload_file(file_name)

    image_file_name = 'Koala.jpg'
    upload_file(image_file_name)
    page_number = 1
    llx = 10
    lly = 10
    urx = 100
    ury = 100

    opts = {
      image_file_path: @temp_folder + '/' + image_file_name,
      folder: @temp_folder
    }

    response = @pdf_api.post_insert_image(file_name, page_number, llx, lly, urx, ury, opts)
    assert(response, 'Failed to replace document image.')
  end

  def test_put_images_extract_as_jpeg
    name = 'PdfWithImages2.pdf'
    upload_file(name)
    page_number = 1

    dest_folder = 'extract_jpg'
    opts = {
      dest_folder: @temp_folder + '/' + dest_folder,
      folder: @temp_folder
    }
    response = @pdf_api.put_images_extract_as_jpeg(name, page_number, opts)
    assert(response, 'Failed to extract images as jpeg.')
  end

  def test_put_images_extract_as_tiff
    name = 'PdfWithImages2.pdf'
    upload_file(name)
    page_number = 1

    dest_folder = 'extract_tiff'
    opts = {
      dest_folder: @temp_folder + '/' + dest_folder,
      folder: @temp_folder
    }
    response = @pdf_api.put_images_extract_as_tiff(name, page_number, opts)
    assert(response, 'Failed to extract images as tiff.')
  end

  def test_put_images_extract_as_gif
    name = 'PdfWithImages2.pdf'
    upload_file(name)
    page_number = 1

    dest_folder = 'extract_gif'
    opts = {
      dest_folder: @temp_folder + '/' + dest_folder,
      folder: @temp_folder
    }
    response = @pdf_api.put_images_extract_as_gif(name, page_number, opts)
    assert(response, 'Failed to extract images as gif.')
  end

  def test_put_images_extract_as_png
    name = 'PdfWithImages2.pdf'
    upload_file(name)
    page_number = 1

    dest_folder = 'extract_png'
    opts = {
      dest_folder: @temp_folder + '/' + dest_folder,
      folder: @temp_folder
    }
    response = @pdf_api.put_images_extract_as_png(name, page_number, opts)
    assert(response, 'Failed to extract images as png.')
  end

  def test_put_image_extract_as_jpeg
    name = 'PdfWithImages2.pdf'
    upload_file(name)

    dest_folder = 'extract_jpg'

    opts = {
      dest_folder: @temp_folder + '/' + dest_folder,
      folder: @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id

    response = @pdf_api.put_image_extract_as_jpeg(name, image_id, opts)
    assert(response, 'Failed to extract image as jpeg.')
  end

  def test_get_image_extract_as_jpeg
    name = 'PdfWithImages2.pdf'
    upload_file(name)

    opts = {
      folder: @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id

    response = @pdf_api.get_image_extract_as_jpeg(name, image_id, opts)
    assert(response, 'Failed to extract image as jpeg.')
  end

  def test_put_image_extract_as_tiff
    name = 'PdfWithImages2.pdf'
    upload_file(name)

    dest_folder = 'extract_tiff'

    opts = {
      dest_folder: @temp_folder + '/' + dest_folder,
      folder: @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id

    response = @pdf_api.put_image_extract_as_tiff(name, image_id, opts)
    assert(response, 'Failed to extract image as tiff.')
  end

  def test_get_image_extract_as_tiff
    name = 'PdfWithImages2.pdf'
    upload_file(name)

    opts = {
      folder: @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id

    response = @pdf_api.get_image_extract_as_tiff(name, image_id, opts)
    assert(response, 'Failed to extract image as tiff.')
  end

  def test_put_image_extract_as_gif
    name = 'PdfWithImages2.pdf'
    upload_file(name)

    dest_folder = 'extract_gif'

    opts = {
      dest_folder: @temp_folder + '/' + dest_folder,
      folder: @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id

    response = @pdf_api.put_image_extract_as_gif(name, image_id, opts)
    assert(response, 'Failed to extract image as gif.')
  end

  def test_get_image_extract_as_gif
    name = 'PdfWithImages2.pdf'
    upload_file(name)

    opts = {
      folder: @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id

    response = @pdf_api.get_image_extract_as_gif(name, image_id, opts)
    assert(response, 'Failed to extract image as gif.')
  end

  def test_put_image_extract_as_png
    name = 'PdfWithImages2.pdf'
    upload_file(name)

    dest_folder = 'extract_png'

    opts = {
      dest_folder: @temp_folder + '/' + dest_folder,
      folder: @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id

    response = @pdf_api.put_image_extract_as_png(name, image_id, opts)
    assert(response, 'Failed to extract images as png.')
  end

  def test_get_image_extract_as_png
    name = 'PdfWithImages2.pdf'
    upload_file(name)

    opts = {
      folder: @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id

    response = @pdf_api.get_image_extract_as_png(name, image_id, opts)
    assert(response, 'Failed to extract images as png.')
  end

  def test_get_images_extract_svg
    name = 'alfa.pdf'
    upload_file(name)

    opts = {
      folder: @temp_folder
    }

    page_number = 1
    response = @pdf_api.get_images_extract_svg(name, page_number, opts)
    assert(response, 'Failed to extract images as svg.')
  end

  # Link Annotations Tests

  def test_get_page_link_annotation
    file_name = 'PdfWithLinks.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_page_link_annotations(file_name, page_number, opts)
    assert(annotations_response, 'Failed to read document page link annotations.')
    link_id = annotations_response[0].links.list[0].id

    response = @pdf_api.get_page_link_annotation(file_name, page_number, link_id, opts)
    assert(response, 'Failed to read document page link annotation.')
  end

  def test_delete_link_annotation
    file_name = 'PdfWithLinks.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_page_link_annotations(file_name, page_number, opts)
    assert(annotations_response, 'Failed to read document page link annotations.')
    link_id = annotations_response[0].links.list[0].id

    response = @pdf_api.delete_link_annotation(file_name, link_id, opts)
    assert(response, 'Failed to delete link annotation.')
  end

  def test_get_page_link_annotations
    file_name = 'PdfWithLinks.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_link_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read document page link annotations.')
  end

  def test_post_page_link_annotations
    file_name = 'PdfWithLinks.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    rect = Rectangle.new
    rect.llx = 100
    rect.lly = 100
    rect.urx = 500
    rect.ury = 500

    linkAnnotation = LinkAnnotation.new
    linkAnnotation.action_type = LinkActionType::GO_TO_URI_ACTION
    linkAnnotation.action = 'https://products.aspose.cloud/pdf'
    linkAnnotation.rect = rect

    response = @pdf_api.post_page_link_annotations(file_name, page_number, [linkAnnotation], opts)
    assert(response, 'Failed to add link annotation.')
  end

  def test_put_link_annotation
    file_name = 'PdfWithLinks.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_page_link_annotations(file_name, page_number, opts)
    assert(annotations_response, 'Failed to read document page link annotations.')
    link_id = annotations_response[0].links.list[0].id

    rect = Rectangle.new
    rect.llx = 100
    rect.lly = 100
    rect.urx = 500
    rect.ury = 500

    linkAnnotation = LinkAnnotation.new
    linkAnnotation.action_type = LinkActionType::GO_TO_URI_ACTION
    linkAnnotation.action = 'https://products.aspose.cloud/pdf'
    linkAnnotation.rect = rect

    response = @pdf_api.put_link_annotation(file_name, link_id, linkAnnotation, opts)
    assert(response, 'Failed to update link annotation.')
  end

  def test_delete_page_link_annotations
    file_name = 'PdfWithLinks.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.delete_page_link_annotations(file_name, page_number, opts)
    assert(response, 'Failed to delete page link annotations.')
  end

  def test_delete_document_link_annotations
    file_name = 'PdfWithLinks.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.delete_document_link_annotations(file_name, opts)
    assert(response, 'Failed to delete document link annotations.')
  end

  def test_get_link_annotation
    file_name = 'PdfWithLinks.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    annotations_response = @pdf_api.get_page_link_annotations(file_name, page_number, opts)
    assert(annotations_response, 'Failed to read document page link annotations.')
    link_id = annotations_response[0].links.list[0].id

    response = @pdf_api.get_link_annotation(file_name, link_id, opts)
    assert(response, 'Failed to delete link annotation.')
  end

  # Merge Tests

  def test_put_merge_documents
    file_name_list = ['4pages.pdf', 'PdfWithImages2.pdf', 'marketing.pdf']
    file_name_list.each { |file_name| upload_file(file_name) }

    result_name = 'MergingResult.pdf'

    file_name_list.collect! { |file_name| @temp_folder + '/' + file_name }

    merge_documents = MergeDocuments.new
    merge_documents.list = file_name_list

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_merge_documents(result_name, merge_documents, opts)
    assert(response, 'Failed to merge a list of documents')
  end

  # OCR Tests

  def test_put_searchable_document
    file_name = 'rusdoc.pdf'
    upload_file(file_name)

    opts = {
      lang: 'rus,eng',
      folder: @temp_folder
    }

    response = @pdf_api.put_searchable_document(file_name, opts)
    assert(response, 'Failed to make document searchable')
  end

  def test_put_searchable_document_with_default_lang
    file_name = 'rusdoc.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_searchable_document(file_name, opts)
    assert(response, 'Failed to make document searchable.')
  end

  # Page Convert To Images Tests

  def test_get_page_convert_to_tiff
    name = '4pages.pdf'
    upload_file(name)

    page_number = 2
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_convert_to_tiff(name, page_number, opts)
    assert(response, 'Failed to convert page as tiff.')
  end

  def test_put_page_convert_to_tiff
    name = '4pages.pdf'
    upload_file(name)
    result_file = 'page.tiff'
    out_path = @temp_folder + '/' + result_file
    page_number = 2
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.put_page_convert_to_tiff(name, page_number, out_path, opts)
    assert(response, 'Failed to convert page as tiff.')
  end

  def test_get_page_convert_to_jpeg
    name = '4pages.pdf'
    upload_file(name)

    page_number = 2
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_convert_to_jpeg(name, page_number, opts)
    assert(response, 'Failed to convert page as jpeg.')
  end

  def test_put_page_convert_to_jpeg
    name = '4pages.pdf'
    upload_file(name)
    result_file = 'page.jpeg'
    out_path = @temp_folder + '/' + result_file
    page_number = 2
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.put_page_convert_to_jpeg(name, page_number, out_path, opts)
    assert(response, 'Failed to convert page as jpeg.')
  end

  def test_get_page_convert_to_png
    name = '4pages.pdf'
    upload_file(name)

    page_number = 2
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_convert_to_png(name, page_number, opts)
    assert(response, 'Failed to convert page as png.')
  end

  def test_put_page_convert_to_png
    name = '4pages.pdf'
    upload_file(name)
    result_file = 'page.png'
    out_path = @temp_folder + '/' + result_file
    page_number = 2
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.put_page_convert_to_png(name, page_number, out_path, opts)
    assert(response, 'Failed to convert page as png.')
  end

  def test_get_page_convert_to_emf
    name = '4pages.pdf'
    upload_file(name)

    page_number = 2
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_convert_to_emf(name, page_number, opts)
    assert(response, 'Failed to convert page as emf.')
  end

  def test_put_page_convert_to_emf
    name = '4pages.pdf'
    upload_file(name)
    result_file = 'page.emf'
    out_path = @temp_folder + '/' + result_file
    page_number = 2
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.put_page_convert_to_emf(name, page_number, out_path, opts)
    assert(response, 'Failed to convert page as emf.')
  end

  def test_get_page_convert_to_bmp
    name = '4pages.pdf'
    upload_file(name)

    page_number = 2
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_convert_to_bmp(name, page_number, opts)
    assert(response, 'Failed to convert page as bmp.')
  end

  def test_put_page_convert_to_bmp
    name = '4pages.pdf'
    upload_file(name)
    result_file = 'page.bmp'
    out_path = @temp_folder + '/' + result_file
    page_number = 2
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.put_page_convert_to_bmp(name, page_number, out_path, opts)
    assert(response, 'Failed to convert page as bmp.')
  end

  def test_get_page_convert_to_gif
    name = '4pages.pdf'
    upload_file(name)

    page_number = 2
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page_convert_to_gif(name, page_number, opts)
    assert(response, 'Failed to convert page as gif.')
  end

  def test_put_page_convert_to_gif
    name = '4pages.pdf'
    upload_file(name)
    result_file = 'page.gif'
    out_path = @temp_folder + '/' + result_file
    page_number = 2
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.put_page_convert_to_gif(name, page_number, out_path, opts)
    assert(response, 'Failed to convert page as gif.')
  end

  # Pages Tests

  def test_delete_page
    file_name = '4pages.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.delete_page(file_name, page_number, opts)
    assert(response, 'Failed to delete document page by its number.')
  end

  def test_get_page
    file_name = '4pages.pdf'
    upload_file(file_name)

    page_number = 3
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_page(file_name, page_number, opts)
    assert(response, 'Failed to get document page by its number.')
  end

  def test_get_pages
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_pages(file_name, opts)
    assert(response, 'Failed to read document pages info.')
  end

  def test_get_words_per_page
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_words_per_page(file_name, opts)
    assert(response, 'Failed to get number of words per document page.')
  end

  def test_post_move_page
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }
    page_number = 1
    new_index = 1

    response = @pdf_api.post_move_page(file_name, page_number, new_index, opts)
    assert(response, 'Failed to move page to new position.')
  end

  def test_put_add_new_page
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_add_new_page(file_name, opts)
    assert(response, 'Failed to add new page to end of the document.')
  end

  def test_put_page_add_stamp
    file_name = '4pages.pdf'
    upload_file(file_name)

    stamp_file_name = 'Penguins.jpg'
    upload_file(stamp_file_name)

    page_number = 1

    stamp = Stamp.new
    stamp.type = StampType::IMAGE
    stamp.file_name = @temp_folder + '/' + stamp_file_name
    stamp.background = true
    stamp.width = 200
    stamp.height = 200
    stamp.x_indent = 100
    stamp.y_indent = 100

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_page_add_stamp(file_name, page_number, stamp, opts)
    assert(response, 'Failed to add page stamp.')
  end

  # Privileges Tests

  def test_put_privileges
    file_name = '4pages.pdf'
    upload_file(file_name)

    privileges = DocumentPrivilege.new
    privileges.allow_copy = false
    privileges.allow_print = false

    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.put_privileges(file_name, privileges, opts)
    assert(response, 'Failed to set pdf privileges.')
  end

  # Properties Tests

  def test_delete_properties
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    property_1 = DocumentProperty.new
    property_1.name = 'prop1'
    property_1.value = 'val1'

    opts = {
      folder: @temp_folder
    }

    property_2 = DocumentProperty.new
    property_2.name = 'prop2'
    property_2.value = 'val2'

    @pdf_api.put_set_property(file_name, property_1.name, property_1.value, opts)
    @pdf_api.put_set_property(file_name, property_2.name, property_2.value, opts)

    response = @pdf_api.delete_properties(file_name, opts)
    assert(response, 'Failed to delete document properties.')
  end

  def test_delete_property
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    property_1 = DocumentProperty.new
    property_1.name = 'prop1'
    property_1.value = 'val1'

    opts = {
      folder: @temp_folder
    }

    @pdf_api.put_set_property(file_name, property_1.name, property_1.value, opts)

    response = @pdf_api.delete_property(file_name, property_1.name, opts)
    assert(response, 'Failed to delete document property.')
  end

  def test_get_document_properties
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    property_1 = DocumentProperty.new
    property_1.name = 'prop1'
    property_1.value = 'val1'

    opts = {
      folder: @temp_folder
    }

    property_2 = DocumentProperty.new
    property_2.name = 'prop2'
    property_2.value = 'val2'

    @pdf_api.put_set_property(file_name, property_1.name, property_1.value, opts)
    @pdf_api.put_set_property(file_name, property_2.name, property_2.value, opts)

    response = @pdf_api.get_document_properties(file_name, opts)
    assert(response, 'Failed to read document properties')
  end

  def test_get_document_property
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    property_1 = DocumentProperty.new
    property_1.name = 'prop1'
    property_1.value = 'val1'

    opts = {
      folder: @temp_folder
    }

    @pdf_api.put_set_property(file_name, property_1.name, property_1.value, opts)

    response = @pdf_api.get_document_property(file_name, property_1.name, opts)
    assert(response, 'Failed to read document property by name.')
  end

  def test_put_set_property
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    property_name = 'prop1'
    property_value = 'val1'

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_set_property(file_name, property_name, property_value, opts)
    assert(response, 'Failed to add/update document property.')
  end

  # Sign Tests

  def test_post_sign_document
    file_name = 'BlankWithSignature.pdf'
    upload_file(file_name)

    signature_file_name = 'test1234.pfx'
    upload_file(signature_file_name)

    rectangle = Rectangle.new
    rectangle.llx = 100
    rectangle.lly = 100
    rectangle.urx = 400
    rectangle.ury = 200

    signature = Signature.new
    signature.authority = 'Sergey Smal'
    signature.contact = 'test@mail.ru'
    signature.date = '08/01/2012 12:15:00.000 PM'
    signature.form_field_name = 'Signature1'
    signature.location = 'Ukraine'
    signature.password = 'test1234'
    signature.rectangle = rectangle
    signature.signature_path = @temp_folder + '/' + signature_file_name
    signature.signature_type = SignatureType::PKCS7
    signature.visible = true
    signature.show_properties = false

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.post_sign_document(file_name, signature, opts)
    assert(response, 'Failed to sign document.')
  end

  def test_post_sign_page
    file_name = 'BlankWithSignature.pdf'
    upload_file(file_name)

    signature_file_name = 'test1234.pfx'
    upload_file(signature_file_name)

    page_number = 1

    rectangle = Rectangle.new
    rectangle.llx = 100
    rectangle.lly = 100
    rectangle.urx = 400
    rectangle.ury = 200

    signature = Signature.new
    signature.authority = 'Sergey Smal'
    signature.contact = 'test@mail.ru'
    signature.date = '08/01/2012 12:15:00.000 PM'
    signature.form_field_name = 'Signature1'
    signature.location = 'Ukraine'
    signature.password = 'test1234'
    signature.rectangle = rectangle
    signature.signature_path = @temp_folder + '/' + signature_file_name
    signature.signature_type = 'PKCS7'
    signature.visible = true

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.post_sign_page(file_name, page_number, signature, opts)
    assert(response, 'Failed to sign page.')
  end

  def test_get_verify_signature
    file_name = 'BlankWithSignature.pdf'
    upload_file(file_name)

    signature_file_name = 'test1234.pfx'
    upload_file(signature_file_name)

    rectangle = Rectangle.new
    rectangle.llx = 100
    rectangle.lly = 100
    rectangle.urx = 400
    rectangle.ury = 200

    signature = Signature.new
    signature.authority = 'Sergey Smal'
    signature.contact = 'test@mail.ru'
    signature.date = '08/01/2012 12:15:00.000 PM'
    signature.form_field_name = 'Signature1'
    signature.location = 'Ukraine'
    signature.password = 'test1234'
    signature.rectangle = rectangle
    signature.signature_path = @temp_folder + '/' + signature_file_name
    signature.signature_type = SignatureType::PKCS7
    signature.visible = true

    opts = {
      folder: @temp_folder
    }

    response_sign = @pdf_api.post_sign_document(file_name, signature, opts)
    assert(response_sign, 'Failed to sign document.')

    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.get_verify_signature(file_name, signature.form_field_name, opts)
    assert(response, 'Failed to verify signature.')
  end

  def test_post_page_certify
    file_name = '4pages.pdf'
    upload_file(file_name)

    signature_file_name = '33226.p12'
    upload_file(signature_file_name)

    page_number = 1

    permission_type = DocMDPAccessPermissionType::NO_CHANGES

    rectangle = Rectangle.new
    rectangle.llx = 100
    rectangle.lly = 100
    rectangle.urx = 500
    rectangle.ury = 200

    signature = Signature.new
    signature.authority = 'Sergey Smal'
    signature.contact = 'test@mail.ru'
    signature.date = '08/01/2012 12:15:00.000 PM'
    signature.form_field_name = 'Signature1'
    signature.location = 'Ukraine'
    signature.password = 'sIikZSmz'
    signature.rectangle = rectangle
    signature.signature_path = @temp_folder + '/' + signature_file_name
    signature.signature_type = SignatureType::PKCS7
    signature.visible = true
    signature.show_properties = false

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.post_page_certify(file_name, page_number, signature, permission_type, opts)
    assert(response, 'Failed to certify page.')
  end

  # Text Replace Tests

  def test_post_document_text_replace
    file_name = 'marketing.pdf'
    upload_file(file_name)

    rect = Rectangle.new
    rect.llx = 100
    rect.lly = 100
    rect.urx = 300
    rect.ury = 300

    text_replace = TextReplace.new
    text_replace.old_value = 'market'
    text_replace.new_value = 'm_a_r_k_e_t'
    text_replace.regex = false
    text_replace.rect = rect

    text_replace_list = TextReplaceListRequest.new
    text_replace_list.text_replaces = [text_replace]
    text_replace_list.start_index = 0
    text_replace_list.count_replace = 0

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.post_document_text_replace(file_name, text_replace_list, opts)
    assert(response, 'Failed to replace document text by rect.')
  end

  def test_post_page_text_replace_by_rect
    file_name = 'marketing.pdf'
    upload_file(file_name)
    page_number = 1

    rect = Rectangle.new
    rect.llx = 100
    rect.lly = 100
    rect.urx = 300
    rect.ury = 300

    text_replace = TextReplace.new
    text_replace.old_value = 'market'
    text_replace.new_value = 'm_a_r_k_e_t'
    text_replace.regex = false
    text_replace.rect = rect

    text_replace_list = TextReplaceListRequest.new
    text_replace_list.text_replaces = [text_replace]
    text_replace_list.start_index = 0
    text_replace_list.count_replace = 0

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.post_page_text_replace(file_name, page_number, text_replace_list, opts)
    assert(response, 'Failed to replace page text by rect.')
  end

  # Text Tests

  def test_get_text
    file_name = '4pages.pdf'
    upload_file(file_name)

    llx = 0
    lly = 0
    urx = 0
    ury = 0
    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_text(file_name, llx, lly, urx, ury, opts)
    assert(response, 'Failed to get document text.')
  end

  def test_get_page_text_by_two_text_on_page
    file_name = '4pages.pdf'
    upload_file(file_name)

    page_number = 1
    llx = 0
    lly = 0
    urx = 0
    ury = 0
    opts = {
      format: ['First Page', 'Second&Page'],
      # :format => 'First Page',
      folder: @temp_folder
    }

    response = @pdf_api.get_page_text(file_name, page_number, llx, lly, urx, ury, opts)
    assert(response, 'Failed to get document text.')
  end

  def test_put_add_text
    file_name = '4pages.pdf'
    upload_file(file_name)
    font_name = 'Righteous-Regular.ttf'
    upload_file(font_name)

    page_number = 1

    rectangle = Rectangle.new
    rectangle.llx = 100
    rectangle.lly = 100
    rectangle.urx = 200
    rectangle.ury = 200

    foreground_color = Color.new
    foreground_color.a = 0x00
    foreground_color.r = 0x00
    foreground_color.g = 0xFF
    foreground_color.b = 0x00

    background_color = Color.new
    background_color.a = 0x00
    background_color.r = 0xFF
    background_color.g = 0x00
    background_color.b = 0x00

    text_state = TextState.new
    text_state.font = 'Righteous'
    text_state.font_size = 10
    text_state.foreground_color = foreground_color
    text_state.background_color = background_color
    text_state.font_style = FontStyles::REGULAR
    text_state.font_file = @temp_folder + '/' + font_name

    segment = Segment.new
    segment.value = 'segment 1'
    segment.text_state = text_state

    text_line = TextLine.new
    text_line.horizontal_alignment = TextHorizontalAlignment::RIGHT
    text_line.segments = [segment]

    paragraph = Paragraph.new
    paragraph.rectangle = rectangle
    paragraph.left_margin = 10
    paragraph.right_margin = 10
    paragraph.top_margin = 20
    paragraph.bottom_margin = 20
    paragraph.horizontal_alignment = TextHorizontalAlignment::FULL_JUSTIFY
    paragraph.line_spacing = LineSpacing::FONT_SIZE
    paragraph.rotation = 10
    paragraph.subsequent_lines_indent = 20
    paragraph.vertical_alignment = VerticalAlignment::CENTER
    paragraph.wrap_mode = WrapMode::BY_WORDS
    paragraph.lines = [text_line]

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_add_text(file_name, page_number, paragraph, opts)
    assert(response, 'Failed to add text to the page.')
  end

  # Storage Tests

  def test_upload_file
    file_name = '4pages.pdf'

    response = @pdf_api.upload_file(@temp_folder + '/' + file_name, ::File.open(@test_data_folder + file_name, 'r') do |io|
      io.read(io.size)
    end)
    assert(response, "Failed to upload #{file_name} file.")
  end

  def test_get_download
    file_name = '4pages.pdf'
    upload_file(file_name)

    response = @pdf_api.download_file(@temp_folder + '/' + file_name)
    assert(response, "Failed to download #{file_name} file.")
  end

  def test_get_files_list
    opts = {
      path: @temp_folder
    }

    response = @pdf_api.get_files_list(opts)
    assert(response, 'Failed get file list.')
  end

  def test_move_file
    file_name = '4pages.pdf'
    upload_file(file_name)
    src = @temp_folder + '/' + file_name
    dest = @temp_folder + '/4pages_renamed.pdf'

    response = @pdf_api.move_file(src, dest, {})
    assert(response, "Failed to rename #{file_name} file.")
  end

  def test_delete_file
    file_name = '4pages.pdf'
    upload_file(file_name)
    path = @temp_folder + '/' + file_name

    response = @pdf_api.delete_file(path, {})
    assert(response, "Failed to delete #{file_name} file.")
  end

  def test_create_folder
    path = @temp_folder + '/testFolder'

    response = @pdf_api.create_folder(path, {})
    assert(response, 'Failed to create folder.')
  end

  def test_move_folder
    src = @temp_folder + '/testFolder'
    responseFolder = @pdf_api.create_folder(src, {})
    assert(responseFolder, 'Failed to create folder.')

    dest = @temp_folder + '/testFolderRednamed'

    response = @pdf_api.move_folder(src, dest, {})
    assert(response, 'Failed to move folder.')
  end

  def test_delete_folder
    path = @temp_folder + '/testFolder'
    responseFolder = @pdf_api.create_folder(path, {})
    assert(responseFolder, 'Failed to create folder.')

    response = @pdf_api.delete_folder(path, {})
    assert(response, 'Failed to delete folder.')
  end

  def test_storage_exists
    name = 'PDF-CI'

    response = @pdf_api.storage_exists(name, {})
    assert(response, 'Failed to check storage.')
  end

  def test_object_exists
    file_name = '4pages.pdf'
    upload_file(file_name)
    path = @temp_folder + '/' + file_name

    response = @pdf_api.object_exists(path, {})
    assert(response, 'Failed to check file.')
  end

  def test_get_disc_usage
    response = @pdf_api.get_disc_usage({})
    assert(response, 'Failed to check disk usage.')
  end

  def test_get_file_versions
    file_name = '4pages.pdf'
    upload_file(file_name)
    path = @temp_folder + '/' + file_name

    response = @pdf_api.get_file_versions(path, {})
    assert(response, 'Failed to get file versions.')
  end

  # Bookmarks Tests

  def test_get_document_bookmarks
    file_name = 'PdfWithBookmarks.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_bookmarks(file_name, opts)
    assert(response, 'Failed to get all document bookmarks.')
  end

  def test_get_bookmarks
    file_name = 'PdfWithBookmarks.pdf'
    upload_file(file_name)

    path = '1'

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_bookmarks(file_name, path, opts)
    assert(response, 'Failed to get all node bookmarks.')
  end

  def test_get_bookmark
    file_name = 'PdfWithBookmarks.pdf'
    upload_file(file_name)

    path = '1'

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_bookmark(file_name, path, opts)
    assert(response, 'Failed to get bookmark by path.')
  end

  def test_delete_document_bookmarks
    file_name = 'PdfWithBookmarks.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.delete_document_bookmarks(file_name, opts)
    assert(response, 'Failed to delete all document bookmarks.')
  end

  def test_delete_bookmark
    file_name = 'PdfWithBookmarks.pdf'
    upload_file(file_name)

    path = '1'

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.delete_bookmark(file_name, path, opts)
    assert(response, 'Failed to delete bookmark by path.')
  end

  def test_post_bookmarks
    file_name = 'PdfWithBookmarks.pdf'
    upload_file(file_name)

    path = '1/1'

    color = Color.new
    color.a = 0xFF
    color.r = 0x00
    color.g = 0xFF
    color.b = 0x00

    bookmark = Bookmark.new
    bookmark.action = 'GoTo'
    bookmark.bold = true
    bookmark.italic = false
    bookmark.title = 'New Bookmark XYZ'
    bookmark.page_display = 'XYZ'
    bookmark.page_display_bottom = 10
    bookmark.page_display_left = 10
    bookmark.page_display_right = 10
    bookmark.page_display_top = 10
    bookmark.page_display_zoom = 2
    bookmark.page_number = 2
    bookmark.color = color

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.post_bookmark(file_name, path, [bookmark], opts)
    assert(response, 'Failed to post bookmark.')
  end

  def test_put_bookmark
    file_name = 'PdfWithBookmarks.pdf'
    upload_file(file_name)

    path = '1/1'

    color = Color.new
    color.a = 0xFF
    color.r = 0x00
    color.g = 0xFF
    color.b = 0x00

    bookmark = Bookmark.new
    bookmark.action = 'GoTo'
    bookmark.bold = true
    bookmark.italic = false
    bookmark.title = 'New Bookmark XYZ'
    bookmark.page_display = 'XYZ'
    bookmark.page_display_bottom = 10
    bookmark.page_display_left = 10
    bookmark.page_display_right = 10
    bookmark.page_display_top = 10
    bookmark.page_display_zoom = 2
    bookmark.page_number = 2
    bookmark.color = color

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_bookmark(file_name, path, bookmark, opts)
    assert(response, 'Failed to update bookmark.')
  end

  # Import Export Tests

  def test_get_export_fields_from_pdf_to_xml_in_storage
    file_name = 'FormData.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_export_fields_from_pdf_to_xml_in_storage(file_name, opts)
    assert(response, 'Failed to export fields to xml.')
  end

  def test_get_export_fields_from_pdf_to_fdf_in_storage
    file_name = 'FormData.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_export_fields_from_pdf_to_fdf_in_storage(file_name, opts)
    assert(response, 'Failed to export fields to fdf.')
  end

  def test_get_export_fields_from_pdf_to_xfdf_in_storage
    file_name = 'FormData.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_export_fields_from_pdf_to_xfdf_in_storage(file_name, opts)
    assert(response, 'Failed to export fields to xfdf.')
  end

  def test_put_export_fields_from_pdf_to_xml_in_storage
    file_name = 'FormData.pdf'
    upload_file(file_name)

    out_path = @temp_folder + '/exportData.xml'

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_export_fields_from_pdf_to_xml_in_storage(file_name, out_path, opts)
    assert(response, 'Failed to export fields to xml.')
  end

  def test_put_export_fields_from_pdf_to_fdf_in_storage
    file_name = 'FormData.pdf'
    upload_file(file_name)

    out_path = @temp_folder + '/exportData.fdf'

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_export_fields_from_pdf_to_fdf_in_storage(file_name, out_path, opts)
    assert(response, 'Failed to export fields to fdf.')
  end

  def test_put_export_fields_from_pdf_to_xfdf_in_storage
    file_name = 'FormData.pdf'
    upload_file(file_name)

    out_path = @temp_folder + '/exportData.xfdf'

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_export_fields_from_pdf_to_xfdf_in_storage(file_name, out_path, opts)
    assert(response, 'Failed to export fields to xfdf.')
  end

  def test_get_import_fields_from_fdf_in_storage
    file_name = 'FormData.pdf'
    upload_file(file_name)

    data_file = 'FormData.fdf'
    upload_file(data_file)

    data_file_path = @temp_folder + '/' + data_file

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_import_fields_from_fdf_in_storage(file_name, data_file_path, opts)
    assert(response, 'Failed to import fields from fdf.')
  end

  def test_get_import_fields_from_xfdf_in_storage
    file_name = 'FormDataXfdf_in.pdf'
    upload_file(file_name)

    data_file = 'FormDataXfdf_in.xfdf'
    upload_file(data_file)

    data_file_path = @temp_folder + '/' + data_file

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_import_fields_from_xfdf_in_storage(file_name, data_file_path, opts)
    assert(response, 'Failed to import fields from xfdf.')
  end

  def test_get_import_fields_from_xml_in_storage
    file_name = 'FormDataXfa_in.pdf'
    upload_file(file_name)

    data_file = 'FormDataXfa_in.xml'
    upload_file(data_file)

    data_file_path = @temp_folder + '/' + data_file

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_import_fields_from_xml_in_storage(file_name, data_file_path, opts)
    assert(response, 'Failed to import fields from xml.')
  end

  def test_put_import_fields_from_fdf_in_storage
    file_name = 'FormData.pdf'
    upload_file(file_name)

    data_file = 'FormData.fdf'
    upload_file(data_file)

    data_file_path = @temp_folder + '/' + data_file

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_import_fields_from_fdf_in_storage(file_name, data_file_path, opts)
    assert(response, 'Failed to import fields from fdf.')
  end

  def test_put_import_fields_from_xfdf_in_storage
    file_name = 'FormDataXfdf_in.pdf'
    upload_file(file_name)

    data_file = 'FormDataXfdf_in.xfdf'
    upload_file(data_file)

    data_file_path = @temp_folder + '/' + data_file

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_import_fields_from_xfdf_in_storage(file_name, data_file_path, opts)
    assert(response, 'Failed to import fields from xfdf.')
  end

  def test_put_import_fields_from_xml_in_storage
    file_name = 'FormDataXfa_in.pdf'
    upload_file(file_name)

    data_file = 'FormDataXfa_in.xml'
    upload_file(data_file)

    data_file_path = @temp_folder + '/' + data_file

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_import_fields_from_xml_in_storage(file_name, data_file_path, opts)
    assert(response, 'Failed to import fields from xml.')
  end

  def test_post_import_fields_from_fdf
    file_name = 'FormData.pdf'
    upload_file(file_name)

    data_file = 'FormData.fdf'

    opts = {
      folder: @temp_folder,
      fdf_data: ::File.open(@test_data_folder + data_file, 'r') { |io| io.read(io.size) }
    }

    response = @pdf_api.post_import_fields_from_fdf(file_name, opts)
    assert(response, 'Failed to import fields from fdf.')
  end

  def test_post_import_fields_from_xfdf
    file_name = 'FormDataXfdf_in.pdf'
    upload_file(file_name)

    data_file = 'FormDataXfdf_in.xfdf'

    opts = {
      folder: @temp_folder,
      xfdf_data: ::File.open(@test_data_folder + data_file, 'r') { |io| io.read(io.size) }
    }

    response = @pdf_api.post_import_fields_from_xfdf(file_name, opts)
    assert(response, 'Failed to import fields from xfdf.')
  end

  def test_post_import_fields_from_xml
    file_name = 'FormDataXfa_in.pdf'
    upload_file(file_name)

    data_file = 'FormDataXfa_in.xml'

    opts = {
      folder: @temp_folder,
      xml_data: ::File.open(@test_data_folder + data_file, 'r') { |io| io.read(io.size) }
    }

    response = @pdf_api.post_import_fields_from_xml(file_name, opts)
    assert(response, 'Failed to import fields from xml.')
  end

  # Layers Tests

  def test_get_document_layers
    file_name = 'PdfWithLayers.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_document_layers(file_name, opts)
    assert_equal(2, response[0].layers.count, 'Failed to read document layers.')
  end

  def test_delete_document_layer
    file_name = 'PdfWithLayers.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.delete_document_layer(file_name, 1, 'oc1', opts)
    assert(response, 'Failed to delete document layer.')

    response = @pdf_api.get_document_layers(file_name, opts)
    assert_equal(1, response[0].layers.count, 'Failed to read document layers.')
  end

  def test_put_create_pdf_from_layer
    file_name = 'PdfWithLayers.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.put_create_pdf_from_layer(file_name, 1, 'output.pdf', 'oc1', opts)
    assert(response, 'Failed to create a separate PDF from a PDF Layer.')
  end

  # XMP Metadata Tests

  def test_get_xmp_metadata_json
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_xmp_metadata_json(file_name, opts)
    assert(response, 'Failed to get xmp metadata in json format')
    assert_equal(9, response[0].properties.count, 'Failed to read document xmp metadata.')
  end

  def test_get_xmp_metadata_xml
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.get_xmp_metadata_xml(file_name, opts)
    assert(response, 'Failed to get xmp metadata in xml format')
  end

  def test_post_xmp_metadata
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
      folder: @temp_folder
    }

    date = '2024-10-27T09:59:52+02:00'
    metadata = XmpMetadata.new({
                                 Properties: [
                                   XmpMetadataProperty.new({
                                                             Key: 'ModifyDate',
                                                             Value: date
                                                           }),
                                   # Modify Default property with prefix
                                   XmpMetadataProperty.new({
                                                             Key: 'xmp:CreateDate',
                                                             Value: date
                                                           }),
                                   # Remove Default property
                                   XmpMetadataProperty.new({
                                                             Key: 'CreatorTool'
                                                           }),
                                   # Add Default property
                                   XmpMetadataProperty.new({
                                                             Key: 'BaseURL',
                                                             Value: 'http://www.somename.com/path'
                                                           }),
                                   # Remove User defined property
                                   XmpMetadataProperty.new({
                                                             Key: 'dc:title'
                                                           }),
                                   # Update user defined property
                                   XmpMetadataProperty.new({
                                                             Key: 'pdf:Producer',
                                                             Value: 'Aspose.PDF Cloud',
                                                             NamespaceUri: 'http://ns.adobe.com/pdf/1.3/'
                                                           }),
                                   # Add user defined property
                                   XmpMetadataProperty.new({
                                                             Key: 'pdf:Prop',
                                                             Value: 'PropValue',
                                                             NamespaceUri: 'http://ns.adobe.com/pdf/1.3/'
                                                           })
                                 ]
                               })
    response = @pdf_api.post_xmp_metadata(file_name, metadata, opts)
    assert(response, 'Failed to post xmp metadata')

    response = @pdf_api.get_xmp_metadata_json(file_name, opts)
    assert(response, 'Failed to get xmp metadata in json format')
    assert_equal(9, response[0].properties.count, 'Failed to read document xmp metadata.')
  end

  def test_post_compare_pdf
    file_name_1 = '4pages.pdf'
    upload_file(file_name_1)

    file_name_2 = '4pagesPdfA.pdf'
    upload_file(file_name_2)

    opts = {
      folder: @temp_folder
    }

    response = @pdf_api.post_compare_pdf(@temp_folder + '/' + file_name_1, @temp_folder + '/' + file_name_2, @temp_folder + '/' + 'output.pdf', opts)
    assert(response, 'Failed to compare a PDF files.')
  end

  def test_post_document_pages_rotate
    file_name = '4pages.pdf'
    upload_file(file_name)
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.post_document_pages_rotate(file_name, Rotation::ON90, '2-3', opts)
    assert(response, 'Failed to rotate document.')
  end

  def test_post_document_pages_resize
    file_name = '4pages.pdf'
    upload_file(file_name)
    opts = {
      folder: @temp_folder
    }
    response = @pdf_api.post_document_pages_resize(file_name, 100, 200, '2-3', opts)
    assert(response, 'Failed to resize document.')
  end

  def test_post_document_pages_crop
    file_name = '4pages.pdf'
    upload_file(file_name)
    opts = {
      folder: @temp_folder
    }

    rectangle = Rectangle.new({ LLX: 0, LLY: 0, URX: 800, URY: 400 })
    response = @pdf_api.post_document_pages_crop(file_name, '2-3', rectangle, opts)
    assert(response, 'Failed to crop document.')
  end
end
