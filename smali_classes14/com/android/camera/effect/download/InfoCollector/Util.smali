.class public Lcom/android/camera/effect/download/InfoCollector/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final PERSIST_PRODUCT_NODEL_NUM:Ljava/lang/String; = "ro.product.model.num"

.field private static final TAG:Ljava/lang/String; = "Util"

.field public static rateFilePath:Ljava/lang/String;

.field private static separateString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 262
    const-string v0, "@@@"

    sput-object v0, Lcom/android/camera/effect/download/InfoCollector/Util;->separateString:Ljava/lang/String;

    .line 263
    const-string v0, "/data/data/com.fihtdc.customerfeedback/"

    sput-object v0, Lcom/android/camera/effect/download/InfoCollector/Util;->rateFilePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 237
    const-string v3, ""

    .line 238
    .local v3, "retName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 239
    .local v2, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 241
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 242
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 244
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 248
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "retName":Ljava/lang/String;
    .local v4, "retName":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 239
    .end local v4    # "retName":Ljava/lang/String;
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "retName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    move-object v4, v3

    .line 248
    .end local v3    # "retName":Ljava/lang/String;
    .restart local v4    # "retName":Ljava/lang/String;
    goto :goto_1
.end method

.method public static GetSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "strKey"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v4, ""

    .line 102
    .local v4, "strResult":Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 103
    .local v1, "classProperty":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 104
    .local v3, "md":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    const-string v8, "N/A"

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1    # "classProperty":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "md":Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 106
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static converMicroToHour(J)Ljava/lang/String;
    .locals 8
    .param p0, "micros"    # J

    .prologue
    .line 74
    const-string v2, ""

    .line 75
    .local v2, "rtnTime":Ljava/lang/String;
    long-to-int v5, p0

    const v6, 0xf4240

    div-int v4, v5, v6

    .line 76
    .local v4, "seconds":I
    div-int/lit16 v0, v4, 0xe10

    .line 77
    .local v0, "hour":I
    mul-int/lit16 v5, v0, 0xe10

    sub-int v5, v4, v5

    div-int/lit8 v1, v5, 0x3c

    .line 78
    .local v1, "min":I
    mul-int/lit16 v5, v0, 0xe10

    sub-int v5, v4, v5

    mul-int/lit8 v6, v1, 0x3c

    sub-int v3, v5, v6

    .line 79
    .local v3, "second":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/camera/effect/download/InfoCollector/Util;->timeFormat(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/camera/effect/download/InfoCollector/Util;->timeFormat(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 80
    invoke-static {v3}, Lcom/android/camera/effect/download/InfoCollector/Util;->timeFormat(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    return-object v2
.end method

.method public static converMillisToHour(J)Ljava/lang/String;
    .locals 8
    .param p0, "millis"    # J

    .prologue
    .line 63
    const-string v2, ""

    .line 64
    .local v2, "rtnTime":Ljava/lang/String;
    long-to-int v5, p0

    div-int/lit16 v4, v5, 0x3e8

    .line 65
    .local v4, "seconds":I
    div-int/lit16 v0, v4, 0xe10

    .line 66
    .local v0, "hour":I
    mul-int/lit16 v5, v0, 0xe10

    sub-int v5, v4, v5

    div-int/lit8 v1, v5, 0x3c

    .line 67
    .local v1, "min":I
    mul-int/lit16 v5, v0, 0xe10

    sub-int v5, v4, v5

    mul-int/lit8 v6, v1, 0x3c

    sub-int v3, v5, v6

    .line 68
    .local v3, "second":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/camera/effect/download/InfoCollector/Util;->timeFormat(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/camera/effect/download/InfoCollector/Util;->timeFormat(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 69
    invoke-static {v3}, Lcom/android/camera/effect/download/InfoCollector/Util;->timeFormat(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    return-object v2
.end method

.method public static convertTimestampToDateFormat(J)Ljava/lang/String;
    .locals 4
    .param p0, "timestamp"    # J

    .prologue
    .line 57
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 58
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "time":Ljava/lang/String;
    return-object v0
.end method

.method public static copyFileFromResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "toPath"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 302
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 303
    .local v3, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 306
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 307
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "newFileName":Ljava/lang/String;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v6, "out":Ljava/io/OutputStream;
    const/16 v8, 0x400

    :try_start_1
    new-array v1, v8, [B

    .line 312
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "read":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 314
    const/4 v8, 0x0

    invoke-virtual {v6, v1, v8, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 323
    .end local v1    # "buffer":[B
    .end local v7    # "read":I
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 324
    .end local v4    # "newFileName":Ljava/lang/String;
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    const-string v8, "Util"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Copy error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 326
    if-eqz v3, :cond_0

    .line 328
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 333
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    .line 335
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 341
    :cond_1
    :goto_3
    return-void

    .line 316
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v1    # "buffer":[B
    .restart local v4    # "newFileName":Ljava/lang/String;
    .restart local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "read":I
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 317
    const/4 v3, 0x0

    .line 318
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 319
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 320
    const/4 v5, 0x0

    .line 321
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :try_start_6
    const-string v8, "Util"

    const-string v9, "Copy success"

    invoke-static {v8, v9}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 326
    if-eqz v3, :cond_3

    .line 328
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 333
    :cond_3
    :goto_4
    if-eqz v5, :cond_1

    .line 335
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 336
    :catch_1
    move-exception v2

    .line 337
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "Util"

    const-string v9, "Exception while closing output stream"

    invoke-static {v8, v9}, Lcom/android/camera/effect/util/EffectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 329
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 330
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "Util"

    const-string v9, "Exception while closing input stream"

    invoke-static {v8, v9}, Lcom/android/camera/effect/util/EffectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 329
    .end local v1    # "buffer":[B
    .end local v4    # "newFileName":Ljava/lang/String;
    .end local v7    # "read":I
    .local v2, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 330
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "Util"

    const-string v9, "Exception while closing input stream"

    invoke-static {v8, v9}, Lcom/android/camera/effect/util/EffectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 336
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 337
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "Util"

    const-string v9, "Exception while closing output stream"

    invoke-static {v8, v9}, Lcom/android/camera/effect/util/EffectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 326
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v3, :cond_4

    .line 328
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 333
    :cond_4
    :goto_6
    if-eqz v5, :cond_5

    .line 335
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 338
    :cond_5
    :goto_7
    throw v8

    .line 329
    :catch_5
    move-exception v2

    .line 330
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "Util"

    const-string v10, "Exception while closing input stream"

    invoke-static {v9, v10}, Lcom/android/camera/effect/util/EffectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 336
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 337
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "Util"

    const-string v10, "Exception while closing output stream"

    invoke-static {v9, v10}, Lcom/android/camera/effect/util/EffectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 326
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "newFileName":Ljava/lang/String;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    goto :goto_5

    .line 323
    .end local v4    # "newFileName":Ljava/lang/String;
    :catch_7
    move-exception v2

    goto/16 :goto_1
.end method

.method public static delete_screenshotfile(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    :try_start_0
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 201
    .local v0, "cw":Landroid/content/ContextWrapper;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v2, "screenshotfile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 206
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 208
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v3, "screenshotfile_jpg":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v0    # "cw":Landroid/content/ContextWrapper;
    .end local v2    # "screenshotfile":Ljava/io/File;
    .end local v3    # "screenshotfile_jpg":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v1

    .line 217
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static filesToZip([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 20
    .param p0, "files"    # [Ljava/io/File;
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .param p2, "zipFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    const/4 v6, 0x0

    .line 425
    .local v6, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 426
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/4 v8, 0x0

    .line 427
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/4 v15, 0x0

    .line 428
    .local v15, "zos":Ljava/util/zip/ZipOutputStream;
    const/4 v13, 0x0

    .line 429
    .local v13, "zipFile":Ljava/io/File;
    const-string v17, ".zip"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 430
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".zip"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 433
    :cond_0
    :try_start_0
    new-instance v14, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 434
    .end local v13    # "zipFile":Ljava/io/File;
    .local v14, "zipFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_6

    .line 435
    if-eqz p0, :cond_6

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_6

    .line 436
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 437
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v16, Ljava/util/zip/ZipOutputStream;

    new-instance v17, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct/range {v16 .. v17}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 439
    .end local v15    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v16, "zos":Ljava/util/zip/ZipOutputStream;
    const/16 v17, 0x2800

    :try_start_3
    move/from16 v0, v17

    new-array v4, v0, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 440
    .local v4, "bufs":[B
    const/4 v10, 0x0

    .local v10, "i":I
    move-object v3, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .local v3, "bis":Ljava/io/BufferedInputStream;
    move-object v7, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    :goto_0
    :try_start_4
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_5

    .line 441
    aget-object v17, p0, v10

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 442
    new-instance v12, Ljava/util/zip/ZipEntry;

    aget-object v17, p0, v10

    .line 443
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 444
    .local v12, "zipEntry":Ljava/util/zip/ZipEntry;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 445
    new-instance v6, Ljava/io/FileInputStream;

    aget-object v17, p0, v10

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 446
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v17, 0x2800

    move/from16 v0, v17

    invoke-direct {v2, v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 447
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    const/4 v11, 0x0

    .line 448
    .local v11, "read":I
    :goto_1
    const/16 v17, 0x0

    const/16 v18, 0x2800

    :try_start_6
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v4, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v11

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_4

    .line 449
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1, v11}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 459
    .end local v4    # "bufs":[B
    .end local v10    # "i":I
    .end local v11    # "read":I
    .end local v12    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v17

    move-object v13, v14

    .end local v14    # "zipFile":Ljava/io/File;
    .restart local v13    # "zipFile":Ljava/io/File;
    move-object/from16 v15, v16

    .end local v16    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v15    # "zos":Ljava/util/zip/ZipOutputStream;
    move-object v8, v9

    .line 460
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v2, :cond_1

    .line 461
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 462
    :cond_1
    if-eqz v15, :cond_2

    .line 463
    invoke-virtual {v15}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 464
    :cond_2
    if-eqz v8, :cond_3

    .line 465
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 468
    :cond_3
    throw v17

    .line 451
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "zipFile":Ljava/io/File;
    .end local v15    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "bufs":[B
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "i":I
    .restart local v11    # "read":I
    .restart local v12    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v14    # "zipFile":Ljava/io/File;
    .restart local v16    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_4
    :try_start_8
    const-string v17, "Util"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "filesToZip: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, p0, v10

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/effect/util/EffectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 453
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 440
    .end local v11    # "read":I
    .end local v12    # "zipEntry":Ljava/util/zip/ZipEntry;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object v3, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v7, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_0

    :cond_5
    move-object/from16 v15, v16

    .end local v16    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v15    # "zos":Ljava/util/zip/ZipOutputStream;
    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    move-object v6, v7

    .line 460
    .end local v4    # "bufs":[B
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "i":I
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :cond_6
    if-eqz v2, :cond_7

    .line 461
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 462
    :cond_7
    if-eqz v15, :cond_8

    .line 463
    invoke-virtual {v15}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 464
    :cond_8
    if-eqz v8, :cond_9

    .line 465
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 472
    :cond_9
    return-object v14

    .line 466
    :catch_0
    move-exception v5

    .line 467
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 468
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 466
    .end local v5    # "e":Ljava/io/IOException;
    .end local v14    # "zipFile":Ljava/io/File;
    .restart local v13    # "zipFile":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 467
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 468
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 459
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v17

    goto :goto_2

    .end local v13    # "zipFile":Ljava/io/File;
    .restart local v14    # "zipFile":Ljava/io/File;
    :catchall_2
    move-exception v17

    move-object v13, v14

    .end local v14    # "zipFile":Ljava/io/File;
    .restart local v13    # "zipFile":Ljava/io/File;
    goto :goto_2

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "zipFile":Ljava/io/File;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "zipFile":Ljava/io/File;
    :catchall_3
    move-exception v17

    move-object v13, v14

    .end local v14    # "zipFile":Ljava/io/File;
    .restart local v13    # "zipFile":Ljava/io/File;
    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "zipFile":Ljava/io/File;
    .end local v15    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bufs":[B
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "i":I
    .restart local v14    # "zipFile":Ljava/io/File;
    .restart local v16    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_4
    move-exception v17

    move-object v13, v14

    .end local v14    # "zipFile":Ljava/io/File;
    .restart local v13    # "zipFile":Ljava/io/File;
    move-object/from16 v15, v16

    .end local v16    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v15    # "zos":Ljava/util/zip/ZipOutputStream;
    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "zipFile":Ljava/io/File;
    .end local v15    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v14    # "zipFile":Ljava/io/File;
    .restart local v16    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_5
    move-exception v17

    move-object v13, v14

    .end local v14    # "zipFile":Ljava/io/File;
    .restart local v13    # "zipFile":Ljava/io/File;
    move-object/from16 v15, v16

    .end local v16    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v15    # "zos":Ljava/util/zip/ZipOutputStream;
    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v13    # "zipFile":Ljava/io/File;
    .end local v15    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "zipFile":Ljava/io/File;
    .restart local v16    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_a
    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static getAccount(Landroid/accounts/AccountManager;)Landroid/accounts/Account;
    .locals 3
    .param p0, "accountManager"    # Landroid/accounts/AccountManager;

    .prologue
    .line 126
    const-string v2, "com.google"

    invoke-virtual {p0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 128
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 129
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 133
    .local v0, "account":Landroid/accounts/Account;
    :goto_0
    return-object v0

    .line 131
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "account":Landroid/accounts/Account;
    goto :goto_0
.end method

.method public static getDevicePhoneNumber(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 253
    .local v2, "tMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "mPhoneNumber":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v1, "returnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 256
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_0
    return-object v1
.end method

.method public static getEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 116
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    invoke-static {v1}, Lcom/android/camera/effect/download/InfoCollector/Util;->getAccount(Landroid/accounts/AccountManager;)Landroid/accounts/Account;

    move-result-object v0

    .line 118
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 119
    const/4 v2, 0x0

    .line 121
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getEmailList(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;
    .locals 12
    .param p0, "sAnonymous"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 149
    .local v3, "accountManager":Landroid/accounts/AccountManager;
    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v4

    .line 151
    .local v4, "accounts":[Landroid/accounts/Account;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v2, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 154
    .local v10, "s0":Ljava/lang/String;
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    array-length v11, v4

    if-lez v11, :cond_3

    .line 159
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v11, v4

    if-ge v6, v11, :cond_3

    .line 160
    aget-object v1, v4, v6

    .line 161
    .local v1, "account":Landroid/accounts/Account;
    const/4 v5, 0x0

    .line 162
    .local v5, "bExit":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_1

    .line 163
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 164
    .local v9, "s":Ljava/lang/String;
    iget-object v11, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 165
    const/4 v5, 0x1

    .line 162
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 168
    .end local v9    # "s":Ljava/lang/String;
    :cond_1
    if-nez v5, :cond_2

    .line 169
    iget-object v11, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "account":Landroid/accounts/Account;
    .end local v5    # "bExit":Z
    .end local v6    # "i":I
    .end local v7    # "j":I
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v0, v11, [Ljava/lang/String;

    .line 175
    .local v0, "EmailList":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_4

    .line 176
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v0, v8

    .line 175
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 179
    :cond_4
    return-object v0
.end method

.method public static getEmailSet(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 185
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 186
    .local v2, "accounts":[Landroid/accounts/Account;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 187
    .local v3, "emailSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 188
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    return-object v3
.end method

.method public static getProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "szKey"    # Ljava/lang/String;

    .prologue
    .line 388
    const-string v7, ""

    .line 390
    .local v7, "szRet":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 392
    .local v2, "cl":Ljava/lang/ClassLoader;
    const-string v8, "android.os.SystemProperties"

    invoke-virtual {v2, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 396
    .local v1, "SystemProperties":Ljava/lang/Class;
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/Class;

    .line 397
    .local v5, "paramTypes":[Ljava/lang/Class;
    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v5, v8

    .line 399
    const-string v8, "get"

    invoke-virtual {v1, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 402
    .local v4, "get":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/Object;

    .line 403
    .local v6, "params":[Ljava/lang/Object;
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v9, v6, v8

    .line 404
    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v1    # "SystemProperties":Ljava/lang/Class;
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "get":Ljava/lang/reflect/Method;
    .end local v5    # "paramTypes":[Ljava/lang/Class;
    .end local v6    # "params":[Ljava/lang/Object;
    :goto_0
    const-string v8, "Util"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Try to get SystemProperty : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/effect/util/EffectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-object v7

    .line 405
    :catch_0
    move-exception v3

    .line 406
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "Util"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t get SystemProperty with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSystemInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "cxt"    # Landroid/content/Context;

    .prologue
    .line 224
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 225
    .local v2, "runningApps":Ljava/lang/String;
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 226
    .local v0, "localIterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 229
    .local v1, "localRunningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    goto :goto_0

    .line 232
    .end local v1    # "localRunningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    return-object v2
.end method

.method public static getWeChatAccount(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 137
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v0, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "com.tencent.mm.account"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 140
    .local v2, "accounts":[Landroid/accounts/Account;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 141
    const-string v4, "Util"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v3

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    aget-object v4, v2, v3

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-object v0
.end method

.method public static isCNVersion(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 369
    const-string v2, "ro.product.model.num"

    invoke-static {p0, v2}, Lcom/android/camera/effect/download/InfoCollector/Util;->getProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "modelNum":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 383
    :cond_0
    :goto_0
    return v1

    .line 371
    :cond_1
    const-string v2, "10"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "0S"

    .line 372
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "12"

    .line 373
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "13"

    .line 374
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "1B"

    .line 375
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "0A"

    .line 376
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "0C"

    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "0T"

    .line 378
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "CN"

    .line 379
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 344
    const-string v3, "connectivity"

    .line 345
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 346
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 347
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 348
    .local v1, "isOnline":Z
    :goto_0
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOnline:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/effect/util/EffectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return v1

    .line 347
    .end local v1    # "isOnline":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .param p0, "packagename"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 413
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 416
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    const/4 v2, 0x1

    .line 419
    :goto_0
    return v2

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isValidURL(Ljava/lang/String;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 282
    const/4 v1, 0x0

    .line 285
    .local v1, "u":Ljava/net/URL;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v1    # "u":Ljava/net/URL;
    .local v2, "u":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 296
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2    # "u":Ljava/net/URL;
    .restart local v1    # "u":Ljava/net/URL;
    :goto_0
    return v3

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/net/MalformedURLException;
    goto :goto_0

    .line 292
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v1    # "u":Ljava/net/URL;
    .restart local v2    # "u":Ljava/net/URL;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/net/URISyntaxException;
    move-object v1, v2

    .line 293
    .end local v2    # "u":Ljava/net/URL;
    .restart local v1    # "u":Ljava/net/URL;
    goto :goto_0
.end method

.method public static msbox(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "dlgAlert":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 47
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 48
    const-string v1, "OK"

    new-instance v2, Lcom/android/camera/effect/download/InfoCollector/Util$1;

    invoke-direct {v2}, Lcom/android/camera/effect/download/InfoCollector/Util$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 54
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 55
    return-void
.end method

.method public static requestReadPhonePermission(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 268
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 269
    .local v0, "hasLocationPermission":I
    if-nez v0, :cond_0

    .line 270
    const/4 v1, 0x1

    .line 278
    .end local v0    # "hasLocationPermission":I
    .local v1, "mCouldReadPhoneState":Z
    :goto_0
    return v1

    .line 273
    .end local v1    # "mCouldReadPhoneState":Z
    .restart local v0    # "hasLocationPermission":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "mCouldReadPhoneState":Z
    goto :goto_0

    .line 276
    .end local v0    # "hasLocationPermission":I
    .end local v1    # "mCouldReadPhoneState":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "mCouldReadPhoneState":Z
    goto :goto_0
.end method

.method public static scaleDownBitmap(Landroid/graphics/Bitmap;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "photo"    # Landroid/graphics/Bitmap;
    .param p1, "newHeight"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 356
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 358
    .local v0, "densityMultiplier":F
    int-to-float v3, p1

    mul-float/2addr v3, v0

    float-to-int v1, v3

    .line 359
    .local v1, "h":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/2addr v3, v1

    int-to-double v4, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v6, v3

    div-double/2addr v4, v6

    double-to-int v2, v4

    .line 361
    .local v2, "w":I
    const/4 v3, 0x1

    invoke-static {p0, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 362
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scaleDownBitmap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/effect/util/EffectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-object p0
.end method

.method public static timeFormat(I)Ljava/lang/String;
    .locals 3
    .param p0, "time"    # I

    .prologue
    const/16 v1, 0xa

    .line 86
    const-string v0, ""

    .line 87
    .local v0, "rtnStr":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 88
    const-string v0, "00"

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    if-ge p0, v1, :cond_2

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_2
    if-lt p0, v1, :cond_0

    .line 92
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
