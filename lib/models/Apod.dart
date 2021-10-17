class Apod {
  final DateTime? date;

  final MediaType? mediatype;

  final String? title;

  final String? copieright;

  final String? explanation;

  final String? url;

  final String? hdurl;

  final String? thumb;

  Apod(
      {this.date, this.mediatype, this.title, this.copieright, this.explanation,
        this.url, this.hdurl, this.thumb});



 static List<Apod> apods = [
  Apod(date : DateTime(2021, 6, 6),
    mediatype: MediaType.image,
    title: 'The Moona Lisa' ,
    copieright:'sofiane' ,
    explanation: 'my nam is sofiane this ....image sqdsqdsqdz eazeza zas dzaeza sadaz sqdzae',
    url:'assets/1.jpg',
  ),
  Apod(date : DateTime(1990, 1, 3),
    mediatype: MediaType.video,
    title: 'NGC 289: Swirl in the Southern Sky' ,
    copieright:'test1' ,
    explanation: 'test1',
    url: 'assets/3.jpg',
  ),
  Apod(date : DateTime(2020, 2, 12),
    mediatype: MediaType.video,
    title: 'test2' ,
    copieright:'test2' ,
    explanation: 'test3',
    url: 'assets/4.jpg',
  ),
  Apod(date : DateTime(2020, 2, 12),
    mediatype: MediaType.video,
    title: 'dz' ,
    copieright:'sofi' ,
    explanation: 'dz algeria dz i hope you are good',
    url: 'assets/2.jpg',
  ),

];




}
enum MediaType {
  image,
  video
}