import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:lang_pinclone_flutter/view/notifiers/index_notifier.dart";

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final queryTextCtrl = useTextEditingController();
    return Scaffold(
        body: Center(
            child: Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ask a question"),
            TextField(
              controller: queryTextCtrl,
              decoration: InputDecoration(
                hintText: 'Enter a query',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topRight,
              child: ElevatedButton(
                onPressed: () {
                  ref
                      .read(indexNotifierProvider.notifier)
                      .createAndUploadPineConeIndex();
                },
                child: const Text('Ask'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(onPressed: () {}, child: const Text('Upload PDF'))
          ]),
    )));
  }
}
