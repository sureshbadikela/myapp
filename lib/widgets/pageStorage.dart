import 'package:flutter/material.dart';

/*PageStorage is used to save and restore values that can outlive the widget.
For example, when multiple pages are grouped in tabs, when a page is switched out, 
its widget is destroyed and its state is lost. By adding a PageStorage at the root
and adding a PageStorageKey to each page, some of the page's state (e.g. the scroll position of a Scrollable widget)
 will be stored automatically in its closest ancestor PageStorage, and restored when it's switched back. */
class MyPageStorage extends StatelessWidget {
  final PageStorageBucket _bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Page Storage Example'),
        ),
        body: PageStorage(
          bucket: _bucket,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Item $index'),
                trailing: Checkbox(
                  value: PageStorage.of(context)?.readState(context, identifier: 'checkbox$index') ?? false,
                  onChanged: (newValue) {
                    PageStorage.of(context)?.writeState(context, newValue, identifier: 'checkbox$index');
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
