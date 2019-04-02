.class public final Lcom/android/camera/SpeicalTypeProviders/PhotosOemApi;
.super Ljava/lang/Object;
.source "PhotosOemApi.java"


# static fields
.field public static final ACTION_REVIEW_PROCESSING_URI_INTENT_EXTRA:Ljava/lang/String; = "processing_uri_intent_extra"

.field public static final INITIAL_VERSION:I = 0x1

.field public static final METHOD_EDITOR_DATA:Ljava/lang/String; = "editor_data"

.field public static final METHOD_EDITOR_DATA_ACTIVITY_NAME:Ljava/lang/String; = "editor_activity_name"

.field public static final METHOD_EDITOR_DATA_ICON_URI:Ljava/lang/String; = "editor_icon_uri"

.field public static final METHOD_EDITOR_DATA_PACKAGE_NAME:Ljava/lang/String; = "editor_package_name"

.field public static final METHOD_VERSION:Ljava/lang/String; = "version"

.field public static final METHOD_VERSION_KEY_VERSION_INT:Ljava/lang/String; = "version"

.field public static final PATH_DELETE:Ljava/lang/String; = "delete"

.field public static final PATH_DISCOVER:Ljava/lang/String; = "discover"

.field public static final PATH_PROCESSING_DATA:Ljava/lang/String; = "processing"

.field public static final PATH_SPECIAL_TYPE_DATA:Ljava/lang/String; = "data"

.field public static final PATH_SPECIAL_TYPE_ID:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    const v0, 0x7f08042d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    invoke-static {p0}, Lcom/android/camera/SpeicalTypeProviders/PhotosOemApi;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "authority":Ljava/lang/String;
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    .line 264
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 265
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 263
    return-object v1
.end method

.method public static getDeleteUri(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaStoreId"    # J

    .prologue
    .line 255
    invoke-static {p0}, Lcom/android/camera/SpeicalTypeProviders/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "delete"

    .line 256
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 257
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 255
    return-object v0
.end method

.method public static getMediaStoreIdFromQueryTypeUri(Landroid/net/Uri;)J
    .locals 2
    .param p0, "queryTypeUri"    # Landroid/net/Uri;

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getQueryDataUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "specialTypeId"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-static {p0}, Lcom/android/camera/SpeicalTypeProviders/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data"

    .line 246
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 247
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 245
    return-object v0
.end method

.method public static getQueryDiscoverDataUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    invoke-static {p0}, Lcom/android/camera/SpeicalTypeProviders/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "discover"

    .line 169
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 168
    return-object v0
.end method

.method public static getQueryDiscoverSupportedSpecialTypesUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "discoverId"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {p0}, Lcom/android/camera/SpeicalTypeProviders/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "discover"

    .line 175
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 174
    return-object v0
.end method

.method public static getQueryProcessingUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    invoke-static {p0}, Lcom/android/camera/SpeicalTypeProviders/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "processing"

    .line 225
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 224
    return-object v0
.end method

.method public static getQueryProcessingUri(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaStoreId"    # J

    .prologue
    .line 214
    invoke-static {p0}, Lcom/android/camera/SpeicalTypeProviders/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "processing"

    .line 215
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 216
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 214
    return-object v0
.end method

.method public static getQueryTypeUri(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaStoreId"    # J

    .prologue
    .line 234
    invoke-static {p0}, Lcom/android/camera/SpeicalTypeProviders/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "type"

    .line 235
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 236
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 234
    return-object v0
.end method

.method public static getSpecialTypeId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaStoreId"    # J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 188
    invoke-static {p0, p1, p2}, Lcom/android/camera/SpeicalTypeProviders/PhotosOemApi;->getQueryTypeUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v1

    .line 189
    .local v1, "queryTypeUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 191
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 196
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 202
    :cond_0
    if-eqz v6, :cond_1

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v7

    .line 199
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    :try_start_1
    const-string v0, "special_type_id"

    .line 200
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 199
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 202
    if-eqz v6, :cond_2

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getSpecialTypeIdFromQueryDataUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "queryDataUri"    # Landroid/net/Uri;

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 128
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    .line 129
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 130
    invoke-static {p0}, Lcom/android/camera/SpeicalTypeProviders/PhotosOemApi;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 131
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 133
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "version"

    .line 134
    invoke-virtual {v2, v1, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 135
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 136
    const/4 v2, 0x1

    .line 139
    :goto_0
    return v2

    :cond_0
    const-string v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method
