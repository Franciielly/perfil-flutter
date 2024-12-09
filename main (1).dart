
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserProfile(),
    );
  }
}

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 16, 16),
      body: ListView(
        children: [
          Stack( 
            alignment: Alignment.center,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://i.pinimg.com/736x/83/11/c0/8311c0fc1c2abc4cfce3b4f93cae256d.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: -40,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://i.pinimg.com/736x/68/fd/65/68fd6590128849b648cb53e1e6b069b6.jpg',
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          Center(
            child: Column(
              children: [
                Text(
                  "Albert",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Apenas Curtindo a Vida",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ]
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildStat("Publicações", "41"),
              buildStat("Seguidores", "14k"),
              buildStat("Seguindo", "987")
              ],
            ),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildActionButton(Icons.edit, "Editar"),
                buildActionButton(Icons.message, "Mensage"),
                buildActionButton(Icons.person_add, "Seguir"),
                ],
              ),
                
            const Divider(color: Colors.grey),
            buildInfoRow(Icons.email, "E-mail", "Albert@gmail.com"),
            buildInfoRow(Icons.phone, "Telefone", "(11)98457-1157"),
            buildInfoRow(Icons.location_on, "Localização", "São Paulo - SP"),
          ],
        ),
      );
    }
    Widget buildStat(String label, String count){
      return Column(
        children: [
          Text(
            count,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            label,
            style: TextStyle(fontSize:16, color: Colors.grey),
          )
        ],
      );
    }
    Widget buildActionButton(IconData icon, String label){
      return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {},
        icon: Icon(icon, color: Colors.white),
        label: Text(label),
      );
    }
    Widget buildInfoRow(IconData icon, String title, String info) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(
        title,
        style: TextStyle(color: Colors.grey, fontSize: 14),
      ),
      subtitle: Text(
        info,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
