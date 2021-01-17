import 'package:psychology_test/data/idata.dart';

class IntellectData implements IData {
  @override
  List<Category> getCategories() {
    return [
      Category('Vẽ cái đầu, mặt', 0, 12), //13
      Category('Mắt, mũi, miệng, thân mình', 13, 24), //12
      Category('Vẽ tay, chân', 25, 37), // 13,
      Category('Trang phục, các cử động', 38, 49) //12,
    ];
  }

  @override
  List<String> getQuestions() {
    return [
      // đầu mặt
      'Có vẽ đầu (hình tròn cũn tính)',
      'Có mắt ( 1 hay 2 mắt, chấm hay khoanh đều được)',
      'Có mũi (gạch dọc giữa mắt cũng tính)',
      'Có miệng (chỉ cần một gạch)',
      'Có tóc',
      'Có cổ (không kể dài hay ngắn)',
      'Có tai',

      'Tóc vẽ đúng chỗ',
      'Có mắt ( 1 hoặc 2 mắt, chấm hay khoanh đều )',
      'Có mũi (gạch dọc giữa mắt vẫn tính)',
      'Có cằm và trán',
      'Cằm phân biệt với môi dưới',
      'Tỷ lệ đầu: không quá nửa thân và nhỏ hơn 1/10 thân.',
      // mắt mũi miệng
      'Mỗi được vẽ rõ, có môi dưới',
      'Mũi được vẽ bằng hai gạch',
      'Có hốc mũi',
      'Chiều dài mắt dài theo chiều ngang (không phải chấm)',
      'Có chi tiết ở mắt (lông nheo, lông mày,…)',
      'Có chi tiết trong mắt, con ngươi rõ ràng',
      //thân mình
      'Có thân mình (tròn, vuông, chữ nhật, que củi,…)',
      'Chiều dài thân dài hơn chiều ngang',
      'Có hai chân ',
      'Có hai cánh tay',
      'Hai vai vẽ rõ ràng (hình tròn thì không tính)',
      'Tay và chân dính vào một điểm nào đó trên thân',
      //tay, chân
      'Tay dính vào đúng chỗ (ở dưới cánh tay)',
      'Có ngón tay',
      'Tỉ lệ cánh tay và ngón tay vẽ đúng (chiều dài lớn hơn chiều ngang)',
      'Bàn tay đủ số ngón (5 ngón tay)',
      'Có sự phân biệt giữa ngón cái và ngón khác (ngón cái và ngón út ngắn hơn các ngón còn lại)',
      'Bàn tay vẽ rõ, phân biệt với cánh tay',
      'Cánh tay có đúng kích thước (không dài đến gót chân)',
      'Chân dính vào đúng chỗ.',
      'Chân không ngắn hơn thân hình và cũng không dài quá hai lần thân hình.',
      'Chân có đúng kích thước.',
      'Có gót chân.',
      'Chân có khớp ở đầu gối, hoặc ở háng.',
      'Bàn chân và cẳng chân có độ dài đúng tỷ lệ.',
      // trang phuc, cử động
      'Có quần áo (nút áo hay gạch ngang).',
      'Bộ đồ biểu hiện nghề nghiệp (bác sĩ, cảnh sát, bộ đội,…).',
      'Không thấy thân mình sau áo quần (ví dụ tay thay bằng tay áo).',
      'Các trang phục vẽ khá rõ (nón, giày dép,…).',
      'Có hai thứ trang phục (vạch ngang chia ở giữa bụng chia quần/váy và áo).',
      'Đầu quay về một phía.',
      'Tay hoặc chân giơ lên.',
      'Có bộc lộ cảm xúc khuân mặt (cười, khóc,…).',
      'Có dạng đang bước đi',
      'Vẽ hình người quay về một phía',
      'Hình vẽ nhìn về một phía mà không có sự lệch lạc',
      'Có sự phối hợp của các khớp tay, chân'
    ];
  }

  static getMessage(int iq){
    if(inRange(iq, 110, 1000))
      return 'Bé nhà bạn là khá thông minh';
    if(inRange(iq, 90, 109))
      return 'Chúc mừng, bé nhà bạn bình thường và đừng thấy quá lo lắng ';

    if(inRange(iq, 70, 90))
      return 'Bé chỉ hơi không được nhanh nhẹn.';
    if(inRange(iq, 50, 69))
      return 'Bé bị Chậm phát triển tâm thần nhẹ: các em có thể sống tự lập với sự hỗ trợ của gia đình, cộng đồng. Các em có thể học đến lớp 6';
    if(inRange(iq, 35, 49))
      return 'Bé bị chậm phát triển tâm thần-trung bình: Em có thể tự chăm sóc bản thân nếu được hướng dẫn, và cần đến những trường học đặc biệt để được học các kỹ năng cần thiết để chung sống với cộng đồng';
    if(inRange(iq, 20, 34))
      return 'Bé bị chậm phát triển tâm thần – nặng: Trẻ cần đến các trường học đặc biệt để được học về các kỹ năng cơ bản để có thể tự chăm sóc bản thân và phát triển một số kỹ năng cần thiết khác.';
    if(inRange(iq, 0, 19))
      return 'Trẻ bị chậm phát triển tâm thần rất nặng.';

  }
  static bool inRange(int num, int start, int end){
    return start<=num && num<= end;
  }
}
