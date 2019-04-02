.class public Lcom/sina/sinalivesdk/refactor/push/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/WBIMLiveClient;J)V
    .locals 4

    .prologue
    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sina_live_sdk"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/a/c;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Ljava/util/HashMap;II)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 18000
    const/4 v1, -0x1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "Util"

    const-string v3, "getInt"

    invoke-static {v2, v3, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/util/HashMap;IJ)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;IJ)J"
        }
    .end annotation

    .prologue
    .line 19000
    const-wide/16 v2, -0x1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "Util"

    const-string v4, "getLong"

    invoke-static {v1, v4, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public static a(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;Lcom/sina/sinalivesdk/refactor/push/l;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Z)Lcom/sina/sinalivesdk/refactor/push/a/f;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;",
            "Lcom/sina/sinalivesdk/refactor/push/l;",
            "Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/sina/sinalivesdk/refactor/push/a/f;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->tid()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->prevTid()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->type()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->proto()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->errorCode()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->requestTid()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_1

    new-instance v4, Lcom/sina/sinalivesdk/refactor/push/a/g;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/sina/sinalivesdk/refactor/push/a/g;-><init>(Lcom/sina/sinalivesdk/refactor/push/l;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/push/a/g;->a(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;)Lcom/sina/sinalivesdk/refactor/push/a/f;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_0

    new-instance v4, Lcom/sina/sinalivesdk/refactor/push/a/b;

    invoke-direct {v4}, Lcom/sina/sinalivesdk/refactor/push/a/b;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/push/a/b;->a(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;)Lcom/sina/sinalivesdk/refactor/push/a/f;

    move-result-object v4

    :cond_0
    const-string v12, "HandlerFactory"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/sina/sinalivesdk/refactor/push/a/f;->c()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", tid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", prevTid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", proto="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", errorcode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_1
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    packed-switch v10, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    :pswitch_2
    new-instance v4, Lcom/sina/sinalivesdk/refactor/push/a/h;

    new-instance v12, Lcom/sina/sinalivesdk/refactor/push/a/d;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/sina/sinalivesdk/refactor/push/a/d;-><init>(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Z)V

    invoke-direct {v4, v12}, Lcom/sina/sinalivesdk/refactor/push/a/h;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/push/a/h;->a(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;)Lcom/sina/sinalivesdk/refactor/push/a/f;

    move-result-object v4

    goto :goto_0

    :pswitch_3
    new-instance v4, Lcom/sina/sinalivesdk/refactor/push/a/h;

    new-instance v12, Lcom/sina/sinalivesdk/refactor/push/a/e;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/sina/sinalivesdk/refactor/push/a/e;-><init>(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Z)V

    invoke-direct {v4, v12}, Lcom/sina/sinalivesdk/refactor/push/a/h;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/push/a/h;->a(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;)Lcom/sina/sinalivesdk/refactor/push/a/f;

    move-result-object v4

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 11000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "sinalivesdk"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12000
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 11000
    :goto_0
    const-string v2, "\\s+"

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "__android"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "__android"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12000
    :cond_0
    :try_start_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 11000
    :catch_0
    move-exception v0

    const-string v0, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 9000
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x800

    new-array v2, v2, [C

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_1
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_2
    invoke-static {v3}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_0
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v0

    invoke-static {v3}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v0, 0x0

    .line 8000
    const/4 v1, 0x0

    new-array v3, v9, [C

    fill-array-data v3, :array_0

    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    const/16 v2, 0x20

    new-array v5, v2, [C

    move v2, v0

    :goto_0
    if-ge v0, v9, :cond_0

    aget-byte v6, v4, v0

    add-int/lit8 v7, v2, 0x1

    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v3, v8

    aput-char v8, v5, v2

    add-int/lit8 v2, v7, 0x1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v3, v6

    aput-char v6, v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a(Ljava/util/HashMap;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 20000
    const-string v2, ""

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Util"

    const-string v3, "getString"

    invoke-static {v1, v3, v0}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 14000
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    .line 15000
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([BI)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16000
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 2

    .prologue
    .line 17000
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    if-ge p2, v0, :cond_1

    :goto_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2
    if-ge p1, p2, :cond_2

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_1
    array-length p2, p0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 10000
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3000
    .line 4000
    if-nez p0, :cond_0

    move v2, v0

    .line 3000
    :goto_0
    if-nez v2, :cond_c

    :goto_1
    return v0

    .line 4000
    :cond_0
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0

    :cond_1
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_4

    check-cast p0, Ljava/util/Map;

    .line 5000
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    .line 4000
    goto :goto_0

    :cond_4
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_5

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    goto :goto_0

    :cond_5
    instance-of v2, p0, Lorg/json/JSONObject;

    if-eqz v2, :cond_8

    check-cast p0, Lorg/json/JSONObject;

    .line 6000
    if-eqz p0, :cond_6

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move v2, v0

    goto :goto_0

    :cond_7
    move v2, v1

    .line 4000
    goto :goto_0

    :cond_8
    instance-of v2, p0, Lorg/json/JSONArray;

    if-eqz v2, :cond_b

    check-cast p0, Lorg/json/JSONArray;

    .line 7000
    if-eqz p0, :cond_9

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    move v2, v0

    goto :goto_0

    :cond_a
    move v2, v1

    .line 4000
    goto :goto_0

    :cond_b
    move v2, v1

    goto :goto_0

    :cond_c
    move v0, v1

    .line 3000
    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 13000
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 21000
    if-eqz p0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    const-string v0, "NOCONNECTION"

    .line 22000
    :goto_0
    return-object v0

    .line 21000
    :pswitch_0
    const-string v0, "WiFi"

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 22000
    packed-switch v0, :pswitch_data_1

    const-string v0, "UNKNOWN"

    goto :goto_0

    :pswitch_2
    const-string v0, "GPRS"

    goto :goto_0

    :pswitch_3
    const-string v0, "EDGE"

    goto :goto_0

    :pswitch_4
    const-string v0, "UMTS"

    goto :goto_0

    :pswitch_5
    const-string v0, "HSDPA"

    goto :goto_0

    :pswitch_6
    const-string v0, "HSUPA"

    goto :goto_0

    :pswitch_7
    const-string v0, "HSPA"

    goto :goto_0

    :pswitch_8
    const-string v0, "CDMA"

    goto :goto_0

    :pswitch_9
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    :pswitch_a
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    :pswitch_b
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    :pswitch_c
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    :pswitch_d
    const-string v0, "LTE"

    goto :goto_0

    :pswitch_e
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    :pswitch_f
    const-string v0, "iDEN"

    goto :goto_0

    :pswitch_10
    const-string v0, "HSPA+"

    goto :goto_0

    .line 21000
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 22000
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_f
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 23000
    :try_start_0
    const-string v1, ""

    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    :goto_0
    :try_start_2
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wbimlive"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "deviceInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deviceInfo : imei = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",imsi = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mac = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/a/c;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method
