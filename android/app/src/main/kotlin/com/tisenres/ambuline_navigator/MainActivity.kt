package com.tisenres.ambuline_navigator

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        MapKitFactory.setApiKey("d3dbe533-78a4-4794-b09d-0c4e636ea0fa")
        super.configureFlutterEngine(flutterEngine)
    }

}
