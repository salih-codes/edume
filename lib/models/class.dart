import '/models/category.dart';

class Class {
  final String instructorName;
  final String classDescription;
  final double price;
  final String coverImageUrl;
  final List<String> categories;
  final int videoCount;
  final double rating;

  const Class({
    required this.classDescription,
    required this.price,
    required this.coverImageUrl,
    required this.categories,
    required this.videoCount,
    required this.rating,
    required this.instructorName,
  });
}

const List<Class> sampleClassData = [
  Class(
    instructorName: 'Gordon Ramsey',
    classDescription: 'Teaches cooking. Cooking is not easy',
    price: 49.99,
    coverImageUrl:
        'https://images.unsplash.com/photo-1551218808-94e220e084d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    categories: [
      'Art',
      'Culinary',
      'Science',
    ],
    videoCount: 12,
    rating: 4.0,
  ),
  Class(
    instructorName: 'Alice Waters',
    classDescription: 'Art of home cooking',
    price: 29.99,
    coverImageUrl:
        'https://images.unsplash.com/photo-1507048331197-7d4ac70811cf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80',
    categories: [
      'Art',
      'Culinary',
      'Science',
    ],
    videoCount: 12,
    rating: 3.0,
  ),
  Class(
    instructorName: 'Lisa Ling',
    classDescription: 'Teaches the art of photography',
    price: 49.99,
    coverImageUrl:
        'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80',
    categories: [
      'Art',
      'Science',
      'Creative',
    ],
    videoCount: 12,
    rating: 4.0,
  ),
  Class(
    instructorName: 'Gordon Ramsey',
    classDescription: 'Teaches cooking. Cooking is not easy',
    price: 49.99,
    coverImageUrl:
        'https://images.unsplash.com/photo-1551218808-94e220e084d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    categories: [
      'Art',
      'Culinary',
      'Science',
    ],
    videoCount: 12,
    rating: 4.0,
  ),
  Class(
    instructorName: 'Alice Waters',
    classDescription: 'Art of home cooking',
    price: 29.99,
    coverImageUrl:
        'https://images.unsplash.com/photo-1507048331197-7d4ac70811cf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80',
    categories: [
      'Art',
      'Culinary',
      'Science',
    ],
    videoCount: 12,
    rating: 3.0,
  ),
  Class(
    instructorName: 'Lisa Ling',
    classDescription: 'Teaches the art of photography',
    price: 49.99,
    coverImageUrl:
        'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80',
    categories: [
      'Art',
      'Science',
      'Creative',
    ],
    videoCount: 12,
    rating: 4.0,
  ),
  Class(
    instructorName: 'Gordon Ramsey',
    classDescription: 'Teaches cooking. Cooking is not easy',
    price: 49.99,
    coverImageUrl:
        'https://images.unsplash.com/photo-1551218808-94e220e084d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    categories: [
      'Art',
      'Culinary',
      'Science',
    ],
    videoCount: 12,
    rating: 4.0,
  ),
  Class(
    instructorName: 'Alice Waters',
    classDescription: 'Art of home cooking',
    price: 29.99,
    coverImageUrl:
        'https://images.unsplash.com/photo-1507048331197-7d4ac70811cf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80',
    categories: [
      'Art',
      'Culinary',
      'Science',
    ],
    videoCount: 12,
    rating: 3.0,
  ),
  Class(
    instructorName: 'Lisa Ling',
    classDescription: 'Teaches the art of photography',
    price: 49.99,
    coverImageUrl:
        'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80',
    categories: [
      'Art',
      'Science',
      'Creative',
    ],
    videoCount: 12,
    rating: 4.0,
  ),
];
