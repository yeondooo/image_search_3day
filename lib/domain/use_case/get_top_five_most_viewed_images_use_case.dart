import 'package:image_search_3day/domain/model/photo.dart';
import 'package:image_search_3day/domain/repository/photo_repository.dart';

class GetTopFiveMostViewedImagesUseCase {
  final PhotoRepository _repository;

  GetTopFiveMostViewedImagesUseCase(this._repository);

  Future<List<Photo>> call(String query) async {
    final photos = await _repository.getPhotos(query);

    // 조회수 순으로 나열하는 로직
    photos.sort((a, b) => -a.views.compareTo(b.views));

    // 5개만 끊어서 리턴
    return photos.take(5).toList();
  }
}
