import 'dart:convert';
import 'dart:io';

class Client {
  static execute(option) async {
    try {
      var jsonData = {'msg': option};

      HttpClientRequest request =
          await HttpClient().post('192.168.1.2', 9001, '')
            ..headers.contentType = ContentType.json
            ..write(jsonEncode(jsonData));

      HttpClientResponse response = await request.close();
      await utf8.decoder.bind(response).forEach(print);
    } catch (error) {}
  }
}
