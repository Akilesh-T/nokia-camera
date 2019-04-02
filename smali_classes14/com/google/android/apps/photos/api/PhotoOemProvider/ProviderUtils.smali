.class public Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderUtils;
.super Ljava/lang/Object;
.source "ProviderUtils.java"


# static fields
.field public static final DUAL_SIGHT_SPECIAL_TYPE:Ljava/lang/String; = "DUAL_SIGHT_TYPE"

.field private static final TAG:Ljava/lang/String; = "ProviderUtils"

.field private static final TYPE_URI_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 197
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "special_type_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderUtils;->TYPE_URI_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDualSightTypeInXMPMetadata(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 170
    const-string v4, "ProviderUtils"

    const-string v5, "checkDualSightTypeInXMPMetadata"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v3, 0x0

    .line 172
    .local v3, "isDualSightType":Z
    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 176
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/DualSightType;->createFromXMPMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/apps/photos/api/PhotoOemProvider/DualSightType;

    move-result-object v1

    .line 178
    .local v1, "dualSightType":Lcom/google/android/apps/photos/api/PhotoOemProvider/DualSightType;
    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/DualSightType;->getXMPDualSightKey()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "dualSightKey":Ljava/lang/String;
    const-string v4, "ProviderUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dualSightKey: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-eqz v0, :cond_0

    const-string v4, "DUAL_SIGHT_TYPE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/drew/imaging/ImageProcessingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    const/4 v3, 0x1

    .line 193
    .end local v0    # "dualSightKey":Ljava/lang/String;
    .end local v1    # "dualSightType":Lcom/google/android/apps/photos/api/PhotoOemProvider/DualSightType;
    :cond_0
    :goto_0
    const-string v4, "ProviderUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDualSightType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return v3

    .line 185
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 188
    .local v2, "e":Lcom/drew/imaging/ImageProcessingException;
    invoke-virtual {v2}, Lcom/drew/imaging/ImageProcessingException;->printStackTrace()V

    goto :goto_0

    .line 189
    .end local v2    # "e":Lcom/drew/imaging/ImageProcessingException;
    :catch_2
    move-exception v2

    .line 190
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getImageType(Landroid/content/Context;J)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaStoreId"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    const/4 v11, 0x0

    .line 86
    .local v11, "imageType":I
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 91
    .local v7, "baseUri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 92
    .local v10, "externalUri":Landroid/net/Uri;
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "imagetype"

    aput-object v0, v2, v3

    .line 93
    .local v2, "projection":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 95
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 99
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 95
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 102
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 103
    const-string v0, "imagetype"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    .line 108
    if-eqz v8, :cond_0

    .line 109
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 114
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "baseUri":Landroid/net/Uri;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "externalUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return v11

    .line 105
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v7    # "baseUri":Landroid/net/Uri;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "externalUri":Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 106
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    if-eqz v8, :cond_0

    .line 109
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 108
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1

    .line 109
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public static getMp4VideoFilePath(Landroid/content/Context;J)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaStoreId"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 238
    const/4 v9, 0x0

    .line 240
    .local v9, "filePath":Ljava/lang/String;
    const/4 v7, 0x0

    .line 242
    .local v7, "cursor":Landroid/database/Cursor;
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 243
    .local v6, "baseUri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 244
    .local v1, "videoUri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v4

    const-string v0, "mime_type"

    aput-object v0, v2, v5

    .line 247
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 249
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 251
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 253
    .local v10, "mimeType":Ljava/lang/String;
    const-string v0, "video/mp4"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 260
    if-eqz v7, :cond_0

    .line 261
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v11

    .line 265
    .end local v10    # "mimeType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 260
    :cond_1
    if-eqz v7, :cond_2

    .line 261
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v9

    .line 265
    goto :goto_0

    .line 257
    :catch_0
    move-exception v8

    .line 258
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ProviderUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoFilePath: EXCEPTION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    if-eqz v7, :cond_2

    .line 261
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 260
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 261
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSpecialTypeFromDB(Landroid/database/sqlite/SQLiteDatabase;JZ)Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;
    .locals 15
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "mediaStoreId"    # J
    .param p3, "getFromVideoSpecialTypeTable"    # Z

    .prologue
    .line 207
    if-eqz p3, :cond_2

    const-string v3, "video_special_type"

    .line 209
    .local v3, "dbTableName":Ljava/lang/String;
    :goto_0
    sget-object v13, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->UNKNOWN:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    .line 210
    .local v13, "type":Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;
    const/4 v10, 0x0

    .line 212
    .local v10, "cursor":Landroid/database/Cursor;
    const-string v2, "ProviderUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSpecialTypeFromDB: mediaStoreId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getFromVideoSpecialTypeTable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :try_start_0
    sget-object v4, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderUtils;->TYPE_URI_PROJECTION:[Ljava/lang/String;

    const-string v5, "media_store_id = ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 218
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    .line 214
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 223
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    const-string v2, "special_type_id"

    .line 225
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 224
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 226
    .local v12, "specialTypeName":Ljava/lang/String;
    invoke-static {v12}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->valueOf(Ljava/lang/String;)Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 231
    .end local v12    # "specialTypeName":Ljava/lang/String;
    :cond_0
    if-eqz v10, :cond_1

    .line 232
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_1
    :goto_1
    return-object v13

    .line 207
    .end local v3    # "dbTableName":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v13    # "type":Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;
    :cond_2
    const-string v3, "depth_type"

    goto :goto_0

    .line 228
    .restart local v3    # "dbTableName":Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "type":Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;
    :catch_0
    move-exception v11

    .line 229
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    if-eqz v10, :cond_1

    .line 232
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 231
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_3

    .line 232
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public static getTypeFromDB(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "mediaStoreId"    # J

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderUtils;->getSpecialTypeFromDB(Landroid/database/sqlite/SQLiteDatabase;JZ)Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    move-result-object v0

    return-object v0
.end method

.method public static isDepthType(Landroid/content/Context;J)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaStoreId"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    const/4 v9, 0x0

    .line 120
    .local v9, "depthType":Z
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 124
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 125
    .local v7, "baseUri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 126
    .local v11, "externalUri":Landroid/net/Uri;
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "imagetype"

    aput-object v0, v2, v3

    .line 127
    .local v2, "projection":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 129
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 133
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 129
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 136
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 137
    const-string v0, "imagetype"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    .line 138
    .local v12, "imageType":I
    if-eqz v8, :cond_0

    const v0, 0x30001

    if-ne v12, v0, :cond_0

    .line 140
    const/4 v9, 0x1

    .line 146
    :cond_0
    if-eqz v8, :cond_1

    .line 147
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 152
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "baseUri":Landroid/net/Uri;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "externalUri":Landroid/net/Uri;
    .end local v12    # "imageType":I
    :cond_1
    :goto_0
    return v9

    .line 143
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v7    # "baseUri":Landroid/net/Uri;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "externalUri":Landroid/net/Uri;
    :catch_0
    move-exception v10

    .line 144
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    if-eqz v8, :cond_1

    .line 147
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 146
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 147
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static isDualSightType(Landroid/content/Context;J)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaStoreId"    # J

    .prologue
    .line 157
    const/4 v2, 0x0

    .line 158
    .local v2, "isDualSightType":Z
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 162
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 163
    .local v0, "baseUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 164
    .local v1, "externalUri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ProviderUtils;->checkDualSightTypeInXMPMetadata(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    .line 166
    .end local v0    # "baseUri":Landroid/net/Uri;
    .end local v1    # "externalUri":Landroid/net/Uri;
    :cond_0
    return v2
.end method

.method public static isImage(Landroid/content/Context;J)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaStoreId"    # J

    .prologue
    .line 27
    const/4 v8, 0x0

    .line 28
    .local v8, "isImage":Z
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 31
    const/4 v6, 0x0

    .line 33
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 37
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    .line 33
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 39
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 40
    const/4 v8, 0x1

    .line 46
    :cond_0
    if-eqz v6, :cond_1

    .line 47
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 51
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v8

    .line 43
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 44
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    if-eqz v6, :cond_1

    .line 47
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 46
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 47
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static isVideo(Landroid/content/Context;J)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 55
    const/4 v8, 0x0

    .line 56
    .local v8, "isVideo":Z
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 59
    const/4 v6, 0x0

    .line 61
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 65
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    .line 61
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 68
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 69
    const/4 v8, 0x1

    .line 75
    :cond_0
    if-eqz v6, :cond_1

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 80
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v8

    .line 72
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 73
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    if-eqz v6, :cond_1

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 75
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method
