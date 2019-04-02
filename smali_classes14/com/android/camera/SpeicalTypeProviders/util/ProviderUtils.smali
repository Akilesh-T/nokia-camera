.class public Lcom/android/camera/SpeicalTypeProviders/util/ProviderUtils;
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
    .line 174
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "special_type_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/util/ProviderUtils;->TYPE_URI_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDualSightTypeInXMPMetadata(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 147
    const-string v4, "ProviderUtils"

    const-string v5, "checkDualSightTypeInXMPMetadata"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v3, 0x0

    .line 149
    .local v3, "isDualSightType":Z
    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 153
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/camera/SpeicalTypeProviders/DualSightType;->createFromXMPMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/camera/SpeicalTypeProviders/DualSightType;

    move-result-object v1

    .line 155
    .local v1, "dualSightType":Lcom/android/camera/SpeicalTypeProviders/DualSightType;
    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v1}, Lcom/android/camera/SpeicalTypeProviders/DualSightType;->getXMPDualSightKey()Ljava/lang/String;

    move-result-object v0

    .line 157
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

    .line 158
    if-eqz v0, :cond_0

    const-string v4, "DUAL_SIGHT_TYPE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/drew/imaging/ImageProcessingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    const/4 v3, 0x1

    .line 170
    .end local v0    # "dualSightKey":Ljava/lang/String;
    .end local v1    # "dualSightType":Lcom/android/camera/SpeicalTypeProviders/DualSightType;
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

    .line 171
    return v3

    .line 162
    :catch_0
    move-exception v2

    .line 163
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 165
    .local v2, "e":Lcom/drew/imaging/ImageProcessingException;
    invoke-virtual {v2}, Lcom/drew/imaging/ImageProcessingException;->printStackTrace()V

    goto :goto_0

    .line 166
    .end local v2    # "e":Lcom/drew/imaging/ImageProcessingException;
    :catch_2
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getTypeFromDB(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/camera/SpeicalTypeProviders/SpecialType;
    .locals 13
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "mediaStoreId"    # J

    .prologue
    .line 180
    sget-object v11, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->UNKNOWN:Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    .line 181
    .local v11, "type":Lcom/android/camera/SpeicalTypeProviders/SpecialType;
    const/4 v8, 0x0

    .line 184
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "depth_type"

    sget-object v2, Lcom/android/camera/SpeicalTypeProviders/util/ProviderUtils;->TYPE_URI_PROJECTION:[Ljava/lang/String;

    const-string v3, "media_store_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 188
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 184
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 193
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "special_type_id"

    .line 195
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 194
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 196
    .local v10, "specialTypeName":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->valueOf(Ljava/lang/String;)Lcom/android/camera/SpeicalTypeProviders/SpecialType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 201
    .end local v10    # "specialTypeName":Ljava/lang/String;
    :cond_0
    if-eqz v8, :cond_1

    .line 202
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_1
    :goto_0
    return-object v11

    .line 198
    :catch_0
    move-exception v9

    .line 199
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    if-eqz v8, :cond_1

    .line 202
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 201
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 202
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static isDepthType(Landroid/content/Context;J)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaStoreId"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    const/4 v9, 0x0

    .line 97
    .local v9, "depthType":Z
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 101
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 102
    .local v7, "baseUri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 103
    .local v11, "externalUri":Landroid/net/Uri;
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "imagetype"

    aput-object v0, v2, v3

    .line 104
    .local v2, "projection":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 106
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 110
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 106
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 113
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 114
    const-string v0, "imagetype"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    .line 115
    .local v12, "imageType":I
    if-eqz v8, :cond_0

    const v0, 0x30001

    if-ne v12, v0, :cond_0

    .line 117
    const/4 v9, 0x1

    .line 123
    :cond_0
    if-eqz v8, :cond_1

    .line 124
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 129
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "baseUri":Landroid/net/Uri;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "externalUri":Landroid/net/Uri;
    .end local v12    # "imageType":I
    :cond_1
    :goto_0
    return v9

    .line 120
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v7    # "baseUri":Landroid/net/Uri;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "externalUri":Landroid/net/Uri;
    :catch_0
    move-exception v10

    .line 121
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    if-eqz v8, :cond_1

    .line 124
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 123
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 124
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static isDualSightType(Landroid/content/Context;J)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaStoreId"    # J

    .prologue
    .line 134
    const/4 v2, 0x0

    .line 135
    .local v2, "isDualSightType":Z
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 139
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 140
    .local v0, "baseUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 141
    .local v1, "externalUri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lcom/android/camera/SpeicalTypeProviders/util/ProviderUtils;->checkDualSightTypeInXMPMetadata(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    .line 143
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
    .line 38
    const/4 v8, 0x0

    .line 39
    .local v8, "isImage":Z
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 42
    const/4 v6, 0x0

    .line 44
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

    .line 48
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    .line 44
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 50
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 51
    const/4 v8, 0x1

    .line 57
    :cond_0
    if-eqz v6, :cond_1

    .line 58
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 62
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v8

    .line 54
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 55
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    if-eqz v6, :cond_1

    .line 58
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 57
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 58
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static isVideo(Landroid/content/Context;J)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 66
    const/4 v8, 0x0

    .line 67
    .local v8, "isVideo":Z
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 70
    const/4 v6, 0x0

    .line 72
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

    .line 76
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    .line 72
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 79
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 80
    const/4 v8, 0x1

    .line 86
    :cond_0
    if-eqz v6, :cond_1

    .line 87
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 91
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v8

    .line 83
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 84
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    if-eqz v6, :cond_1

    .line 87
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 86
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 87
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method
