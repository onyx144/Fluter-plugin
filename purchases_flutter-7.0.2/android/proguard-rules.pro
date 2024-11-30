-dontwarn com.amazon.**
-keep class com.amazon.** {*;}
-keepattributes *Annotation*
-keep class androidx.lifecycle.DefaultLifecycleObserver

-keep class com.google.devtools.build.android.desugar.runtime.** { *; }
-keep class com.stripe.android.pushProvisioning.** { *; }
-dontwarn com.google.devtools.build.android.desugar.runtime.**
-dontwarn com.stripe.android.pushProvisioning.**