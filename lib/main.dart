import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recolección de Basuras',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de sesión'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/49455-removebg-preview.png', // Ruta de la imagen en assets
              width: 200,
              height: 200,
            ),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Nombre de usuario',
              ),
            ),

            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes agregar la lógica para verificar las credenciales de inicio de sesión
                // Puedes comparar el valor de _usernameController.text y _passwordController.text con los datos almacenados
                // Si las credenciales son válidas, puedes navegar a la pantalla principal usando Navigator.pushReplacement()
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Text('Iniciar sesión'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido!'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/OBFINX0-removebg-preview.png', // Ruta de la imagen en assets
            width: 200,
            height: 200,
          ),
          SizedBox(height: 16.0),
          Text(
            '¿Sabes cual es la importancia de reciclar?',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Aquí puedes agregar la lógica para verificar las credenciales de inicio de sesión
              // Puedes comparar el valor de _usernameController.text y _passwordController.text con los datos almacenados
              // Si las credenciales son válidas, puedes navegar a la pantalla principal usando Navigator.pushReplacement()
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Estadisticas(),
                ),
              );
            },
            child: Text('siguiente'),
          ),
        ],
      ),
    );
  }
}

class Estadisticas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Algunas estadisticas!'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/estadisticas del dane.png', // Ruta de la imagen en assets
            width: 200,
            height: 200,
          ),
          SizedBox(height: 16.0),
          Text(
            'Azul: residuos utilizados   Verde: residuos no utilizados'
                ''
                'En estas estadisticas podemos ver el porcentaje resiudos no utilizados '
                'y los si utilizados por los colombianos desde el 2012 hasta el 2020',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Aquí puedes agregar la lógica para verificar las credenciales de inicio de sesión
              // Puedes comparar el valor de _usernameController.text y _passwordController.text con los datos almacenados
              // Si las credenciales son válidas, puedes navegar a la pantalla principal usando Navigator.pushReplacement()
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Economia(),
                ),
              );
            },
            child: Text('siguiente'),
          ),
        ],
      ),
    );
  }
}
class Economia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Algunos estrategias para reciclar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '¿Qué es la economía circular?',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset(
            'assets/que-es-la-economia-circular.jpg', // Ruta de la imagen en assets
            width: 200,
            height: 200,
          ),
          SizedBox(height: 16.0),
          Text(
            'La economía circular es un nuevo modelo de producción '
                'y consumo que garantiza un crecimiento sostenible '
                'en el tiempo. Con la economía circular promovemos la '
                'optimización de recursos, la reducción en el consumo de '
                'materias primas y el aprovechamiento de los residuos, '
                'reciclándolos o dándoles una nueva vida para convertirlos '
                'en nuevos productos.',
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),

          ElevatedButton(
            onPressed: () {
              // Aquí puedes agregar la lógica para verificar las credenciales de inicio de sesión
              // Puedes comparar el valor de _usernameController.text y _passwordController.text con los datos almacenados
              // Si las credenciales son válidas, puedes navegar a la pantalla principal usando Navigator.pushReplacement()
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            child: Text('siguiente'),
          ),
        ],
      ),
    );
  }
}