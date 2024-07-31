import 'package:biz_connect/data/models/master_data_model.dart';

abstract class MasterDataRepository {
  Future<Interest> getInterest();
  Future<Category> getCategory();
}
