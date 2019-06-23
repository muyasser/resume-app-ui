import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileFourPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            color: Colors.black54,
            icon: Icon(FontAwesomeIcons.commentDots),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
            ),
            color: Colors.black54,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeader(),
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
              child: Text(
                'Over 8+ years of experience and web development and 5+ years of experience in mobile applications development',
              ),
            ),
            _buildTitle('Skills'),
            SizedBox(
              height: 10,
            ),
            _buildSkillRow('wordpress', .75),
            SizedBox(
              height: 5,
            ),
            _buildSkillRow('laravel', .6),
            SizedBox(
              height: 5,
            ),
            _buildSkillRow('reactjs', .65),
            SizedBox(
              height: 5,
            ),
            _buildSkillRow('flutter', .5),
            SizedBox(
              height: 30,
            ),
            _buildTitle('experience'),
            SizedBox(
              height: 10,
            ),
            _buildExperienceRow(
              company: 'GID Nepal',
              position: 'Wordpress Developer',
              duration: '2010 - 2012',
            ),
            _buildExperienceRow(
              company: 'Lohani Tech',
              position: 'Laravel Developer',
              duration: '2012 - 2015',
            ),
            _buildExperienceRow(
              company: 'Popup Bits Pvt. Ltd.',
              position: 'Web Developer',
              duration: '2015 - 2018',
            ),
            _buildExperienceRow(
              company: 'Popup Bits Pvt. Ltd.',
              position: 'Flutter Developer',
              duration: '2018 - Current',
            ),
            SizedBox(
              height: 20,
            ),
            _buildTitle('education'),
            SizedBox(
              height: 10,
            ),
            _buildExperienceRow(
                company: "Tribhuvan University, Nepal",
                position: "B.Sc. Computer Science and Information Technology",
                duration: "2011 - 2015"),
            _buildExperienceRow(
                company: "Cambridge University, UK",
                position: "A Level",
                duration: "2008 - 2010"),
            _buildExperienceRow(
                company: "Nepal Board", position: "SLC", duration: "2008"),
            SizedBox(height: 20),
            _buildTitle('contact'),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.email,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'dlohani48@gmail.com',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.phone,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '+977-9818523107',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            _buildSocialRow(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildSocialRow() {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          InkWell(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.facebookF,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('lohanidamodar  ')
              ],
            ),
            onTap: () {
              _launchURL('https://www.facebook.com/lohanidamodar');
            },
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            child: Row(
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.githubAlt,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('lohanidamodar'),
              ],
            ),
            onTap: () {
              _launchURL('https://www.github.com/lohanidamodar');
            },
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            child: Row(
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.youtube,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('reactbits'),
              ],
            ),
            onTap: () {
              _launchURL('https://www.youtube.com/c/reactbits');
            },
          ),
        ],
      ),
    );
  }

  ListTile _buildExperienceRow(
      {String company, String position, String duration}) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(
          top: 8,
          left: 20,
        ),
        child:
            Icon(FontAwesomeIcons.solidCircle, size: 12, color: Colors.black54),
      ),
      title: Text(
        company,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text('$position ($duration)'),
    );
  }

  Row _buildSkillRow(String skill, double level) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 2,
          child: Text(skill.toUpperCase()),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: level,
          ),
        ),
        SizedBox(
          width: 16,
        ),
      ],
    );
  }

  Row _buildHeader() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0),
        Container(
          width: 80,
          height: 80,
          child: CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 40,
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(
                ('assets/person.jpg'),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Damodar Lohani',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Fullstack Developer'),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.map,
                  color: Colors.black54,
                  size: 12,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Kathmandu, Nepal',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Padding _buildTitle(String title) {
    return Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title.toUpperCase(),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              color: Colors.black54,
            ),
          ],
        ));
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
