import 'package:jwt_decoder/jwt_decoder.dart';

class JWTDecoder {
  static String? getRoleFromToken(String token) {
    if (JwtDecoder.isExpired(token)) {
      return null;
    }
    final decodedToken = JwtDecoder.decode(token);
    return decodedToken['role'];
  }
}
