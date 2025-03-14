
class Video {
  String? name = '', channelName = '', type = '';
  int? viewsCounts = 0, id = 0, emptyHeight = 0;

  Video({
    this.id,
    this.name,
    this.channelName,
    required this.type,
    this.viewsCounts,
    this.emptyHeight,
  });
}