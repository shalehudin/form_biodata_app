import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String nama;
  final String email;
  final String umur;
  final String gender;
  final String status;
  final List<String> hobi;

  const ResultPage({
    Key? key,
    required this.nama,
    required this.email,
    required this.umur,
    required this.gender,
    required this.status,
    required this.hobi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        title: Text('Hasil Input'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Icon(
                    Icons.assignment_turned_in,
                    size: 60,
                    color: Colors.teal.shade700
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Data yang Anda Masukkan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade800
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildInfoTile(Icons.person, 'Nama Lengkap', nama),
                  Divider(height: 1),
                  _buildInfoTile(Icons.email, 'Email', email),
                  Divider(height: 1),
                  _buildInfoTile(Icons.cake, 'Umur', '$umur tahun'),
                  Divider(height: 1),
                  _buildInfoTile(Icons.wc, 'Jenis Kelamin', gender),
                  Divider(height: 1),
                  _buildInfoTile(Icons.school, 'Status Mahasiswa', status),
                  Divider(height: 1),
                  _buildInfoTile(
                    Icons.favorite,
                    'Hobi',
                    hobi.isNotEmpty ? hobi.join(', ') : 'Tidak ada hobi yang dipilih'
                  ),
                  SizedBox(height: 24),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    icon: Icon(Icons.arrow_back),
                    label: Text('Kembali ke Form'),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoTile(IconData icon, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.teal, size: 24),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700]
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}