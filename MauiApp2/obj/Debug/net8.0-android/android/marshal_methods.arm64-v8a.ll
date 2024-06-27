; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [418 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [836 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 239
	i64 44359872337921045, ; 1: System.ServiceModel.NetTcp => 0x9d9911a0fbc415 => 208
	i64 98382396393917666, ; 2: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 188
	i64 120698629574877762, ; 3: Mono.Android => 0x1accec39cafe242 => 171
	i64 131669012237370309, ; 4: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 198
	i64 176210343261064415, ; 5: System.ServiceModel.NetNamedPipe.dll => 0x272065fa3d34cdf => 207
	i64 196720943101637631, ; 6: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 210515253464952879, ; 7: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 226
	i64 229794953483747371, ; 8: System.ValueTuple.dll => 0x330654aed93802b => 151
	i64 232391251801502327, ; 9: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 267
	i64 233856603507324090, ; 10: System.ServiceModel.Federation.dll => 0x33ed357846ef4ba => 204
	i64 236512707967922597, ; 11: pt-BR\System.ServiceModel.Federation.resources.dll => 0x348430e074b31a5 => 336
	i64 295915112840604065, ; 12: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 270
	i64 316157742385208084, ; 13: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 233
	i64 329079579674636315, ; 14: pl\System.ServiceModel.Federation.resources => 0x49120225957701b => 335
	i64 350667413455104241, ; 15: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 354178770117062970, ; 16: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0x4ea4bb703cff13a => 187
	i64 368310478436231069, ; 17: tr\System.ServiceModel.NetFramingBase.resources => 0x51c806dc23ee79d => 364
	i64 422779754995088667, ; 18: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 435118502366263740, ; 19: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 269
	i64 439161221770931646, ; 20: System.ServiceModel.Security => 0x61836cdeec86dbe => 210
	i64 535107122908063503, ; 21: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 185
	i64 560278790331054453, ; 22: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 571911706346497508, ; 23: zh-Hant\System.ServiceModel.Primitives.resources => 0x7efd6aab3aba5e4 => 405
	i64 634308326490598313, ; 24: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 252
	i64 649145001856603771, ; 25: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 668723562677762733, ; 26: Microsoft.Extensions.Configuration.Binder.dll => 0x947c88986577aad => 176
	i64 670564002081277297, ; 27: Microsoft.Identity.Client.dll => 0x94e526837380571 => 416
	i64 703889276121812442, ; 28: System.ServiceModel.Duplex.dll => 0x9c4b79138728dda => 203
	i64 740849446214830010, ; 29: pl\System.ServiceModel.Federation.resources.dll => 0xa4806a569ae07ba => 335
	i64 750875890346172408, ; 30: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 145
	i64 798450721097591769, ; 31: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 227
	i64 799765834175365804, ; 32: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 805302231655005164, ; 33: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 306
	i64 808711970685479400, ; 34: ja\System.ServiceModel.Federation.resources.dll => 0xb391f40aa5069e8 => 333
	i64 872800313462103108, ; 35: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 238
	i64 895210737996778430, ; 36: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 253
	i64 940822596282819491, ; 37: System.Transactions => 0xd0e792aa81923a3 => 150
	i64 960778385402502048, ; 38: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 1010599046655515943, ; 39: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1106195547578177592, ; 40: ja\System.ServiceModel.NetNamedPipe.resources => 0xf59fefd59841838 => 372
	i64 1120440138749646132, ; 41: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 282
	i64 1182127179608908528, ; 42: fr\System.ServiceModel.NetTcp.resources.dll => 0x1067c2681bec62f0 => 383
	i64 1268860745194512059, ; 43: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1278906455852160409, ; 44: Microsoft.EntityFrameworkCore.SqlServer.dll => 0x11bf96a54a059599 => 411
	i64 1301626418029409250, ; 45: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 46: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 222
	i64 1320654197929453943, ; 47: Microsoft.IdentityModel.Tokens.Saml => 0x1253e7fef2b6a977 => 192
	i64 1350488117176064860, ; 48: ja\System.ServiceModel.NetTcp.resources => 0x12bde5c991aa5b5c => 385
	i64 1369545283391376210, ; 49: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 260
	i64 1394216470480432226, ; 50: ja\System.ServiceModel.Http.resources.dll => 0x1359407e36fc2c62 => 346
	i64 1404195534211153682, ; 51: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1417008720549124638, ; 52: zh-Hans\System.ServiceModel.NetTcp.resources.dll => 0x13aa39ec77f61a1e => 391
	i64 1425944114962822056, ; 53: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1476839205573959279, ; 54: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1486715745332614827, ; 55: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 195
	i64 1492954217099365037, ; 56: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 57: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 170
	i64 1537168428375924959, ; 58: System.Threading.Thread.dll => 0x15551e8a954ae0df => 145
	i64 1551412839480201446, ; 59: it\System.ServiceModel.Primitives.resources.dll => 0x1587b9c1fd3290e6 => 397
	i64 1576750169145655260, ; 60: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 281
	i64 1617235198659916586, ; 61: ko\System.ServiceModel.Primitives.resources => 0x167192d83e61f32a => 399
	i64 1624659445732251991, ; 62: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 221
	i64 1628611045998245443, ; 63: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 256
	i64 1636321030536304333, ; 64: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 246
	i64 1651621767716022336, ; 65: it\System.ServiceModel.Http.resources.dll => 0x16ebbd3f40042840 => 345
	i64 1651782184287836205, ; 66: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659332977923810219, ; 67: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1680559570755486426, ; 68: tr\System.ServiceModel.Http.resources => 0x17528c068ec382da => 351
	i64 1682513316613008342, ; 69: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1725268389376441734, ; 70: Swashbuckle.AspNetCore.SwaggerUI.dll => 0x17f1627592fe3d86 => 410
	i64 1731380447121279447, ; 71: Newtonsoft.Json => 0x18071957e9b889d7 => 200
	i64 1735388228521408345, ; 72: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1743969030606105336, ; 73: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1764797081625604034, ; 74: fr\System.ServiceModel.Federation.resources => 0x187dd1986ef0afc2 => 331
	i64 1767386781656293639, ; 75: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1795316252682057001, ; 76: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 220
	i64 1813473727062752547, ; 77: zh-Hant\System.ServiceModel.NetNamedPipe.resources => 0x192ac0bf1f143d23 => 379
	i64 1825687700144851180, ; 78: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1835311033149317475, ; 79: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 300
	i64 1836611346387731153, ; 80: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 267
	i64 1854145951182283680, ; 81: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1875417405349196092, ; 82: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 83: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 217
	i64 1881198190668717030, ; 84: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 322
	i64 1897575647115118287, ; 85: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 269
	i64 1920760634179481754, ; 86: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 196
	i64 1965636032501521710, ; 87: ja\System.ServiceModel.NetTcp.resources.dll => 0x1b47578ea2f61d2e => 385
	i64 1972385128188460614, ; 88: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1980725144359361681, ; 89: ru\System.ServiceModel.Federation.resources => 0x1b7cf30643395c91 => 337
	i64 1981742497975770890, ; 90: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 254
	i64 2040001226662520565, ; 91: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 142
	i64 2059469483644638515, ; 92: ru\System.ServiceModel.NetTcp.resources => 0x1c94b49576655533 => 389
	i64 2062890601515140263, ; 93: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 141
	i64 2064708342624596306, ; 94: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 290
	i64 2080945842184875448, ; 95: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 96: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 97: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 141
	i64 2133195048986300728, ; 98: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 200
	i64 2165310824878145998, ; 99: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 214
	i64 2165725771938924357, ; 100: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 224
	i64 2179947168683658163, ; 101: de\System.ServiceModel.NetNamedPipe.resources => 0x1e40ba666a820bb3 => 368
	i64 2187820665329845162, ; 102: it\System.ServiceModel.NetTcp.resources => 0x1e5cb34db53e83aa => 384
	i64 2192948757939169934, ; 103: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 412
	i64 2200176636225660136, ; 104: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 184
	i64 2262844636196693701, ; 105: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 238
	i64 2284054589560053283, ; 106: ru\System.ServiceModel.Primitives.resources => 0x1fb2978c3a53de23 => 402
	i64 2287834202362508563, ; 107: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 108: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2304837677853103545, ; 109: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 266
	i64 2309964453332250390, ; 110: de\System.ServiceModel.NetFramingBase.resources => 0x200ea46e7ca5ef16 => 355
	i64 2315304989185124968, ; 111: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2329709569556905518, ; 112: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 249
	i64 2334065076924874282, ; 113: pl\System.ServiceModel.Http.resources => 0x206443d230c07e2a => 348
	i64 2335503487726329082, ; 114: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 115: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2470498323731680442, ; 116: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 231
	i64 2479423007379663237, ; 117: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 276
	i64 2497223385847772520, ; 118: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2547086958574651984, ; 119: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 215
	i64 2592350477072141967, ; 120: System.Xml.dll => 0x23f9e10627330e8f => 163
	i64 2602673633151553063, ; 121: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 321
	i64 2612152650457191105, ; 122: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 191
	i64 2624866290265602282, ; 123: mscorlib.dll => 0x246d65fbde2db8ea => 166
	i64 2626312880454308354, ; 124: de\System.ServiceModel.NetTcp.resources.dll => 0x247289a664831202 => 381
	i64 2632269733008246987, ; 125: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2656907746661064104, ; 126: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 177
	i64 2662981627730767622, ; 127: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 296
	i64 2706075432581334785, ; 128: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2783046991838674048, ; 129: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2787234703088983483, ; 130: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 271
	i64 2815524396660695947, ; 131: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2895129759130297543, ; 132: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 301
	i64 2923871038697555247, ; 133: Jsr305Binding => 0x2893ad37e69ec52f => 283
	i64 2981042564486070135, ; 134: cs\System.ServiceModel.Federation.resources.dll => 0x295eca6b0c82ff77 => 328
	i64 2993444100528724881, ; 135: Microsoft.OpenApi => 0x298ad98cab00db91 => 413
	i64 2996449450746491361, ; 136: tr\System.ServiceModel.Primitives.resources.dll => 0x299586e64b28b1e1 => 403
	i64 3017136373564924869, ; 137: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3017704767998173186, ; 138: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 282
	i64 3047674380219621959, ; 139: es\System.ServiceModel.NetTcp.resources.dll => 0x2a4b83b3980ca247 => 382
	i64 3075974917408215435, ; 140: zh-Hant\System.ServiceModel.Http.resources => 0x2ab00ee3e220d18b => 353
	i64 3106852385031680087, ; 141: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3110390492489056344, ; 142: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3135773902340015556, ; 143: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3281594302220646930, ; 144: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3289520064315143713, ; 145: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 247
	i64 3303437397778967116, ; 146: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 218
	i64 3311221304742556517, ; 147: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 148: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328758490895923850, ; 149: ja\System.ServiceModel.Federation.resources => 0x2e32203600eaba8a => 333
	i64 3328853167529574890, ; 150: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3344514922410554693, ; 151: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 293
	i64 3429672777697402584, ; 152: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 198
	i64 3434643982246424963, ; 153: it\System.ServiceModel.NetFramingBase.resources.dll => 0x2faa4e811bbb3183 => 358
	i64 3437845325506641314, ; 154: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3493805808809882663, ; 155: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 273
	i64 3494946837667399002, ; 156: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 174
	i64 3508450208084372758, ; 157: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3522470458906976663, ; 158: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 272
	i64 3531994851595924923, ; 159: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 160: System.Private.CoreLib.dll => 0x31480e226177735f => 172
	i64 3552918255982455594, ; 161: ko\System.ServiceModel.NetTcp.resources => 0x314e805463d5ab2a => 386
	i64 3561390990477819316, ; 162: pl\System.ServiceModel.NetFramingBase.resources => 0x316c9a3c9db4fdb4 => 361
	i64 3567343442040498961, ; 163: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 316
	i64 3571415421602489686, ; 164: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3638003163729360188, ; 165: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 175
	i64 3647754201059316852, ; 166: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 156
	i64 3655542548057982301, ; 167: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 174
	i64 3656732466067224761, ; 168: Microsoft.IdentityModel.Protocols.WsTrust => 0x32bf52cdbe9338b9 => 190
	i64 3659371656528649588, ; 169: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 212
	i64 3716579019761409177, ; 170: netstandard.dll => 0x3393f0ed5c8c5c99 => 167
	i64 3724788330609220757, ; 171: it\System.ServiceModel.NetNamedPipe.resources => 0x33b11b407d7b9c95 => 371
	i64 3727469159507183293, ; 172: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 265
	i64 3772598417116884899, ; 173: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 239
	i64 3845599895817604529, ; 174: zh-Hant\System.ServiceModel.NetFramingBase.resources.dll => 0x355e50bafa7ccdb1 => 366
	i64 3847323185292082162, ; 175: fr\System.ServiceModel.Http.resources => 0x3564700d93757bf2 => 344
	i64 3869221888984012293, ; 176: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 182
	i64 3869649043256705283, ; 177: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3890352374528606784, ; 178: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 196
	i64 3893942950894553177, ; 179: es\System.ServiceModel.Primitives.resources.dll => 0x360a107b9bb4c859 => 395
	i64 3919223565570527920, ; 180: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 181: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 182: System.Memory => 0x370b03412596249e => 62
	i64 4006972109285359177, ; 183: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 161
	i64 4009997192427317104, ; 184: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4070326265757318011, ; 185: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 297
	i64 4073500526318903918, ; 186: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4073631083018132676, ; 187: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 194
	i64 4120493066591692148, ; 188: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 327
	i64 4148881117810174540, ; 189: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 190: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 191: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 146
	i64 4168469861834746866, ; 192: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 193: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 194: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 233
	i64 4205801962323029395, ; 195: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4234650624138384307, ; 196: tr\System.ServiceModel.Federation.resources => 0x3ac4804e77a793b3 => 338
	i64 4235503420553921860, ; 197: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4282138915307457788, ; 198: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4351295671783217625, ; 199: cs\System.ServiceModel.Http.resources => 0x3c62e85bfd5559d9 => 341
	i64 4360412976914417659, ; 200: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 322
	i64 4373617458794931033, ; 201: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4397634830160618470, ; 202: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4454584262273369104, ; 203: pl\System.ServiceModel.Primitives.resources.dll => 0x3dd1dcc8fed98410 => 400
	i64 4477672992252076438, ; 204: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 152
	i64 4484706122338676047, ; 205: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4513320955448359355, ; 206: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 414
	i64 4533124835995628778, ; 207: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4560453051006720631, ; 208: it\System.ServiceModel.NetFramingBase.resources => 0x3f49fbe3381a1a77 => 358
	i64 4612482779465751747, ; 209: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 412
	i64 4616101634287018717, ; 210: pt-BR\System.ServiceModel.Primitives.resources => 0x400faffaaec722dd => 401
	i64 4630786218465755599, ; 211: pt-BR\System.ServiceModel.NetFramingBase.resources.dll => 0x4043db87de6d01cf => 362
	i64 4636684751163556186, ; 212: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 277
	i64 4657212095206026001, ; 213: Microsoft.Extensions.Http.dll => 0x40a1bdb9c2686b11 => 181
	i64 4672453897036726049, ; 214: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4716677666592453464, ; 215: System.Xml.XmlSerializer => 0x417501590542f358 => 162
	i64 4743821336939966868, ; 216: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 217: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 251
	i64 4794310189461587505, ; 218: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 215
	i64 4795410492532947900, ; 219: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 272
	i64 4809057822547766521, ; 220: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 221: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4815998809053730120, ; 222: Swashbuckle.AspNetCore.Swagger => 0x42d5dd668c5a1548 => 409
	i64 4853321196694829351, ; 223: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 4871824391508510238, ; 224: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 312
	i64 4913488914438867428, ; 225: zh-Hans\System.ServiceModel.Federation.resources.dll => 0x4430382288f2c9e4 => 339
	i64 4953714692329509532, ; 226: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 320
	i64 5055365687667823624, ; 227: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 216
	i64 5071398478759053283, ; 228: ja\System.ServiceModel.Primitives.resources => 0x46613a0c08e3c7e3 => 398
	i64 5081566143765835342, ; 229: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5099468265966638712, ; 230: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5103417709280584325, ; 231: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5124798205776099597, ; 232: zh-Hant\System.ServiceModel.Primitives.resources.dll => 0x471ef0d0d8d7f90d => 405
	i64 5178715688604046882, ; 233: ru\System.ServiceModel.Http.resources => 0x47de7e7b13fc9622 => 350
	i64 5182934613077526976, ; 234: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5205316157927637098, ; 235: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 258
	i64 5244375036463807528, ; 236: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 237: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 238: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5280980186044710147, ; 239: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 250
	i64 5290786973231294105, ; 240: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5331517626801526305, ; 241: es\System.ServiceModel.NetFramingBase.resources.dll => 0x49fd5b08b33d1621 => 356
	i64 5376510917114486089, ; 242: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 276
	i64 5408338804355907810, ; 243: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 274
	i64 5423376490970181369, ; 244: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5440320908473006344, ; 245: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5445845718793242646, ; 246: de\System.ServiceModel.Primitives.resources => 0x4b9387d3f240c816 => 394
	i64 5446034149219586269, ; 247: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 248: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 229
	i64 5457765010617926378, ; 249: System.Xml.Serialization => 0x4bbde05c557002ea => 157
	i64 5471532531798518949, ; 250: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 320
	i64 5507995362134886206, ; 251: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 252: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 323
	i64 5527431512186326818, ; 253: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5570799893513421663, ; 254: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 255: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 256: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 219
	i64 5591791169662171124, ; 257: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5650097808083101034, ; 258: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5650370239627215726, ; 259: System.ServiceModel.Security.dll => 0x4e6a25cbc66b436e => 210
	i64 5692067934154308417, ; 260: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 279
	i64 5724799082821825042, ; 261: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 242
	i64 5757522595884336624, ; 262: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 228
	i64 5783556987928984683, ; 263: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5816864004925684276, ; 264: fr\System.ServiceModel.Primitives.resources => 0x50b9a6fe5059fa34 => 396
	i64 5896680224035167651, ; 265: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 248
	i64 5938631692456801490, ; 266: tr\System.ServiceModel.NetTcp.resources => 0x526a420f60c3b4d2 => 390
	i64 5952455131197516416, ; 267: cs\System.ServiceModel.Federation.resources => 0x529b5e67847aaa80 => 328
	i64 5959344983920014087, ; 268: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 268
	i64 5975693538080295492, ; 269: pt-BR\System.ServiceModel.NetTcp.resources => 0x52eded9cbfdf8a44 => 388
	i64 5979151488806146654, ; 270: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5984759512290286505, ; 271: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 6010431355156821277, ; 272: zh-Hant\System.ServiceModel.NetNamedPipe.resources.dll => 0x536957790efdf51d => 379
	i64 6010974535988770325, ; 273: Microsoft.Extensions.Diagnostics.dll => 0x536b457e33877615 => 179
	i64 6102788177522843259, ; 274: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 268
	i64 6184291411622536774, ; 275: fr\System.ServiceModel.NetTcp.resources => 0x55d30445e942a646 => 383
	i64 6200764641006662125, ; 276: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 317
	i64 6222399776351216807, ; 277: System.Text.Json.dll => 0x565a67a0ffe264a7 => 137
	i64 6251069312384999852, ; 278: System.Transactions.Local => 0x56c0426b870da1ac => 149
	i64 6269197312359843633, ; 279: de\System.ServiceModel.NetNamedPipe.resources.dll => 0x5700a9bd6e0ac731 => 368
	i64 6278736998281604212, ; 280: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 281: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6288213823986309268, ; 282: ko\System.ServiceModel.NetFramingBase.resources => 0x5744392812679894 => 360
	i64 6300676701234028427, ; 283: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 300
	i64 6319713645133255417, ; 284: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 252
	i64 6357457916754632952, ; 285: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 417
	i64 6401687960814735282, ; 286: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 249
	i64 6416451242169474896, ; 287: ko\System.ServiceModel.NetNamedPipe.resources.dll => 0x590bd068b0201f50 => 373
	i64 6471714727257221498, ; 288: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 301
	i64 6478287442656530074, ; 289: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 305
	i64 6504860066809920875, ; 290: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 224
	i64 6506916921333231814, ; 291: ko\System.ServiceModel.Http.resources => 0x5a4d3676ff0bb0c6 => 347
	i64 6548213210057960872, ; 292: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 235
	i64 6557084851308642443, ; 293: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 280
	i64 6560151584539558821, ; 294: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 186
	i64 6589202984700901502, ; 295: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 285
	i64 6591971792923354531, ; 296: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 250
	i64 6617685658146568858, ; 297: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6698352322976258428, ; 298: cs\System.ServiceModel.NetNamedPipe.resources.dll => 0x5cf553f2c769997c => 367
	i64 6703725107163354527, ; 299: tr\System.ServiceModel.NetNamedPipe.resources => 0x5d086a779456d59f => 377
	i64 6713440830605852118, ; 300: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6739853162153639747, ; 301: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 302: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 313
	i64 6750700927172492327, ; 303: it\System.ServiceModel.Http.resources => 0x5daf4eb9fd043c27 => 345
	i64 6754049461663216379, ; 304: ja\System.ServiceModel.Primitives.resources.dll => 0x5dbb34336ddab2fb => 398
	i64 6772837112740759457, ; 305: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6786606130239981554, ; 306: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6790105737542025891, ; 307: it\System.ServiceModel.Federation.resources.dll => 0x5e3b4d315988c2a3 => 332
	i64 6798329586179154312, ; 308: System.Windows => 0x5e5884bd523ca188 => 154
	i64 6814185388980153342, ; 309: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 158
	i64 6829746631661060873, ; 310: pt-BR\System.ServiceModel.NetTcp.resources.dll => 0x5ec822603e140309 => 388
	i64 6876862101832370452, ; 311: System.Xml.Linq => 0x5f6f85a57d108914 => 155
	i64 6894844156784520562, ; 312: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 6918152283207106586, ; 313: fr\System.ServiceModel.Http.resources.dll => 0x600236d8fe9e001a => 344
	i64 6994714925497792253, ; 314: cs\System.ServiceModel.NetTcp.resources => 0x6112382a476b36fd => 380
	i64 7011053663211085209, ; 315: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 244
	i64 7041056731259377614, ; 316: pt-BR\System.ServiceModel.Federation.resources => 0x61b6dbcabe1697ce => 336
	i64 7060448593242414269, ; 317: System.Security.Cryptography.Xml => 0x61fbc096731edcbd => 202
	i64 7060896174307865760, ; 318: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 143
	i64 7083547580668757502, ; 319: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7101497697220435230, ; 320: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 321: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 245
	i64 7105430439328552570, ; 322: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 201
	i64 7112547816752919026, ; 323: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7186972659700597177, ; 324: MauiApp2 => 0x63bd418e47e601b9 => 0
	i64 7192745174564810625, ; 325: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 214
	i64 7262627442013704703, ; 326: zh-Hans\System.ServiceModel.Http.resources.dll => 0x64ca092df13b11ff => 352
	i64 7270811800166795866, ; 327: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7278193053534512468, ; 328: fr\System.ServiceModel.Primitives.resources.dll => 0x650156054aa3e554 => 396
	i64 7289912052297460952, ; 329: pt-BR\System.ServiceModel.Http.resources.dll => 0x652af86351076cd8 => 349
	i64 7299370801165188114, ; 330: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7316205155833392065, ; 331: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 332: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7349431895026339542, ; 333: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 213
	i64 7350910574546538092, ; 334: ru\System.ServiceModel.NetNamedPipe.resources => 0x6603ae3883824e6c => 376
	i64 7377312882064240630, ; 335: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7472041865435991508, ; 336: tr\System.ServiceModel.NetTcp.resources.dll => 0x67b2067cf028cdd4 => 390
	i64 7474619377462624881, ; 337: ko\System.ServiceModel.Http.resources.dll => 0x67bb2eb8b8e94271 => 347
	i64 7488575175965059935, ; 338: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 155
	i64 7489048572193775167, ; 339: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7507338075031127501, ; 340: pl\System.ServiceModel.NetNamedPipe.resources => 0x682f6c3422fec5cd => 374
	i64 7592577537120840276, ; 341: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7637303409920963731, ; 342: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7654504624184590948, ; 343: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7694700312542370399, ; 344: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7714652370974252055, ; 345: System.Private.CoreLib => 0x6b0ff375198b9c17 => 172
	i64 7725404731275645577, ; 346: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 253
	i64 7735176074855944702, ; 347: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 348: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 288
	i64 7742555799473854801, ; 349: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 308
	i64 7791074099216502080, ; 350: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7820441508502274321, ; 351: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 352: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 221
	i64 7919757340696389605, ; 353: Microsoft.Extensions.Diagnostics.Abstractions => 0x6de8a157378027e5 => 180
	i64 7975724199463739455, ; 354: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 319
	i64 8025517457475554965, ; 355: WindowsBase => 0x6f605d9b4786ce95 => 165
	i64 8031450141206250471, ; 356: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8064050204834738623, ; 357: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 358: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 247
	i64 8085230611270010360, ; 359: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 360: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 361: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8108129031893776750, ; 362: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 310
	i64 8113615946733131500, ; 363: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8117493672424589315, ; 364: zh-Hans\System.ServiceModel.NetFramingBase.resources.dll => 0x70a7217c9b594803 => 365
	i64 8161788945634753591, ; 365: pt-BR\System.ServiceModel.NetNamedPipe.resources => 0x71447fcd9444fc37 => 375
	i64 8167236081217502503, ; 366: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 168
	i64 8174477988419522883, ; 367: zh-Hans\System.ServiceModel.Http.resources => 0x7171946b93fed143 => 352
	i64 8185542183669246576, ; 368: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187568296582843689, ; 369: ru\System.ServiceModel.NetFramingBase.resources => 0x71a015fc74120d29 => 363
	i64 8187640529827139739, ; 370: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 292
	i64 8246048515196606205, ; 371: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 199
	i64 8263396617372552768, ; 372: zh-Hans\System.ServiceModel.NetNamedPipe.resources.dll => 0x72ad7b7130a7ce40 => 378
	i64 8264926008854159966, ; 373: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8290671195414145311, ; 374: ru\System.ServiceModel.Primitives.resources.dll => 0x730e6186c039291f => 402
	i64 8290740647658429042, ; 375: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8318905602908530212, ; 376: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8368701292315763008, ; 377: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8386351099740279196, ; 378: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 325
	i64 8398329775253868912, ; 379: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 230
	i64 8400357532724379117, ; 380: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 262
	i64 8410671156615598628, ; 381: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 382: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 251
	i64 8427103965103130678, ; 383: FarmacyAPI.dll => 0x74f3166855420836 => 406
	i64 8445211794174623818, ; 384: de\System.ServiceModel.NetFramingBase.resources.dll => 0x75336b61d4b7c04a => 355
	i64 8518192943965980473, ; 385: de\System.ServiceModel.Primitives.resources.dll => 0x7636b359e954c739 => 394
	i64 8518412311883997971, ; 386: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 387: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8598790081731763592, ; 388: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 241
	i64 8601935802264776013, ; 389: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 274
	i64 8623059219396073920, ; 390: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 391: Java.Interop => 0x77b654e585b55834 => 168
	i64 8638972117149407195, ; 392: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 393: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 261
	i64 8648495978913578441, ; 394: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 395: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 315
	i64 8684531736582871431, ; 396: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8725526185868997716, ; 397: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8740610862248308472, ; 398: Microsoft.IdentityModel.Tokens.Saml.dll => 0x794ce344fc3b2ef8 => 192
	i64 8750104989811284373, ; 399: zh-Hant\System.ServiceModel.NetFramingBase.resources => 0x796e9e20d1131995 => 366
	i64 8816904670177563593, ; 400: Microsoft.Extensions.Diagnostics => 0x7a5bf015646a93c9 => 179
	i64 8853378295825400934, ; 401: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 289
	i64 8941376889969657626, ; 402: System.Xml.XDocument => 0x7c1626e87187471a => 158
	i64 8951477988056063522, ; 403: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 264
	i64 8954753533646919997, ; 404: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 8955323522379913726, ; 405: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 416
	i64 9045785047181495996, ; 406: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 325
	i64 9138683372487561558, ; 407: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9206439850007503396, ; 408: pl\System.ServiceModel.NetTcp.resources => 0x7fc3d84409b2a224 => 387
	i64 9236758604623169489, ; 409: es\System.ServiceModel.Http.resources => 0x802f8f033098c7d1 => 343
	i64 9250544137016314866, ; 410: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 407
	i64 9263201321826310745, ; 411: ko\System.ServiceModel.Primitives.resources.dll => 0x808d80860e62da59 => 399
	i64 9280092456055116671, ; 412: pt-BR\System.ServiceModel.NetNamedPipe.resources.dll => 0x80c982ebb5f2937f => 375
	i64 9312692141327339315, ; 413: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 279
	i64 9316287416046110943, ; 414: MauiApp2.dll => 0x814a1a0b8adec8df => 0
	i64 9324707631942237306, ; 415: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 220
	i64 9363564275759486853, ; 416: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 299
	i64 9384974865304406479, ; 417: pl\System.ServiceModel.NetNamedPipe.resources.dll => 0x823e20ea907049cf => 374
	i64 9419757349738764784, ; 418: ja\System.ServiceModel.NetNamedPipe.resources.dll => 0x82b9b366cd8dd9f0 => 372
	i64 9427266486299436557, ; 419: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 189
	i64 9429125686736324352, ; 420: zh-Hans\System.ServiceModel.NetFramingBase.resources => 0x82dafbdabc6e0700 => 365
	i64 9468215723722196442, ; 421: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 159
	i64 9500688326720985260, ; 422: Microsoft.EntityFrameworkCore.SqlServer => 0x83d939b243e798ac => 411
	i64 9551379474083066910, ; 423: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 323
	i64 9554839972845591462, ; 424: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9575902398040817096, ; 425: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 284
	i64 9584643793929893533, ; 426: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9659729154652888475, ; 427: System.Text.RegularExpressions => 0x860e407c9991dd9b => 138
	i64 9662334977499516867, ; 428: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 429: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9678050649315576968, ; 430: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 231
	i64 9702891218465930390, ; 431: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9733213995311057333, ; 432: es\System.ServiceModel.Federation.resources => 0x8713528f596049b5 => 330
	i64 9773637193738963987, ; 433: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 295
	i64 9780093022148426479, ; 434: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 281
	i64 9781854986812340793, ; 435: cs\System.ServiceModel.NetFramingBase.resources.dll => 0x87c02148b5553a39 => 354
	i64 9808709177481450983, ; 436: Mono.Android.dll => 0x881f890734e555e7 => 171
	i64 9825649861376906464, ; 437: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 228
	i64 9834056768316610435, ; 438: System.Transactions.dll => 0x8879968718899783 => 150
	i64 9836529246295212050, ; 439: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9907349773706910547, ; 440: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 241
	i64 9933555792566666578, ; 441: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9956195530459977388, ; 442: Microsoft.Maui => 0x8a2b8315b36616ac => 197
	i64 9960800019978769040, ; 443: es\System.ServiceModel.Federation.resources.dll => 0x8a3bded7f589d290 => 330
	i64 9974604633896246661, ; 444: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 157
	i64 10017511394021241210, ; 445: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 184
	i64 10038780035334861115, ; 446: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10040763467948948093, ; 447: tr\System.ServiceModel.NetNamedPipe.resources.dll => 0x8b57f52d04d0fa7d => 377
	i64 10051358222726253779, ; 448: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10061990739975680329, ; 449: zh-Hant\System.ServiceModel.Federation.resources.dll => 0x8ba35f446d853149 => 340
	i64 10078727084704864206, ; 450: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 451: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10092835686693276772, ; 452: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 195
	i64 10096670194649521199, ; 453: System.ServiceModel.Primitives => 0x8c1e940c2e5bdc2f => 209
	i64 10105485790837105934, ; 454: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 143
	i64 10143853363526200146, ; 455: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 297
	i64 10197415184292957254, ; 456: ko\System.ServiceModel.Federation.resources => 0x8d847f14f6f4cc46 => 334
	i64 10205853378024263619, ; 457: Microsoft.Extensions.Configuration.Binder => 0x8da279930adb4fc3 => 176
	i64 10209869394718195525, ; 458: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 313
	i64 10226222362177979215, ; 459: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 290
	i64 10229024438826829339, ; 460: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 235
	i64 10236703004850800690, ; 461: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10245369515835430794, ; 462: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10321854143672141184, ; 463: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 287
	i64 10360651442923773544, ; 464: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 465: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 466: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 273
	i64 10406448008575299332, ; 467: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 293
	i64 10430153318873392755, ; 468: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 232
	i64 10462231721195350770, ; 469: it\System.ServiceModel.Primitives.resources => 0x91315051b3ac2af2 => 397
	i64 10469453728112873959, ; 470: pt-BR\System.ServiceModel.Primitives.resources.dll => 0x914af8b2388e91e7 => 401
	i64 10506226065143327199, ; 471: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 295
	i64 10546663366131771576, ; 472: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 473: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10595762989148858956, ; 474: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 159
	i64 10670374202010151210, ; 475: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 476: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10733493810775535810, ; 477: System.ServiceModel.NetFramingBase.dll => 0x94f507c09e2130c2 => 206
	i64 10761706286639228993, ; 478: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 327
	i64 10785150219063592792, ; 479: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10809043855025277762, ; 480: Microsoft.Extensions.Options.ConfigurationExtensions => 0x9601701e0c668b42 => 187
	i64 10811915265162633087, ; 481: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 414
	i64 10822644899632537592, ; 482: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10830817578243619689, ; 483: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10847732767863316357, ; 484: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 222
	i64 10857251597261229409, ; 485: pl\System.ServiceModel.NetFramingBase.resources.dll => 0x96acb4cdb3cc4d61 => 361
	i64 10889380495983713167, ; 486: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 415
	i64 10899834349646441345, ; 487: System.Web => 0x9743fd975946eb81 => 153
	i64 10913396506891090045, ; 488: tr\System.ServiceModel.Federation.resources.dll => 0x97742c4d263b787d => 338
	i64 10943875058216066601, ; 489: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 490: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 11002576679268595294, ; 491: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 183
	i64 11009005086950030778, ; 492: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 197
	i64 11018178252090604864, ; 493: Microsoft.IdentityModel.Xml => 0x98e86ebe53cb7d40 => 193
	i64 11019817191295005410, ; 494: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 219
	i64 11023048688141570732, ; 495: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 496: System.Xml => 0x992e31d0412bf7fc => 163
	i64 11071824625609515081, ; 497: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 285
	i64 11103970607964515343, ; 498: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 306
	i64 11136029745144976707, ; 499: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 283
	i64 11156122287428000958, ; 500: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 321
	i64 11157797727133427779, ; 501: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 302
	i64 11157832426039186247, ; 502: System.ServiceModel.NetTcp.dll => 0x9ad8957989669347 => 208
	i64 11162124722117608902, ; 503: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 278
	i64 11188319605227840848, ; 504: System.Threading.Overlapped => 0x9b44e5671724e550 => 140
	i64 11220793807500858938, ; 505: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 309
	i64 11226290749488709958, ; 506: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 186
	i64 11235648312900863002, ; 507: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11280940017990338692, ; 508: ru\System.ServiceModel.NetFramingBase.resources.dll => 0x9c8df32d68cd8884 => 363
	i64 11289176806901695813, ; 509: zh-Hans\System.ServiceModel.Federation.resources => 0x9cab367e45f44545 => 339
	i64 11329751333533450475, ; 510: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 147
	i64 11340910727871153756, ; 511: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 234
	i64 11347436699239206956, ; 512: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 162
	i64 11392833485892708388, ; 513: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 263
	i64 11399145176672566267, ; 514: ko\System.ServiceModel.NetFramingBase.resources.dll => 0x9e31e62496acfbfb => 360
	i64 11430949118656437382, ; 515: zh-Hant\System.ServiceModel.NetTcp.resources.dll => 0x9ea2e3a8df14dc86 => 392
	i64 11432101114902388181, ; 516: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 517: Mono.Android.Export => 0x9edabf8623efc131 => 169
	i64 11448276831755070604, ; 518: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11485890710487134646, ; 519: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11500833653984418941, ; 520: ru\System.ServiceModel.Http.resources.dll => 0x9f9b2b4636995c7d => 350
	i64 11503653075602048397, ; 521: System.ServiceModel.Http => 0x9fa52f85f697058d => 205
	i64 11508496261504176197, ; 522: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 244
	i64 11518296021396496455, ; 523: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 307
	i64 11529969570048099689, ; 524: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 278
	i64 11530571088791430846, ; 525: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 182
	i64 11580057168383206117, ; 526: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 217
	i64 11591352189662810718, ; 527: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 271
	i64 11597940890313164233, ; 528: netstandard => 0xa0f429ca8d1805c9 => 167
	i64 11672361001936329215, ; 529: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 245
	i64 11692977985522001935, ; 530: System.Threading.Overlapped.dll => 0xa245cd869980680f => 140
	i64 11707554492040141440, ; 531: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11735746404054041039, ; 532: ko\System.ServiceModel.Federation.resources.dll => 0xa2ddbf2d03b581cf => 334
	i64 11743665907891708234, ; 533: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 144
	i64 11855031688536399763, ; 534: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 324
	i64 11949116578634023363, ; 535: zh-Hant\System.ServiceModel.NetTcp.resources => 0xa5d3ca38193641c3 => 392
	i64 11991047634523762324, ; 536: System.Net => 0xa668c24ad493ae94 => 81
	i64 12040886584167504988, ; 537: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12063623837170009990, ; 538: System.Security => 0xa76a99f6ce740786 => 130
	i64 12089821315035631174, ; 539: Swashbuckle.AspNetCore.SwaggerGen.dll => 0xa7c7ac6e70a50e46 => 408
	i64 12096697103934194533, ; 540: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 541: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12103502009779171514, ; 542: ko\System.ServiceModel.NetTcp.resources.dll => 0xa7f846f3671d30ba => 386
	i64 12123043025855404482, ; 543: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12137774235383566651, ; 544: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 275
	i64 12145679461940342714, ; 545: System.Text.Json => 0xa88e1f1ebcb62fba => 137
	i64 12148258109226484831, ; 546: System.ServiceModel.NetFramingBase => 0xa8974862d834045f => 206
	i64 12153312702598915601, ; 547: ja\System.ServiceModel.NetFramingBase.resources => 0xa8a93d8312a6a611 => 359
	i64 12191646537372739477, ; 548: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 211
	i64 12201331334810686224, ; 549: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12208489443106253639, ; 550: ja\System.ServiceModel.NetFramingBase.resources.dll => 0xa96d447714746b47 => 359
	i64 12269460666702402136, ; 551: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12332222936682028543, ; 552: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12342184558428949313, ; 553: System.ServiceModel.Primitives.dll => 0xab483f76d5780b41 => 209
	i64 12375446203996702057, ; 554: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12451044538927396471, ; 555: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 243
	i64 12466513435562512481, ; 556: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 257
	i64 12475113361194491050, ; 557: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 417
	i64 12487638416075308985, ; 558: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 237
	i64 12493213219680520345, ; 559: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 415
	i64 12517810545449516888, ; 560: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12538491095302438457, ; 561: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 225
	i64 12550732019250633519, ; 562: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12563362775336008096, ; 563: de\System.ServiceModel.Http.resources => 0xae5a07e17044b9a0 => 342
	i64 12574057397895485952, ; 564: Swashbuckle.AspNetCore.SwaggerGen => 0xae8006954aeeda00 => 408
	i64 12594160867402462460, ; 565: fr\System.ServiceModel.NetNamedPipe.resources => 0xaec7729509a634fc => 370
	i64 12699999919562409296, ; 566: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 567: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 226
	i64 12708238894395270091, ; 568: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 569: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 570: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12753841065332862057, ; 571: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 280
	i64 12828192437253469131, ; 572: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 291
	i64 12835242264250840079, ; 573: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12843321153144804894, ; 574: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 188
	i64 12843770487262409629, ; 575: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 576: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12925973142558461920, ; 577: de\System.ServiceModel.NetTcp.resources => 0xb3624816a26fcfe0 => 381
	i64 12969436488308964832, ; 578: cs\System.ServiceModel.Primitives.resources.dll => 0xb3fcb1c566a53de0 => 393
	i64 12982280885948128408, ; 579: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 236
	i64 12989346753972519995, ; 580: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 294
	i64 13005833372463390146, ; 581: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 315
	i64 13053546704887121209, ; 582: zh-Hans\System.ServiceModel.Primitives.resources.dll => 0xb527839143c48539 => 404
	i64 13068258254871114833, ; 583: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13113583242634760252, ; 584: Microsoft.IdentityModel.Protocols.WsTrust.dll => 0xb5fcce7afdc2903c => 190
	i64 13129914918964716986, ; 585: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 240
	i64 13164229635607550844, ; 586: FarmacyAPI => 0xb6b0bd1b440edb7c => 406
	i64 13173818576982874404, ; 587: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13237365648602513252, ; 588: zh-Hant\System.ServiceModel.Http.resources.dll => 0xb7b491ec3ee93f64 => 353
	i64 13276998518761325296, ; 589: it\System.ServiceModel.NetTcp.resources.dll => 0xb8415fceea2802f0 => 384
	i64 13343850469010654401, ; 590: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 170
	i64 13370592475155966277, ; 591: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13381594904270902445, ; 592: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 303
	i64 13401370062847626945, ; 593: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 275
	i64 13404347523447273790, ; 594: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 230
	i64 13431476299110033919, ; 595: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13454009404024712428, ; 596: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 286
	i64 13463706743370286408, ; 597: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 598: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 288
	i64 13472767881616983716, ; 599: ru\System.ServiceModel.NetTcp.resources.dll => 0xbaf8e301ad1286a4 => 389
	i64 13491513212026656886, ; 600: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 223
	i64 13540124433173649601, ; 601: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 324
	i64 13572454107664307259, ; 602: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 265
	i64 13578472628727169633, ; 603: System.Xml.XPath => 0xbc706ce9fba5c261 => 160
	i64 13580399111273692417, ; 604: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 605: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 236
	i64 13647894001087880694, ; 606: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 607: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 216
	i64 13702626353344114072, ; 608: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13710614125866346983, ; 609: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 610: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 611: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13768883594457632599, ; 612: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13828521679616088467, ; 613: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 289
	i64 13830070810343648044, ; 614: System.ServiceModel.Http.dll => 0xbfee48208d082b2c => 205
	i64 13874392747353528814, ; 615: it\System.ServiceModel.Federation.resources => 0xc08bbeb1ac4359ee => 332
	i64 13881769479078963060, ; 616: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13911222732217019342, ; 617: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13928444506500929300, ; 618: System.Windows.dll => 0xc14bc67b8bba9714 => 154
	i64 13947035440391415689, ; 619: zh-Hans\System.ServiceModel.Primitives.resources => 0xc18dd2d6a6506789 => 404
	i64 13959074834287824816, ; 620: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 243
	i64 13984310788332443955, ; 621: Swashbuckle.AspNetCore.Swagger.dll => 0xc2124091e737d933 => 409
	i64 14062537208056738663, ; 622: cs\System.ServiceModel.NetNamedPipe.resources => 0xc3282b158eef7367 => 367
	i64 14075334701871371868, ; 623: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14124974489674258913, ; 624: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 225
	i64 14125464355221830302, ; 625: System.Threading.dll => 0xc407bafdbc707a9e => 148
	i64 14133832980772275001, ; 626: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 407
	i64 14178052285788134900, ; 627: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 212
	i64 14212104595480609394, ; 628: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 629: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 630: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 631: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14254574811015963973, ; 632: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14261073672896646636, ; 633: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 263
	i64 14298246716367104064, ; 634: System.Web.dll => 0xc66d93a217f4e840 => 153
	i64 14327695147300244862, ; 635: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 636: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14331727281556788554, ; 637: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 213
	i64 14346402571976470310, ; 638: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14349907877893689639, ; 639: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 317
	i64 14362574057949885361, ; 640: it\System.ServiceModel.NetNamedPipe.resources.dll => 0xc7521d027057f3b1 => 371
	i64 14421361542546680254, ; 641: fr\System.ServiceModel.Federation.resources.dll => 0xc822f7ea50f969be => 331
	i64 14461014870687870182, ; 642: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14464374589798375073, ; 643: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 318
	i64 14486659737292545672, ; 644: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 248
	i64 14491877563792607819, ; 645: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 326
	i64 14495724990987328804, ; 646: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 266
	i64 14497605124368440498, ; 647: pt-BR\System.ServiceModel.NetFramingBase.resources => 0xc931d70c8bdd1cb2 => 362
	i64 14551742072151931844, ; 648: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14561513370130550166, ; 649: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14574160591280636898, ; 650: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14610046442689856844, ; 651: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 296
	i64 14622043554576106986, ; 652: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14644440854989303794, ; 653: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 258
	i64 14669215534098758659, ; 654: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 177
	i64 14690985099581930927, ; 655: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 152
	i64 14705122255218365489, ; 656: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 310
	i64 14721940850768001396, ; 657: ru\System.ServiceModel.NetNamedPipe.resources.dll => 0xcc4ed7341e56b974 => 376
	i64 14735017007120366644, ; 658: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 309
	i64 14741804258040025864, ; 659: es\System.ServiceModel.NetNamedPipe.resources => 0xcc9568de04d11308 => 369
	i64 14741906619329732858, ; 660: es\System.ServiceModel.Http.resources.dll => 0xcc95c5f6dd20e0fa => 343
	i64 14744092281598614090, ; 661: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 326
	i64 14750216453141343598, ; 662: ja\System.ServiceModel.Http.resources => 0xccb34bb6d19cad6e => 346
	i64 14792063746108907174, ; 663: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 286
	i64 14792991364388157008, ; 664: es\System.ServiceModel.NetTcp.resources => 0xcd4b4344efc6f650 => 382
	i64 14832630590065248058, ; 665: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14839664071391251657, ; 666: System.ServiceModel.Duplex => 0xcdf113d959670cc9 => 203
	i64 14852515768018889994, ; 667: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 234
	i64 14870951093111881137, ; 668: zh-Hans\System.ServiceModel.NetTcp.resources => 0xce603b3ac123fdb1 => 391
	i64 14889905118082851278, ; 669: GoogleGson.dll => 0xcea391d0969961ce => 173
	i64 14904040806490515477, ; 670: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 294
	i64 14912225920358050525, ; 671: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14935719434541007538, ; 672: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 673: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 178
	i64 14984936317414011727, ; 674: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 675: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 14988210264188246988, ; 676: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 237
	i64 15015154896917945444, ; 677: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15024878362326791334, ; 678: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15033183115947713165, ; 679: cs\System.ServiceModel.Primitives.resources => 0xd0a098650d76a28d => 393
	i64 15051741671811457419, ; 680: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0xd0e2874d8f44218b => 180
	i64 15071021337266399595, ; 681: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 682: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15111608613780139878, ; 683: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 311
	i64 15115185479366240210, ; 684: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 685: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15150743910298169673, ; 686: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 264
	i64 15203009853192377507, ; 687: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 316
	i64 15227001540531775957, ; 688: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 175
	i64 15234786388537674379, ; 689: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15250465174479574862, ; 690: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15272359115529052076, ; 691: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 227
	i64 15279429628684179188, ; 692: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 292
	i64 15299439993936780255, ; 693: System.Xml.XPath.dll => 0xd452879d55019bdf => 160
	i64 15338463749992804988, ; 694: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15370334346939861994, ; 695: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 232
	i64 15391712275433856905, ; 696: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 178
	i64 15393074522552085424, ; 697: tr\System.ServiceModel.Http.resources.dll => 0xd59f2fb8e5d52bb0 => 351
	i64 15412490934096474927, ; 698: System.ServiceModel.Federation => 0xd5e42ad87ebfb32f => 204
	i64 15413989682962769581, ; 699: es\System.ServiceModel.Primitives.resources => 0xd5e97df3288826ad => 395
	i64 15472743225642400231, ; 700: zh-Hant\System.ServiceModel.Federation.resources => 0xd6ba39fc513f39e7 => 340
	i64 15512084913707906237, ; 701: pt-BR\System.ServiceModel.Http.resources => 0xd745ff0adf4174bd => 349
	i64 15526743539506359484, ; 702: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 703: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 704: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15536481058354060254, ; 705: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 298
	i64 15541854775306130054, ; 706: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 707: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15569033818817228135, ; 708: tr\System.ServiceModel.NetFramingBase.resources.dll => 0xd81051c51aa4ed67 => 364
	i64 15582737692548360875, ; 709: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 256
	i64 15609085926864131306, ; 710: System.dll => 0xd89e9cf3334914ea => 164
	i64 15637857104874081957, ; 711: System.ServiceModel.NetNamedPipe => 0xd904d42f18568ea5 => 207
	i64 15661133872274321916, ; 712: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 156
	i64 15710114879900314733, ; 713: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15741736072247611081, ; 714: de\System.ServiceModel.Federation.resources.dll => 0xda75e18dee458ec9 => 329
	i64 15755368083429170162, ; 715: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15777549416145007739, ; 716: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 270
	i64 15783653065526199428, ; 717: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 299
	i64 15796759896944584724, ; 718: Swashbuckle.AspNetCore.SwaggerUI => 0xdb395d6e7384a814 => 410
	i64 15817206913877585035, ; 719: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 144
	i64 15847085070278954535, ; 720: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 139
	i64 15885744048853936810, ; 721: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15928521404965645318, ; 722: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 194
	i64 15934062614519587357, ; 723: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 724: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 725: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 142
	i64 15971679995444160383, ; 726: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 16018552496348375205, ; 727: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16046481083542319511, ; 728: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 185
	i64 16054465462676478687, ; 729: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16056281320585338352, ; 730: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 318
	i64 16114460324092078703, ; 731: Microsoft.IdentityModel.Xml.dll => 0xdfa2104964a26a6f => 193
	i64 16154507427712707110, ; 732: System => 0xe03056ea4e39aa26 => 164
	i64 16219561732052121626, ; 733: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16272480664611126357, ; 734: fr\System.ServiceModel.NetFramingBase.resources => 0xe1d376f2fc8efc55 => 357
	i64 16288847719894691167, ; 735: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 312
	i64 16315482530584035869, ; 736: WindowsBase.dll => 0xe26c3ceb1e8d821d => 165
	i64 16321164108206115771, ; 737: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 183
	i64 16337011941688632206, ; 738: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16361933716545543812, ; 739: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 242
	i64 16423015068819898779, ; 740: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 291
	i64 16454459195343277943, ; 741: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16465012559999924934, ; 742: ko\System.ServiceModel.NetNamedPipe.resources => 0xe47f79b01d23fac6 => 373
	i64 16496768397145114574, ; 743: Mono.Android.Export.dll => 0xe4f04b741db987ce => 169
	i64 16558262036769511634, ; 744: Microsoft.Extensions.Http => 0xe5cac397cf7b98d2 => 181
	i64 16571052248489204195, ; 745: es\System.ServiceModel.NetFramingBase.resources => 0xe5f8343909a319e3 => 356
	i64 16589693266713801121, ; 746: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 255
	i64 16621146507174665210, ; 747: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 229
	i64 16649148416072044166, ; 748: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 199
	i64 16650408747315020520, ; 749: es\System.ServiceModel.NetNamedPipe.resources.dll => 0xe7122289bcc4c2e8 => 369
	i64 16677317093839702854, ; 750: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 262
	i64 16702652415771857902, ; 751: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 151
	i64 16709499819875633724, ; 752: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 753: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16758309481308491337, ; 754: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 755: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 756: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16803648858859583026, ; 757: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 311
	i64 16822611501064131242, ; 758: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 759: mscorlib => 0xe99c30c1484d7f4f => 166
	i64 16856067890322379635, ; 760: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 761: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 138
	i64 16917672339696510452, ; 762: pl\System.ServiceModel.NetTcp.resources.dll => 0xeac7a55bfa0fe5f4 => 387
	i64 16933958494752847024, ; 763: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16942731696432749159, ; 764: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 319
	i64 16977952268158210142, ; 765: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 16989020923549080504, ; 766: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 255
	i64 16998075588627545693, ; 767: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 260
	i64 17008137082415910100, ; 768: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 769: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 218
	i64 17031351772568316411, ; 770: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 259
	i64 17031924682156397346, ; 771: pl\System.ServiceModel.Primitives.resources => 0xec5d8d426923d322 => 400
	i64 17037200463775726619, ; 772: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 246
	i64 17053734385704495427, ; 773: fr\System.ServiceModel.NetFramingBase.resources.dll => 0xecab0911b9c7e943 => 357
	i64 17062143951396181894, ; 774: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17101677393452997189, ; 775: de\System.ServiceModel.Federation.resources => 0xed555cfb14181a45 => 329
	i64 17118171214553292978, ; 776: System.Threading.Channels => 0xed8ff6060fc420b2 => 139
	i64 17137864900836977098, ; 777: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 191
	i64 17187273293601214786, ; 778: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17201328579425343169, ; 779: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 780: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17203614576212522419, ; 781: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 314
	i64 17230721278011714856, ; 782: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 783: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 149
	i64 17260702271250283638, ; 784: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17276988206817606697, ; 785: Microsoft.OpenApi.dll => 0xefc4313c97f9fc29 => 413
	i64 17310278548634113468, ; 786: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 304
	i64 17333249706306540043, ; 787: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 788: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17342750010158924305, ; 789: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 304
	i64 17360349973592121190, ; 790: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 284
	i64 17399987107450734316, ; 791: cs\System.ServiceModel.Http.resources.dll => 0xf1792c15cbfa46ec => 341
	i64 17470386307322966175, ; 792: System.Threading.Timer => 0xf27347c8d0d5709f => 147
	i64 17509662556995089465, ; 793: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17514990004910432069, ; 794: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 302
	i64 17522591619082469157, ; 795: GoogleGson => 0xf32cc03d27a5bf25 => 173
	i64 17590473451926037903, ; 796: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 211
	i64 17623389608345532001, ; 797: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 314
	i64 17627500474728259406, ; 798: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17649468012153667028, ; 799: de\System.ServiceModel.Http.resources.dll => 0xf4ef81a56b09fdd4 => 342
	i64 17685511033268820096, ; 800: zh-Hans\System.ServiceModel.NetNamedPipe.resources => 0xf56f8e95393d5880 => 378
	i64 17685921127322830888, ; 801: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17704177640604968747, ; 802: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 257
	i64 17710060891934109755, ; 803: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 254
	i64 17712670374920797664, ; 804: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17735863702094357145, ; 805: pl\System.ServiceModel.Http.resources.dll => 0xf622721184142299 => 348
	i64 17777860260071588075, ; 806: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17790600151040787804, ; 807: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 189
	i64 17827813215687577648, ; 808: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 305
	i64 17838668724098252521, ; 809: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17871147545075994307, ; 810: cs\System.ServiceModel.NetFramingBase.resources => 0xf8031201c0d94ec3 => 354
	i64 17891337867145587222, ; 811: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 287
	i64 17907856582667321842, ; 812: ru\System.ServiceModel.Federation.resources.dll => 0xf8857cae9a86c1f2 => 337
	i64 17928294245072900555, ; 813: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17942426894774770628, ; 814: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 298
	i64 17992315986609351877, ; 815: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 161
	i64 18025913125965088385, ; 816: System.Threading => 0xfa28e87b91334681 => 148
	i64 18064602570212040998, ; 817: fr\System.ServiceModel.NetNamedPipe.resources.dll => 0xfab25c53c618e126 => 370
	i64 18116111925905154859, ; 818: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 223
	i64 18121036031235206392, ; 819: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 259
	i64 18146411883821974900, ; 820: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 821: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18203743254473369877, ; 822: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 201
	i64 18225059387460068507, ; 823: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 146
	i64 18245806341561545090, ; 824: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 825: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 240
	i64 18305135509493619199, ; 826: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 261
	i64 18318849532986632368, ; 827: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18324163916253801303, ; 828: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 308
	i64 18342408478508122430, ; 829: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 307
	i64 18358161419737137786, ; 830: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 303
	i64 18362437444048002214, ; 831: tr\System.ServiceModel.Primitives.resources => 0xfed47b9126d01ca6 => 403
	i64 18380184030268848184, ; 832: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 277
	i64 18393880674450668525, ; 833: cs\System.ServiceModel.NetTcp.resources.dll => 0xff443104b98dfbed => 380
	i64 18428404840311395189, ; 834: System.Security.Cryptography.Xml.dll => 0xffbed8907bd99375 => 202
	i64 18439108438687598470 ; 835: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [836 x i32] [
	i32 239, ; 0
	i32 208, ; 1
	i32 188, ; 2
	i32 171, ; 3
	i32 198, ; 4
	i32 207, ; 5
	i32 58, ; 6
	i32 226, ; 7
	i32 151, ; 8
	i32 267, ; 9
	i32 204, ; 10
	i32 336, ; 11
	i32 270, ; 12
	i32 233, ; 13
	i32 335, ; 14
	i32 132, ; 15
	i32 187, ; 16
	i32 364, ; 17
	i32 56, ; 18
	i32 269, ; 19
	i32 210, ; 20
	i32 185, ; 21
	i32 95, ; 22
	i32 405, ; 23
	i32 252, ; 24
	i32 129, ; 25
	i32 176, ; 26
	i32 416, ; 27
	i32 203, ; 28
	i32 335, ; 29
	i32 145, ; 30
	i32 227, ; 31
	i32 18, ; 32
	i32 306, ; 33
	i32 333, ; 34
	i32 238, ; 35
	i32 253, ; 36
	i32 150, ; 37
	i32 104, ; 38
	i32 95, ; 39
	i32 372, ; 40
	i32 282, ; 41
	i32 383, ; 42
	i32 36, ; 43
	i32 411, ; 44
	i32 28, ; 45
	i32 222, ; 46
	i32 192, ; 47
	i32 385, ; 48
	i32 260, ; 49
	i32 346, ; 50
	i32 50, ; 51
	i32 391, ; 52
	i32 115, ; 53
	i32 70, ; 54
	i32 195, ; 55
	i32 65, ; 56
	i32 170, ; 57
	i32 145, ; 58
	i32 397, ; 59
	i32 281, ; 60
	i32 399, ; 61
	i32 221, ; 62
	i32 256, ; 63
	i32 246, ; 64
	i32 345, ; 65
	i32 40, ; 66
	i32 89, ; 67
	i32 351, ; 68
	i32 81, ; 69
	i32 410, ; 70
	i32 200, ; 71
	i32 66, ; 72
	i32 62, ; 73
	i32 331, ; 74
	i32 86, ; 75
	i32 220, ; 76
	i32 379, ; 77
	i32 106, ; 78
	i32 300, ; 79
	i32 267, ; 80
	i32 102, ; 81
	i32 35, ; 82
	i32 217, ; 83
	i32 322, ; 84
	i32 269, ; 85
	i32 196, ; 86
	i32 385, ; 87
	i32 119, ; 88
	i32 337, ; 89
	i32 254, ; 90
	i32 142, ; 91
	i32 389, ; 92
	i32 141, ; 93
	i32 290, ; 94
	i32 53, ; 95
	i32 35, ; 96
	i32 141, ; 97
	i32 200, ; 98
	i32 214, ; 99
	i32 224, ; 100
	i32 368, ; 101
	i32 384, ; 102
	i32 412, ; 103
	i32 184, ; 104
	i32 238, ; 105
	i32 402, ; 106
	i32 8, ; 107
	i32 14, ; 108
	i32 266, ; 109
	i32 355, ; 110
	i32 51, ; 111
	i32 249, ; 112
	i32 348, ; 113
	i32 136, ; 114
	i32 101, ; 115
	i32 231, ; 116
	i32 276, ; 117
	i32 116, ; 118
	i32 215, ; 119
	i32 163, ; 120
	i32 321, ; 121
	i32 191, ; 122
	i32 166, ; 123
	i32 381, ; 124
	i32 67, ; 125
	i32 177, ; 126
	i32 296, ; 127
	i32 80, ; 128
	i32 101, ; 129
	i32 271, ; 130
	i32 117, ; 131
	i32 301, ; 132
	i32 283, ; 133
	i32 328, ; 134
	i32 413, ; 135
	i32 403, ; 136
	i32 78, ; 137
	i32 282, ; 138
	i32 382, ; 139
	i32 353, ; 140
	i32 114, ; 141
	i32 121, ; 142
	i32 48, ; 143
	i32 128, ; 144
	i32 247, ; 145
	i32 218, ; 146
	i32 82, ; 147
	i32 110, ; 148
	i32 333, ; 149
	i32 75, ; 150
	i32 293, ; 151
	i32 198, ; 152
	i32 358, ; 153
	i32 53, ; 154
	i32 273, ; 155
	i32 174, ; 156
	i32 69, ; 157
	i32 272, ; 158
	i32 83, ; 159
	i32 172, ; 160
	i32 386, ; 161
	i32 361, ; 162
	i32 316, ; 163
	i32 116, ; 164
	i32 175, ; 165
	i32 156, ; 166
	i32 174, ; 167
	i32 190, ; 168
	i32 212, ; 169
	i32 167, ; 170
	i32 371, ; 171
	i32 265, ; 172
	i32 239, ; 173
	i32 366, ; 174
	i32 344, ; 175
	i32 182, ; 176
	i32 32, ; 177
	i32 196, ; 178
	i32 395, ; 179
	i32 122, ; 180
	i32 72, ; 181
	i32 62, ; 182
	i32 161, ; 183
	i32 113, ; 184
	i32 297, ; 185
	i32 88, ; 186
	i32 194, ; 187
	i32 327, ; 188
	i32 105, ; 189
	i32 18, ; 190
	i32 146, ; 191
	i32 118, ; 192
	i32 58, ; 193
	i32 233, ; 194
	i32 17, ; 195
	i32 338, ; 196
	i32 52, ; 197
	i32 92, ; 198
	i32 341, ; 199
	i32 322, ; 200
	i32 55, ; 201
	i32 129, ; 202
	i32 400, ; 203
	i32 152, ; 204
	i32 41, ; 205
	i32 414, ; 206
	i32 92, ; 207
	i32 358, ; 208
	i32 412, ; 209
	i32 401, ; 210
	i32 362, ; 211
	i32 277, ; 212
	i32 181, ; 213
	i32 50, ; 214
	i32 162, ; 215
	i32 13, ; 216
	i32 251, ; 217
	i32 215, ; 218
	i32 272, ; 219
	i32 36, ; 220
	i32 67, ; 221
	i32 409, ; 222
	i32 109, ; 223
	i32 312, ; 224
	i32 339, ; 225
	i32 320, ; 226
	i32 216, ; 227
	i32 398, ; 228
	i32 99, ; 229
	i32 99, ; 230
	i32 11, ; 231
	i32 405, ; 232
	i32 350, ; 233
	i32 11, ; 234
	i32 258, ; 235
	i32 25, ; 236
	i32 128, ; 237
	i32 76, ; 238
	i32 250, ; 239
	i32 109, ; 240
	i32 356, ; 241
	i32 276, ; 242
	i32 274, ; 243
	i32 106, ; 244
	i32 2, ; 245
	i32 394, ; 246
	i32 26, ; 247
	i32 229, ; 248
	i32 157, ; 249
	i32 320, ; 250
	i32 21, ; 251
	i32 323, ; 252
	i32 49, ; 253
	i32 43, ; 254
	i32 126, ; 255
	i32 219, ; 256
	i32 59, ; 257
	i32 119, ; 258
	i32 210, ; 259
	i32 279, ; 260
	i32 242, ; 261
	i32 228, ; 262
	i32 3, ; 263
	i32 396, ; 264
	i32 248, ; 265
	i32 390, ; 266
	i32 328, ; 267
	i32 268, ; 268
	i32 388, ; 269
	i32 38, ; 270
	i32 124, ; 271
	i32 379, ; 272
	i32 179, ; 273
	i32 268, ; 274
	i32 383, ; 275
	i32 317, ; 276
	i32 137, ; 277
	i32 149, ; 278
	i32 368, ; 279
	i32 85, ; 280
	i32 90, ; 281
	i32 360, ; 282
	i32 300, ; 283
	i32 252, ; 284
	i32 417, ; 285
	i32 249, ; 286
	i32 373, ; 287
	i32 301, ; 288
	i32 305, ; 289
	i32 224, ; 290
	i32 347, ; 291
	i32 235, ; 292
	i32 280, ; 293
	i32 186, ; 294
	i32 285, ; 295
	i32 250, ; 296
	i32 133, ; 297
	i32 367, ; 298
	i32 377, ; 299
	i32 96, ; 300
	i32 3, ; 301
	i32 313, ; 302
	i32 345, ; 303
	i32 398, ; 304
	i32 105, ; 305
	i32 33, ; 306
	i32 332, ; 307
	i32 154, ; 308
	i32 158, ; 309
	i32 388, ; 310
	i32 155, ; 311
	i32 82, ; 312
	i32 344, ; 313
	i32 380, ; 314
	i32 244, ; 315
	i32 336, ; 316
	i32 202, ; 317
	i32 143, ; 318
	i32 87, ; 319
	i32 19, ; 320
	i32 245, ; 321
	i32 201, ; 322
	i32 51, ; 323
	i32 0, ; 324
	i32 214, ; 325
	i32 352, ; 326
	i32 61, ; 327
	i32 396, ; 328
	i32 349, ; 329
	i32 54, ; 330
	i32 4, ; 331
	i32 97, ; 332
	i32 213, ; 333
	i32 376, ; 334
	i32 17, ; 335
	i32 390, ; 336
	i32 347, ; 337
	i32 155, ; 338
	i32 84, ; 339
	i32 374, ; 340
	i32 29, ; 341
	i32 45, ; 342
	i32 64, ; 343
	i32 66, ; 344
	i32 172, ; 345
	i32 253, ; 346
	i32 1, ; 347
	i32 288, ; 348
	i32 308, ; 349
	i32 47, ; 350
	i32 24, ; 351
	i32 221, ; 352
	i32 180, ; 353
	i32 319, ; 354
	i32 165, ; 355
	i32 108, ; 356
	i32 12, ; 357
	i32 247, ; 358
	i32 63, ; 359
	i32 27, ; 360
	i32 23, ; 361
	i32 310, ; 362
	i32 93, ; 363
	i32 365, ; 364
	i32 375, ; 365
	i32 168, ; 366
	i32 352, ; 367
	i32 12, ; 368
	i32 363, ; 369
	i32 292, ; 370
	i32 199, ; 371
	i32 378, ; 372
	i32 29, ; 373
	i32 402, ; 374
	i32 103, ; 375
	i32 14, ; 376
	i32 126, ; 377
	i32 325, ; 378
	i32 230, ; 379
	i32 262, ; 380
	i32 91, ; 381
	i32 251, ; 382
	i32 406, ; 383
	i32 355, ; 384
	i32 394, ; 385
	i32 9, ; 386
	i32 86, ; 387
	i32 241, ; 388
	i32 274, ; 389
	i32 71, ; 390
	i32 168, ; 391
	i32 1, ; 392
	i32 261, ; 393
	i32 5, ; 394
	i32 315, ; 395
	i32 44, ; 396
	i32 27, ; 397
	i32 192, ; 398
	i32 366, ; 399
	i32 179, ; 400
	i32 289, ; 401
	i32 158, ; 402
	i32 264, ; 403
	i32 112, ; 404
	i32 416, ; 405
	i32 325, ; 406
	i32 121, ; 407
	i32 387, ; 408
	i32 343, ; 409
	i32 407, ; 410
	i32 399, ; 411
	i32 375, ; 412
	i32 279, ; 413
	i32 0, ; 414
	i32 220, ; 415
	i32 299, ; 416
	i32 374, ; 417
	i32 372, ; 418
	i32 189, ; 419
	i32 365, ; 420
	i32 159, ; 421
	i32 411, ; 422
	i32 323, ; 423
	i32 131, ; 424
	i32 284, ; 425
	i32 57, ; 426
	i32 138, ; 427
	i32 83, ; 428
	i32 30, ; 429
	i32 231, ; 430
	i32 10, ; 431
	i32 330, ; 432
	i32 295, ; 433
	i32 281, ; 434
	i32 354, ; 435
	i32 171, ; 436
	i32 228, ; 437
	i32 150, ; 438
	i32 94, ; 439
	i32 241, ; 440
	i32 60, ; 441
	i32 197, ; 442
	i32 330, ; 443
	i32 157, ; 444
	i32 184, ; 445
	i32 64, ; 446
	i32 377, ; 447
	i32 88, ; 448
	i32 340, ; 449
	i32 79, ; 450
	i32 47, ; 451
	i32 195, ; 452
	i32 209, ; 453
	i32 143, ; 454
	i32 297, ; 455
	i32 334, ; 456
	i32 176, ; 457
	i32 313, ; 458
	i32 290, ; 459
	i32 235, ; 460
	i32 74, ; 461
	i32 91, ; 462
	i32 287, ; 463
	i32 135, ; 464
	i32 90, ; 465
	i32 273, ; 466
	i32 293, ; 467
	i32 232, ; 468
	i32 397, ; 469
	i32 401, ; 470
	i32 295, ; 471
	i32 112, ; 472
	i32 42, ; 473
	i32 159, ; 474
	i32 4, ; 475
	i32 103, ; 476
	i32 206, ; 477
	i32 327, ; 478
	i32 70, ; 479
	i32 187, ; 480
	i32 414, ; 481
	i32 60, ; 482
	i32 39, ; 483
	i32 222, ; 484
	i32 361, ; 485
	i32 415, ; 486
	i32 153, ; 487
	i32 338, ; 488
	i32 56, ; 489
	i32 34, ; 490
	i32 183, ; 491
	i32 197, ; 492
	i32 193, ; 493
	i32 219, ; 494
	i32 21, ; 495
	i32 163, ; 496
	i32 285, ; 497
	i32 306, ; 498
	i32 283, ; 499
	i32 321, ; 500
	i32 302, ; 501
	i32 208, ; 502
	i32 278, ; 503
	i32 140, ; 504
	i32 309, ; 505
	i32 186, ; 506
	i32 89, ; 507
	i32 363, ; 508
	i32 339, ; 509
	i32 147, ; 510
	i32 234, ; 511
	i32 162, ; 512
	i32 263, ; 513
	i32 360, ; 514
	i32 392, ; 515
	i32 6, ; 516
	i32 169, ; 517
	i32 31, ; 518
	i32 107, ; 519
	i32 350, ; 520
	i32 205, ; 521
	i32 244, ; 522
	i32 307, ; 523
	i32 278, ; 524
	i32 182, ; 525
	i32 217, ; 526
	i32 271, ; 527
	i32 167, ; 528
	i32 245, ; 529
	i32 140, ; 530
	i32 59, ; 531
	i32 334, ; 532
	i32 144, ; 533
	i32 324, ; 534
	i32 392, ; 535
	i32 81, ; 536
	i32 74, ; 537
	i32 130, ; 538
	i32 408, ; 539
	i32 25, ; 540
	i32 7, ; 541
	i32 386, ; 542
	i32 93, ; 543
	i32 275, ; 544
	i32 137, ; 545
	i32 206, ; 546
	i32 359, ; 547
	i32 211, ; 548
	i32 113, ; 549
	i32 359, ; 550
	i32 9, ; 551
	i32 104, ; 552
	i32 209, ; 553
	i32 19, ; 554
	i32 243, ; 555
	i32 257, ; 556
	i32 417, ; 557
	i32 237, ; 558
	i32 415, ; 559
	i32 33, ; 560
	i32 225, ; 561
	i32 46, ; 562
	i32 342, ; 563
	i32 408, ; 564
	i32 370, ; 565
	i32 30, ; 566
	i32 226, ; 567
	i32 57, ; 568
	i32 134, ; 569
	i32 114, ; 570
	i32 280, ; 571
	i32 291, ; 572
	i32 55, ; 573
	i32 188, ; 574
	i32 6, ; 575
	i32 77, ; 576
	i32 381, ; 577
	i32 393, ; 578
	i32 236, ; 579
	i32 294, ; 580
	i32 315, ; 581
	i32 404, ; 582
	i32 111, ; 583
	i32 190, ; 584
	i32 240, ; 585
	i32 406, ; 586
	i32 102, ; 587
	i32 353, ; 588
	i32 384, ; 589
	i32 170, ; 590
	i32 115, ; 591
	i32 303, ; 592
	i32 275, ; 593
	i32 230, ; 594
	i32 76, ; 595
	i32 286, ; 596
	i32 85, ; 597
	i32 288, ; 598
	i32 389, ; 599
	i32 223, ; 600
	i32 324, ; 601
	i32 265, ; 602
	i32 160, ; 603
	i32 2, ; 604
	i32 236, ; 605
	i32 24, ; 606
	i32 216, ; 607
	i32 32, ; 608
	i32 117, ; 609
	i32 37, ; 610
	i32 16, ; 611
	i32 52, ; 612
	i32 289, ; 613
	i32 205, ; 614
	i32 332, ; 615
	i32 20, ; 616
	i32 123, ; 617
	i32 154, ; 618
	i32 404, ; 619
	i32 243, ; 620
	i32 409, ; 621
	i32 367, ; 622
	i32 131, ; 623
	i32 225, ; 624
	i32 148, ; 625
	i32 407, ; 626
	i32 212, ; 627
	i32 120, ; 628
	i32 28, ; 629
	i32 132, ; 630
	i32 100, ; 631
	i32 134, ; 632
	i32 263, ; 633
	i32 153, ; 634
	i32 97, ; 635
	i32 125, ; 636
	i32 213, ; 637
	i32 69, ; 638
	i32 317, ; 639
	i32 371, ; 640
	i32 331, ; 641
	i32 72, ; 642
	i32 318, ; 643
	i32 248, ; 644
	i32 326, ; 645
	i32 266, ; 646
	i32 362, ; 647
	i32 136, ; 648
	i32 124, ; 649
	i32 71, ; 650
	i32 296, ; 651
	i32 111, ; 652
	i32 258, ; 653
	i32 177, ; 654
	i32 152, ; 655
	i32 310, ; 656
	i32 376, ; 657
	i32 309, ; 658
	i32 369, ; 659
	i32 343, ; 660
	i32 326, ; 661
	i32 346, ; 662
	i32 286, ; 663
	i32 382, ; 664
	i32 118, ; 665
	i32 203, ; 666
	i32 234, ; 667
	i32 391, ; 668
	i32 173, ; 669
	i32 294, ; 670
	i32 127, ; 671
	i32 133, ; 672
	i32 178, ; 673
	i32 77, ; 674
	i32 46, ; 675
	i32 237, ; 676
	i32 73, ; 677
	i32 63, ; 678
	i32 393, ; 679
	i32 180, ; 680
	i32 98, ; 681
	i32 84, ; 682
	i32 311, ; 683
	i32 43, ; 684
	i32 61, ; 685
	i32 264, ; 686
	i32 316, ; 687
	i32 175, ; 688
	i32 37, ; 689
	i32 40, ; 690
	i32 227, ; 691
	i32 292, ; 692
	i32 160, ; 693
	i32 98, ; 694
	i32 232, ; 695
	i32 178, ; 696
	i32 351, ; 697
	i32 204, ; 698
	i32 395, ; 699
	i32 340, ; 700
	i32 349, ; 701
	i32 135, ; 702
	i32 20, ; 703
	i32 65, ; 704
	i32 298, ; 705
	i32 125, ; 706
	i32 75, ; 707
	i32 364, ; 708
	i32 256, ; 709
	i32 164, ; 710
	i32 207, ; 711
	i32 156, ; 712
	i32 5, ; 713
	i32 329, ; 714
	i32 49, ; 715
	i32 270, ; 716
	i32 299, ; 717
	i32 410, ; 718
	i32 144, ; 719
	i32 139, ; 720
	i32 100, ; 721
	i32 194, ; 722
	i32 123, ; 723
	i32 120, ; 724
	i32 142, ; 725
	i32 39, ; 726
	i32 68, ; 727
	i32 185, ; 728
	i32 41, ; 729
	i32 318, ; 730
	i32 193, ; 731
	i32 164, ; 732
	i32 73, ; 733
	i32 357, ; 734
	i32 312, ; 735
	i32 165, ; 736
	i32 183, ; 737
	i32 127, ; 738
	i32 242, ; 739
	i32 291, ; 740
	i32 68, ; 741
	i32 373, ; 742
	i32 169, ; 743
	i32 181, ; 744
	i32 356, ; 745
	i32 255, ; 746
	i32 229, ; 747
	i32 199, ; 748
	i32 369, ; 749
	i32 262, ; 750
	i32 151, ; 751
	i32 45, ; 752
	i32 108, ; 753
	i32 48, ; 754
	i32 96, ; 755
	i32 31, ; 756
	i32 311, ; 757
	i32 23, ; 758
	i32 166, ; 759
	i32 22, ; 760
	i32 138, ; 761
	i32 387, ; 762
	i32 78, ; 763
	i32 319, ; 764
	i32 54, ; 765
	i32 255, ; 766
	i32 260, ; 767
	i32 10, ; 768
	i32 218, ; 769
	i32 259, ; 770
	i32 400, ; 771
	i32 246, ; 772
	i32 357, ; 773
	i32 16, ; 774
	i32 329, ; 775
	i32 139, ; 776
	i32 191, ; 777
	i32 13, ; 778
	i32 15, ; 779
	i32 122, ; 780
	i32 314, ; 781
	i32 87, ; 782
	i32 149, ; 783
	i32 22, ; 784
	i32 413, ; 785
	i32 304, ; 786
	i32 34, ; 787
	i32 79, ; 788
	i32 304, ; 789
	i32 284, ; 790
	i32 341, ; 791
	i32 147, ; 792
	i32 80, ; 793
	i32 302, ; 794
	i32 173, ; 795
	i32 211, ; 796
	i32 314, ; 797
	i32 42, ; 798
	i32 342, ; 799
	i32 378, ; 800
	i32 26, ; 801
	i32 257, ; 802
	i32 254, ; 803
	i32 107, ; 804
	i32 348, ; 805
	i32 110, ; 806
	i32 189, ; 807
	i32 305, ; 808
	i32 7, ; 809
	i32 354, ; 810
	i32 287, ; 811
	i32 337, ; 812
	i32 44, ; 813
	i32 298, ; 814
	i32 161, ; 815
	i32 148, ; 816
	i32 370, ; 817
	i32 223, ; 818
	i32 259, ; 819
	i32 38, ; 820
	i32 15, ; 821
	i32 201, ; 822
	i32 146, ; 823
	i32 8, ; 824
	i32 240, ; 825
	i32 261, ; 826
	i32 130, ; 827
	i32 308, ; 828
	i32 307, ; 829
	i32 303, ; 830
	i32 403, ; 831
	i32 277, ; 832
	i32 380, ; 833
	i32 202, ; 834
	i32 94 ; 835
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
