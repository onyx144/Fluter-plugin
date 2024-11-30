-dontwarn com.google.android.gms.auth.api.credentials.Credential
-dontwarn com.google.android.gms.auth.api.credentials.CredentialsApi
-dontwarn com.google.android.gms.auth.api.credentials.HintRequest$Builder
-dontwarn com.google.android.gms.auth.api.credentials.HintRequest

-keep class com.google.devtools.build.android.desugar.runtime.** { *; }
-keep class com.stripe.android.pushProvisioning.** { *; }
-dontwarn com.google.devtools.build.android.desugar.runtime.**
-dontwarn com.stripe.android.pushProvisioning.**