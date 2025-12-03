import 'dart:convert';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ServerSelectionModal extends StatefulWidget {
  final String selectedServer;
  final Function(String) onServerSelected;
  
  ServerSelectionModal({
    required this.selectedServer, 
    required this.onServerSelected
  });

  @override
  State<ServerSelectionModal> createState() => _ServerSelectionModalState();
}

class _ServerSelectionModalState extends State<ServerSelectionModal> {
  List<String> serverNames = [];

  @override
  void initState() {
    super.initState();
    _loadServers();
  }

  Future<void> _loadServers() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? serversJson = prefs.getString('servers_list');
    
    if (serversJson != null) {
      List<dynamic> servers = jsonDecode(serversJson);
      setState(() {
        serverNames = servers.map((s) => s['name'].toString()).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.tr('select_server'),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            
            // Automatic
            ListTile(
              leading: Lottie.asset('assets/lottie/auto.json', width: 30),
              title: Text('Automatic'),
              trailing: widget.selectedServer == 'Automatic'
                  ? Icon(Icons.check, color: Colors.green)
                  : null,
              onTap: () => widget.onServerSelected('Automatic'),
            ),
            Divider(),
            
            // سرورهای داینامیک
            ...serverNames.map((serverName) {
              return ListTile(
                leading: Lottie.asset('assets/lottie/server.json', width: 32),
                title: Text(
                  serverName,
                  style: TextStyle(fontFamily: 'GM'),
                ),
                trailing: widget.selectedServer == serverName
                    ? Icon(Icons.check, color: Colors.green)
                    : null,
                onTap: () => widget.onServerSelected(serverName),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
