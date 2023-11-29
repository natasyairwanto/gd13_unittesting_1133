import 'package:flutter_test/flutter_test.dart';
import 'package:gd13_unittesting_1133/repository/login_repository.dart';

void main() {
  test('login success', () async {
    final hasil = await LoginRepository.logintesting(
      username: 'natasya_1133', password: 'c_1133');
    expect(hasil?.data.username, equals('natasya_1133'));
    expect(hasil?.data.password, equals('c_1133'));  
  });

 test('login failed', () async {
    final result = await LoginRepository.logintesting(
      username: 'invalid', password: 'invalid');
    expect(result, null); 
  });
}