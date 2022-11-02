'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "javascript_dart/receipt.js": "7a3b9046592eaf89d59db07aafe59b8d",
"version.json": "e2b17b502e4b0ce0d598939bf4dcc9ec",
"index.html": "cbc8cd6dbcadfa18db2630e7e1b3e347",
"/": "cbc8cd6dbcadfa18db2630e7e1b3e347",
"main.dart.js": "9ee495d4efa5e2d77d487a97eb8c292c",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"sql-wasm.js": "7ce6f6c33529a9703e33e194e79b7691",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "3b20dc93856c887052e7bdf0a4f2cf6c",
"assets/AssetManifest.json": "1c175959fb3082ee5b7e0fe5d7091eff",
"assets/NOTICES": "66513d49c3d5c86cddfc187b3064964e",
"assets/FontManifest.json": "4829c4bb11cd3d28f468315b26f7f5eb",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/cc_library/assets/images/bg_border.png": "5a3c5b1e0b298e96e29a5a49f550b2b2",
"assets/packages/content/assets/translations/thanh_ph/home/home_vi.json": "f4167ee8015b9616b9fa4fef310dadb8",
"assets/packages/content/assets/translations/thanh_ph/home/home_en.json": "f4167ee8015b9616b9fa4fef310dadb8",
"assets/packages/content/assets/translations/thanh_ph/setting/setting_en.json": "853b606d06ab419c832cee9f9e46cad5",
"assets/packages/content/assets/translations/thanh_ph/setting/setting_vi.json": "a4fd12a64be19f9ca2f8a50d0fdc7e63",
"assets/packages/content/assets/translations/en.json": "22e67cc3ae278cb47bca0058382d3330",
"assets/packages/content/assets/translations/huy_ph/home/home_vi.json": "22e67cc3ae278cb47bca0058382d3330",
"assets/packages/content/assets/translations/huy_ph/home/home_en.json": "22e67cc3ae278cb47bca0058382d3330",
"assets/packages/content/assets/translations/huy_ph/setting/setting_en.json": "22e67cc3ae278cb47bca0058382d3330",
"assets/packages/content/assets/translations/huy_ph/setting/setting_vi.json": "22e67cc3ae278cb47bca0058382d3330",
"assets/packages/content/assets/translations/vi.json": "22e67cc3ae278cb47bca0058382d3330",
"assets/packages/fluttertoast/assets/toastify.js": "e7006a0a033d834ef9414d48db3be6fc",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/theme/assets/lotties/progress_bar.json": "1ec80f51226a0c679653d096efcf24d5",
"assets/packages/theme/assets/fonts/randm/Medium.ttf": "1801a3694b1faff4a369a310bc698cc1",
"assets/packages/theme/assets/fonts/muli/Muli-Medium.ttf": "2b7f1b7a3cb581e784f6187832571c38",
"assets/packages/theme/assets/fonts/muli/Muli-Bold.ttf": "c38296ec4828db207765ea153f8e5b7a",
"assets/packages/theme/assets/fonts/muli/Muli-Italic.ttf": "3406c566f4619ebcde57927c689223b7",
"assets/packages/theme/assets/fonts/muli/Muli-Regular.ttf": "328d557958b18b54b3bddb3a4a36215a",
"assets/packages/easy_localization/i18n/ar-DZ.json": "acc0a8eebb2fcee312764600f7cc41ec",
"assets/packages/easy_localization/i18n/en.json": "5f5fda8715e8bf5116f77f469c5cf493",
"assets/packages/easy_localization/i18n/en-US.json": "5f5fda8715e8bf5116f77f469c5cf493",
"assets/packages/easy_localization/i18n/ar.json": "acc0a8eebb2fcee312764600f7cc41ec",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/assets/images/logo_cc.png": "c11d4b7621f71fa4bef9530f09127b8c",
"assets/assets/images/vat.png": "3d48d74694fbf2dbd14f595bd6d3123d",
"assets/assets/images/search.png": "04c87d6f2a0187b1162d89a754a8ab98",
"assets/assets/images/excel.png": "81270f500043e6fd924187322956676e",
"assets/assets/images/printer.png": "93545ce6d6b1e9c9e4ee703e4799857d",
"sql-wasm.wasm": "9acb7a2acdb22234cf19be0aa2f332d0",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
