; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [320 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [634 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 67
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 66
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 107
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 237
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 274
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 47
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 79
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 144
	i32 45981941, ; 8: Xamarin.KotlinX.AtomicFU.Jvm => 0x2bda0f5 => 278
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 29
	i32 67008169, ; 10: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 315
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 123
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 187
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 101
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 258
	i32 117431740, ; 15: System.Runtime.InteropServices => 0x6ffddbc => 106
	i32 120558881, ; 16: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 258
	i32 122350210, ; 17: System.Threading.Channels.dll => 0x74aea82 => 138
	i32 142721839, ; 18: System.Net.WebHeaderCollection => 0x881c32f => 76
	i32 149972175, ; 19: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 123
	i32 159306688, ; 20: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 21: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 209
	i32 166070894, ; 22: Xamarin.KotlinX.AtomicFU.dll => 0x9e60a6e => 277
	i32 176265551, ; 23: System.ServiceProcess => 0xa81994f => 131
	i32 182336117, ; 24: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 260
	i32 184328833, ; 25: System.ValueTuple.dll => 0xafca281 => 150
	i32 195452805, ; 26: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 312
	i32 199333315, ; 27: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 313
	i32 205061960, ; 28: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 29: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 207
	i32 220171995, ; 30: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 31: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 230
	i32 230752869, ; 32: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 33: System.Linq.Parallel => 0xdcb05c4 => 58
	i32 231814094, ; 34: System.Globalization => 0xdd133ce => 41
	i32 246610117, ; 35: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 90
	i32 261689757, ; 36: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 213
	i32 276479776, ; 37: System.Threading.Timer.dll => 0x107abf20 => 146
	i32 278686392, ; 38: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 233
	i32 280482487, ; 39: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 229
	i32 280992041, ; 40: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 284
	i32 291076382, ; 41: System.IO.Pipes.AccessControl.dll => 0x1159791e => 53
	i32 298918909, ; 42: System.Net.Ping.dll => 0x11d123fd => 68
	i32 317674968, ; 43: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 312
	i32 318968648, ; 44: Xamarin.AndroidX.Activity.dll => 0x13031348 => 198
	i32 321597661, ; 45: System.Numerics => 0x132b30dd => 82
	i32 336156722, ; 46: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 297
	i32 342366114, ; 47: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 231
	i32 347068432, ; 48: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 191
	i32 356389973, ; 49: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 296
	i32 360082299, ; 50: System.ServiceModel.Web => 0x15766b7b => 130
	i32 367780167, ; 51: System.IO.Pipes => 0x15ebe147 => 54
	i32 374914964, ; 52: System.Transactions.Local => 0x1658bf94 => 148
	i32 375677976, ; 53: System.Net.ServicePoint.dll => 0x16646418 => 73
	i32 379916513, ; 54: System.Threading.Thread.dll => 0x16a510e1 => 144
	i32 385762202, ; 55: System.Memory.dll => 0x16fe439a => 61
	i32 392610295, ; 56: System.Threading.ThreadPool.dll => 0x1766c1f7 => 145
	i32 395744057, ; 57: _Microsoft.Android.Resource.Designer => 0x17969339 => 316
	i32 403441872, ; 58: WindowsBase => 0x180c08d0 => 164
	i32 425531652, ; 59: Xamarin.AndroidX.Lifecycle.Runtime.Android => 0x195d1904 => 238
	i32 435591531, ; 60: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 308
	i32 441335492, ; 61: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 214
	i32 442565967, ; 62: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 63: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 227
	i32 451504562, ; 64: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 124
	i32 456227837, ; 65: System.Web.HttpUtility.dll => 0x1b317bfd => 151
	i32 459347974, ; 66: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 112
	i32 465846621, ; 67: mscorlib => 0x1bc4415d => 165
	i32 469710990, ; 68: System.dll => 0x1bff388e => 163
	i32 476646585, ; 69: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 229
	i32 486930444, ; 70: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 246
	i32 498788369, ; 71: System.ObjectModel => 0x1dbae811 => 83
	i32 500358224, ; 72: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 295
	i32 503918385, ; 73: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 289
	i32 513247710, ; 74: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 181
	i32 526420162, ; 75: System.Transactions.dll => 0x1f6088c2 => 149
	i32 530272170, ; 76: System.Linq.Queryable => 0x1f9b4faa => 59
	i32 539058512, ; 77: Microsoft.Extensions.Logging => 0x20216150 => 177
	i32 540030774, ; 78: System.IO.FileSystem.dll => 0x20303736 => 50
	i32 545304856, ; 79: System.Runtime.Extensions => 0x2080b118 => 102
	i32 546455878, ; 80: System.Runtime.Serialization.Xml => 0x20924146 => 113
	i32 549171840, ; 81: System.Globalization.Calendars => 0x20bbb280 => 39
	i32 557405415, ; 82: Jsr305Binding => 0x213954e7 => 271
	i32 569601784, ; 83: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 269
	i32 577335427, ; 84: System.Security.Cryptography.Cng => 0x22697083 => 119
	i32 592146354, ; 85: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 303
	i32 601371474, ; 86: System.IO.IsolatedStorage.dll => 0x23d83352 => 51
	i32 605376203, ; 87: System.IO.Compression.FileSystem => 0x24154ecb => 43
	i32 613668793, ; 88: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 118
	i32 621990341, ; 89: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 0x2512d1c5 => 238
	i32 627609679, ; 90: Xamarin.AndroidX.CustomView => 0x2568904f => 219
	i32 627931235, ; 91: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 301
	i32 639843206, ; 92: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 225
	i32 643868501, ; 93: System.Net => 0x2660a755 => 80
	i32 662205335, ; 94: System.Text.Encodings.Web.dll => 0x27787397 => 135
	i32 663517072, ; 95: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 265
	i32 666292255, ; 96: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 205
	i32 672442732, ; 97: System.Collections.Concurrent => 0x2814a96c => 8
	i32 679221896, ; 98: Xamarin.KotlinX.AtomicFU => 0x287c1a88 => 277
	i32 683518922, ; 99: System.Net.Security => 0x28bdabca => 72
	i32 688181140, ; 100: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 283
	i32 690569205, ; 101: System.Xml.Linq.dll => 0x29293ff5 => 154
	i32 691348768, ; 102: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 279
	i32 693804605, ; 103: System.Windows => 0x295a9e3d => 153
	i32 699345723, ; 104: System.Reflection.Emit => 0x29af2b3b => 91
	i32 700284507, ; 105: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 275
	i32 700358131, ; 106: System.IO.Compression.ZipFile => 0x29be9df3 => 44
	i32 706645707, ; 107: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 298
	i32 709557578, ; 108: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 286
	i32 722857257, ; 109: System.Runtime.Loader.dll => 0x2b15ed29 => 108
	i32 735137430, ; 110: System.Security.SecureString.dll => 0x2bd14e96 => 128
	i32 748832960, ; 111: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 189
	i32 752232764, ; 112: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 113: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 195
	i32 759454413, ; 114: System.Net.Requests => 0x2d445acd => 71
	i32 762598435, ; 115: System.IO.Pipes.dll => 0x2d745423 => 54
	i32 775507847, ; 116: System.IO.Compression => 0x2e394f87 => 45
	i32 777317022, ; 117: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 307
	i32 789151979, ; 118: Microsoft.Extensions.Options => 0x2f0980eb => 180
	i32 790371945, ; 119: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 220
	i32 804715423, ; 120: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 121: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 235
	i32 823281589, ; 122: System.Private.Uri.dll => 0x311247b5 => 85
	i32 830298997, ; 123: System.IO.Compression.Brotli => 0x317d5b75 => 42
	i32 832635846, ; 124: System.Xml.XPath.dll => 0x31a103c6 => 159
	i32 834051424, ; 125: System.Net.Quic => 0x31b69d60 => 70
	i32 843511501, ; 126: Xamarin.AndroidX.Print => 0x3246f6cd => 251
	i32 873119928, ; 127: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 128: System.Globalization.dll => 0x34505120 => 41
	i32 878954865, ; 129: System.Net.Http.Json => 0x3463c971 => 62
	i32 904024072, ; 130: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 131: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 52
	i32 926902833, ; 132: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 310
	i32 928116545, ; 133: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 274
	i32 952186615, ; 134: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 104
	i32 966729478, ; 135: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 272
	i32 967690846, ; 136: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 231
	i32 975236339, ; 137: System.Diagnostics.Tracing => 0x3a20ecf3 => 33
	i32 975874589, ; 138: System.Xml.XDocument => 0x3a2aaa1d => 157
	i32 986514023, ; 139: System.Private.DataContractSerialization.dll => 0x3acd0267 => 84
	i32 987214855, ; 140: System.Diagnostics.Tools => 0x3ad7b407 => 31
	i32 992768348, ; 141: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 142: System.IO.FileSystem => 0x3b45fb35 => 50
	i32 1001831731, ; 143: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 55
	i32 1012816738, ; 144: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 255
	i32 1019214401, ; 145: System.Drawing => 0x3cbffa41 => 35
	i32 1028951442, ; 146: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 176
	i32 1029334545, ; 147: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 285
	i32 1031528504, ; 148: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 273
	i32 1035644815, ; 149: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 203
	i32 1036536393, ; 150: System.Drawing.Primitives.dll => 0x3dc84a49 => 34
	i32 1044663988, ; 151: System.Linq.Expressions.dll => 0x3e444eb4 => 57
	i32 1052210849, ; 152: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 241
	i32 1067306892, ; 153: GoogleGson => 0x3f9dcf8c => 172
	i32 1082857460, ; 154: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 155: Xamarin.Kotlin.StdLib => 0x409e66d8 => 276
	i32 1098259244, ; 156: System => 0x41761b2c => 163
	i32 1118262833, ; 157: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 298
	i32 1121599056, ; 158: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 239
	i32 1127624469, ; 159: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 179
	i32 1149092582, ; 160: Xamarin.AndroidX.Window => 0x447dc2e6 => 268
	i32 1168523401, ; 161: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 304
	i32 1170634674, ; 162: System.Web.dll => 0x45c677b2 => 152
	i32 1175144683, ; 163: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 264
	i32 1178241025, ; 164: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 249
	i32 1203215381, ; 165: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 302
	i32 1204270330, ; 166: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 205
	i32 1208641965, ; 167: System.Diagnostics.Process => 0x480a69ad => 28
	i32 1219128291, ; 168: System.IO.IsolatedStorage => 0x48aa6be3 => 51
	i32 1234928153, ; 169: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 300
	i32 1243150071, ; 170: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 269
	i32 1246548578, ; 171: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 210
	i32 1253011324, ; 172: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 173: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 284
	i32 1264511973, ; 174: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 259
	i32 1264890200, ; 175: Xamarin.KotlinX.Coroutines.Core.dll => 0x4b64b158 => 280
	i32 1267360935, ; 176: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 263
	i32 1273260888, ; 177: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 211
	i32 1275534314, ; 178: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 279
	i32 1278448581, ; 179: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 202
	i32 1292207520, ; 180: SQLitePCLRaw.core.dll => 0x4d0585a0 => 190
	i32 1293217323, ; 181: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 222
	i32 1309188875, ; 182: System.Private.DataContractSerialization => 0x4e08a30b => 84
	i32 1322716291, ; 183: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 268
	i32 1324164729, ; 184: System.Linq => 0x4eed2679 => 60
	i32 1335329327, ; 185: System.Runtime.Serialization.Json.dll => 0x4f97822f => 111
	i32 1364015309, ; 186: System.IO => 0x514d38cd => 56
	i32 1373134921, ; 187: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 314
	i32 1376866003, ; 188: Xamarin.AndroidX.SavedState => 0x52114ed3 => 255
	i32 1379779777, ; 189: System.Resources.ResourceManager => 0x523dc4c1 => 98
	i32 1402170036, ; 190: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 191: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 215
	i32 1408764838, ; 192: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 110
	i32 1411638395, ; 193: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 100
	i32 1422545099, ; 194: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 101
	i32 1430672901, ; 195: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 282
	i32 1434145427, ; 196: System.Runtime.Handles => 0x557b5293 => 103
	i32 1435222561, ; 197: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 272
	i32 1437299793, ; 198: Xamarin.AndroidX.Lifecycle.Common.Jvm => 0x55ab7451 => 232
	i32 1439761251, ; 199: System.Net.Quic.dll => 0x55d10363 => 70
	i32 1441095154, ; 200: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 0x55e55df2 => 242
	i32 1452070440, ; 201: System.Formats.Asn1.dll => 0x568cd628 => 37
	i32 1453312822, ; 202: System.Diagnostics.Tools.dll => 0x569fcb36 => 31
	i32 1457743152, ; 203: System.Runtime.Extensions.dll => 0x56e36530 => 102
	i32 1458022317, ; 204: System.Net.Security.dll => 0x56e7a7ad => 72
	i32 1461004990, ; 205: es\Microsoft.Maui.Controls.resources => 0x57152abe => 288
	i32 1461234159, ; 206: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 207: System.Security.Cryptography.OpenSsl => 0x57201017 => 122
	i32 1462112819, ; 208: System.IO.Compression.dll => 0x57261233 => 45
	i32 1469204771, ; 209: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 204
	i32 1470490898, ; 210: Microsoft.Extensions.Primitives => 0x57a5e912 => 181
	i32 1479771757, ; 211: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 212: System.IO.Compression.Brotli.dll => 0x583e844f => 42
	i32 1487239319, ; 213: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 214: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 256
	i32 1493001747, ; 215: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 292
	i32 1514721132, ; 216: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 287
	i32 1536373174, ; 217: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 30
	i32 1543031311, ; 218: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 137
	i32 1543355203, ; 219: System.Reflection.Emit.dll => 0x5bfdbb43 => 91
	i32 1550322496, ; 220: System.Reflection.Extensions.dll => 0x5c680b40 => 92
	i32 1551623176, ; 221: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 307
	i32 1565862583, ; 222: System.IO.FileSystem.Primitives => 0x5d552ab7 => 48
	i32 1566207040, ; 223: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 140
	i32 1573704789, ; 224: System.Runtime.Serialization.Json => 0x5dccd455 => 111
	i32 1580037396, ; 225: System.Threading.Overlapped => 0x5e2d7514 => 139
	i32 1582372066, ; 226: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 221
	i32 1592978981, ; 227: System.Runtime.Serialization.dll => 0x5ef2ee25 => 114
	i32 1597949149, ; 228: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 273
	i32 1601112923, ; 229: System.Xml.Serialization => 0x5f6f0b5b => 156
	i32 1604827217, ; 230: System.Net.WebClient => 0x5fa7b851 => 75
	i32 1618516317, ; 231: System.Net.WebSockets.Client.dll => 0x6078995d => 78
	i32 1622152042, ; 232: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 245
	i32 1622358360, ; 233: System.Dynamic.Runtime => 0x60b33958 => 36
	i32 1624863272, ; 234: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 267
	i32 1635184631, ; 235: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 225
	i32 1636350590, ; 236: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 218
	i32 1639515021, ; 237: System.Net.Http.dll => 0x61b9038d => 63
	i32 1639986890, ; 238: System.Text.RegularExpressions => 0x61c036ca => 137
	i32 1641389582, ; 239: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 240: System.Runtime => 0x62c6282e => 115
	i32 1658241508, ; 241: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 261
	i32 1658251792, ; 242: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 270
	i32 1670060433, ; 243: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 213
	i32 1675553242, ; 244: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 47
	i32 1677501392, ; 245: System.Net.Primitives.dll => 0x63fca3d0 => 69
	i32 1678508291, ; 246: System.Net.WebSockets => 0x640c0103 => 79
	i32 1679769178, ; 247: System.Security.Cryptography => 0x641f3e5a => 125
	i32 1691477237, ; 248: System.Reflection.Metadata => 0x64d1e4f5 => 93
	i32 1696967625, ; 249: System.Security.Cryptography.Csp => 0x6525abc9 => 120
	i32 1701541528, ; 250: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 251: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 191
	i32 1720223769, ; 252: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 235
	i32 1726116996, ; 253: System.Reflection.dll => 0x66e27484 => 96
	i32 1728033016, ; 254: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 27
	i32 1729485958, ; 255: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 208
	i32 1736233607, ; 256: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 305
	i32 1743415430, ; 257: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 283
	i32 1744735666, ; 258: System.Transactions.Local.dll => 0x67fe8db2 => 148
	i32 1746316138, ; 259: Mono.Android.Export => 0x6816ab6a => 168
	i32 1750313021, ; 260: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 261: System.Resources.Reader.dll => 0x68cc9d1e => 97
	i32 1763938596, ; 262: System.Diagnostics.TraceSource.dll => 0x69239124 => 32
	i32 1765942094, ; 263: System.Reflection.Extensions => 0x6942234e => 92
	i32 1766324549, ; 264: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 260
	i32 1770582343, ; 265: Microsoft.Extensions.Logging.dll => 0x6988f147 => 177
	i32 1776026572, ; 266: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 267: System.Globalization.Extensions.dll => 0x69ec0683 => 40
	i32 1780572499, ; 268: Mono.Android.Runtime.dll => 0x6a216153 => 169
	i32 1782862114, ; 269: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 299
	i32 1788241197, ; 270: Xamarin.AndroidX.Fragment => 0x6a96652d => 227
	i32 1793755602, ; 271: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 291
	i32 1808609942, ; 272: Xamarin.AndroidX.Loader => 0x6bcd3296 => 245
	i32 1813058853, ; 273: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 276
	i32 1813201214, ; 274: Xamarin.Google.Android.Material => 0x6c13413e => 270
	i32 1818569960, ; 275: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 250
	i32 1818787751, ; 276: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 277: System.Text.Encoding.Extensions => 0x6cbab720 => 133
	i32 1824722060, ; 278: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 110
	i32 1828688058, ; 279: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 178
	i32 1842015223, ; 280: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 311
	i32 1847515442, ; 281: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 195
	i32 1853025655, ; 282: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 308
	i32 1858542181, ; 283: System.Linq.Expressions => 0x6ec71a65 => 57
	i32 1870277092, ; 284: System.Reflection.Primitives => 0x6f7a29e4 => 94
	i32 1875935024, ; 285: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 290
	i32 1879696579, ; 286: System.Formats.Tar.dll => 0x7009e4c3 => 38
	i32 1885316902, ; 287: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 206
	i32 1888955245, ; 288: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 289: System.Reflection.Metadata.dll => 0x70a66bdd => 93
	i32 1898237753, ; 290: System.Reflection.DispatchProxy => 0x7124cf39 => 88
	i32 1900610850, ; 291: System.Resources.ResourceManager.dll => 0x71490522 => 98
	i32 1910275211, ; 292: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 293: System.Private.Xml.Linq => 0x739bd4a8 => 86
	i32 1956758971, ; 294: System.Resources.Writer => 0x74a1c5bb => 99
	i32 1961813231, ; 295: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 257
	i32 1968388702, ; 296: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 173
	i32 1985761444, ; 297: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 197
	i32 2003115576, ; 298: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 287
	i32 2011961780, ; 299: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 300: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 241
	i32 2025202353, ; 301: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 282
	i32 2031763787, ; 302: Xamarin.Android.Glide => 0x791a414b => 194
	i32 2045470958, ; 303: System.Private.Xml => 0x79eb68ee => 87
	i32 2055257422, ; 304: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 234
	i32 2060060697, ; 305: System.Windows.dll => 0x7aca0819 => 153
	i32 2066184531, ; 306: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 286
	i32 2070888862, ; 307: System.Diagnostics.TraceSource => 0x7b6f419e => 32
	i32 2079903147, ; 308: System.Runtime.dll => 0x7bf8cdab => 115
	i32 2090596640, ; 309: System.Numerics.Vectors => 0x7c9bf920 => 81
	i32 2103459038, ; 310: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 192
	i32 2105232135, ; 311: MiAppCrud.dll => 0x7d7b4b07 => 0
	i32 2127167465, ; 312: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 313: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 314: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 161
	i32 2146852085, ; 315: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 316: Microsoft.Maui => 0x80bd55ad => 185
	i32 2169148018, ; 317: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 294
	i32 2181898931, ; 318: Microsoft.Extensions.Options.dll => 0x820d22b3 => 180
	i32 2192057212, ; 319: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 178
	i32 2193016926, ; 320: System.ObjectModel.dll => 0x82b6c85e => 83
	i32 2201107256, ; 321: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 281
	i32 2201231467, ; 322: System.Net.Http => 0x8334206b => 63
	i32 2207618523, ; 323: it\Microsoft.Maui.Controls.resources => 0x839595db => 296
	i32 2217644978, ; 324: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 264
	i32 2222056684, ; 325: System.Threading.Tasks.Parallel => 0x8471e4ec => 142
	i32 2233323705, ; 326: MiAppCrud => 0x851dd0b9 => 0
	i32 2244775296, ; 327: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 246
	i32 2252106437, ; 328: System.Xml.Serialization.dll => 0x863c6ac5 => 156
	i32 2256313426, ; 329: System.Globalization.Extensions => 0x867c9c52 => 40
	i32 2265110946, ; 330: System.Security.AccessControl.dll => 0x8702d9a2 => 116
	i32 2266799131, ; 331: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 174
	i32 2267999099, ; 332: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 196
	i32 2270573516, ; 333: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 290
	i32 2279755925, ; 334: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 253
	i32 2293034957, ; 335: System.ServiceModel.Web.dll => 0x88acefcd => 130
	i32 2295906218, ; 336: System.Net.Sockets => 0x88d8bfaa => 74
	i32 2298471582, ; 337: System.Net.Mail => 0x88ffe49e => 65
	i32 2303942373, ; 338: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 300
	i32 2305521784, ; 339: System.Private.CoreLib.dll => 0x896b7878 => 171
	i32 2315684594, ; 340: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 200
	i32 2320631194, ; 341: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 142
	i32 2340441535, ; 342: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 105
	i32 2344264397, ; 343: System.ValueTuple => 0x8bbaa2cd => 150
	i32 2353062107, ; 344: System.Net.Primitives => 0x8c40e0db => 69
	i32 2368005991, ; 345: System.Xml.ReaderWriter.dll => 0x8d24e767 => 155
	i32 2371007202, ; 346: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 173
	i32 2378619854, ; 347: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 120
	i32 2383496789, ; 348: System.Security.Principal.Windows.dll => 0x8e114655 => 126
	i32 2395872292, ; 349: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 295
	i32 2401565422, ; 350: System.Web.HttpUtility => 0x8f24faee => 151
	i32 2403452196, ; 351: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 224
	i32 2421380589, ; 352: System.Threading.Tasks.Dataflow => 0x905355ed => 140
	i32 2423080555, ; 353: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 211
	i32 2427813419, ; 354: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 292
	i32 2435356389, ; 355: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 356: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 357: System.Text.Encoding.dll => 0x924edee6 => 134
	i32 2458678730, ; 358: System.Net.Sockets.dll => 0x928c75ca => 74
	i32 2459001652, ; 359: System.Linq.Parallel.dll => 0x92916334 => 58
	i32 2465273461, ; 360: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 189
	i32 2465532216, ; 361: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 214
	i32 2471841756, ; 362: netstandard.dll => 0x93554fdc => 166
	i32 2475788418, ; 363: Java.Interop.dll => 0x93918882 => 167
	i32 2480646305, ; 364: Microsoft.Maui.Controls => 0x93dba8a1 => 183
	i32 2483903535, ; 365: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 366: System.Net.ServicePoint => 0x94147f61 => 73
	i32 2490993605, ; 367: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 368: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 369: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 237
	i32 2522472828, ; 370: Xamarin.Android.Glide.dll => 0x9659e17c => 194
	i32 2538310050, ; 371: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 90
	i32 2550873716, ; 372: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 293
	i32 2562349572, ; 373: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 374: System.Text.Encodings.Web => 0x9930ee42 => 135
	i32 2577256205, ; 375: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android => 0x999dcf0d => 240
	i32 2581783588, ; 376: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 239
	i32 2581819634, ; 377: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 263
	i32 2585220780, ; 378: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 133
	i32 2585805581, ; 379: System.Net.Ping => 0x9a20430d => 68
	i32 2589602615, ; 380: System.Threading.ThreadPool => 0x9a5a3337 => 145
	i32 2593496499, ; 381: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 302
	i32 2605712449, ; 382: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 281
	i32 2615233544, ; 383: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 228
	i32 2616218305, ; 384: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 179
	i32 2617129537, ; 385: System.Private.Xml.dll => 0x9bfe3a41 => 87
	i32 2618712057, ; 386: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 95
	i32 2620871830, ; 387: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 218
	i32 2624644809, ; 388: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 223
	i32 2626831493, ; 389: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 297
	i32 2627185994, ; 390: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 30
	i32 2629843544, ; 391: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 44
	i32 2633051222, ; 392: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 233
	i32 2663391936, ; 393: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 196
	i32 2663698177, ; 394: System.Runtime.Loader => 0x9ec4cf01 => 108
	i32 2664396074, ; 395: System.Xml.XDocument.dll => 0x9ecf752a => 157
	i32 2665622720, ; 396: System.Drawing.Primitives => 0x9ee22cc0 => 34
	i32 2671474046, ; 397: Xamarin.KotlinX.Coroutines.Core => 0x9f3b757e => 280
	i32 2676780864, ; 398: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 399: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 113
	i32 2693849962, ; 400: System.IO.dll => 0xa090e36a => 56
	i32 2701096212, ; 401: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 261
	i32 2715334215, ; 402: System.Threading.Tasks.dll => 0xa1d8b647 => 143
	i32 2717744543, ; 403: System.Security.Claims => 0xa1fd7d9f => 117
	i32 2719963679, ; 404: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 119
	i32 2724373263, ; 405: System.Runtime.Numerics.dll => 0xa262a30f => 109
	i32 2732626843, ; 406: Xamarin.AndroidX.Activity => 0xa2e0939b => 198
	i32 2735172069, ; 407: System.Threading.Channels => 0xa30769e5 => 138
	i32 2737747696, ; 408: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 204
	i32 2740948882, ; 409: System.IO.Pipes.AccessControl => 0xa35f8f92 => 53
	i32 2748088231, ; 410: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 104
	i32 2752995522, ; 411: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 303
	i32 2758225723, ; 412: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 184
	i32 2764765095, ; 413: Microsoft.Maui.dll => 0xa4caf7a7 => 185
	i32 2765824710, ; 414: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 132
	i32 2766642685, ; 415: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 0xa4e79dfd => 242
	i32 2770495804, ; 416: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 275
	i32 2778768386, ; 417: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 266
	i32 2779977773, ; 418: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 254
	i32 2780199943, ; 419: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 0xa5b67c07 => 232
	i32 2785988530, ; 420: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 309
	i32 2788224221, ; 421: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 228
	i32 2801831435, ; 422: Microsoft.Maui.Graphics => 0xa7008e0b => 187
	i32 2803228030, ; 423: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 158
	i32 2806116107, ; 424: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 288
	i32 2810250172, ; 425: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 215
	i32 2819470561, ; 426: System.Xml.dll => 0xa80db4e1 => 162
	i32 2821205001, ; 427: System.ServiceProcess.dll => 0xa8282c09 => 131
	i32 2821294376, ; 428: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 254
	i32 2824502124, ; 429: System.Xml.XmlDocument => 0xa85a7b6c => 160
	i32 2831556043, ; 430: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 301
	i32 2838993487, ; 431: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 243
	i32 2849599387, ; 432: System.Threading.Overlapped.dll => 0xa9d96f9b => 139
	i32 2853208004, ; 433: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 266
	i32 2855708567, ; 434: Xamarin.AndroidX.Transition => 0xaa36a797 => 262
	i32 2861098320, ; 435: Mono.Android.Export.dll => 0xaa88e550 => 168
	i32 2861189240, ; 436: Microsoft.Maui.Essentials => 0xaa8a4878 => 186
	i32 2870099610, ; 437: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 199
	i32 2875164099, ; 438: Jsr305Binding.dll => 0xab5f85c3 => 271
	i32 2875220617, ; 439: System.Globalization.Calendars.dll => 0xab606289 => 39
	i32 2884993177, ; 440: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 226
	i32 2887636118, ; 441: System.Net.dll => 0xac1dd496 => 80
	i32 2899753641, ; 442: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 55
	i32 2900621748, ; 443: System.Dynamic.Runtime.dll => 0xace3f9b4 => 36
	i32 2901442782, ; 444: System.Reflection => 0xacf080de => 96
	i32 2905242038, ; 445: mscorlib.dll => 0xad2a79b6 => 165
	i32 2909740682, ; 446: System.Private.CoreLib => 0xad6f1e8a => 171
	i32 2916838712, ; 447: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 267
	i32 2919462931, ; 448: System.Numerics.Vectors.dll => 0xae037813 => 81
	i32 2921128767, ; 449: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 201
	i32 2936416060, ; 450: System.Resources.Reader => 0xaf06273c => 97
	i32 2940926066, ; 451: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 29
	i32 2942453041, ; 452: System.Xml.XPath.XDocument => 0xaf624531 => 158
	i32 2959614098, ; 453: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 454: System.Security.Principal.Windows => 0xb0ed41f3 => 126
	i32 2972252294, ; 455: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 118
	i32 2978675010, ; 456: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 222
	i32 2987532451, ; 457: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 257
	i32 2996846495, ; 458: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 236
	i32 3016983068, ; 459: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 259
	i32 3023353419, ; 460: WindowsBase.dll => 0xb434b64b => 164
	i32 3024354802, ; 461: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 230
	i32 3038032645, ; 462: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 316
	i32 3056245963, ; 463: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 256
	i32 3057625584, ; 464: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 247
	i32 3059408633, ; 465: Mono.Android.Runtime => 0xb65adef9 => 169
	i32 3059793426, ; 466: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 467: System.Threading.Tasks => 0xb755818f => 143
	i32 3077302341, ; 468: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 294
	i32 3090735792, ; 469: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 124
	i32 3099732863, ; 470: System.Security.Claims.dll => 0xb8c22b7f => 117
	i32 3103600923, ; 471: System.Formats.Asn1 => 0xb8fd311b => 37
	i32 3111772706, ; 472: System.Runtime.Serialization => 0xb979e222 => 114
	i32 3121463068, ; 473: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 46
	i32 3124832203, ; 474: System.Threading.Tasks.Extensions => 0xba4127cb => 141
	i32 3132293585, ; 475: System.Security.AccessControl => 0xbab301d1 => 116
	i32 3147165239, ; 476: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 33
	i32 3148237826, ; 477: GoogleGson.dll => 0xbba64c02 => 172
	i32 3159123045, ; 478: System.Reflection.Primitives.dll => 0xbc4c6465 => 94
	i32 3160747431, ; 479: System.IO.MemoryMappedFiles => 0xbc652da7 => 52
	i32 3178803400, ; 480: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 248
	i32 3192346100, ; 481: System.Security.SecureString => 0xbe4755f4 => 128
	i32 3193515020, ; 482: System.Web => 0xbe592c0c => 152
	i32 3204380047, ; 483: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 484: System.Xml.XmlDocument.dll => 0xbf506931 => 160
	i32 3211777861, ; 485: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 221
	i32 3220365878, ; 486: System.Threading => 0xbff2e236 => 147
	i32 3226221578, ; 487: System.Runtime.Handles.dll => 0xc04c3c0a => 103
	i32 3251039220, ; 488: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 88
	i32 3258312781, ; 489: Xamarin.AndroidX.CardView => 0xc235e84d => 208
	i32 3265493905, ; 490: System.Linq.Queryable.dll => 0xc2a37b91 => 59
	i32 3265893370, ; 491: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 141
	i32 3277815716, ; 492: System.Resources.Writer.dll => 0xc35f7fa4 => 99
	i32 3279906254, ; 493: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 494: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3286872994, ; 495: SQLite-net.dll => 0xc3e9b3a2 => 188
	i32 3290767353, ; 496: System.Security.Cryptography.Encoding => 0xc4251ff9 => 121
	i32 3299363146, ; 497: System.Text.Encoding => 0xc4a8494a => 134
	i32 3303498502, ; 498: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 27
	i32 3305363605, ; 499: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 289
	i32 3316684772, ; 500: System.Net.Requests.dll => 0xc5b097e4 => 71
	i32 3317135071, ; 501: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 219
	i32 3317144872, ; 502: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 503: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 206
	i32 3345895724, ; 504: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 252
	i32 3346324047, ; 505: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 249
	i32 3357674450, ; 506: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 306
	i32 3358260929, ; 507: System.Text.Json => 0xc82afec1 => 136
	i32 3360279109, ; 508: SQLitePCLRaw.core => 0xc849ca45 => 190
	i32 3362336904, ; 509: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 199
	i32 3362522851, ; 510: Xamarin.AndroidX.Core => 0xc86c06e3 => 216
	i32 3366347497, ; 511: Java.Interop => 0xc8a662e9 => 167
	i32 3374999561, ; 512: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 253
	i32 3381016424, ; 513: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 285
	i32 3395150330, ; 514: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 100
	i32 3403906625, ; 515: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 122
	i32 3405233483, ; 516: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 220
	i32 3428513518, ; 517: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 175
	i32 3429136800, ; 518: System.Xml => 0xcc6479a0 => 162
	i32 3430777524, ; 519: netstandard => 0xcc7d82b4 => 166
	i32 3441283291, ; 520: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 223
	i32 3445260447, ; 521: System.Formats.Tar => 0xcd5a809f => 38
	i32 3452344032, ; 522: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 182
	i32 3463511458, ; 523: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 293
	i32 3471940407, ; 524: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 525: Mono.Android => 0xcf3163e6 => 170
	i32 3479583265, ; 526: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 306
	i32 3484440000, ; 527: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 305
	i32 3485117614, ; 528: System.Text.Json.dll => 0xcfbaacae => 136
	i32 3486566296, ; 529: System.Transactions => 0xcfd0c798 => 149
	i32 3493954962, ; 530: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 212
	i32 3509114376, ; 531: System.Xml.Linq => 0xd128d608 => 154
	i32 3515174580, ; 532: System.Security.dll => 0xd1854eb4 => 129
	i32 3530912306, ; 533: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 534: System.Net.HttpListener => 0xd2ff69f1 => 64
	i32 3560100363, ; 535: System.Threading.Timer => 0xd432d20b => 146
	i32 3570554715, ; 536: System.IO.FileSystem.AccessControl => 0xd4d2575b => 46
	i32 3580758918, ; 537: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 313
	i32 3597029428, ; 538: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 197
	i32 3598340787, ; 539: System.Net.WebSockets.Client => 0xd67a52b3 => 78
	i32 3608519521, ; 540: System.Linq.dll => 0xd715a361 => 60
	i32 3624195450, ; 541: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 105
	i32 3627220390, ; 542: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 251
	i32 3633644679, ; 543: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 201
	i32 3638274909, ; 544: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 48
	i32 3641597786, ; 545: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 234
	i32 3643446276, ; 546: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 310
	i32 3643854240, ; 547: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 248
	i32 3645089577, ; 548: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 549: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 174
	i32 3660523487, ; 550: System.Net.NetworkInformation => 0xda2f27df => 67
	i32 3672681054, ; 551: Mono.Android.dll => 0xdae8aa5e => 170
	i32 3682565725, ; 552: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 207
	i32 3684561358, ; 553: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 212
	i32 3697841164, ; 554: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 315
	i32 3700866549, ; 555: System.Net.WebProxy.dll => 0xdc96bdf5 => 77
	i32 3706696989, ; 556: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 217
	i32 3716563718, ; 557: System.Runtime.Intrinsics => 0xdd864306 => 107
	i32 3718780102, ; 558: Xamarin.AndroidX.Annotation => 0xdda814c6 => 200
	i32 3724971120, ; 559: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 247
	i32 3732100267, ; 560: System.Net.NameResolution => 0xde7354ab => 66
	i32 3737834244, ; 561: System.Net.Http.Json.dll => 0xdecad304 => 62
	i32 3748608112, ; 562: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 193
	i32 3751444290, ; 563: System.Xml.XPath => 0xdf9a7f42 => 159
	i32 3754567612, ; 564: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 192
	i32 3764085317, ; 565: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll => 0xe05b6245 => 240
	i32 3786282454, ; 566: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 209
	i32 3792276235, ; 567: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 568: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 182
	i32 3802395368, ; 569: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 570: System.Net.WebProxy => 0xe3a54a09 => 77
	i32 3823082795, ; 571: System.Security.Cryptography.dll => 0xe3df9d2b => 125
	i32 3829621856, ; 572: System.Numerics.dll => 0xe4436460 => 82
	i32 3841636137, ; 573: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 176
	i32 3844307129, ; 574: System.Net.Mail.dll => 0xe52378b9 => 65
	i32 3849253459, ; 575: System.Runtime.InteropServices.dll => 0xe56ef253 => 106
	i32 3870376305, ; 576: System.Net.HttpListener.dll => 0xe6b14171 => 64
	i32 3873536506, ; 577: System.Security.Principal => 0xe6e179fa => 127
	i32 3875112723, ; 578: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 121
	i32 3876362041, ; 579: SQLite-net => 0xe70c9739 => 188
	i32 3885497537, ; 580: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 76
	i32 3885922214, ; 581: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 262
	i32 3888767677, ; 582: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 252
	i32 3889960447, ; 583: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 314
	i32 3896106733, ; 584: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 585: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 216
	i32 3901907137, ; 586: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3910130544, ; 587: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 210
	i32 3920810846, ; 588: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 43
	i32 3921031405, ; 589: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 265
	i32 3928044579, ; 590: System.Xml.ReaderWriter => 0xea213423 => 155
	i32 3930554604, ; 591: System.Security.Principal.dll => 0xea4780ec => 127
	i32 3931092270, ; 592: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 250
	i32 3945713374, ; 593: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 594: System.Text.Encoding.CodePages => 0xebac8bfe => 132
	i32 3955647286, ; 595: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 203
	i32 3959773229, ; 596: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 236
	i32 3980434154, ; 597: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 309
	i32 3987592930, ; 598: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 291
	i32 4003436829, ; 599: System.Diagnostics.Process.dll => 0xee9f991d => 28
	i32 4015948917, ; 600: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 202
	i32 4025784931, ; 601: System.Memory => 0xeff49a63 => 61
	i32 4046471985, ; 602: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 184
	i32 4054681211, ; 603: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 89
	i32 4068434129, ; 604: System.Private.Xml.Linq.dll => 0xf27f60d1 => 86
	i32 4073602200, ; 605: System.Threading.dll => 0xf2ce3c98 => 147
	i32 4094352644, ; 606: Microsoft.Maui.Essentials.dll => 0xf40add04 => 186
	i32 4099507663, ; 607: System.Drawing.dll => 0xf45985cf => 35
	i32 4100113165, ; 608: System.Private.Uri => 0xf462c30d => 85
	i32 4101593132, ; 609: Xamarin.AndroidX.Emoji2 => 0xf479582c => 224
	i32 4102112229, ; 610: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 304
	i32 4125707920, ; 611: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 299
	i32 4126470640, ; 612: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 175
	i32 4127667938, ; 613: System.IO.FileSystem.Watcher => 0xf60736e2 => 49
	i32 4130442656, ; 614: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 615: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 89
	i32 4150914736, ; 616: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 311
	i32 4151237749, ; 617: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 618: System.Xml.XmlSerializer => 0xf7e95c85 => 161
	i32 4161255271, ; 619: System.Reflection.TypeExtensions => 0xf807b767 => 95
	i32 4164802419, ; 620: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 49
	i32 4181436372, ; 621: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 112
	i32 4182413190, ; 622: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 244
	i32 4185676441, ; 623: System.Security => 0xf97c5a99 => 129
	i32 4196529839, ; 624: System.Net.WebClient.dll => 0xfa21f6af => 75
	i32 4213026141, ; 625: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 193
	i32 4228543782, ; 626: Xamarin.KotlinX.AtomicFU.Jvm.dll => 0xfc0a7526 => 278
	i32 4256097574, ; 627: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 217
	i32 4258378803, ; 628: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 243
	i32 4260525087, ; 629: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 630: Microsoft.Maui.Controls.dll => 0xfea12dee => 183
	i32 4274976490, ; 631: System.Runtime.Numerics => 0xfecef6ea => 109
	i32 4292120959, ; 632: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 244
	i32 4294763496 ; 633: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 226
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [634 x i32] [
	i32 67, ; 0
	i32 66, ; 1
	i32 107, ; 2
	i32 237, ; 3
	i32 274, ; 4
	i32 47, ; 5
	i32 79, ; 6
	i32 144, ; 7
	i32 278, ; 8
	i32 29, ; 9
	i32 315, ; 10
	i32 123, ; 11
	i32 187, ; 12
	i32 101, ; 13
	i32 258, ; 14
	i32 106, ; 15
	i32 258, ; 16
	i32 138, ; 17
	i32 76, ; 18
	i32 123, ; 19
	i32 13, ; 20
	i32 209, ; 21
	i32 277, ; 22
	i32 131, ; 23
	i32 260, ; 24
	i32 150, ; 25
	i32 312, ; 26
	i32 313, ; 27
	i32 18, ; 28
	i32 207, ; 29
	i32 26, ; 30
	i32 230, ; 31
	i32 1, ; 32
	i32 58, ; 33
	i32 41, ; 34
	i32 90, ; 35
	i32 213, ; 36
	i32 146, ; 37
	i32 233, ; 38
	i32 229, ; 39
	i32 284, ; 40
	i32 53, ; 41
	i32 68, ; 42
	i32 312, ; 43
	i32 198, ; 44
	i32 82, ; 45
	i32 297, ; 46
	i32 231, ; 47
	i32 191, ; 48
	i32 296, ; 49
	i32 130, ; 50
	i32 54, ; 51
	i32 148, ; 52
	i32 73, ; 53
	i32 144, ; 54
	i32 61, ; 55
	i32 145, ; 56
	i32 316, ; 57
	i32 164, ; 58
	i32 238, ; 59
	i32 308, ; 60
	i32 214, ; 61
	i32 12, ; 62
	i32 227, ; 63
	i32 124, ; 64
	i32 151, ; 65
	i32 112, ; 66
	i32 165, ; 67
	i32 163, ; 68
	i32 229, ; 69
	i32 246, ; 70
	i32 83, ; 71
	i32 295, ; 72
	i32 289, ; 73
	i32 181, ; 74
	i32 149, ; 75
	i32 59, ; 76
	i32 177, ; 77
	i32 50, ; 78
	i32 102, ; 79
	i32 113, ; 80
	i32 39, ; 81
	i32 271, ; 82
	i32 269, ; 83
	i32 119, ; 84
	i32 303, ; 85
	i32 51, ; 86
	i32 43, ; 87
	i32 118, ; 88
	i32 238, ; 89
	i32 219, ; 90
	i32 301, ; 91
	i32 225, ; 92
	i32 80, ; 93
	i32 135, ; 94
	i32 265, ; 95
	i32 205, ; 96
	i32 8, ; 97
	i32 277, ; 98
	i32 72, ; 99
	i32 283, ; 100
	i32 154, ; 101
	i32 279, ; 102
	i32 153, ; 103
	i32 91, ; 104
	i32 275, ; 105
	i32 44, ; 106
	i32 298, ; 107
	i32 286, ; 108
	i32 108, ; 109
	i32 128, ; 110
	i32 189, ; 111
	i32 25, ; 112
	i32 195, ; 113
	i32 71, ; 114
	i32 54, ; 115
	i32 45, ; 116
	i32 307, ; 117
	i32 180, ; 118
	i32 220, ; 119
	i32 22, ; 120
	i32 235, ; 121
	i32 85, ; 122
	i32 42, ; 123
	i32 159, ; 124
	i32 70, ; 125
	i32 251, ; 126
	i32 3, ; 127
	i32 41, ; 128
	i32 62, ; 129
	i32 16, ; 130
	i32 52, ; 131
	i32 310, ; 132
	i32 274, ; 133
	i32 104, ; 134
	i32 272, ; 135
	i32 231, ; 136
	i32 33, ; 137
	i32 157, ; 138
	i32 84, ; 139
	i32 31, ; 140
	i32 12, ; 141
	i32 50, ; 142
	i32 55, ; 143
	i32 255, ; 144
	i32 35, ; 145
	i32 176, ; 146
	i32 285, ; 147
	i32 273, ; 148
	i32 203, ; 149
	i32 34, ; 150
	i32 57, ; 151
	i32 241, ; 152
	i32 172, ; 153
	i32 17, ; 154
	i32 276, ; 155
	i32 163, ; 156
	i32 298, ; 157
	i32 239, ; 158
	i32 179, ; 159
	i32 268, ; 160
	i32 304, ; 161
	i32 152, ; 162
	i32 264, ; 163
	i32 249, ; 164
	i32 302, ; 165
	i32 205, ; 166
	i32 28, ; 167
	i32 51, ; 168
	i32 300, ; 169
	i32 269, ; 170
	i32 210, ; 171
	i32 5, ; 172
	i32 284, ; 173
	i32 259, ; 174
	i32 280, ; 175
	i32 263, ; 176
	i32 211, ; 177
	i32 279, ; 178
	i32 202, ; 179
	i32 190, ; 180
	i32 222, ; 181
	i32 84, ; 182
	i32 268, ; 183
	i32 60, ; 184
	i32 111, ; 185
	i32 56, ; 186
	i32 314, ; 187
	i32 255, ; 188
	i32 98, ; 189
	i32 19, ; 190
	i32 215, ; 191
	i32 110, ; 192
	i32 100, ; 193
	i32 101, ; 194
	i32 282, ; 195
	i32 103, ; 196
	i32 272, ; 197
	i32 232, ; 198
	i32 70, ; 199
	i32 242, ; 200
	i32 37, ; 201
	i32 31, ; 202
	i32 102, ; 203
	i32 72, ; 204
	i32 288, ; 205
	i32 9, ; 206
	i32 122, ; 207
	i32 45, ; 208
	i32 204, ; 209
	i32 181, ; 210
	i32 9, ; 211
	i32 42, ; 212
	i32 4, ; 213
	i32 256, ; 214
	i32 292, ; 215
	i32 287, ; 216
	i32 30, ; 217
	i32 137, ; 218
	i32 91, ; 219
	i32 92, ; 220
	i32 307, ; 221
	i32 48, ; 222
	i32 140, ; 223
	i32 111, ; 224
	i32 139, ; 225
	i32 221, ; 226
	i32 114, ; 227
	i32 273, ; 228
	i32 156, ; 229
	i32 75, ; 230
	i32 78, ; 231
	i32 245, ; 232
	i32 36, ; 233
	i32 267, ; 234
	i32 225, ; 235
	i32 218, ; 236
	i32 63, ; 237
	i32 137, ; 238
	i32 15, ; 239
	i32 115, ; 240
	i32 261, ; 241
	i32 270, ; 242
	i32 213, ; 243
	i32 47, ; 244
	i32 69, ; 245
	i32 79, ; 246
	i32 125, ; 247
	i32 93, ; 248
	i32 120, ; 249
	i32 26, ; 250
	i32 191, ; 251
	i32 235, ; 252
	i32 96, ; 253
	i32 27, ; 254
	i32 208, ; 255
	i32 305, ; 256
	i32 283, ; 257
	i32 148, ; 258
	i32 168, ; 259
	i32 4, ; 260
	i32 97, ; 261
	i32 32, ; 262
	i32 92, ; 263
	i32 260, ; 264
	i32 177, ; 265
	i32 21, ; 266
	i32 40, ; 267
	i32 169, ; 268
	i32 299, ; 269
	i32 227, ; 270
	i32 291, ; 271
	i32 245, ; 272
	i32 276, ; 273
	i32 270, ; 274
	i32 250, ; 275
	i32 2, ; 276
	i32 133, ; 277
	i32 110, ; 278
	i32 178, ; 279
	i32 311, ; 280
	i32 195, ; 281
	i32 308, ; 282
	i32 57, ; 283
	i32 94, ; 284
	i32 290, ; 285
	i32 38, ; 286
	i32 206, ; 287
	i32 25, ; 288
	i32 93, ; 289
	i32 88, ; 290
	i32 98, ; 291
	i32 10, ; 292
	i32 86, ; 293
	i32 99, ; 294
	i32 257, ; 295
	i32 173, ; 296
	i32 197, ; 297
	i32 287, ; 298
	i32 7, ; 299
	i32 241, ; 300
	i32 282, ; 301
	i32 194, ; 302
	i32 87, ; 303
	i32 234, ; 304
	i32 153, ; 305
	i32 286, ; 306
	i32 32, ; 307
	i32 115, ; 308
	i32 81, ; 309
	i32 192, ; 310
	i32 0, ; 311
	i32 20, ; 312
	i32 11, ; 313
	i32 161, ; 314
	i32 3, ; 315
	i32 185, ; 316
	i32 294, ; 317
	i32 180, ; 318
	i32 178, ; 319
	i32 83, ; 320
	i32 281, ; 321
	i32 63, ; 322
	i32 296, ; 323
	i32 264, ; 324
	i32 142, ; 325
	i32 0, ; 326
	i32 246, ; 327
	i32 156, ; 328
	i32 40, ; 329
	i32 116, ; 330
	i32 174, ; 331
	i32 196, ; 332
	i32 290, ; 333
	i32 253, ; 334
	i32 130, ; 335
	i32 74, ; 336
	i32 65, ; 337
	i32 300, ; 338
	i32 171, ; 339
	i32 200, ; 340
	i32 142, ; 341
	i32 105, ; 342
	i32 150, ; 343
	i32 69, ; 344
	i32 155, ; 345
	i32 173, ; 346
	i32 120, ; 347
	i32 126, ; 348
	i32 295, ; 349
	i32 151, ; 350
	i32 224, ; 351
	i32 140, ; 352
	i32 211, ; 353
	i32 292, ; 354
	i32 20, ; 355
	i32 14, ; 356
	i32 134, ; 357
	i32 74, ; 358
	i32 58, ; 359
	i32 189, ; 360
	i32 214, ; 361
	i32 166, ; 362
	i32 167, ; 363
	i32 183, ; 364
	i32 15, ; 365
	i32 73, ; 366
	i32 6, ; 367
	i32 23, ; 368
	i32 237, ; 369
	i32 194, ; 370
	i32 90, ; 371
	i32 293, ; 372
	i32 1, ; 373
	i32 135, ; 374
	i32 240, ; 375
	i32 239, ; 376
	i32 263, ; 377
	i32 133, ; 378
	i32 68, ; 379
	i32 145, ; 380
	i32 302, ; 381
	i32 281, ; 382
	i32 228, ; 383
	i32 179, ; 384
	i32 87, ; 385
	i32 95, ; 386
	i32 218, ; 387
	i32 223, ; 388
	i32 297, ; 389
	i32 30, ; 390
	i32 44, ; 391
	i32 233, ; 392
	i32 196, ; 393
	i32 108, ; 394
	i32 157, ; 395
	i32 34, ; 396
	i32 280, ; 397
	i32 22, ; 398
	i32 113, ; 399
	i32 56, ; 400
	i32 261, ; 401
	i32 143, ; 402
	i32 117, ; 403
	i32 119, ; 404
	i32 109, ; 405
	i32 198, ; 406
	i32 138, ; 407
	i32 204, ; 408
	i32 53, ; 409
	i32 104, ; 410
	i32 303, ; 411
	i32 184, ; 412
	i32 185, ; 413
	i32 132, ; 414
	i32 242, ; 415
	i32 275, ; 416
	i32 266, ; 417
	i32 254, ; 418
	i32 232, ; 419
	i32 309, ; 420
	i32 228, ; 421
	i32 187, ; 422
	i32 158, ; 423
	i32 288, ; 424
	i32 215, ; 425
	i32 162, ; 426
	i32 131, ; 427
	i32 254, ; 428
	i32 160, ; 429
	i32 301, ; 430
	i32 243, ; 431
	i32 139, ; 432
	i32 266, ; 433
	i32 262, ; 434
	i32 168, ; 435
	i32 186, ; 436
	i32 199, ; 437
	i32 271, ; 438
	i32 39, ; 439
	i32 226, ; 440
	i32 80, ; 441
	i32 55, ; 442
	i32 36, ; 443
	i32 96, ; 444
	i32 165, ; 445
	i32 171, ; 446
	i32 267, ; 447
	i32 81, ; 448
	i32 201, ; 449
	i32 97, ; 450
	i32 29, ; 451
	i32 158, ; 452
	i32 18, ; 453
	i32 126, ; 454
	i32 118, ; 455
	i32 222, ; 456
	i32 257, ; 457
	i32 236, ; 458
	i32 259, ; 459
	i32 164, ; 460
	i32 230, ; 461
	i32 316, ; 462
	i32 256, ; 463
	i32 247, ; 464
	i32 169, ; 465
	i32 16, ; 466
	i32 143, ; 467
	i32 294, ; 468
	i32 124, ; 469
	i32 117, ; 470
	i32 37, ; 471
	i32 114, ; 472
	i32 46, ; 473
	i32 141, ; 474
	i32 116, ; 475
	i32 33, ; 476
	i32 172, ; 477
	i32 94, ; 478
	i32 52, ; 479
	i32 248, ; 480
	i32 128, ; 481
	i32 152, ; 482
	i32 24, ; 483
	i32 160, ; 484
	i32 221, ; 485
	i32 147, ; 486
	i32 103, ; 487
	i32 88, ; 488
	i32 208, ; 489
	i32 59, ; 490
	i32 141, ; 491
	i32 99, ; 492
	i32 5, ; 493
	i32 13, ; 494
	i32 188, ; 495
	i32 121, ; 496
	i32 134, ; 497
	i32 27, ; 498
	i32 289, ; 499
	i32 71, ; 500
	i32 219, ; 501
	i32 24, ; 502
	i32 206, ; 503
	i32 252, ; 504
	i32 249, ; 505
	i32 306, ; 506
	i32 136, ; 507
	i32 190, ; 508
	i32 199, ; 509
	i32 216, ; 510
	i32 167, ; 511
	i32 253, ; 512
	i32 285, ; 513
	i32 100, ; 514
	i32 122, ; 515
	i32 220, ; 516
	i32 175, ; 517
	i32 162, ; 518
	i32 166, ; 519
	i32 223, ; 520
	i32 38, ; 521
	i32 182, ; 522
	i32 293, ; 523
	i32 17, ; 524
	i32 170, ; 525
	i32 306, ; 526
	i32 305, ; 527
	i32 136, ; 528
	i32 149, ; 529
	i32 212, ; 530
	i32 154, ; 531
	i32 129, ; 532
	i32 19, ; 533
	i32 64, ; 534
	i32 146, ; 535
	i32 46, ; 536
	i32 313, ; 537
	i32 197, ; 538
	i32 78, ; 539
	i32 60, ; 540
	i32 105, ; 541
	i32 251, ; 542
	i32 201, ; 543
	i32 48, ; 544
	i32 234, ; 545
	i32 310, ; 546
	i32 248, ; 547
	i32 14, ; 548
	i32 174, ; 549
	i32 67, ; 550
	i32 170, ; 551
	i32 207, ; 552
	i32 212, ; 553
	i32 315, ; 554
	i32 77, ; 555
	i32 217, ; 556
	i32 107, ; 557
	i32 200, ; 558
	i32 247, ; 559
	i32 66, ; 560
	i32 62, ; 561
	i32 193, ; 562
	i32 159, ; 563
	i32 192, ; 564
	i32 240, ; 565
	i32 209, ; 566
	i32 10, ; 567
	i32 182, ; 568
	i32 11, ; 569
	i32 77, ; 570
	i32 125, ; 571
	i32 82, ; 572
	i32 176, ; 573
	i32 65, ; 574
	i32 106, ; 575
	i32 64, ; 576
	i32 127, ; 577
	i32 121, ; 578
	i32 188, ; 579
	i32 76, ; 580
	i32 262, ; 581
	i32 252, ; 582
	i32 314, ; 583
	i32 8, ; 584
	i32 216, ; 585
	i32 2, ; 586
	i32 210, ; 587
	i32 43, ; 588
	i32 265, ; 589
	i32 155, ; 590
	i32 127, ; 591
	i32 250, ; 592
	i32 23, ; 593
	i32 132, ; 594
	i32 203, ; 595
	i32 236, ; 596
	i32 309, ; 597
	i32 291, ; 598
	i32 28, ; 599
	i32 202, ; 600
	i32 61, ; 601
	i32 184, ; 602
	i32 89, ; 603
	i32 86, ; 604
	i32 147, ; 605
	i32 186, ; 606
	i32 35, ; 607
	i32 85, ; 608
	i32 224, ; 609
	i32 304, ; 610
	i32 299, ; 611
	i32 175, ; 612
	i32 49, ; 613
	i32 6, ; 614
	i32 89, ; 615
	i32 311, ; 616
	i32 21, ; 617
	i32 161, ; 618
	i32 95, ; 619
	i32 49, ; 620
	i32 112, ; 621
	i32 244, ; 622
	i32 129, ; 623
	i32 75, ; 624
	i32 193, ; 625
	i32 278, ; 626
	i32 217, ; 627
	i32 243, ; 628
	i32 7, ; 629
	i32 183, ; 630
	i32 109, ; 631
	i32 244, ; 632
	i32 226 ; 633
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
