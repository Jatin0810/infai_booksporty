'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "02307653e4534ba12f46d287dc610bc4",
"version.json": "c3142cad33950ac705d27c32c7dac7b7",
"index.html": "443fffb6fcccfb4d844833213cdb9d93",
"/": "443fffb6fcccfb4d844833213cdb9d93",
"main.dart.js": "0ba2e29fb41e0f751fad6b836d0c1ce5",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "83b83900bcfab1a8457bfdede929740f",
"assets/AssetManifest.json": "199da6dcdcc76981972fd64ac92b654a",
"assets/NOTICES": "b70ef0eef8f4c37ff7f2a14e09e5c3b8",
"assets/FontManifest.json": "017691b87fd4f4b627ee128a8eece29b",
"assets/AssetManifest.bin.json": "2902804f1775a61b44c8207fc5483c37",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "e7c7fbe10f1b42c95455f098fce35b32",
"assets/fonts/MaterialIcons-Regular.otf": "0e6b016990cf441cfe619c31ae763c16",
"assets/assets/images/s2.svg": "3c136255e1025d9c0707009061bd756b",
"assets/assets/images/t1.jpg": "6f64b8ffc24002b02187b10b0f9c3944",
"assets/assets/images/tur1.jpg": "205b1bd3cd90e27c9e26884399e37f68",
"assets/assets/images/s3.svg": "2571314040a2ec8b252edead7d3cc78e",
"assets/assets/images/s14.svg": "82f566e08daa5348f49940ec5be20129",
"assets/assets/images/t2.jpg": "c6504d95cc43d7fffee568387044dbdc",
"assets/assets/images/Boland-Cricket-logo.png": "279e8edea91bdf51a9e5f6870df22755",
"assets/assets/images/tur2.jpg": "6f64b8ffc24002b02187b10b0f9c3944",
"assets/assets/images/tur3.jpg": "3fae5815108443a529c11bad1d235bc9",
"assets/assets/images/turf_booking.png": "78c4d0a3ad7296e6fb061f10896c8925",
"assets/assets/images/s4.svg": "4727a5f330a9d458488eccf686a0b755",
"assets/assets/images/s11.svg": "736931730cabd733cf34183b414a25de",
"assets/assets/images/dedicated.png": "c88d491ad0ac40beade76cc7e949ff28",
"assets/assets/images/s5.svg": "471bbb9741471f679a648eaa4ffa5b3f",
"assets/assets/images/Ludimos-logo.png": "c07a27c45ccb287e733c435403f3ea09",
"assets/assets/images/s12.svg": "c1c78fdc022fe342df4a3b1976db2717",
"assets/assets/images/Audience.png": "26a401c11146636525ea727137079ff0",
"assets/assets/images/s6.svg": "0dccb0f4bc335ab494f0c23380f0ba0d",
"assets/assets/images/s13.png": "f5a8773ddca60dd75a9a245c0679d000",
"assets/assets/images/symbols.png": "2644e2a0db84cc2dd4c7651661cd8785",
"assets/assets/images/s7.png": "56d6ce291acb061e89995a4c3845013d",
"assets/assets/images/s10.png": "e8dfc061d7d87ef23058aaf37a25e61a",
"assets/assets/images/master.png": "53b14757816dcc5a99c14be89fd6fc46",
"assets/assets/images/visa.png": "5bc8a4f467799ba375c94eecfbfe863f",
"assets/assets/images/low_commission_rate.png": "65999d869620fcc52315e6302eab7508",
"assets/assets/images/s15.png": "c95da530bded336c2d08dce0b9efb5fc",
"assets/assets/images/ticketing.png": "9deb7103be1dcfa6baef579238d9df44",
"assets/assets/images/s1.png": "14d106da7fde94de9f09fbe4e67e5aef",
"assets/assets/images/s16.png": "5ca1d3a4cab8a097a56efca5332be63e",
"assets/assets/images/e2.png": "b9dbad03b2555cfdad65963bb13d1d5e",
"assets/assets/images/e3.png": "c6ef318838b8faae37a54fbfffafcbe4",
"assets/assets/images/e1.jpg": "19f8769d2575e0ee14929e0e51fa9624",
"assets/assets/images/logo.png": "9757516a630e42a35969a3bdd1791385",
"assets/assets/images/s9.png": "1b3163cd5838da8272a07986fbcbc7de",
"assets/assets/images/h3.png": "55730afcf0166cf9c321147e62ee782d",
"assets/assets/images/Main-IKF-Logo.png": "70e8ef323f536a70645bd4545083ca4d",
"assets/assets/images/h2.png": "d687d3d7d97735d5c4b0dc2dfda38408",
"assets/assets/images/s8.png": "879c3691889681f698e791fae88026a5",
"assets/assets/images/customized_trials.png": "bb41a08368c462253914fb585dae994b",
"assets/assets/images/my_sports_code.png": "676b17e9b69bd6f83273715e0e1a398b",
"assets/assets/images/h1.png": "32e34c24fba465c9ee64cb5a2f6ff3fd",
"assets/assets/images/google-pay.png": "b4b89e2caf95c10828025df76f4cc9d8",
"assets/assets/images/amazon-pay.png": "f90f24bfe1cba18d9a1d34ae53ac67d9",
"assets/assets/images/skrill.png": "8118af7243be82c2e66af1812eec1364",
"assets/assets/images/paypal.png": "9b817b7a19f430e7b9654b29f7ddbb00",
"assets/assets/fonts/sans_serif/NunitoSans-Regular.ttf": "fb98ed1700e8dfaf0764c11fc36a0a05",
"assets/assets/fonts/sans_serif/NunitoSans-Bold.ttf": "51066f4d1d33630cd761e8cd0168d7b0",
"assets/assets/fonts/sans_serif/NunitoSans-SemiBold.ttf": "9c443ad7c0f391c4854a6b7c0f52788b",
"assets/assets/fonts/poppins/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/fonts/poppins/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/poppins/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
