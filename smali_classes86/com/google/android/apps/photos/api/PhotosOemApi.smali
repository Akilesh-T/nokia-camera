.class public final Lcom/google/android/apps/photos/api/PhotosOemApi;
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
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    sget v0, Lcom/google/android/apps/photos/api/R$string;->provider_authority:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    invoke-static {p0}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "authority":Ljava/lang/String;
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    .line 262
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 263
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 261
    return-object v1
.end method

.method public static getDeleteUri(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaStoreId"    # J

    .prologue
    .line 253
    invoke-static {p0}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "delete"

    .line 254
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 255
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 253
    return-object v0
.end method

.method public static getMediaStoreIdFromQueryTypeUri(Landroid/net/Uri;)J
    .locals 2
    .param p0, "queryTypeUri"    # Landroid/net/Uri;

    .prologue
    .line 152
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
    .line 243
    invoke-static {p0}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data"

    .line 244
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 245
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 243
    return-object v0
.end method

.method public static getQueryDiscoverDataUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    invoke-static {p0}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "discover"

    .line 167
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 166
    return-object v0
.end method

.method public static getQueryDiscoverSupportedSpecialTypesUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "discoverId"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {p0}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "discover"

    .line 173
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 172
    return-object v0
.end method

.method public static getQueryProcessingUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    invoke-static {p0}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "processing"

    .line 223
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 222
    return-object v0
.end method

.method public static getQueryProcessingUri(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaStoreId"    # J

    .prologue
    .line 212
    invoke-static {p0}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "processing"

    .line 213
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 214
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 212
    return-object v0
.end method

.method public static getQueryTypeUri(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaStoreId"    # J

    .prologue
    .line 232
    invoke-static {p0}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "type"

    .line 233
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 234
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 232
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

    .line 186
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getQueryTypeUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v1

    .line 187
    .local v1, "queryTypeUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 189
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

    .line 194
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 200
    :cond_0
    if-eqz v6, :cond_1

    .line 201
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v7

    .line 197
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    :try_start_1
    const-string v0, "special_type_id"

    .line 198
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 197
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 200
    if-eqz v6, :cond_2

    .line 201
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 201
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getSpecialTypeIdFromQueryDataUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "queryDataUri"    # Landroid/net/Uri;

    .prologue
    .line 160
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

    .line 126
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    .line 127
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 128
    invoke-static {p0}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 131
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "version"

    .line 132
    invoke-virtual {v2, v1, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 133
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 134
    const/4 v2, 0x1

    .line 137
    :goto_0
    return v2

    :cond_0
    const-string v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method
