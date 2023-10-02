part of services;

class BaseClient {
  //MULTIPART
  Future<dynamic> multipartPost(String url, dynamic header, String filekey,
      File path, String filename) async {
    var uri = Uri.parse(url);

    try {
      var request = http.MultipartRequest('POST', uri);
      request.headers.addAll(header);
      request.files.add(http.MultipartFile.fromBytes(
          filekey, path.readAsBytesSync(),
          filename: filename));
      var response = await request
          .send()
          .timeout(const Duration(seconds: AppConstant.timeOutDuration));

      var responsed = await http.Response.fromStream(response);
      return _processResponse(responsed);
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }

//GET
  Future<dynamic> get(String url, dynamic header) async {
    var uri = Uri.parse(url);
    try {
      var response = await http
          .get(uri, headers: header)
          .timeout(const Duration(seconds: AppConstant.timeOutDuration));
      return _processResponse(response);
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }

  //POST
  Future<dynamic> post(String url, dynamic header, dynamic body) async {
    var uri = Uri.parse(url);
    var payload = body;
    try {
      var response = await http
          .post(uri, headers: header, body: payload)
          .timeout(const Duration(seconds: AppConstant.timeOutDuration));
      return _processResponse(response);
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }

  //PATCH
  Future<dynamic> patch(String url, dynamic header, dynamic body) async {
    var uri = Uri.parse(url);
    var payload = body;
    try {
      var response = await http
          .patch(uri, headers: header, body: payload)
          .timeout(const Duration(seconds: AppConstant.timeOutDuration));
      return _processResponse(response);
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }

  //DELETE
  Future<dynamic> delete(String url, dynamic header) async {
    var uri = Uri.parse(url);
    try {
      var response = await http
          .delete(uri, headers: header)
          .timeout(const Duration(seconds: AppConstant.timeOutDuration));
      return _processResponse(response);
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }

  //UPDATE

  //PUT

//----------------------ERROR STATUS CODES----------------------

  dynamic _processResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = response.body;
        return responseJson;
      case 400: //Bad request
        throw BadRequestException(jsonDecode(response.body)['message']);
      case 401: //Unauthorized
        throw UnAuthorizedException(jsonDecode(response.body)['message']);
      case 403: //Forbidden
        throw UnAuthorizedException(jsonDecode(response.body)['message']);
      case 404: //Resource Not Found
        throw NotFoundException(jsonDecode(response.body)['message']);
      case 500: //Internal Server Error
      default:
        throw FetchDataException('Something went wrong, Try again!');
    }
  }
}
