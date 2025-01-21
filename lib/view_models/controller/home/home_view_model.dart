import 'package:get/get.dart';
import 'package:master_class/data/response/status.dart';
import 'package:master_class/models/home/user_list_model.dart';
import 'package:master_class/repository/home_repository/home_repository.dart';

class HomeController extends GetxController {
  final _api = HomeRepository();

  final rxRquestStatus = Status.LOADING.obs;
  final userList = UserListModel().obs;
  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRquestStatus.value = _value;
  void setUserList(UserListModel _value) => userList.value = _value;
  void setError(String _value) => error.value = _value;

  void userListApi() {
    //setRxRequestStatus(Status.LOADING);

    _api.UserListApi().then((value) {
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, StackTrace) {
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
    },);
  }

   void RefreshApi() {
    //setRxRequestStatus(Status.LOADING);

    _api.UserListApi().then((value) {
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, StackTrace) {
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
    },);
  }
}
