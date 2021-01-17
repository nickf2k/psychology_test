import 'package:psychology_test/data/idata.dart';

class HyperActivityData implements IData{
  @override
  List<Category> getCategories() {
      return [
        Category('Test 1', 0, 9),
        Category('Test 2', 10, 17),

      ];
  }

  @override
  List<String> getQuestions() {
    return [
      'Ngọ nguậy chân tay hoặc vặn vẹo người khi ngồi',
      'Tỏ ra khó chịu khi phải ngồi lâu một chỗ, thường tự ý rời khỏi chỗ ngồi trong những tình huống phải ngồi yên một chỗ. (Ví dụ như  đang ngồi học, bé có thể bỏ ra ngoài mà không được giáo viên đồng ý).',
      'Chạy nhảy liên tục hoặc leo trèo khắp nơi, kể cả trong những tình huống không thích hợp',
      'Khó ngồi yên lặng chơi một mình',
      'Thường xuyên di chuyển hoặc hành động giống như đang lái mô tô',
      'Nói nhiều',
      'Hấp tấp, trả lời xong ngay khi người khác chưa hỏi xong',
      'Trong những tình huống phải xếp hàng hoặc chờ đợi đến lượt mình, thường tỏ ra khó chịu, cáu gắt',
      'Hay quấy rầy, làm phiền người khác (xen ngang khi họ đang nói chuyện, làm việc hoặc chơi đùa)',
      'Không chú ý tới các chi tiết nhỏ, hay mắc lỗi sai vì thiếu cẩn thận.',
      'Rất khó khăn để có thể tập trung lâu vào một việc nào đó và dễ bị phân tâm bởi các tác động từ bên ngoài. (Ví dụ như đang ngồi học mà có tiếng người hoặc ti vi là quay ra xem mà bỏ dở việc học giữa chừng, ban đêm hay bị tỉnh giấc khi ngủ...). Tuy nhiên, nếu gặp lĩnh vực bé yêu thích hoặc với những hoạt động có tính kích thích mạnh như xem hoạt hình, quảng cáo, chơi điện tử… bé có thể siêu tập trung đến mức không quan tâm đến mọi thứ xung quanh.',
      'Phớt lờ, không lắng nghe khi giao tiếp với người khác, kể cả là người lớn.',
      'Không tuân thủ các quy tắc, quy định, hướng dẫn chung, không hoàn thành bài tập hoặc nhiệm vụ được giao.',
      'Khi tham gia các hoạt động mang tính tổ chức như làm bài tập nhóm, không quản lý được thời gian của mình.',
      'Không hứng thú, tìm mọi lý do để không phải tham gia những việc mang tính tư duy, logic hoặc đòi hỏi phải kiên trì và nỗ lực như làm bài tập cả ở nhà và ở trường.',
      'Thích nghi kém, kể cả với những thay đổi nhỏ trong sinh hoạt hằng ngày như ăn món ăn mới, thức dậy sớm hơn một chút, mặc quần áo…',
      'Hay đánh rơi, làm mất các đồ vật cá nhân như dụng cụ học tập, đồ chơi, mũ nón…',
      'Hay quên, kể cả làm các hoạt động sinh hoạt thường ngày như đánh răng, tắm…'
    ];
  }
  static String getResult(int firstPoint, int secondPoint){
    if (firstPoint<=5 && secondPoint <=5)
      return 'Bé không bị tăng động';
    if (firstPoint>5 && secondPoint <= 5)
      return 'Bé mắc chứng tăng động giảm chú ý thể hiếu động, bồng bột';
    if (firstPoint<=5 && secondPoint>5)
      return 'Bé bị tăng động giảm chú ý thể thiếu tập trung';
    if (firstPoint>5 && secondPoint >5)
      return 'Bé gặp chứng tăng động giảm chú ý dạng phối hợp. Đây là dạng tăng động phổ biến nhất';
  }

}