-keep class com.shockwave.**

-keep class com.google.devtools.build.android.desugar.runtime.** { *; }
-keep class com.stripe.android.pushProvisioning.** { *; }
-dontwarn com.google.devtools.build.android.desugar.runtime.**
-dontwarn com.stripe.android.pushProvisioning.**