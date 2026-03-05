enum FromWho {me,he}

class Message {
  final String text;
  final String? optImage;
  final FromWho fromWho;

  Message({required this.text,this.optImage,required this.fromWho});
}