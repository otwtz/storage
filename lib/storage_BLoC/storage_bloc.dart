import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssh2/ssh2.dart';
import 'package:storage/storage_BLoC/storage_event.dart';
import 'package:storage/storage_BLoC/storage_state.dart';


class DocumentBloc extends Bloc<DocumentEvent, DocumentState> {
  DocumentBloc() : super(DocumentInitial()) {
    on<UploadDocumentEvent>(_onUploadDocument);
  }

  Future<void> _onUploadDocument(UploadDocumentEvent event, Emitter<DocumentState> emit) async {
    emit(DocumentUploading());
    try {
      final client = SSHClient(
        host: '45.67.57.135',
        port: 22,
        username: 'root',
        passwordOrKey: 'XJimLu&2VN7z',
      );
      await client.connect();
      await client.execute('scp ${event.filePath} /path/on/server');
      emit(DocumentUploaded());
    } catch (e) {
      emit(DocumentError(e.toString()));
    }
  }
}