abstract class DocumentState {}

class DocumentInitial extends DocumentState {}

class DocumentUploading extends DocumentState {}

class DocumentUploaded extends DocumentState {}

class DocumentError extends DocumentState {
  final String message;

  DocumentError(this.message);
}
