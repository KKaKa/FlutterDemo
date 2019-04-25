
import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';

class WebSocketPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return _WebSocketWidget(
      title: 'WebSocketPage',
      channel: IOWebSocketChannel.connect('ws://echo.websocket.org'),
    );
  }
}

class _WebSocketWidget extends StatefulWidget{

  final String title;
  final IOWebSocketChannel channel;

  _WebSocketWidget({Key key,@required this.title, @required this.channel}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _WebSocketState();
}

class _WebSocketState extends State<_WebSocketWidget>{

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Form(
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                    labelText: 'Send a message'
                ),
              ),
            ),

            StreamBuilder(
              stream: widget.channel.stream,
              builder: (context,content){
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(content.hasData ? '${content.data}' : "")
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Send Message',
        onPressed: _sendMessage,
        child: Icon(Icons.send),
      ),
    );
  }

  void _sendMessage(){
    if(_controller.text.isNotEmpty){
      widget.channel.sink.add(_controller.text);
    }
  }

  @override
  void dispose() {
    widget.channel.sink.close();
    super.dispose();
  }

}


