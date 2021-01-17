import 'package:flutter/material.dart';
import 'package:psychology_test/base/base_widget.dart';
import 'package:psychology_test/data/knowledge_data.dart';
import 'package:url_launcher/url_launcher.dart';

class KnowledgePage extends StatelessWidget {
  List<Article> articles = KnowledgeData.get();

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
        title: 'Kiến thức',
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: articles.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              try {
                                _launchURL(articles[index].urlArticle);
                              } catch (err) {
                                print(err.toString());
                              }
                            },
                            child: ListTile(
                              leading: Container(
                                width: 50,
                                height: 50,
                                child: CircleAvatar(
                                  child:
                                      Image.network(articles[index].urlAvatar),
                                  minRadius: 30,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: Text(
                                  articles[index].title,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              subtitle: Text(
                                articles[index].description,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 15),
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                            ),
                          ),
                          Divider(),
                        ],
                      ),
                    );
                  }),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ));
  }

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
