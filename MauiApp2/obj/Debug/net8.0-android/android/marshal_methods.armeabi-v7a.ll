; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [418 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [836 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 3921707, ; 1: fr\System.ServiceModel.NetFramingBase.resources => 0x3bd72b => 357
	i32 6311400, ; 2: pl\System.ServiceModel.NetNamedPipe.resources.dll => 0x604de8 => 374
	i32 9535043, ; 3: ko\System.ServiceModel.Primitives.resources.dll => 0x917e43 => 399
	i32 10166715, ; 4: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 5: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 17613696, ; 6: es\System.ServiceModel.NetTcp.resources => 0x10cc380 => 382
	i32 28923068, ; 7: tr\System.ServiceModel.Federation.resources => 0x1b954bc => 338
	i32 32687329, ; 8: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 252
	i32 34715100, ; 9: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 286
	i32 34839235, ; 10: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 11: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 294
	i32 39109920, ; 12: Newtonsoft.Json.dll => 0x254c520 => 200
	i32 39485524, ; 13: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 14: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 303
	i32 42639949, ; 15: System.Threading.Thread => 0x28aa24d => 145
	i32 53472207, ; 16: System.ServiceModel.Duplex.dll => 0x32febcf => 203
	i32 59857120, ; 17: de\System.ServiceModel.NetFramingBase.resources.dll => 0x39158e0 => 355
	i32 66541672, ; 18: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 19: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 327
	i32 68219467, ; 20: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 71084978, ; 21: cs\System.ServiceModel.NetNamedPipe.resources => 0x43cabb2 => 367
	i32 72070932, ; 22: Microsoft.Maui.Graphics.dll => 0x44bb714 => 199
	i32 82292897, ; 23: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 24: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 311
	i32 98325684, ; 25: Microsoft.Extensions.Diagnostics.Abstractions => 0x5dc54b4 => 180
	i32 101534019, ; 26: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 270
	i32 117431740, ; 27: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 28: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 270
	i32 122350210, ; 29: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 30: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 290
	i32 136584136, ; 31: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 326
	i32 140062828, ; 32: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 319
	i32 142721839, ; 33: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 34: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 35: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 36: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 226
	i32 176265551, ; 37: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 38: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 272
	i32 184328833, ; 39: System.ValueTuple.dll => 0xafca281 => 151
	i32 191450854, ; 40: Swashbuckle.AspNetCore.SwaggerGen.dll => 0xb694ee6 => 408
	i32 192921502, ; 41: fr\System.ServiceModel.Http.resources => 0xb7fbf9e => 344
	i32 193868653, ; 42: de\System.ServiceModel.NetNamedPipe.resources => 0xb8e336d => 368
	i32 205061960, ; 43: System.ComponentModel => 0xc38ff48 => 18
	i32 205903295, ; 44: cs\System.ServiceModel.NetFramingBase.resources.dll => 0xc45d5bf => 354
	i32 209399409, ; 45: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 224
	i32 209580789, ; 46: ko\System.ServiceModel.Federation.resources => 0xc7df2f5 => 334
	i32 220171995, ; 47: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 221958352, ; 48: Microsoft.Extensions.Diagnostics.dll => 0xd3ad0d0 => 179
	i32 230216969, ; 49: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 246
	i32 230752869, ; 50: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 51: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 52: System.Globalization => 0xdd133ce => 42
	i32 242353569, ; 53: ru\System.ServiceModel.NetTcp.resources.dll => 0xe7205a1 => 389
	i32 246610117, ; 54: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 248989650, ; 55: pl\System.ServiceModel.NetTcp.resources.dll => 0xed747d2 => 387
	i32 261689757, ; 56: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 229
	i32 262195072, ; 57: fr\System.ServiceModel.Http.resources.dll => 0xfa0c780 => 344
	i32 276479776, ; 58: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 59: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 248
	i32 280482487, ; 60: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 245
	i32 285314186, ; 61: it\System.ServiceModel.Primitives.resources => 0x11018c8a => 397
	i32 288949973, ; 62: tr\System.ServiceModel.NetFramingBase.resources.dll => 0x113906d5 => 364
	i32 291076382, ; 63: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 291275502, ; 64: Microsoft.Extensions.Http.dll => 0x115c82ee => 181
	i32 296834212, ; 65: zh-Hans\System.ServiceModel.Http.resources => 0x11b154a4 => 352
	i32 297972955, ; 66: tr\System.ServiceModel.Http.resources.dll => 0x11c2b4db => 351
	i32 298918909, ; 67: System.Net.Ping.dll => 0x11d123fd => 69
	i32 316078633, ; 68: pl\System.ServiceModel.Http.resources => 0x12d6fa29 => 348
	i32 317674968, ; 69: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 324
	i32 318968648, ; 70: Xamarin.AndroidX.Activity.dll => 0x13031348 => 215
	i32 321597661, ; 71: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 72: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 302
	i32 342366114, ; 73: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 247
	i32 360082299, ; 74: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 75: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 76: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 77: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 78: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 79: System.Memory.dll => 0x16fe439a => 62
	i32 391939575, ; 80: de\System.ServiceModel.Federation.resources.dll => 0x175c85f7 => 329
	i32 392610295, ; 81: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 82: _Microsoft.Android.Resource.Designer => 0x17969339 => 417
	i32 403441872, ; 83: WindowsBase => 0x180c08d0 => 165
	i32 409257351, ; 84: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 322
	i32 414244616, ; 85: Swashbuckle.AspNetCore.Swagger => 0x18b0df08 => 409
	i32 420389340, ; 86: es\System.ServiceModel.NetNamedPipe.resources => 0x190ea1dc => 369
	i32 441335492, ; 87: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 230
	i32 442565967, ; 88: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 89: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 243
	i32 451504562, ; 90: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 91: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 92: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 93: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 94: System.dll => 0x1bff388e => 164
	i32 476646585, ; 95: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 245
	i32 482319164, ; 96: ko\System.ServiceModel.Federation.resources.dll => 0x1cbf9b3c => 334
	i32 486930444, ; 97: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 258
	i32 489220957, ; 98: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 300
	i32 498788369, ; 99: System.ObjectModel => 0x1dbae811 => 84
	i32 507953595, ; 100: zh-Hant\System.ServiceModel.NetNamedPipe.resources.dll => 0x1e46c1bb => 379
	i32 513247710, ; 101: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 188
	i32 520748051, ; 102: ja\System.ServiceModel.NetTcp.resources => 0x1f09fc13 => 385
	i32 526420162, ; 103: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527362818, ; 104: ja\System.ServiceModel.NetTcp.resources.dll => 0x1f6eeb02 => 385
	i32 527452488, ; 105: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 290
	i32 530272170, ; 106: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 531014212, ; 107: ja\System.ServiceModel.Primitives.resources => 0x1fa6a244 => 398
	i32 538707440, ; 108: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 321
	i32 539058512, ; 109: Microsoft.Extensions.Logging => 0x20216150 => 182
	i32 540030774, ; 110: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 111: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 112: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 113: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 114: Jsr305Binding => 0x213954e7 => 283
	i32 569601784, ; 115: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 281
	i32 577335427, ; 116: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 580569086, ; 117: zh-Hans\System.ServiceModel.NetTcp.resources => 0x229ac7fe => 391
	i32 601371474, ; 118: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 119: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 120: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 624937153, ; 121: fr\System.ServiceModel.NetNamedPipe.resources.dll => 0x253fc8c1 => 370
	i32 627609679, ; 122: Xamarin.AndroidX.CustomView => 0x2568904f => 235
	i32 627931235, ; 123: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 313
	i32 634015394, ; 124: tr\System.ServiceModel.Primitives.resources => 0x25ca4ea2 => 403
	i32 635078218, ; 125: de\System.ServiceModel.Primitives.resources => 0x25da864a => 394
	i32 639843206, ; 126: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 241
	i32 639850993, ; 127: Microsoft.OpenApi.dll => 0x262359f1 => 413
	i32 643868501, ; 128: System.Net => 0x2660a755 => 81
	i32 643983915, ; 129: System.ServiceModel.Security => 0x26626a2b => 210
	i32 648503046, ; 130: de\System.ServiceModel.Federation.resources => 0x26a75f06 => 329
	i32 662205335, ; 131: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 132: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 277
	i32 666292255, ; 133: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 222
	i32 672442732, ; 134: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 135: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 136: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 137: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 292
	i32 691725528, ; 138: ru\System.ServiceModel.NetFramingBase.resources.dll => 0x293ae4d8 => 363
	i32 693804605, ; 139: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 140: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 141: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 287
	i32 700358131, ; 142: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 709152836, ; 143: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 201
	i32 720511267, ; 144: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 291
	i32 722857257, ; 145: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 731701662, ; 146: Microsoft.Extensions.Options.ConfigurationExtensions => 0x2b9ce19e => 187
	i32 735137430, ; 147: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 736986660, ; 148: FarmacyAPI.dll => 0x2bed8624 => 406
	i32 743526611, ; 149: pt-BR\System.ServiceModel.NetFramingBase.resources.dll => 0x2c5150d3 => 362
	i32 752232764, ; 150: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 151: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 212
	i32 759454413, ; 152: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 153: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 769175829, ; 154: cs\System.ServiceModel.Http.resources.dll => 0x2dd8b115 => 341
	i32 775507847, ; 155: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 156: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 319
	i32 789151979, ; 157: Microsoft.Extensions.Options => 0x2f0980eb => 186
	i32 790371945, ; 158: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 236
	i32 804715423, ; 159: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 160: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 250
	i32 823281589, ; 161: System.Private.Uri.dll => 0x311247b5 => 86
	i32 823444754, ; 162: zh-Hant\System.ServiceModel.Http.resources => 0x3114c512 => 353
	i32 828535308, ; 163: System.ServiceModel.NetNamedPipe => 0x3162720c => 207
	i32 830298997, ; 164: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 165: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 166: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 167: Xamarin.AndroidX.Print => 0x3246f6cd => 263
	i32 869139383, ; 168: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 304
	i32 873119928, ; 169: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 170: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 171: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 172: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 318
	i32 891091680, ; 173: cs\System.ServiceModel.Federation.resources.dll => 0x351cfae0 => 328
	i32 902163614, ; 174: fr\System.ServiceModel.NetTcp.resources.dll => 0x35c5ec9e => 383
	i32 904024072, ; 175: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 176: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 911672964, ; 177: ja\System.ServiceModel.Primitives.resources.dll => 0x36570684 => 398
	i32 918734561, ; 178: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 315
	i32 922036678, ; 179: fr\System.ServiceModel.Primitives.resources.dll => 0x36f529c6 => 396
	i32 928116545, ; 180: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 286
	i32 952186615, ; 181: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 182: Newtonsoft.Json => 0x38f24a24 => 200
	i32 956575887, ; 183: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 291
	i32 961460050, ; 184: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 308
	i32 966729478, ; 185: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 284
	i32 967690846, ; 186: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 247
	i32 972805734, ; 187: System.ServiceModel.Http => 0x39fbd666 => 205
	i32 975236339, ; 188: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 189: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 980852653, ; 190: pl\System.ServiceModel.Federation.resources => 0x3a769fad => 335
	i32 986514023, ; 191: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 192: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 193: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 317
	i32 992768348, ; 194: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 195: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 196: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 197: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 267
	i32 1019214401, ; 198: System.Drawing => 0x3cbffa41 => 36
	i32 1021042290, ; 199: tr\System.ServiceModel.Federation.resources.dll => 0x3cdbde72 => 338
	i32 1028951442, ; 200: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 178
	i32 1031528504, ; 201: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 285
	i32 1035644815, ; 202: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 220
	i32 1036536393, ; 203: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 204: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 298
	i32 1044663988, ; 205: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1048992957, ; 206: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0x3e865cbd => 180
	i32 1052210849, ; 207: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 254
	i32 1067306892, ; 208: GoogleGson => 0x3f9dcf8c => 173
	i32 1081414353, ; 209: System.ServiceModel.Http.dll => 0x407512d1 => 205
	i32 1082857460, ; 210: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 211: Xamarin.Kotlin.StdLib => 0x409e66d8 => 288
	i32 1098259244, ; 212: System => 0x41761b2c => 164
	i32 1098934168, ; 213: es\System.ServiceModel.Http.resources.dll => 0x41806798 => 343
	i32 1108272742, ; 214: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 320
	i32 1117529484, ; 215: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 314
	i32 1118262833, ; 216: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 310
	i32 1121599056, ; 217: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 253
	i32 1127624469, ; 218: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 184
	i32 1131748925, ; 219: ru\System.ServiceModel.Http.resources => 0x43751e3d => 350
	i32 1137475283, ; 220: fr\System.ServiceModel.Federation.resources => 0x43cc7ed3 => 331
	i32 1138436374, ; 221: Microsoft.Data.SqlClient.dll => 0x43db2916 => 415
	i32 1149092582, ; 222: Xamarin.AndroidX.Window => 0x447dc2e6 => 280
	i32 1157931901, ; 223: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 412
	i32 1168523401, ; 224: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 316
	i32 1170634674, ; 225: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 226: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 276
	i32 1178241025, ; 227: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 261
	i32 1202000627, ; 228: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 412
	i32 1204270330, ; 229: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 222
	i32 1207862497, ; 230: System.ServiceModel.NetTcp.dll => 0x47fe84e1 => 208
	i32 1208641965, ; 231: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 232: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1243150071, ; 233: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 281
	i32 1244474809, ; 234: ru\System.ServiceModel.Primitives.resources.dll => 0x4a2d2db9 => 402
	i32 1253011324, ; 235: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 236: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 296
	i32 1264511973, ; 237: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 271
	i32 1267360935, ; 238: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 275
	i32 1273260888, ; 239: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 227
	i32 1275534314, ; 240: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 292
	i32 1278448581, ; 241: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 219
	i32 1290571463, ; 242: ko\System.ServiceModel.NetNamedPipe.resources.dll => 0x4cec8ec7 => 373
	i32 1293217323, ; 243: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 238
	i32 1296184643, ; 244: pl\System.ServiceModel.NetFramingBase.resources => 0x4d423543 => 361
	i32 1308624726, ; 245: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 305
	i32 1309188875, ; 246: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 247: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 280
	i32 1324164729, ; 248: System.Linq => 0x4eed2679 => 61
	i32 1324212547, ; 249: pt-BR\System.ServiceModel.NetTcp.resources => 0x4eede143 => 388
	i32 1335329327, ; 250: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 251: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 325
	i32 1347226533, ; 252: Swashbuckle.AspNetCore.SwaggerGen => 0x504d0ba5 => 408
	i32 1360479413, ; 253: it\System.ServiceModel.Federation.resources => 0x511744b5 => 332
	i32 1361525254, ; 254: ru\System.ServiceModel.NetNamedPipe.resources => 0x51273a06 => 376
	i32 1364015309, ; 255: System.IO => 0x514d38cd => 57
	i32 1372451108, ; 256: de\System.ServiceModel.Http.resources.dll => 0x51cdf124 => 342
	i32 1373134921, ; 257: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 326
	i32 1376866003, ; 258: Xamarin.AndroidX.SavedState => 0x52114ed3 => 267
	i32 1379779777, ; 259: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1394641819, ; 260: System.ServiceModel.Primitives => 0x53208b9b => 209
	i32 1397695725, ; 261: Microsoft.IdentityModel.Xml => 0x534f24ed => 193
	i32 1402170036, ; 262: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 263: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 231
	i32 1408764838, ; 264: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 265: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1412399920, ; 266: it\System.ServiceModel.NetFramingBase.resources.dll => 0x542f8330 => 358
	i32 1422545099, ; 267: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 268: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 294
	i32 1430830959, ; 269: zh-Hant\System.ServiceModel.NetFramingBase.resources => 0x5548bf6f => 366
	i32 1434145427, ; 270: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 271: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 284
	i32 1439761251, ; 272: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 273: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 274: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 275: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 276: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 277: es\Microsoft.Maui.Controls.resources => 0x57152abe => 300
	i32 1461234159, ; 278: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 279: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 280: System.IO.Compression.dll => 0x57261233 => 46
	i32 1467914867, ; 281: pt-BR\System.ServiceModel.Primitives.resources.dll => 0x577e9a73 => 401
	i32 1469204771, ; 282: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 221
	i32 1469209632, ; 283: tr\System.ServiceModel.Primitives.resources.dll => 0x57925c20 => 403
	i32 1470490898, ; 284: Microsoft.Extensions.Primitives => 0x57a5e912 => 188
	i32 1479771757, ; 285: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 286: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 287: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 288: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 268
	i32 1496356098, ; 289: pt-BR\System.ServiceModel.NetFramingBase.resources => 0x59309502 => 362
	i32 1505131794, ; 290: Microsoft.Extensions.Http => 0x59b67d12 => 181
	i32 1526286932, ; 291: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 324
	i32 1536373174, ; 292: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 293: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 294: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 295: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1552155078, ; 296: System.ServiceModel.NetFramingBase => 0x5c8401c6 => 206
	i32 1565862583, ; 297: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 298: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 299: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 300: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 301: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 237
	i32 1590860858, ; 302: System.ServiceModel.NetTcp => 0x5ed29c3a => 208
	i32 1592978981, ; 303: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1595348235, ; 304: es\System.ServiceModel.NetTcp.resources.dll => 0x5f17150b => 382
	i32 1597949149, ; 305: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 285
	i32 1601112923, ; 306: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1601390969, ; 307: it\System.ServiceModel.NetNamedPipe.resources.dll => 0x5f734979 => 371
	i32 1604827217, ; 308: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 309: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 310: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 257
	i32 1622358360, ; 311: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 312: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 279
	i32 1626255391, ; 313: Microsoft.IdentityModel.Protocols.WsTrust => 0x60eeb01f => 190
	i32 1629788937, ; 314: cs\System.ServiceModel.Primitives.resources => 0x61249b09 => 393
	i32 1635184631, ; 315: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 241
	i32 1636350590, ; 316: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 234
	i32 1639515021, ; 317: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 318: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 319: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654850497, ; 320: it\System.ServiceModel.Http.resources.dll => 0x62a303c1 => 345
	i32 1657153582, ; 321: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 322: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 273
	i32 1658251792, ; 323: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 282
	i32 1670060433, ; 324: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 229
	i32 1675553242, ; 325: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 326: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 327: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 328: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1689493916, ; 329: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 407
	i32 1691477237, ; 330: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 331: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 332: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 289
	i32 1701541528, ; 333: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 334: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 250
	i32 1726116996, ; 335: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 336: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 337: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 225
	i32 1738804305, ; 338: it\System.ServiceModel.Federation.resources.dll => 0x67a40c51 => 332
	i32 1740449066, ; 339: zh-Hant\System.ServiceModel.NetTcp.resources.dll => 0x67bd252a => 392
	i32 1743415430, ; 340: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 295
	i32 1744735666, ; 341: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 342: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 343: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 344: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1762907507, ; 345: zh-Hans\System.ServiceModel.NetFramingBase.resources.dll => 0x6913d573 => 365
	i32 1763938596, ; 346: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 347: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 348: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 272
	i32 1768176139, ; 349: ja\System.ServiceModel.NetFramingBase.resources.dll => 0x69643a0b => 359
	i32 1770582343, ; 350: Microsoft.Extensions.Logging.dll => 0x6988f147 => 182
	i32 1776026572, ; 351: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 352: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 353: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 354: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 311
	i32 1788241197, ; 355: Xamarin.AndroidX.Fragment => 0x6a96652d => 243
	i32 1792213857, ; 356: ru\System.ServiceModel.Federation.resources => 0x6ad30361 => 337
	i32 1793755602, ; 357: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 303
	i32 1794500907, ; 358: Microsoft.Identity.Client.dll => 0x6af5e92b => 416
	i32 1805292898, ; 359: pt-BR\System.ServiceModel.NetTcp.resources.dll => 0x6b9a9562 => 388
	i32 1808609942, ; 360: Xamarin.AndroidX.Loader => 0x6bcd3296 => 257
	i32 1813058853, ; 361: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 288
	i32 1813201214, ; 362: Xamarin.Google.Android.Material => 0x6c13413e => 282
	i32 1818569960, ; 363: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 262
	i32 1818787751, ; 364: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1820694217, ; 365: zh-Hans\System.ServiceModel.Federation.resources.dll => 0x6c8596c9 => 339
	i32 1824175904, ; 366: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 367: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1827118058, ; 368: pl\System.ServiceModel.NetNamedPipe.resources => 0x6ce79bea => 374
	i32 1828688058, ; 369: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 183
	i32 1834522491, ; 370: pt-BR\System.ServiceModel.Http.resources => 0x6d58977b => 349
	i32 1847515442, ; 371: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 212
	i32 1853025655, ; 372: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 320
	i32 1854900386, ; 373: zh-Hans\System.ServiceModel.NetTcp.resources.dll => 0x6e8f88a2 => 391
	i32 1858542181, ; 374: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 375: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 376: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 302
	i32 1879696579, ; 377: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1884421515, ; 378: cs\System.ServiceModel.NetTcp.resources.dll => 0x7051fd8b => 380
	i32 1885316902, ; 379: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 223
	i32 1888955245, ; 380: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 381: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 382: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 296
	i32 1898237753, ; 383: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 384: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 385: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1916248535, ; 386: it\System.ServiceModel.NetTcp.resources.dll => 0x7237a1d7 => 384
	i32 1922109462, ; 387: System.ServiceModel.Primitives.dll => 0x72911016 => 209
	i32 1927745319, ; 388: ru\System.ServiceModel.Federation.resources.dll => 0x72e70f27 => 337
	i32 1932085498, ; 389: fr\System.ServiceModel.Primitives.resources => 0x732948fa => 396
	i32 1939592360, ; 390: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1946106882, ; 391: es\System.ServiceModel.NetFramingBase.resources => 0x73ff3c02 => 356
	i32 1953182387, ; 392: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 307
	i32 1956758971, ; 393: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1960645073, ; 394: ko\System.ServiceModel.NetTcp.resources => 0x74dd11d1 => 386
	i32 1960932030, ; 395: es\System.ServiceModel.Federation.resources.dll => 0x74e172be => 330
	i32 1961813231, ; 396: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 269
	i32 1968388702, ; 397: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 174
	i32 1978670985, ; 398: tr\System.ServiceModel.NetTcp.resources.dll => 0x75f01f89 => 390
	i32 1983156543, ; 399: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 289
	i32 1985761444, ; 400: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 214
	i32 1986222447, ; 401: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 191
	i32 1999974468, ; 402: cs\System.ServiceModel.Primitives.resources.dll => 0x77353044 => 393
	i32 2003115576, ; 403: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 299
	i32 2011961780, ; 404: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 405: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 254
	i32 2031763787, ; 406: Xamarin.Android.Glide => 0x791a414b => 211
	i32 2045470958, ; 407: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 408: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 176
	i32 2055257422, ; 409: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 249
	i32 2060060697, ; 410: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 411: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 298
	i32 2070888862, ; 412: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 413: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2085039813, ; 414: System.Security.Cryptography.Xml.dll => 0x7c472ec5 => 202
	i32 2086675053, ; 415: System.ServiceModel.NetFramingBase.dll => 0x7c60226d => 206
	i32 2090596640, ; 416: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2093814594, ; 417: Microsoft.IdentityModel.Tokens.Saml.dll => 0x7ccd1342 => 192
	i32 2118004960, ; 418: fr\System.ServiceModel.NetNamedPipe.resources => 0x7e3e30e0 => 370
	i32 2127167465, ; 419: System.Console => 0x7ec9ffe9 => 20
	i32 2139610451, ; 420: pl\System.ServiceModel.Federation.resources.dll => 0x7f87dd53 => 335
	i32 2142473426, ; 421: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 422: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 423: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 424: Microsoft.Maui => 0x80bd55ad => 197
	i32 2169148018, ; 425: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 306
	i32 2181898931, ; 426: Microsoft.Extensions.Options.dll => 0x820d22b3 => 186
	i32 2187815077, ; 427: it\System.ServiceModel.Primitives.resources.dll => 0x826768a5 => 397
	i32 2192057212, ; 428: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 183
	i32 2193016926, ; 429: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 430: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 293
	i32 2201231467, ; 431: System.Net.Http => 0x8334206b => 64
	i32 2204417087, ; 432: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 185
	i32 2207618523, ; 433: it\Microsoft.Maui.Controls.resources => 0x839595db => 308
	i32 2217644978, ; 434: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 276
	i32 2222056684, ; 435: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2227276228, ; 436: cs\System.ServiceModel.NetFramingBase.resources => 0x84c189c4 => 354
	i32 2242730773, ; 437: de\System.ServiceModel.NetTcp.resources.dll => 0x85ad5b15 => 381
	i32 2244775296, ; 438: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 258
	i32 2252106437, ; 439: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2252897993, ; 440: Microsoft.EntityFrameworkCore => 0x86487ec9 => 407
	i32 2256313426, ; 441: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 442: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 443: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 175
	i32 2267999099, ; 444: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 213
	i32 2279755925, ; 445: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 265
	i32 2292263403, ; 446: zh-Hant\System.ServiceModel.Primitives.resources => 0x88a129eb => 405
	i32 2293034957, ; 447: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 448: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 449: System.Net.Mail => 0x88ffe49e => 66
	i32 2299350997, ; 450: pt-BR\System.ServiceModel.NetNamedPipe.resources.dll => 0x890d4fd5 => 375
	i32 2303942373, ; 451: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 312
	i32 2305521784, ; 452: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2306840234, ; 453: cs\System.ServiceModel.Federation.resources => 0x897f96aa => 328
	i32 2315684594, ; 454: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 217
	i32 2320631194, ; 455: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2322006890, ; 456: zh-Hant\System.ServiceModel.NetFramingBase.resources.dll => 0x8a67036a => 366
	i32 2340441535, ; 457: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 458: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2348932370, ; 459: Microsoft.IdentityModel.Tokens.Saml => 0x8c01dd12 => 192
	i32 2353062107, ; 460: System.Net.Primitives => 0x8c40e0db => 70
	i32 2366048013, ; 461: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 306
	i32 2366248666, ; 462: Swashbuckle.AspNetCore.Swagger.dll => 0x8d0a16da => 409
	i32 2368005991, ; 463: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369706906, ; 464: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 189
	i32 2371007202, ; 465: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 174
	i32 2378619854, ; 466: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 467: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2393708825, ; 468: es\System.ServiceModel.Http.resources => 0x8ead1919 => 343
	i32 2395872292, ; 469: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 307
	i32 2401565422, ; 470: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 471: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 240
	i32 2421380589, ; 472: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 473: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 227
	i32 2427813419, ; 474: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 304
	i32 2435356389, ; 475: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 476: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 477: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 478: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 479: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 480: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 230
	i32 2471841756, ; 481: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 482: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 483: Microsoft.Maui.Controls => 0x93dba8a1 => 195
	i32 2483903535, ; 484: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 485: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 486: System.AppContext.dll => 0x94798bc5 => 6
	i32 2491939797, ; 487: pt-BR\System.ServiceModel.NetNamedPipe.resources => 0x9487fbd5 => 375
	i32 2501346920, ; 488: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 489: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 310
	i32 2503402960, ; 490: de\System.ServiceModel.NetFramingBase.resources => 0x9536e5d0 => 355
	i32 2505896520, ; 491: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 252
	i32 2522472828, ; 492: Xamarin.Android.Glide.dll => 0x9659e17c => 211
	i32 2536732310, ; 493: zh-Hans\System.ServiceModel.Http.resources.dll => 0x97337696 => 352
	i32 2538310050, ; 494: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 495: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 305
	i32 2562349572, ; 496: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 497: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2574359397, ; 498: tr\System.ServiceModel.NetFramingBase.resources => 0x99719b65 => 364
	i32 2576534780, ; 499: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 309
	i32 2581783588, ; 500: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 253
	i32 2581819634, ; 501: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 275
	i32 2585220780, ; 502: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 503: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 504: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 505: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 314
	i32 2605712449, ; 506: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 293
	i32 2615233544, ; 507: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 244
	i32 2616218305, ; 508: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 184
	i32 2617129537, ; 509: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 510: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 511: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 234
	i32 2624644809, ; 512: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 239
	i32 2626831493, ; 513: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 309
	i32 2627185994, ; 514: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 515: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 516: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 248
	i32 2634653062, ; 517: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 414
	i32 2640290731, ; 518: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 189
	i32 2655777936, ; 519: zh-Hans\System.ServiceModel.NetNamedPipe.resources.dll => 0x9e4bf490 => 378
	i32 2659772221, ; 520: es\System.ServiceModel.Federation.resources => 0x9e88e73d => 330
	i32 2663391936, ; 521: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 213
	i32 2663698177, ; 522: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 523: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 524: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 525: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2680299297, ; 526: zh-Hant\System.ServiceModel.Primitives.resources.dll => 0x9fc21f21 => 405
	i32 2686887180, ; 527: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 528: System.IO.dll => 0xa090e36a => 57
	i32 2696517651, ; 529: fr\System.ServiceModel.NetFramingBase.resources.dll => 0xa0b99813 => 357
	i32 2699027554, ; 530: Microsoft.OpenApi => 0xa0dfe462 => 413
	i32 2701096212, ; 531: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 273
	i32 2702322050, ; 532: Swashbuckle.AspNetCore.SwaggerUI => 0xa1122982 => 410
	i32 2715334215, ; 533: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 534: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 535: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 536: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 537: Xamarin.AndroidX.Activity => 0xa2e0939b => 215
	i32 2735172069, ; 538: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 539: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 221
	i32 2740051746, ; 540: Microsoft.Identity.Client => 0xa351df22 => 416
	i32 2740698338, ; 541: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 295
	i32 2740877318, ; 542: it\System.ServiceModel.NetTcp.resources => 0xa35e7806 => 384
	i32 2740948882, ; 543: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 544: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 545: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 315
	i32 2753493119, ; 546: System.ServiceModel.Security.dll => 0xa41ef87f => 210
	i32 2755643133, ; 547: Microsoft.EntityFrameworkCore.SqlServer => 0xa43fc6fd => 411
	i32 2756478476, ; 548: zh-Hant\System.ServiceModel.NetTcp.resources => 0xa44c860c => 392
	i32 2758225723, ; 549: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 196
	i32 2764765095, ; 550: Microsoft.Maui.dll => 0xa4caf7a7 => 197
	i32 2765824710, ; 551: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 552: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 287
	i32 2778768386, ; 553: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 278
	i32 2779977773, ; 554: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 266
	i32 2785988530, ; 555: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 321
	i32 2788224221, ; 556: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 244
	i32 2801831435, ; 557: Microsoft.Maui.Graphics => 0xa7008e0b => 199
	i32 2803228030, ; 558: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 559: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 231
	i32 2819470561, ; 560: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 561: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 562: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 266
	i32 2824502124, ; 563: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2838993487, ; 564: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 255
	i32 2847789619, ; 565: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 414
	i32 2849599387, ; 566: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 567: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 278
	i32 2855657516, ; 568: zh-Hant\System.ServiceModel.Http.resources.dll => 0xaa35e02c => 353
	i32 2855708567, ; 569: Xamarin.AndroidX.Transition => 0xaa36a797 => 274
	i32 2861098320, ; 570: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 571: Microsoft.Maui.Essentials => 0xaa8a4878 => 198
	i32 2870099610, ; 572: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 216
	i32 2870418402, ; 573: fr\System.ServiceModel.Federation.resources.dll => 0xab171be2 => 331
	i32 2875164099, ; 574: Jsr305Binding.dll => 0xab5f85c3 => 283
	i32 2875220617, ; 575: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 576: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 242
	i32 2887636118, ; 577: System.Net.dll => 0xac1dd496 => 81
	i32 2899241291, ; 578: it\System.ServiceModel.Http.resources => 0xaccee94b => 345
	i32 2899753641, ; 579: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 580: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 581: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 582: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 583: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 584: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 279
	i32 2919462931, ; 585: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 586: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 218
	i32 2921417940, ; 587: System.Security.Cryptography.Xml => 0xae214cd4 => 202
	i32 2932918549, ; 588: pt-BR\System.ServiceModel.Federation.resources.dll => 0xaed0c915 => 336
	i32 2936416060, ; 589: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 590: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 591: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2958066338, ; 592: pl\System.ServiceModel.Primitives.resources => 0xb05082a2 => 400
	i32 2958246600, ; 593: de\System.ServiceModel.Http.resources => 0xb05342c8 => 342
	i32 2959614098, ; 594: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 595: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2971004615, ; 596: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0xb115eec7 => 187
	i32 2972252294, ; 597: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 598: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 238
	i32 2985026235, ; 599: ja\System.ServiceModel.NetNamedPipe.resources => 0xb1ebe2bb => 372
	i32 2987532451, ; 600: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 269
	i32 2996846495, ; 601: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 251
	i32 3016983068, ; 602: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 271
	i32 3020703001, ; 603: Microsoft.Extensions.Diagnostics => 0xb40c4519 => 179
	i32 3022610030, ; 604: ja\System.ServiceModel.Http.resources => 0xb4295e6e => 346
	i32 3023353419, ; 605: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 606: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 246
	i32 3037259466, ; 607: ja\System.ServiceModel.NetNamedPipe.resources.dll => 0xb508e6ca => 372
	i32 3038032645, ; 608: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 417
	i32 3053864966, ; 609: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 301
	i32 3056245963, ; 610: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 268
	i32 3057625584, ; 611: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 259
	i32 3059408633, ; 612: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 613: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 614: System.Threading.Tasks => 0xb755818f => 144
	i32 3084678329, ; 615: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 191
	i32 3090735792, ; 616: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 617: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 618: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 619: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 620: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3123044289, ; 621: System.ServiceModel.Duplex => 0xba25dfc1 => 203
	i32 3123119788, ; 622: Microsoft.IdentityModel.Protocols.WsTrust.dll => 0xba2706ac => 190
	i32 3124832203, ; 623: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 624: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3138130243, ; 625: Swashbuckle.AspNetCore.SwaggerUI.dll => 0xbb0c1143 => 410
	i32 3147165239, ; 626: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 627: GoogleGson.dll => 0xbba64c02 => 173
	i32 3157052235, ; 628: System.ServiceModel.Federation.dll => 0xbc2ccb4b => 204
	i32 3159123045, ; 629: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 630: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 631: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 260
	i32 3184440510, ; 632: pt-BR\System.ServiceModel.Federation.resources => 0xbdceb4be => 336
	i32 3190003415, ; 633: pl\System.ServiceModel.Http.resources.dll => 0xbe2396d7 => 348
	i32 3192346100, ; 634: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 635: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 636: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 637: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 638: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 237
	i32 3220365878, ; 639: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 640: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3241028803, ; 641: it\System.ServiceModel.NetNamedPipe.resources => 0xc12e2cc3 => 371
	i32 3241485502, ; 642: MauiApp2 => 0xc13524be => 0
	i32 3251039220, ; 643: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 644: Xamarin.AndroidX.CardView => 0xc235e84d => 225
	i32 3265493905, ; 645: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 646: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 647: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 648: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 649: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 650: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3291006565, ; 651: fr\System.ServiceModel.NetTcp.resources => 0xc428c665 => 383
	i32 3299363146, ; 652: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 653: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 654: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 301
	i32 3316684772, ; 655: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3316762378, ; 656: pl\System.ServiceModel.Primitives.resources.dll => 0xc5b1c70a => 400
	i32 3317135071, ; 657: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 235
	i32 3317144872, ; 658: System.Data => 0xc5b79d28 => 24
	i32 3340202976, ; 659: tr\System.ServiceModel.NetNamedPipe.resources => 0xc71773e0 => 377
	i32 3340431453, ; 660: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 223
	i32 3345895724, ; 661: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 264
	i32 3346324047, ; 662: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 261
	i32 3347128195, ; 663: tr\System.ServiceModel.Http.resources => 0xc7811f83 => 351
	i32 3357674450, ; 664: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 318
	i32 3358260929, ; 665: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 666: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 216
	i32 3362522851, ; 667: Xamarin.AndroidX.Core => 0xc86c06e3 => 232
	i32 3366347497, ; 668: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 669: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 265
	i32 3381016424, ; 670: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 297
	i32 3395150330, ; 671: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 672: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 673: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 236
	i32 3406727474, ; 674: zh-Hant\System.ServiceModel.Federation.resources => 0xcb0e8932 => 340
	i32 3421170118, ; 675: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 176
	i32 3428513518, ; 676: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 177
	i32 3429136800, ; 677: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 678: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 679: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 239
	i32 3445260447, ; 680: System.Formats.Tar => 0xcd5a809f => 39
	i32 3450008806, ; 681: ja\System.ServiceModel.Federation.resources => 0xcda2f4e6 => 333
	i32 3452344032, ; 682: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 194
	i32 3453180490, ; 683: ko\System.ServiceModel.Primitives.resources => 0xcdd35a4a => 399
	i32 3458724246, ; 684: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 316
	i32 3471940407, ; 685: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 686: Mono.Android => 0xcf3163e6 => 171
	i32 3482217531, ; 687: cs\System.ServiceModel.Http.resources => 0xcf8e6c3b => 341
	i32 3482673254, ; 688: ru\System.ServiceModel.NetNamedPipe.resources.dll => 0xcf956066 => 376
	i32 3483011511, ; 689: ja\System.ServiceModel.Http.resources.dll => 0xcf9a89b7 => 346
	i32 3484440000, ; 690: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 317
	i32 3485117614, ; 691: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 692: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 693: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 228
	i32 3509114376, ; 694: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 695: System.Security.dll => 0xd1854eb4 => 130
	i32 3521184679, ; 696: ru\System.ServiceModel.NetFramingBase.resources => 0xd1e103a7 => 363
	i32 3530912306, ; 697: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 698: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3545306353, ; 699: Microsoft.Data.SqlClient => 0xd35114f1 => 415
	i32 3550648498, ; 700: es\System.ServiceModel.Primitives.resources.dll => 0xd3a298b2 => 395
	i32 3560100363, ; 701: System.Threading.Timer => 0xd432d20b => 147
	i32 3561438924, ; 702: de\System.ServiceModel.NetNamedPipe.resources.dll => 0xd4473ecc => 368
	i32 3570554715, ; 703: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580333612, ; 704: zh-Hans\System.ServiceModel.Federation.resources => 0xd5678e2c => 339
	i32 3580758918, ; 705: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 325
	i32 3583282532, ; 706: zh-Hant\System.ServiceModel.Federation.resources.dll => 0xd5948d64 => 340
	i32 3592228221, ; 707: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 327
	i32 3597029428, ; 708: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 214
	i32 3598340787, ; 709: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3605274052, ; 710: ja\System.ServiceModel.NetFramingBase.resources => 0xd6e41dc4 => 359
	i32 3605918211, ; 711: tr\System.ServiceModel.NetTcp.resources => 0xd6edf203 => 390
	i32 3608519521, ; 712: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 713: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 714: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 263
	i32 3632773286, ; 715: zh-Hans\System.ServiceModel.NetNamedPipe.resources => 0xd887b8a6 => 378
	i32 3633644679, ; 716: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 218
	i32 3638233600, ; 717: ru\System.ServiceModel.Primitives.resources => 0xd8db0a00 => 402
	i32 3638274909, ; 718: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3640483271, ; 719: MauiApp2.dll => 0xd8fd5dc7 => 0
	i32 3641597786, ; 720: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 249
	i32 3643446276, ; 721: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 322
	i32 3643854240, ; 722: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 260
	i32 3645089577, ; 723: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 724: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 175
	i32 3660523487, ; 725: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3664118907, ; 726: pt-BR\System.ServiceModel.Primitives.resources => 0xda66047b => 401
	i32 3672681054, ; 727: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3675849680, ; 728: cs\System.ServiceModel.NetTcp.resources => 0xdb1903d0 => 380
	i32 3682565725, ; 729: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 224
	i32 3684561358, ; 730: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 228
	i32 3684672035, ; 731: ko\System.ServiceModel.NetFramingBase.resources.dll => 0xdb9fa223 => 360
	i32 3684902466, ; 732: ko\System.ServiceModel.Http.resources.dll => 0xdba32642 => 347
	i32 3690488555, ; 733: pl\System.ServiceModel.NetTcp.resources => 0xdbf862eb => 387
	i32 3700074806, ; 734: FarmacyAPI => 0xdc8aa936 => 406
	i32 3700866549, ; 735: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3705132617, ; 736: it\System.ServiceModel.NetFramingBase.resources => 0xdcd7d649 => 358
	i32 3706696989, ; 737: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 233
	i32 3709546624, ; 738: ru\System.ServiceModel.NetTcp.resources => 0xdd1b3080 => 389
	i32 3710160814, ; 739: pt-BR\System.ServiceModel.Http.resources.dll => 0xdd248fae => 349
	i32 3711096865, ; 740: es\System.ServiceModel.NetNamedPipe.resources.dll => 0xdd32d821 => 369
	i32 3716563718, ; 741: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 742: Xamarin.AndroidX.Annotation => 0xdda814c6 => 217
	i32 3724971120, ; 743: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 259
	i32 3732100267, ; 744: System.Net.NameResolution => 0xde7354ab => 67
	i32 3734061737, ; 745: zh-Hans\System.ServiceModel.Primitives.resources.dll => 0xde9142a9 => 404
	i32 3737834244, ; 746: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3743991391, ; 747: de\System.ServiceModel.NetTcp.resources => 0xdf28c65f => 381
	i32 3748608112, ; 748: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 749: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751619990, ; 750: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 297
	i32 3765508441, ; 751: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 185
	i32 3786282454, ; 752: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 226
	i32 3792276235, ; 753: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 754: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 194
	i32 3802395368, ; 755: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3807198597, ; 756: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 201
	i32 3813989096, ; 757: ko\System.ServiceModel.NetFramingBase.resources => 0xe354dae8 => 360
	i32 3818420706, ; 758: ko\System.ServiceModel.NetTcp.resources.dll => 0xe39879e2 => 386
	i32 3819260425, ; 759: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 760: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 761: System.Numerics.dll => 0xe4436460 => 83
	i32 3831382396, ; 762: es\System.ServiceModel.Primitives.resources => 0xe45e417c => 395
	i32 3841636137, ; 763: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 178
	i32 3844307129, ; 764: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 765: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3858060389, ; 766: ru\System.ServiceModel.Http.resources.dll => 0xe5f55465 => 350
	i32 3870376305, ; 767: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 768: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 769: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3876601672, ; 770: zh-Hans\System.ServiceModel.NetFramingBase.resources => 0xe7103f48 => 365
	i32 3885497537, ; 771: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 772: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 274
	i32 3888767677, ; 773: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 264
	i32 3896106733, ; 774: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 775: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 232
	i32 3901907137, ; 776: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3917319797, ; 777: System.ServiceModel.Federation => 0xe97d8e75 => 204
	i32 3920221145, ; 778: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 313
	i32 3920810846, ; 779: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 780: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 277
	i32 3928044579, ; 781: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 782: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 783: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 262
	i32 3931488234, ; 784: es\System.ServiceModel.NetFramingBase.resources.dll => 0xea55bfea => 356
	i32 3945713374, ; 785: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 786: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 787: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 220
	i32 3959773229, ; 788: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 251
	i32 3971291721, ; 789: System.ServiceModel.NetNamedPipe.dll => 0xecb51a49 => 207
	i32 4003436829, ; 790: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 791: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 219
	i32 4025784931, ; 792: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 793: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 196
	i32 4054681211, ; 794: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 795: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 796: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4080472487, ; 797: tr\System.ServiceModel.NetNamedPipe.resources.dll => 0xf33711a7 => 377
	i32 4081805871, ; 798: zh-Hans\System.ServiceModel.Primitives.resources => 0xf34b6a2f => 404
	i32 4091086043, ; 799: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 299
	i32 4094352644, ; 800: Microsoft.Maui.Essentials.dll => 0xf40add04 => 198
	i32 4099507663, ; 801: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 802: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 803: Xamarin.AndroidX.Emoji2 => 0xf479582c => 240
	i32 4103334216, ; 804: cs\System.ServiceModel.NetNamedPipe.resources.dll => 0xf493e948 => 367
	i32 4103439459, ; 805: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 323
	i32 4110357862, ; 806: ja\System.ServiceModel.Federation.resources.dll => 0xf4ff1566 => 333
	i32 4126470640, ; 807: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 177
	i32 4127667938, ; 808: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 809: System.AppContext => 0xf6318da0 => 6
	i32 4137271634, ; 810: Microsoft.IdentityModel.Xml.dll => 0xf699c152 => 193
	i32 4147710070, ; 811: ko\System.ServiceModel.NetNamedPipe.resources => 0xf7390876 => 373
	i32 4147896353, ; 812: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 813: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 323
	i32 4151237749, ; 814: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 815: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 816: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 817: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 818: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 819: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 256
	i32 4185676441, ; 820: System.Security => 0xf97c5a99 => 130
	i32 4194278001, ; 821: Microsoft.EntityFrameworkCore.SqlServer.dll => 0xf9ff9a71 => 411
	i32 4195721727, ; 822: de\System.ServiceModel.Primitives.resources.dll => 0xfa15a1ff => 394
	i32 4196529839, ; 823: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 824: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 825: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 312
	i32 4256097574, ; 826: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 233
	i32 4258378803, ; 827: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 255
	i32 4260525087, ; 828: System.Buffers => 0xfdf2741f => 7
	i32 4261754524, ; 829: ko\System.ServiceModel.Http.resources => 0xfe05369c => 347
	i32 4266311953, ; 830: pl\System.ServiceModel.NetFramingBase.resources.dll => 0xfe4ac111 => 361
	i32 4266814471, ; 831: zh-Hant\System.ServiceModel.NetNamedPipe.resources => 0xfe526c07 => 379
	i32 4271975918, ; 832: Microsoft.Maui.Controls.dll => 0xfea12dee => 195
	i32 4274976490, ; 833: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 834: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 256
	i32 4294763496 ; 835: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 242
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [836 x i32] [
	i32 68, ; 0
	i32 357, ; 1
	i32 374, ; 2
	i32 399, ; 3
	i32 67, ; 4
	i32 108, ; 5
	i32 382, ; 6
	i32 338, ; 7
	i32 252, ; 8
	i32 286, ; 9
	i32 48, ; 10
	i32 294, ; 11
	i32 200, ; 12
	i32 80, ; 13
	i32 303, ; 14
	i32 145, ; 15
	i32 203, ; 16
	i32 355, ; 17
	i32 30, ; 18
	i32 327, ; 19
	i32 124, ; 20
	i32 367, ; 21
	i32 199, ; 22
	i32 102, ; 23
	i32 311, ; 24
	i32 180, ; 25
	i32 270, ; 26
	i32 107, ; 27
	i32 270, ; 28
	i32 139, ; 29
	i32 290, ; 30
	i32 326, ; 31
	i32 319, ; 32
	i32 77, ; 33
	i32 124, ; 34
	i32 13, ; 35
	i32 226, ; 36
	i32 132, ; 37
	i32 272, ; 38
	i32 151, ; 39
	i32 408, ; 40
	i32 344, ; 41
	i32 368, ; 42
	i32 18, ; 43
	i32 354, ; 44
	i32 224, ; 45
	i32 334, ; 46
	i32 26, ; 47
	i32 179, ; 48
	i32 246, ; 49
	i32 1, ; 50
	i32 59, ; 51
	i32 42, ; 52
	i32 389, ; 53
	i32 91, ; 54
	i32 387, ; 55
	i32 229, ; 56
	i32 344, ; 57
	i32 147, ; 58
	i32 248, ; 59
	i32 245, ; 60
	i32 397, ; 61
	i32 364, ; 62
	i32 54, ; 63
	i32 181, ; 64
	i32 352, ; 65
	i32 351, ; 66
	i32 69, ; 67
	i32 348, ; 68
	i32 324, ; 69
	i32 215, ; 70
	i32 83, ; 71
	i32 302, ; 72
	i32 247, ; 73
	i32 131, ; 74
	i32 55, ; 75
	i32 149, ; 76
	i32 74, ; 77
	i32 145, ; 78
	i32 62, ; 79
	i32 329, ; 80
	i32 146, ; 81
	i32 417, ; 82
	i32 165, ; 83
	i32 322, ; 84
	i32 409, ; 85
	i32 369, ; 86
	i32 230, ; 87
	i32 12, ; 88
	i32 243, ; 89
	i32 125, ; 90
	i32 152, ; 91
	i32 113, ; 92
	i32 166, ; 93
	i32 164, ; 94
	i32 245, ; 95
	i32 334, ; 96
	i32 258, ; 97
	i32 300, ; 98
	i32 84, ; 99
	i32 379, ; 100
	i32 188, ; 101
	i32 385, ; 102
	i32 150, ; 103
	i32 385, ; 104
	i32 290, ; 105
	i32 60, ; 106
	i32 398, ; 107
	i32 321, ; 108
	i32 182, ; 109
	i32 51, ; 110
	i32 103, ; 111
	i32 114, ; 112
	i32 40, ; 113
	i32 283, ; 114
	i32 281, ; 115
	i32 120, ; 116
	i32 391, ; 117
	i32 52, ; 118
	i32 44, ; 119
	i32 119, ; 120
	i32 370, ; 121
	i32 235, ; 122
	i32 313, ; 123
	i32 403, ; 124
	i32 394, ; 125
	i32 241, ; 126
	i32 413, ; 127
	i32 81, ; 128
	i32 210, ; 129
	i32 329, ; 130
	i32 136, ; 131
	i32 277, ; 132
	i32 222, ; 133
	i32 8, ; 134
	i32 73, ; 135
	i32 155, ; 136
	i32 292, ; 137
	i32 363, ; 138
	i32 154, ; 139
	i32 92, ; 140
	i32 287, ; 141
	i32 45, ; 142
	i32 201, ; 143
	i32 291, ; 144
	i32 109, ; 145
	i32 187, ; 146
	i32 129, ; 147
	i32 406, ; 148
	i32 362, ; 149
	i32 25, ; 150
	i32 212, ; 151
	i32 72, ; 152
	i32 55, ; 153
	i32 341, ; 154
	i32 46, ; 155
	i32 319, ; 156
	i32 186, ; 157
	i32 236, ; 158
	i32 22, ; 159
	i32 250, ; 160
	i32 86, ; 161
	i32 353, ; 162
	i32 207, ; 163
	i32 43, ; 164
	i32 160, ; 165
	i32 71, ; 166
	i32 263, ; 167
	i32 304, ; 168
	i32 3, ; 169
	i32 42, ; 170
	i32 63, ; 171
	i32 318, ; 172
	i32 328, ; 173
	i32 383, ; 174
	i32 16, ; 175
	i32 53, ; 176
	i32 398, ; 177
	i32 315, ; 178
	i32 396, ; 179
	i32 286, ; 180
	i32 105, ; 181
	i32 200, ; 182
	i32 291, ; 183
	i32 308, ; 184
	i32 284, ; 185
	i32 247, ; 186
	i32 205, ; 187
	i32 34, ; 188
	i32 158, ; 189
	i32 335, ; 190
	i32 85, ; 191
	i32 32, ; 192
	i32 317, ; 193
	i32 12, ; 194
	i32 51, ; 195
	i32 56, ; 196
	i32 267, ; 197
	i32 36, ; 198
	i32 338, ; 199
	i32 178, ; 200
	i32 285, ; 201
	i32 220, ; 202
	i32 35, ; 203
	i32 298, ; 204
	i32 58, ; 205
	i32 180, ; 206
	i32 254, ; 207
	i32 173, ; 208
	i32 205, ; 209
	i32 17, ; 210
	i32 288, ; 211
	i32 164, ; 212
	i32 343, ; 213
	i32 320, ; 214
	i32 314, ; 215
	i32 310, ; 216
	i32 253, ; 217
	i32 184, ; 218
	i32 350, ; 219
	i32 331, ; 220
	i32 415, ; 221
	i32 280, ; 222
	i32 412, ; 223
	i32 316, ; 224
	i32 153, ; 225
	i32 276, ; 226
	i32 261, ; 227
	i32 412, ; 228
	i32 222, ; 229
	i32 208, ; 230
	i32 29, ; 231
	i32 52, ; 232
	i32 281, ; 233
	i32 402, ; 234
	i32 5, ; 235
	i32 296, ; 236
	i32 271, ; 237
	i32 275, ; 238
	i32 227, ; 239
	i32 292, ; 240
	i32 219, ; 241
	i32 373, ; 242
	i32 238, ; 243
	i32 361, ; 244
	i32 305, ; 245
	i32 85, ; 246
	i32 280, ; 247
	i32 61, ; 248
	i32 388, ; 249
	i32 112, ; 250
	i32 325, ; 251
	i32 408, ; 252
	i32 332, ; 253
	i32 376, ; 254
	i32 57, ; 255
	i32 342, ; 256
	i32 326, ; 257
	i32 267, ; 258
	i32 99, ; 259
	i32 209, ; 260
	i32 193, ; 261
	i32 19, ; 262
	i32 231, ; 263
	i32 111, ; 264
	i32 101, ; 265
	i32 358, ; 266
	i32 102, ; 267
	i32 294, ; 268
	i32 366, ; 269
	i32 104, ; 270
	i32 284, ; 271
	i32 71, ; 272
	i32 38, ; 273
	i32 32, ; 274
	i32 103, ; 275
	i32 73, ; 276
	i32 300, ; 277
	i32 9, ; 278
	i32 123, ; 279
	i32 46, ; 280
	i32 401, ; 281
	i32 221, ; 282
	i32 403, ; 283
	i32 188, ; 284
	i32 9, ; 285
	i32 43, ; 286
	i32 4, ; 287
	i32 268, ; 288
	i32 362, ; 289
	i32 181, ; 290
	i32 324, ; 291
	i32 31, ; 292
	i32 138, ; 293
	i32 92, ; 294
	i32 93, ; 295
	i32 206, ; 296
	i32 49, ; 297
	i32 141, ; 298
	i32 112, ; 299
	i32 140, ; 300
	i32 237, ; 301
	i32 208, ; 302
	i32 115, ; 303
	i32 382, ; 304
	i32 285, ; 305
	i32 157, ; 306
	i32 371, ; 307
	i32 76, ; 308
	i32 79, ; 309
	i32 257, ; 310
	i32 37, ; 311
	i32 279, ; 312
	i32 190, ; 313
	i32 393, ; 314
	i32 241, ; 315
	i32 234, ; 316
	i32 64, ; 317
	i32 138, ; 318
	i32 15, ; 319
	i32 345, ; 320
	i32 116, ; 321
	i32 273, ; 322
	i32 282, ; 323
	i32 229, ; 324
	i32 48, ; 325
	i32 70, ; 326
	i32 80, ; 327
	i32 126, ; 328
	i32 407, ; 329
	i32 94, ; 330
	i32 121, ; 331
	i32 289, ; 332
	i32 26, ; 333
	i32 250, ; 334
	i32 97, ; 335
	i32 28, ; 336
	i32 225, ; 337
	i32 332, ; 338
	i32 392, ; 339
	i32 295, ; 340
	i32 149, ; 341
	i32 169, ; 342
	i32 4, ; 343
	i32 98, ; 344
	i32 365, ; 345
	i32 33, ; 346
	i32 93, ; 347
	i32 272, ; 348
	i32 359, ; 349
	i32 182, ; 350
	i32 21, ; 351
	i32 41, ; 352
	i32 170, ; 353
	i32 311, ; 354
	i32 243, ; 355
	i32 337, ; 356
	i32 303, ; 357
	i32 416, ; 358
	i32 388, ; 359
	i32 257, ; 360
	i32 288, ; 361
	i32 282, ; 362
	i32 262, ; 363
	i32 2, ; 364
	i32 339, ; 365
	i32 134, ; 366
	i32 111, ; 367
	i32 374, ; 368
	i32 183, ; 369
	i32 349, ; 370
	i32 212, ; 371
	i32 320, ; 372
	i32 391, ; 373
	i32 58, ; 374
	i32 95, ; 375
	i32 302, ; 376
	i32 39, ; 377
	i32 380, ; 378
	i32 223, ; 379
	i32 25, ; 380
	i32 94, ; 381
	i32 296, ; 382
	i32 89, ; 383
	i32 99, ; 384
	i32 10, ; 385
	i32 384, ; 386
	i32 209, ; 387
	i32 337, ; 388
	i32 396, ; 389
	i32 87, ; 390
	i32 356, ; 391
	i32 307, ; 392
	i32 100, ; 393
	i32 386, ; 394
	i32 330, ; 395
	i32 269, ; 396
	i32 174, ; 397
	i32 390, ; 398
	i32 289, ; 399
	i32 214, ; 400
	i32 191, ; 401
	i32 393, ; 402
	i32 299, ; 403
	i32 7, ; 404
	i32 254, ; 405
	i32 211, ; 406
	i32 88, ; 407
	i32 176, ; 408
	i32 249, ; 409
	i32 154, ; 410
	i32 298, ; 411
	i32 33, ; 412
	i32 116, ; 413
	i32 202, ; 414
	i32 206, ; 415
	i32 82, ; 416
	i32 192, ; 417
	i32 370, ; 418
	i32 20, ; 419
	i32 335, ; 420
	i32 11, ; 421
	i32 162, ; 422
	i32 3, ; 423
	i32 197, ; 424
	i32 306, ; 425
	i32 186, ; 426
	i32 397, ; 427
	i32 183, ; 428
	i32 84, ; 429
	i32 293, ; 430
	i32 64, ; 431
	i32 185, ; 432
	i32 308, ; 433
	i32 276, ; 434
	i32 143, ; 435
	i32 354, ; 436
	i32 381, ; 437
	i32 258, ; 438
	i32 157, ; 439
	i32 407, ; 440
	i32 41, ; 441
	i32 117, ; 442
	i32 175, ; 443
	i32 213, ; 444
	i32 265, ; 445
	i32 405, ; 446
	i32 131, ; 447
	i32 75, ; 448
	i32 66, ; 449
	i32 375, ; 450
	i32 312, ; 451
	i32 172, ; 452
	i32 328, ; 453
	i32 217, ; 454
	i32 143, ; 455
	i32 366, ; 456
	i32 106, ; 457
	i32 151, ; 458
	i32 192, ; 459
	i32 70, ; 460
	i32 306, ; 461
	i32 409, ; 462
	i32 156, ; 463
	i32 189, ; 464
	i32 174, ; 465
	i32 121, ; 466
	i32 127, ; 467
	i32 343, ; 468
	i32 307, ; 469
	i32 152, ; 470
	i32 240, ; 471
	i32 141, ; 472
	i32 227, ; 473
	i32 304, ; 474
	i32 20, ; 475
	i32 14, ; 476
	i32 135, ; 477
	i32 75, ; 478
	i32 59, ; 479
	i32 230, ; 480
	i32 167, ; 481
	i32 168, ; 482
	i32 195, ; 483
	i32 15, ; 484
	i32 74, ; 485
	i32 6, ; 486
	i32 375, ; 487
	i32 23, ; 488
	i32 310, ; 489
	i32 355, ; 490
	i32 252, ; 491
	i32 211, ; 492
	i32 352, ; 493
	i32 91, ; 494
	i32 305, ; 495
	i32 1, ; 496
	i32 136, ; 497
	i32 364, ; 498
	i32 309, ; 499
	i32 253, ; 500
	i32 275, ; 501
	i32 134, ; 502
	i32 69, ; 503
	i32 146, ; 504
	i32 314, ; 505
	i32 293, ; 506
	i32 244, ; 507
	i32 184, ; 508
	i32 88, ; 509
	i32 96, ; 510
	i32 234, ; 511
	i32 239, ; 512
	i32 309, ; 513
	i32 31, ; 514
	i32 45, ; 515
	i32 248, ; 516
	i32 414, ; 517
	i32 189, ; 518
	i32 378, ; 519
	i32 330, ; 520
	i32 213, ; 521
	i32 109, ; 522
	i32 158, ; 523
	i32 35, ; 524
	i32 22, ; 525
	i32 405, ; 526
	i32 114, ; 527
	i32 57, ; 528
	i32 357, ; 529
	i32 413, ; 530
	i32 273, ; 531
	i32 410, ; 532
	i32 144, ; 533
	i32 118, ; 534
	i32 120, ; 535
	i32 110, ; 536
	i32 215, ; 537
	i32 139, ; 538
	i32 221, ; 539
	i32 416, ; 540
	i32 295, ; 541
	i32 384, ; 542
	i32 54, ; 543
	i32 105, ; 544
	i32 315, ; 545
	i32 210, ; 546
	i32 411, ; 547
	i32 392, ; 548
	i32 196, ; 549
	i32 197, ; 550
	i32 133, ; 551
	i32 287, ; 552
	i32 278, ; 553
	i32 266, ; 554
	i32 321, ; 555
	i32 244, ; 556
	i32 199, ; 557
	i32 159, ; 558
	i32 231, ; 559
	i32 163, ; 560
	i32 132, ; 561
	i32 266, ; 562
	i32 161, ; 563
	i32 255, ; 564
	i32 414, ; 565
	i32 140, ; 566
	i32 278, ; 567
	i32 353, ; 568
	i32 274, ; 569
	i32 169, ; 570
	i32 198, ; 571
	i32 216, ; 572
	i32 331, ; 573
	i32 283, ; 574
	i32 40, ; 575
	i32 242, ; 576
	i32 81, ; 577
	i32 345, ; 578
	i32 56, ; 579
	i32 37, ; 580
	i32 97, ; 581
	i32 166, ; 582
	i32 172, ; 583
	i32 279, ; 584
	i32 82, ; 585
	i32 218, ; 586
	i32 202, ; 587
	i32 336, ; 588
	i32 98, ; 589
	i32 30, ; 590
	i32 159, ; 591
	i32 400, ; 592
	i32 342, ; 593
	i32 18, ; 594
	i32 127, ; 595
	i32 187, ; 596
	i32 119, ; 597
	i32 238, ; 598
	i32 372, ; 599
	i32 269, ; 600
	i32 251, ; 601
	i32 271, ; 602
	i32 179, ; 603
	i32 346, ; 604
	i32 165, ; 605
	i32 246, ; 606
	i32 372, ; 607
	i32 417, ; 608
	i32 301, ; 609
	i32 268, ; 610
	i32 259, ; 611
	i32 170, ; 612
	i32 16, ; 613
	i32 144, ; 614
	i32 191, ; 615
	i32 125, ; 616
	i32 118, ; 617
	i32 38, ; 618
	i32 115, ; 619
	i32 47, ; 620
	i32 203, ; 621
	i32 190, ; 622
	i32 142, ; 623
	i32 117, ; 624
	i32 410, ; 625
	i32 34, ; 626
	i32 173, ; 627
	i32 204, ; 628
	i32 95, ; 629
	i32 53, ; 630
	i32 260, ; 631
	i32 336, ; 632
	i32 348, ; 633
	i32 129, ; 634
	i32 153, ; 635
	i32 24, ; 636
	i32 161, ; 637
	i32 237, ; 638
	i32 148, ; 639
	i32 104, ; 640
	i32 371, ; 641
	i32 0, ; 642
	i32 89, ; 643
	i32 225, ; 644
	i32 60, ; 645
	i32 142, ; 646
	i32 100, ; 647
	i32 5, ; 648
	i32 13, ; 649
	i32 122, ; 650
	i32 383, ; 651
	i32 135, ; 652
	i32 28, ; 653
	i32 301, ; 654
	i32 72, ; 655
	i32 400, ; 656
	i32 235, ; 657
	i32 24, ; 658
	i32 377, ; 659
	i32 223, ; 660
	i32 264, ; 661
	i32 261, ; 662
	i32 351, ; 663
	i32 318, ; 664
	i32 137, ; 665
	i32 216, ; 666
	i32 232, ; 667
	i32 168, ; 668
	i32 265, ; 669
	i32 297, ; 670
	i32 101, ; 671
	i32 123, ; 672
	i32 236, ; 673
	i32 340, ; 674
	i32 176, ; 675
	i32 177, ; 676
	i32 163, ; 677
	i32 167, ; 678
	i32 239, ; 679
	i32 39, ; 680
	i32 333, ; 681
	i32 194, ; 682
	i32 399, ; 683
	i32 316, ; 684
	i32 17, ; 685
	i32 171, ; 686
	i32 341, ; 687
	i32 376, ; 688
	i32 346, ; 689
	i32 317, ; 690
	i32 137, ; 691
	i32 150, ; 692
	i32 228, ; 693
	i32 155, ; 694
	i32 130, ; 695
	i32 363, ; 696
	i32 19, ; 697
	i32 65, ; 698
	i32 415, ; 699
	i32 395, ; 700
	i32 147, ; 701
	i32 368, ; 702
	i32 47, ; 703
	i32 339, ; 704
	i32 325, ; 705
	i32 340, ; 706
	i32 327, ; 707
	i32 214, ; 708
	i32 79, ; 709
	i32 359, ; 710
	i32 390, ; 711
	i32 61, ; 712
	i32 106, ; 713
	i32 263, ; 714
	i32 378, ; 715
	i32 218, ; 716
	i32 402, ; 717
	i32 49, ; 718
	i32 0, ; 719
	i32 249, ; 720
	i32 322, ; 721
	i32 260, ; 722
	i32 14, ; 723
	i32 175, ; 724
	i32 68, ; 725
	i32 401, ; 726
	i32 171, ; 727
	i32 380, ; 728
	i32 224, ; 729
	i32 228, ; 730
	i32 360, ; 731
	i32 347, ; 732
	i32 387, ; 733
	i32 406, ; 734
	i32 78, ; 735
	i32 358, ; 736
	i32 233, ; 737
	i32 389, ; 738
	i32 349, ; 739
	i32 369, ; 740
	i32 108, ; 741
	i32 217, ; 742
	i32 259, ; 743
	i32 67, ; 744
	i32 404, ; 745
	i32 63, ; 746
	i32 381, ; 747
	i32 27, ; 748
	i32 160, ; 749
	i32 297, ; 750
	i32 185, ; 751
	i32 226, ; 752
	i32 10, ; 753
	i32 194, ; 754
	i32 11, ; 755
	i32 201, ; 756
	i32 360, ; 757
	i32 386, ; 758
	i32 78, ; 759
	i32 126, ; 760
	i32 83, ; 761
	i32 395, ; 762
	i32 178, ; 763
	i32 66, ; 764
	i32 107, ; 765
	i32 350, ; 766
	i32 65, ; 767
	i32 128, ; 768
	i32 122, ; 769
	i32 365, ; 770
	i32 77, ; 771
	i32 274, ; 772
	i32 264, ; 773
	i32 8, ; 774
	i32 232, ; 775
	i32 2, ; 776
	i32 204, ; 777
	i32 313, ; 778
	i32 44, ; 779
	i32 277, ; 780
	i32 156, ; 781
	i32 128, ; 782
	i32 262, ; 783
	i32 356, ; 784
	i32 23, ; 785
	i32 133, ; 786
	i32 220, ; 787
	i32 251, ; 788
	i32 207, ; 789
	i32 29, ; 790
	i32 219, ; 791
	i32 62, ; 792
	i32 196, ; 793
	i32 90, ; 794
	i32 87, ; 795
	i32 148, ; 796
	i32 377, ; 797
	i32 404, ; 798
	i32 299, ; 799
	i32 198, ; 800
	i32 36, ; 801
	i32 86, ; 802
	i32 240, ; 803
	i32 367, ; 804
	i32 323, ; 805
	i32 333, ; 806
	i32 177, ; 807
	i32 50, ; 808
	i32 6, ; 809
	i32 193, ; 810
	i32 373, ; 811
	i32 90, ; 812
	i32 323, ; 813
	i32 21, ; 814
	i32 162, ; 815
	i32 96, ; 816
	i32 50, ; 817
	i32 113, ; 818
	i32 256, ; 819
	i32 130, ; 820
	i32 411, ; 821
	i32 394, ; 822
	i32 76, ; 823
	i32 27, ; 824
	i32 312, ; 825
	i32 233, ; 826
	i32 255, ; 827
	i32 7, ; 828
	i32 347, ; 829
	i32 361, ; 830
	i32 379, ; 831
	i32 195, ; 832
	i32 110, ; 833
	i32 256, ; 834
	i32 242 ; 835
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
