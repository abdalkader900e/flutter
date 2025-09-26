import 'package:encrypt/encrypt.dart' as encrypt;

class CryptoHelper {
  static final key = encrypt.Key.fromLength(32); // مفتاح ثابت
  static final iv = encrypt.IV.fromLength(16);   // متجه التهيئة

  static String encryptText(String text) {

    final encrypter = encrypt.Encrypter(encrypt.AES(key));
    final encrypted = encrypter.encrypt(text, iv: iv);
    return encrypted.base64;
  }

  static String decryptText(String cipher) {
    final encrypter = encrypt.Encrypter(encrypt.AES(key));
    try {
      return encrypter.decrypt64(cipher, iv: iv);
    } catch (_) {
      
      return " خطأ: النص المدخل غير صحيح";
    }
  }
}
