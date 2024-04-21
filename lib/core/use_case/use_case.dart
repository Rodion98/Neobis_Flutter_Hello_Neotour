abstract class UseCase<TourEntity, Params> {
  Future<TourEntity> call([int? index = 0]);
}
