import 'package:biz_connect/data/providers/database/poll_firebase.dart';
import 'package:biz_connect/domain/entities/poll_entity.dart';
import 'package:biz_connect/domain/repositories/poll_repository.dart';

class PollRepositoryIml extends PollRepository {

  @override
  getPoll(int eventId, int zoneId) async {
    final poll = await PollFirebase.poll(eventId, zoneId).get();
    if(poll.value != null){
      Object? values = poll.value;
      Poll pollData = Poll(data: []);
      List<PollData> pollList = [];
      (values as Map<dynamic, dynamic>?)?.forEach((key1, value1) {
        if(key1 != 'zoneName'){
          values![key1].forEach((key2, value2) {
            if(key2 == 'Choice'){
              List<Choice> choiceList = [];
              values[key1][key2].forEach((key3, value3) {
                Choice choice = Choice();
                values[key1][key2][key3].forEach((key4, value4) {
                  if(key4 != 'User'){
                    if(key4 != 'id'){
                      choice = Choice(
                        id: value4.toString(),
                        awnser: choice.awnser.toString(),
                      );
                    }else if(key4 != 'text'){
                      choice = Choice(
                        id: choice.id.toString(),
                        awnser: value4.toString()
                      );
                    }
                  }
                });
                choiceList.add(choice);
              });
              pollList.add(PollData(
                id: key1.toString(),
                question: values[key1]['titleName'].toString(),
                choice_list: choiceList
              ));
            }
          });
        }
      });
      pollData = Poll(data: pollList);
      return pollData;
    }
  }
}
