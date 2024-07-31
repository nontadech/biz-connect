

import 'package:biz_connect/data/models/master_data_model.dart';
import 'package:biz_connect/data/providers/network/apis/master_data_api.dart';
import 'package:biz_connect/domain/repositories/master_data_repository.dart';

class MasterDataRepositoryIml extends MasterDataRepository {
  
  @override
  Future<Interest> getInterest() async {
    final response = await MasterDataAPI.getInterest().request();
    return Interest.fromJson(response);
  }
  
  @override
  Future<Category> getCategory() async {
    final response = await MasterDataAPI.getCategory().request();
    return Category.fromJson(response);
  }
}
