# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

# Keep the CoreModuleKt class
-keep class com.alexius.core.di.CoreModuleKt { *; }

# Keep the ArticleModel class
-keep class com.alexius.core.domain.model.ArticleModel { *; }

# Keep the SourceModel class
-keep class com.alexius.core.domain.model.SourceModel { *; }

# Keep the AppEntryUseCases class
-keep class com.alexius.core.domain.usecases.appentry.AppEntryUseCases { *; }

# Keep the ReadAppEntry class
-keep class com.alexius.core.domain.usecases.appentry.ReadAppEntry { *; }

# Keep the SaveAppEntry class
-keep class com.alexius.core.domain.usecases.appentry.SaveAppEntry { *; }

# Keep the DeleteArticle class
-keep class com.alexius.core.domain.usecases.news.DeleteArticle { *; }

# Keep the GetNews class
-keep class com.alexius.core.domain.usecases.news.GetNews { *; }

# Keep the NewsUseCases class
-keep class com.alexius.core.domain.usecases.news.NewsUseCases { *; }

# Keep the SearchNews class
-keep class com.alexius.core.domain.usecases.news.SearchNews { *; }

# Keep the SelectArticle class
-keep class com.alexius.core.domain.usecases.news.SelectArticle { *; }

# Keep the SelectArticles class
-keep class com.alexius.core.domain.usecases.news.SelectArticles { *; }

# Keep the UpsertArticle class
-keep class com.alexius.core.domain.usecases.news.UpsertArticle { *; }

# Keep the Dimens class
-keep class com.alexius.core.util.Dimens { *; }

# Prevent proguard from stripping interface information from TypeAdapter, TypeAdapterFactory,
# JsonSerializer, JsonDeserializer instances (so they can be used in @JsonAdapter)
-keep class * extends com.google.gson.TypeAdapter
-keep class * implements com.google.gson.TypeAdapterFactory
-keep class * implements com.google.gson.JsonSerializer
-keep class * implements com.google.gson.JsonDeserializer

# Prevent R8 from leaving Data object members always null
-keepclasseswithmembers class * {
    <init>(...);
    @com.google.gson.annotations.SerializedName <fields>;
}

# Retain generic signatures of TypeToken and its subclasses with R8 version 3.0 and higher.
-keep,allowobfuscation,allowshrinking class com.google.gson.reflect.TypeToken
-keep,allowobfuscation,allowshrinking class * extends com.google.gson.reflect.TypeToken
