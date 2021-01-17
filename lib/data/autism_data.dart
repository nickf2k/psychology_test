import 'package:psychology_test/data/idata.dart';

class AutismData implements IData{
  @override
  List<Category> getCategories() {
    // TODO: implement getCategorys
    return [
      Category('Bài 1', 0, 4),
      Category('Bài 2', 5, 9),
      Category('Bài 3', 10, 14),
      Category('Bài 4', 15, 19),


    ];
  }

  @override
  List<String> getQuestions() {
    // TODO: implement getQuestions
   return [

    'Nếu bạn chỉ vào một điểm hay vật trong phòng, con bạn có nhìn theo không?',
    'Bạn có bao giờ tự hỏi liệu con bạn có bị điếc không?',
    'Con bạn có chơi trò chơi tưởng tượng hoặc giả vờ không? (VÍ DỤ, giả vờ uống nước từ một cái cốc rỗng,..?)',
    'Con bạn có thích leo trèo lên đồ vật không? (VÍ DỤ, trèo lên đồ đạc trong nhà hoặc leo cầu thang)',
    'Con bạn có làm các chuyển động ngón tay một cách bất thường đến gần mắt của bé không? (VÍ DỤ, con bạn có vẫy/ đưa qua đưa lại ngón tay gần mắt của bé)',
    'Con bạn có dùng ngón tay trỏ của bé để yêu cầu việc gì đó, hoặc để muốn được giúp đỡ không? (VÍ DỤ, chỉ vào bim bim hoặc đồ chơi ngoài tầm với)',
    'Con bạn có dùng một ngón tay để chỉ cho bạn thứ gì đó thú vị mà trẻ thích thú không? (VÍ DỤ, chỉ vào máy bay trên bầu trời hoặc 1 cái xe tải lớn trên đường)',
    'Con bạn có thích chơi với những đứa trẻ khác không? (VÍ DỤ, con bạn có quan sát những đứa trẻ khác, cười với những trẻ này hoặc tới chơi với chúng không)',
    'Con bạn có khoe bạn những đồ vật bằng cách mang hay ôm chúng đến cho bạn xemkhông phải để được bạn giúp đỡ, chỉ để chia sẻ với bạn không? (VÍ DỤ, khoe với bạn 1 bông hoa, thú giả, hoặc 1 cái xe tải đồ chơi)',
    'Con bạn có đáp lại khi được gọi tên không? (VÍ DỤ, con bạn có ngước tìm người gọi, nói chuyện, hay bập bẹ, hoặc ngừng việc bé đang làm khi bạn gọi tên của bé?)',
    'Khi bạn cười với con bạn, con bạn có cười lại với bạn không?',
    'Con bạn có cảm thấy khó chịu bởi những tiếng ồn xung quanh? (VÍ DỤ, con bạn có hét lên hay khóc khi nghe tiếng ồn của máy hút bụi, hoặc nhạc to?)',
    'Con bạn của bạn có đi bộ không?',
    'Con bạn có nhìn vào mắt bạn khi bạn đang nói chuyện với bé, chơi cùng bé hoặc mặc quần áo cho bé không?',
    'Con bạn có bắt chước những điều bạn làm không? (VÍ DỤ, vẫy tay bye bye, vỗ tay, hoặc tạo ra những âm thanh vui vẻ khi bạn làm)',
    'Nếu bạn quay đầu để nhìn gì đó, con bạn có nhìn xung quanh để xem bạn đang nhìn cái gì không?',
    'Con bạn có cố gắng gây sự chú ý để bạn phải nhìn vào bé không? (VÍ DỤ, con bạn có nhìn bạn để được bạn khen ngợi, hoặc nói “nhìn” hoặc “nhìn con”?',
    'Con bạn của bạn có hiểu bạn nói gì khi bạn yêu cầu con làm không? (VÍ DỤ, Nếu bạn không chỉ tay, con bạn có hiểu “để sách lên ghế” hoặc “đưa mẹ/bố cái chăn”không?)',
    'Nếu có điều gì mới lạ, con bạn có nhìn bạn để xem bạn cảm thấy thế nào về việc xảy ra không? (VÍ DỤ, nếu con bạn nghe thấy 1 âm thanh lạ hoặc thú vị, hoặc nhìn thấy đồ chơi mới, con bạn có nhìn bạn không?)',
    'Con bạn có thích những hoạt động mang tính chất chuyển động không? (VÍ DỤ, được lắc lư hoặc nâng lên hạ xuống trên đầu gối của bạn không?',
   ];
  }
  static Map<String, String> getResultTest(int point){
      if(inRange(point, 0, 2)) return {
        'result': 'Nguy cơ tự kỷ là thấp, chưa cần phải làm gì trừ khí trong quá trình theo dõi bạn phát hiện nguy cơ của trẻ',
        'advice': 'Nếu bé mà nhỏ hơn 2 tuổi (đúng 24 tháng) thì bạn hãy đánh giá lại sau sinh nhật 2 tuổi của bé'
      };
      if(inRange(point, 3, 7)) return {
        'result': 'Nguy cơ tự kỷ trung bình',
        'advice': 'Giới cho trẻ đi đánh giá và xác định tính hợp lệ cho chương trình can thiệp sớm. Không cần hành động gì cả trừ khi quá trình theo dõi cho thấy nguy cơ của trẻ đối với rối loạn tự kỷ. Trẻ nên được sàng lọc lại trong các lần thăm khám sức khỏe tiếp theo'
      };
      if(inRange(point, 8, 29)) return {
        'result': 'Nguy cơ tự kỷ cao',
        'advice': 'Ngay lập tức giới thiệu trẻ đi đánh giá chẩn đoán và xác định tính hợp lệ cho chương trình can thiệp sớm'
      };
  }
  static bool inRange(int num, int start, int end){
      return start<=num && num<= end;
  }
}