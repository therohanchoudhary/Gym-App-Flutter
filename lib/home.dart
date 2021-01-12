import 'package:flutter/material.dart';
import 'package:the_body_move/contact.dart';
import 'package:the_body_move/gallery.dart';
import 'package:the_body_move/services.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _listTitle(String service, String text, String image) {
    return ListTile(
      title: Text(service),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    ServicePage(service: service, text: text, image: image)));
      },
    );
  }

  String weightLossText =
      'Most people consider weight loss as a challenge, and it dampens their confidence. '
      'Body Move Fitness revolutionizes the techniques to assist our consumers in shedding their extra pounds healthily and productively. '
      'We provide customized solutions to meet individual consumer needs. '
      'Our team of certified trainers provides personalized attention to all our customers. '
      'Our center is furnished with all the latest fitness equipment. '
      'We understand the body profile of the person before formulating a weight loss plan. '
      'We develop a program based on their time availability. We have unique programs for three, six and twelve months. '
      'We analyze their dietary structure and suggest changes that would supplement their exercise routine.\n\n'
      'Their body type and form play a critical role in determining the type of equipment utilized. '
      'We assist them in setting definitive goals and motivating the clients to achieve them with ease. '
      'We have a regular counseling sessions to review the progress and make adequate changes to the program. '
      'We have private and group sessions for the benefits of the consumers. '
      'Our fitness center is open in the early morning and late evenings, especially for working professionals. '
      'We have affordable packages and provide value for money fitness solutions.';

  String weightGainText =
      'A fair percentage of the people connect exercise and gym with weight loss. '
      'However, underweight is also a problem like obesity. '
      'Body Move Fitness assists people to attain healthy body weight through the right exercise and diet. '
      'There is no shortcut for fitness, and we do not encourage those methods. '
      'We do not recommend counterfeit supplements that can cause side effects in the future. '
      'Our skilled and experienced trainers analyse the client’s requirements. '
      'We make holistic recommendations in diet and workout schedule. '
      'We focus on building lean muscle strength.\n\n'
      'We moderate the calorie intake and plan the exercise accordingly. '
      'We have a defined protocol that assists us to decipher the action plan. '
      'We ensure that consumers follow the ideal strategy to achieve the right results.'
      ' Our counsellors work in harmony with the trainers to help them to reach their weight goal. '
      'We provide consultation on a diet to ensure that the consumers get adequate nutrition. '
      'Our nutrition experts emphasise on the significance of the balanced meal to attain healthy weight and physique.';

  String strengtheningText =
      'Body Move Fitness excels in strengthening techniques for the bones and muscles. '
      'The body weight is not directly correlated to the strength of the individual. '
      'People tend to feel lethargic and weak as they grow older. '
      'Today, even the younger generation suffers from these issues due to unhealthy habits and lack of physical exercise. '
      'The right exercise plan, along with a balanced nutrient-rich diet, would assist the human body to regain its vigor and also maintain the energy. '
      'If you are feeling weak and exhausted, then it is time to consider to start fitness activities.\n\n'
      'There are significant advantages of enrolling in the Body Move strengthening program. '
      'We understand the primary concerns of the clients and also analyze their expectations from the program. '
      'This enables us to develop a stringent protocol to help them attain their goals. '
      'We develop a systematic fitness routine that ensures that the consumers get maximum benefits. '
      'We keep tracking the changes in weight and other essential information to maintain bone health and muscle strength. '
      'We encourage our clients to maintain consistency in the fitness program. This would help them to lead a healthy and active life.';

  String crossFitText =
      'CrossFit is one of the popular high-intensity fitness programs in the globe. '
      'This style has gained extreme popularity in recent years. '
      'Body Move Fitness has the resources and Box to provide CrossFit training to the citizens of New Delhi. '
      'We have the Box, which is the space dedicated for consumers to complete their Work out of the Day (WOD). '
      'Experts suggest that there are multiple benefits of following this technique. '
      'This is quite different from general gym sessions as it more emphasises to the time rather than the reps.'
      ' Our trainers skilled and experienced in this module.\n\n'
      ' This enables us to formulate the best workout program that would fit all consumers. '
      'We also have various sessions to cater to unique client groups. '
      'Our team provides all relevant information about the routine to the customers to assist them in making a well-informed decision. '
      'This is a strength-building and body conditioning workout program. '
      'We recommend precautionary steps to be taken before the session to help consumers maintain their energy levels. '
      'This is high-intensity training that would be beneficial for weight loss and overall healthy living. '
      'We take extra caution to avoid injuries due to improper form and fatigue.';

  String weightTrainingText =
      'Body Move Fitness has certified trainers in weight training techniques. '
      'These exercises strengthen the muscle and increase the fiber size. '
      'This is useful for bodybuilders, athletes and fitness enthusiasts. '
      'It uses different types of weights to enhance the tenacity of the body. '
      'This is a specialized program that is used to build and tone the muscles. '
      'Our team follows a systematic protocol while initiating this routine. '
      'We understand the lifestyle and dietary practices of the customers. '
      'We identify their weight, strength and other criteria that influence the program. '
      'We formulate and develop the fitness plan based on this information.\n\n'
      'Our team takes the proper measures to ensure the safety of the individuals while undertaking weight training exercises.'
      ' We provide that our clients follow adequate warm-up exercises to avoid cramps. '
      'Our organized approach enables us to increase the weights gradually.'
      ' We also focus on calorie consumption as it plays a critical role in the bodybuilding process. '
      'We ensure that the customers are adequately hydrated and follow the appropriate breathing technique. '
      'This type of fitness technique strengthens the core muscles and enhances overall endurance. '
      'It also regulates the metabolism of the body and keeps the lifestyle diseases at bay.';

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 70,
                child: DrawerHeader(
                  child: Text('The Body Move',
                      style: TextStyle(color: Colors.white)),
                  decoration: BoxDecoration(color: Colors.red),
                ),
              ),
              _listTitle('Weight Loss', weightLossText, 'assets/images/4.png'),
              Container(
                  color: Colors.grey[400], height: 0.4, width: width - 50),
              _listTitle('Weight Gain', weightGainText, 'assets/images/3.png'),
              Container(
                  color: Colors.grey[400], height: 0.4, width: width - 50),
              _listTitle(
                  'Weight Training', weightTrainingText, 'assets/images/1.png'),
              Container(
                  color: Colors.grey[400], height: 0.4, width: width - 50),
              _listTitle('Cross Fit', crossFitText, 'assets/images/2.png'),
              Container(
                  color: Colors.grey[400], height: 0.4, width: width - 50),
              _listTitle(
                  'Strengthening', strengtheningText, 'assets/images/5.png'),
              Container(
                  color: Colors.grey[400], height: 0.4, width: width - 50),
              ListTile(
                title: Text('Gallery'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => GalleryPage()));
                },
              ),
              Container(
                  color: Colors.grey[400], height: 0.4, width: width - 50),
              ListTile(
                title: Text('Contact us'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ContactPage()));
                },
              ),
            ],
          ),
        ),
        appBar:
            AppBar(title: Text('The Body Move'), backgroundColor: Colors.red),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Container(
                      height: height / 3,
                      width: width - 20,
                      child: Image.asset('assets/images/1.png')),
                  SizedBox(height: 25),
                  Text('WHO WE ARE?',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                  SizedBox(height: 10),
                  Container(
                      color: Colors.red[400], height: 1, width: width / 2),
                  SizedBox(height: 25),
                  Text(
                    'Fitness has an intricate value for the health of an individual & community. '
                    'Excessive weight and sedentary lifestyle make a person vulnerable to many disorders. '
                    'Body Move, the innovative Fitness Centre in New Delhi, undertakes the initiative to help consumers lead a holistic life. '
                    'We do not just concentrate on weight management. We focus on uplifting the overall wellness of the people. '
                    'We recommend specialised packages that are designed to meet the unique needs of the consumers. ',
                    style: TextStyle(fontSize: 15),
                  ),
                  Container(
                    child: Image.asset('assets/images/6.png'),
                    width: width,
                  ),
                  Container(
                    child: Image.asset('assets/images/7.png'),
                    width: width,
                  ),
                  Text('Benefits',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.done),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                            'Weight management programs to help the consumers to reach their healthy weight. '
                            'Our trainers are certified and skilled to offer consultations that are beneficial in the long run.'),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.done),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                            'Our consultants assist the consumer in the journey of adapting to a physically active lifestyle. '
                            'We stand firm and motivate them to replace the sedentary practices gradually.'),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.done),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                            'We emphasise the significance of a balanced diet to lead a fit and healthy life. '
                            'We provide assistance in crafting the diet based on individual characteristics.'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Image.asset('assets/images/8.png'),
                    width: width,
                  ),
                  Text('Working time',style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Monday-Saturday:'),
                      SizedBox(width: 20),
                      Text('6 AM - 10 PM'),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Sunday:'),
                      SizedBox(width: 20),
                      Text('9 AM - 1 PM')
                    ],
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
