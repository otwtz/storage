abstract class DocumentEvent {}

class UploadDocumentEvent extends DocumentEvent {
  final String filePath;

  UploadDocumentEvent(this.filePath);
}