class Doctor {
  String imageUrl, name, designation, condition, review;

  Doctor({
    this.imageUrl,
    this.name,
    this.designation,
    this.condition,
    this.review,
  });
}

class DoctorData {
  static List<Doctor> allDoctorList = [
    Doctor(
      imageUrl: 'assets/doctor/images/doctor1.jpg',
      name: 'Merry C.',
      designation: 'Heart Surgeon, National heart care',
      review: '4.9 (64 Reviews)',
      condition: 'Available',
    ),
    Doctor(
      imageUrl: 'assets/doctor/images/doctor2.jpg',
      name: 'Jonn L.',
      designation: 'Cardio surgeon, National Cardiology Care.',
      review: '4.9 (64 Reviews)',
      condition: 'Available',
    ),
    Doctor(
      imageUrl: 'assets/doctor/images/doctor3.jpg',
      name: 'Erick Johnathan',
      designation: 'Dentist, National Dental and Oral Health.',
      review: '3.0 (33 Reviews)',
      condition: 'Available',
    ),
    Doctor(
      imageUrl: 'assets/doctor/images/doctor1.jpg',
      name: 'Merry C.',
      designation: 'Heart Surgeon, National heart care',
      review: '4.9 (64 Reviews)',
      condition: 'Available',
    ),
    Doctor(
      imageUrl: 'assets/doctor/images/doctor2.jpg',
      name: 'Jonn L.',
      designation: 'Cardio surgeon, National Cardiology Care.',
      review: '4.9 (64 Reviews)',
      condition: 'Available',
    ),
    Doctor(
      imageUrl: 'assets/doctor/images/doctor3.jpg',
      name: 'Erick Johnathan',
      designation: 'Dentist, National Dental and Oral Health.',
      review: '3.0 (33 Reviews)',
      condition: 'Available',
    ),
  ];
}
