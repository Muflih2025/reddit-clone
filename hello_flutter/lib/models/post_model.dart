class Post {
  final String id;
  final String title;
  final String description;
  final String subreddit;
  final String author;
  final String timeAgo;
  final int upvotes;
  final int commentCount;
  final String? imageUrl;

  Post({
    required this.id,
    required this.title,
    required this.description,
    required this.subreddit,
    required this.author,
    required this.timeAgo,
    required this.upvotes,
    required this.commentCount,
    this.imageUrl,
  });
}
