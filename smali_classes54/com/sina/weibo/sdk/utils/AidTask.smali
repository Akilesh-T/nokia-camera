.class public Lcom/sina/weibo/sdk/utils/AidTask;
.super Ljava/lang/Object;
.source "AidTask.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;,
        Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;,
        Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;
    }
.end annotation


# static fields
.field private static final AID_FILE_NAME:Ljava/lang/String; = "weibo_sdk_aid"

.field private static final MAX_RETRY_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AidTask"

.field private static final VERSION:I = 0x1

.field public static final WHAT_LOAD_AID_ERR:I = 0x3ea

.field public static final WHAT_LOAD_AID_SUC:I = 0x3e9

.field private static sInstance:Lcom/sina/weibo/sdk/utils/AidTask; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAidInfo:Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

.field private mAppKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;

.field private volatile mTaskLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mTaskLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mContext:Landroid/content/Context;

    .line 154
    new-instance v0, Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;

    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mHandler:Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;

    .line 155
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sina/weibo/sdk/utils/AidTask$1;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/utils/AidTask$1;-><init>(Lcom/sina/weibo/sdk/utils/AidTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    return-void
.end method

.method static synthetic access$0(Lcom/sina/weibo/sdk/utils/AidTask;I)Ljava/io/File;
    .locals 1

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/utils/AidTask;->getAidInfoFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/sina/weibo/sdk/utils/AidTask;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mTaskLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sina/weibo/sdk/utils/AidTask;)Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;
    .locals 1

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/sina/weibo/sdk/utils/AidTask;->loadAidInfoFromCache()Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/sina/weibo/sdk/utils/AidTask;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/sina/weibo/sdk/utils/AidTask;->loadAidFromNet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/sina/weibo/sdk/utils/AidTask;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/utils/AidTask;->cacheAidInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/sina/weibo/sdk/utils/AidTask;Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mAidInfo:Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    return-void
.end method

.method static synthetic access$6(Lcom/sina/weibo/sdk/utils/AidTask;)Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mHandler:Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;

    return-object v0
.end method

.method private declared-synchronized cacheAidInfo(Ljava/lang/String;)V
    .locals 5
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 368
    :cond_1
    const/4 v1, 0x0

    .line 370
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, v3}, Lcom/sina/weibo/sdk/utils/AidTask;->getAidInfoFile(I)Ljava/io/File;

    move-result-object v0

    .line 371
    .local v0, "aidFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 375
    if-eqz v2, :cond_3

    .line 377
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v2

    .line 378
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 373
    .end local v0    # "aidFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 375
    :goto_1
    if-eqz v1, :cond_0

    .line 377
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 378
    :catch_1
    move-exception v3

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v3

    .line 375
    :goto_2
    if-eqz v1, :cond_2

    .line 377
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 380
    :cond_2
    :goto_3
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 364
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 378
    .restart local v0    # "aidFile":Ljava/io/File;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v0    # "aidFile":Ljava/io/File;
    :catch_3
    move-exception v4

    goto :goto_3

    .line 374
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "aidFile":Ljava/io/File;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 373
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private static encryptRsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "publicKeyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 495
    const-string v11, "RSA/ECB/PKCS1Padding"

    invoke-static {v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 496
    .local v5, "cipher":Ljavax/crypto/Cipher;
    invoke-static {p1}, Lcom/sina/weibo/sdk/utils/AidTask;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v10

    .line 497
    .local v10, "publicKey":Ljava/security/PublicKey;
    const/4 v11, 0x1

    invoke-virtual {v5, v11, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 499
    const/4 v3, 0x0

    .line 500
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    const-string v11, "UTF-8"

    invoke-virtual {p0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 502
    .local v9, "plainText":[B
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v4, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 504
    .local v7, "len":I
    const/4 v8, 0x0

    .line 505
    .local v8, "offset":I
    :goto_0
    const/16 v11, 0x75

    :try_start_1
    invoke-static {v9, v8, v11}, Lcom/sina/weibo/sdk/utils/AidTask;->splite([BII)I

    move-result v7

    const/4 v11, -0x1

    if-ne v7, v11, :cond_1

    .line 512
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 513
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 514
    .local v6, "enBytes":[B
    const-string v11, "AidTask"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "encryptRsa total enBytes len = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-static {v6}, Lcom/sina/weibo/sdk/utils/Base64;->encodebyte([B)[B

    move-result-object v1

    .line 517
    .local v1, "base64byte":[B
    const-string v11, "AidTask"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "encryptRsa total base64byte len = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v0, "01"

    .line 520
    .local v0, "VERSION":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-direct {v2, v1, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 521
    .local v2, "base64string":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "01"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 522
    const-string v11, "AidTask"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "encryptRsa total base64string : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 528
    if-eqz v4, :cond_0

    .line 530
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 524
    :cond_0
    :goto_1
    return-object v2

    .line 506
    .end local v0    # "VERSION":Ljava/lang/String;
    .end local v1    # "base64byte":[B
    .end local v2    # "base64string":Ljava/lang/String;
    .end local v6    # "enBytes":[B
    :cond_1
    :try_start_3
    invoke-virtual {v5, v9, v8, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v6

    .line 507
    .restart local v6    # "enBytes":[B
    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 508
    const-string v11, "AidTask"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "encryptRsa offset = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "     len = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 509
    const-string v13, "     enBytes len = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 508
    invoke-static {v11, v12}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 510
    add-int/2addr v8, v7

    goto/16 :goto_0

    .line 527
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "enBytes":[B
    .end local v7    # "len":I
    .end local v8    # "offset":I
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v11

    .line 528
    :goto_2
    if-eqz v3, :cond_2

    .line 530
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 534
    :cond_2
    :goto_3
    throw v11

    .line 531
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "VERSION":Ljava/lang/String;
    .restart local v1    # "base64byte":[B
    .restart local v2    # "base64string":Ljava/lang/String;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "enBytes":[B
    .restart local v7    # "len":I
    .restart local v8    # "offset":I
    :catch_0
    move-exception v11

    goto :goto_1

    .end local v0    # "VERSION":Ljava/lang/String;
    .end local v1    # "base64byte":[B
    .end local v2    # "base64string":Ljava/lang/String;
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "enBytes":[B
    .end local v7    # "len":I
    .end local v8    # "offset":I
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v12

    goto :goto_3

    .line 527
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "len":I
    .restart local v8    # "offset":I
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method private static genMfpString(Landroid/content/Context;)Ljava/lang/String;
    .locals 21
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 413
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 415
    .local v12, "mfpObj":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/sina/weibo/sdk/utils/AidTask;->getOS()Ljava/lang/String;

    move-result-object v14

    .line 416
    .local v14, "os":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 417
    const-string v20, "1"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/sina/weibo/sdk/utils/AidTask;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 420
    .local v8, "imei":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 421
    const-string v20, "2"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/sina/weibo/sdk/utils/AidTask;->getMeid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 424
    .local v11, "meid":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 425
    const-string v20, "3"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/sina/weibo/sdk/utils/AidTask;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 428
    .local v9, "imsi":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 429
    const-string v20, "4"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/sina/weibo/sdk/utils/AidTask;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 432
    .local v10, "mac":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 433
    const-string v20, "5"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 435
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/sina/weibo/sdk/utils/AidTask;->getIccid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 436
    .local v7, "iccid":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 437
    const-string v20, "6"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    :cond_5
    invoke-static {}, Lcom/sina/weibo/sdk/utils/AidTask;->getSerialNo()Ljava/lang/String;

    move-result-object v17

    .line 440
    .local v17, "serial":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 441
    const-string v20, "7"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/sina/weibo/sdk/utils/AidTask;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "androidId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 445
    const-string v20, "10"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    :cond_7
    invoke-static {}, Lcom/sina/weibo/sdk/utils/AidTask;->getCpu()Ljava/lang/String;

    move-result-object v4

    .line 448
    .local v4, "cpu":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 449
    const-string v20, "13"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    :cond_8
    invoke-static {}, Lcom/sina/weibo/sdk/utils/AidTask;->getModel()Ljava/lang/String;

    move-result-object v13

    .line 452
    .local v13, "model":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 453
    const-string v20, "14"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 455
    :cond_9
    invoke-static {}, Lcom/sina/weibo/sdk/utils/AidTask;->getSdSize()Ljava/lang/String;

    move-result-object v16

    .line 456
    .local v16, "sdcard":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 457
    const-string v20, "15"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/sina/weibo/sdk/utils/AidTask;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 460
    .local v15, "resolution":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 461
    const-string v20, "16"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    :cond_b
    invoke-static/range {p0 .. p0}, Lcom/sina/weibo/sdk/utils/AidTask;->getSsid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 464
    .local v18, "ssid":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 465
    const-string v20, "17"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    :cond_c
    invoke-static {}, Lcom/sina/weibo/sdk/utils/AidTask;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    .line 468
    .local v5, "deviceName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 469
    const-string v20, "18"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    :cond_d
    invoke-static/range {p0 .. p0}, Lcom/sina/weibo/sdk/utils/AidTask;->getConnectType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, "connectType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_e

    .line 473
    const-string v20, "19"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    :cond_e
    const-string v19, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 478
    .local v19, "ua":Ljava/lang/String;
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/sina/weibo/sdk/utils/Utility;->generateUAAid(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    .line 483
    :goto_0
    :try_start_2
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_f

    .line 484
    const-string v20, "20"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 488
    :cond_f
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 491
    .end local v2    # "androidId":Ljava/lang/String;
    .end local v3    # "connectType":Ljava/lang/String;
    .end local v4    # "cpu":Ljava/lang/String;
    .end local v5    # "deviceName":Ljava/lang/String;
    .end local v7    # "iccid":Ljava/lang/String;
    .end local v8    # "imei":Ljava/lang/String;
    .end local v9    # "imsi":Ljava/lang/String;
    .end local v10    # "mac":Ljava/lang/String;
    .end local v11    # "meid":Ljava/lang/String;
    .end local v13    # "model":Ljava/lang/String;
    .end local v14    # "os":Ljava/lang/String;
    .end local v15    # "resolution":Ljava/lang/String;
    .end local v16    # "sdcard":Ljava/lang/String;
    .end local v17    # "serial":Ljava/lang/String;
    .end local v18    # "ssid":Ljava/lang/String;
    .end local v19    # "ua":Ljava/lang/String;
    :goto_1
    return-object v20

    .line 479
    .restart local v2    # "androidId":Ljava/lang/String;
    .restart local v3    # "connectType":Ljava/lang/String;
    .restart local v4    # "cpu":Ljava/lang/String;
    .restart local v5    # "deviceName":Ljava/lang/String;
    .restart local v7    # "iccid":Ljava/lang/String;
    .restart local v8    # "imei":Ljava/lang/String;
    .restart local v9    # "imsi":Ljava/lang/String;
    .restart local v10    # "mac":Ljava/lang/String;
    .restart local v11    # "meid":Ljava/lang/String;
    .restart local v13    # "model":Ljava/lang/String;
    .restart local v14    # "os":Ljava/lang/String;
    .restart local v15    # "resolution":Ljava/lang/String;
    .restart local v16    # "sdcard":Ljava/lang/String;
    .restart local v17    # "serial":Ljava/lang/String;
    .restart local v18    # "ssid":Ljava/lang/String;
    .restart local v19    # "ua":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 480
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 489
    .end local v2    # "androidId":Ljava/lang/String;
    .end local v3    # "connectType":Ljava/lang/String;
    .end local v4    # "cpu":Ljava/lang/String;
    .end local v5    # "deviceName":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "iccid":Ljava/lang/String;
    .end local v8    # "imei":Ljava/lang/String;
    .end local v9    # "imsi":Ljava/lang/String;
    .end local v10    # "mac":Ljava/lang/String;
    .end local v11    # "meid":Ljava/lang/String;
    .end local v13    # "model":Ljava/lang/String;
    .end local v14    # "os":Ljava/lang/String;
    .end local v15    # "resolution":Ljava/lang/String;
    .end local v16    # "sdcard":Ljava/lang/String;
    .end local v17    # "serial":Ljava/lang/String;
    .end local v18    # "ssid":Ljava/lang/String;
    .end local v19    # "ua":Ljava/lang/String;
    :catch_1
    move-exception v20

    .line 491
    const-string v20, ""

    goto :goto_1
.end method

.method private generateAid(Ljava/lang/String;Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;)V
    .locals 2
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;

    .prologue
    .line 263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 267
    :cond_0
    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mAppKey:Ljava/lang/String;

    .line 269
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sina/weibo/sdk/utils/AidTask$3;

    invoke-direct {v1, p0, p2}, Lcom/sina/weibo/sdk/utils/AidTask$3;-><init>(Lcom/sina/weibo/sdk/utils/AidTask;Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 300
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private getAidInfoFile(I)Ljava/io/File;
    .locals 4
    .param p1, "version"    # I

    .prologue
    .line 327
    iget-object v2, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 328
    .local v1, "dir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "weibo_sdk_aid"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 329
    .local v0, "aidFile":Ljava/io/File;
    return-object v0
.end method

.method private static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 623
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    .line 622
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 626
    :goto_0
    return-object v0

    .line 625
    :catch_0
    move-exception v1

    .line 626
    const-string v0, ""

    goto :goto_0
.end method

.method private static getConnectType(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 687
    const-string v2, "none"

    .line 690
    .local v2, "network":Ljava/lang/String;
    :try_start_0
    const-string v3, "connectivity"

    .line 689
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 691
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 696
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 697
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_1

    .line 698
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 730
    const-string v2, "none"

    .line 739
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-object v2

    .line 707
    .restart local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :pswitch_0
    const-string v2, "2G"

    .line 708
    goto :goto_0

    .line 722
    :pswitch_1
    const-string v2, "3G"

    .line 723
    goto :goto_0

    .line 726
    :pswitch_2
    const-string v2, "4G"

    .line 727
    goto :goto_0

    .line 733
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 734
    const-string v2, "wifi"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 737
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 698
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static getCpu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    :try_start_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_0
    return-object v0

    .line 632
    :catch_0
    move-exception v0

    .line 633
    const-string v0, ""

    goto :goto_0
.end method

.method private static getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 681
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :goto_0
    return-object v0

    .line 682
    :catch_0
    move-exception v0

    .line 683
    const-string v0, ""

    goto :goto_0
.end method

.method private static getIccid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 602
    .line 603
    :try_start_0
    const-string v1, "phone"

    .line 602
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 604
    .local v0, "telePhonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 606
    .end local v0    # "telePhonyMgr":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    .line 605
    :catch_0
    move-exception v1

    .line 606
    const-string v1, ""

    goto :goto_0
.end method

.method private static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 563
    .line 564
    :try_start_0
    const-string v1, "phone"

    .line 563
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 565
    .local v0, "telePhonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 567
    .end local v0    # "telePhonyMgr":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    .line 566
    :catch_0
    move-exception v1

    .line 567
    const-string v1, ""

    goto :goto_0
.end method

.method private static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 581
    .line 582
    :try_start_0
    const-string v1, "phone"

    .line 581
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 583
    .local v0, "telePhonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 585
    .end local v0    # "telePhonyMgr":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    .line 584
    :catch_0
    move-exception v1

    .line 585
    const-string v1, ""

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/utils/AidTask;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    const-class v1, Lcom/sina/weibo/sdk/utils/AidTask;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sina/weibo/sdk/utils/AidTask;->sInstance:Lcom/sina/weibo/sdk/utils/AidTask;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/utils/AidTask;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sina/weibo/sdk/utils/AidTask;->sInstance:Lcom/sina/weibo/sdk/utils/AidTask;

    .line 173
    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/utils/AidTask;->sInstance:Lcom/sina/weibo/sdk/utils/AidTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 590
    :try_start_0
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    if-nez v1, :cond_0

    .line 592
    const-string v2, ""

    .line 597
    .end local v1    # "wifi":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v2

    .line 594
    .restart local v1    # "wifi":Landroid/net/wifi/WifiManager;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 595
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 596
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    .end local v1    # "wifi":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v2

    .line 597
    const-string v2, ""

    goto :goto_0
.end method

.method private static getMeid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 572
    .line 573
    :try_start_0
    const-string v1, "phone"

    .line 572
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 574
    .local v0, "telePhonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 576
    .end local v0    # "telePhonyMgr":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    .line 575
    :catch_0
    move-exception v1

    .line 576
    const-string v1, ""

    goto :goto_0
.end method

.method private static getMfp(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 391
    const-string v4, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDHHM0Fi2Z6+QYKXqFUX2Cy6AaWq3cPi+GSn9oeAwQbPZR75JB7Netm0HtBVVbtPhzT7UO2p1JhFUKWqrqoYuAjkgMVPmA0sFrQohns5EE44Y86XQopD4ZO+dE5KjUZFE6vrPO3rWW3np2BqlgKpjnYZri6TJApmIpGcQg9/G/3zQIDAQAB"

    .line 395
    .local v4, "publicKey":Ljava/lang/String;
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/AidTask;->genMfpString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "mfpJson":Ljava/lang/String;
    const-string v2, ""

    .line 398
    .local v2, "mfpJsonUtf8":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v3, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "mfpJsonUtf8":Ljava/lang/String;
    .local v3, "mfpJsonUtf8":Ljava/lang/String;
    move-object v2, v3

    .line 401
    .end local v3    # "mfpJsonUtf8":Ljava/lang/String;
    .restart local v2    # "mfpJsonUtf8":Ljava/lang/String;
    :goto_0
    const-string v6, "AidTask"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "genMfpString() utf-8 string : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :try_start_1
    const-string v6, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDHHM0Fi2Z6+QYKXqFUX2Cy6AaWq3cPi+GSn9oeAwQbPZR75JB7Netm0HtBVVbtPhzT7UO2p1JhFUKWqrqoYuAjkgMVPmA0sFrQohns5EE44Y86XQopD4ZO+dE5KjUZFE6vrPO3rWW3np2BqlgKpjnYZri6TJApmIpGcQg9/G/3zQIDAQAB"

    invoke-static {v2, v6}, Lcom/sina/weibo/sdk/utils/AidTask;->encryptRsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 404
    .local v5, "rsaMfp":Ljava/lang/String;
    const-string v6, "AidTask"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "encryptRsa() string : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 409
    .end local v5    # "rsaMfp":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "AidTask"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v5, ""

    goto :goto_1

    .line 399
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 638
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :goto_0
    return-object v0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    const-string v0, ""

    goto :goto_0
.end method

.method private static getOS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 556
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 558
    :goto_0
    return-object v0

    .line 557
    :catch_0
    move-exception v0

    .line 558
    const-string v0, ""

    goto :goto_0
.end method

.method private static getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 547
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/sina/weibo/sdk/utils/Base64;->decode([B)[B

    move-result-object v0

    .line 548
    .local v0, "keyBytes":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 549
    .local v2, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 550
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 551
    .local v3, "publicKey":Ljava/security/PublicKey;
    return-object v3
.end method

.method private static getResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 656
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 658
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    .line 657
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 659
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 661
    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 662
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 660
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 664
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :goto_0
    return-object v2

    .line 663
    :catch_0
    move-exception v2

    .line 664
    const-string v2, ""

    goto :goto_0
.end method

.method private static getSdSize()Ljava/lang/String;
    .locals 8

    .prologue
    .line 645
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 646
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 647
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 648
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v0, v6

    .line 649
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 651
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v5    # "stat":Landroid/os/StatFs;
    :goto_0
    return-object v6

    .line 650
    :catch_0
    move-exception v6

    .line 651
    const-string v6, ""

    goto :goto_0
.end method

.method private static getSerialNo()Ljava/lang/String;
    .locals 8

    .prologue
    .line 610
    const-string v3, ""

    .line 612
    .local v3, "serialnum":Ljava/lang/String;
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 613
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "get"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 614
    .local v2, "get":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ro.serialno"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "unknown"

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "get":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 615
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static getSsid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 669
    .line 670
    :try_start_0
    const-string v2, "wifi"

    .line 669
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 671
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 672
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 676
    .end local v0    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v2

    .line 675
    :catch_0
    move-exception v2

    .line 676
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private initAidInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 193
    :cond_0
    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mAppKey:Ljava/lang/String;

    .line 195
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sina/weibo/sdk/utils/AidTask$2;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/utils/AidTask$2;-><init>(Lcom/sina/weibo/sdk/utils/AidTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 223
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private loadAidFromNet()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 338
    const-string v6, "https://api.weibo.com/oauth2/getaid.json"

    .line 339
    .local v6, "url":Ljava/lang/String;
    iget-object v7, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v7, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/sina/weibo/sdk/utils/Utility;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "keyHash":Ljava/lang/String;
    iget-object v7, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sina/weibo/sdk/utils/AidTask;->getMfp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "mfp":Ljava/lang/String;
    new-instance v3, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v7, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mAppKey:Ljava/lang/String;

    invoke-direct {v3, v7}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 344
    .local v3, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v7, "appkey"

    iget-object v8, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mAppKey:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v7, "mfp"

    invoke-virtual {v3, v7, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v7, "packagename"

    invoke-virtual {v3, v7, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v7, "key_hash"

    invoke-virtual {v3, v7, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :try_start_0
    iget-object v7, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mContext:Landroid/content/Context;

    const-string v8, "https://api.weibo.com/oauth2/getaid.json"

    const-string v9, "GET"

    invoke-static {v7, v8, v9, v3}, Lcom/sina/weibo/sdk/net/NetUtils;->internalHttpRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Ljava/lang/String;

    move-result-object v5

    .line 351
    .local v5, "response":Ljava/lang/String;
    const-string v7, "AidTask"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "loadAidFromNet response : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    return-object v5

    .line 353
    .end local v5    # "response":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    const-string v7, "AidTask"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "loadAidFromNet WeiboException Msg : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    throw v0
.end method

.method private declared-synchronized loadAidInfoFromCache()Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;
    .locals 6

    .prologue
    .line 308
    monitor-enter p0

    const/4 v2, 0x0

    .line 310
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0, v4}, Lcom/sina/weibo/sdk/utils/AidTask;->getAidInfoFile(I)Ljava/io/File;

    move-result-object v0

    .line 311
    .local v0, "aidFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    new-array v1, v4, [B

    .line 313
    .local v1, "buffer":[B
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 314
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;->parseJson(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 317
    if-eqz v3, :cond_0

    .line 319
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_0
    :goto_0
    move-object v2, v3

    .line 323
    .end local v0    # "aidFile":Ljava/io/File;
    .end local v1    # "buffer":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_1
    monitor-exit p0

    return-object v4

    .line 315
    :catch_0
    move-exception v4

    .line 317
    :goto_2
    if-eqz v2, :cond_1

    .line 319
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 323
    :cond_1
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 316
    :catchall_0
    move-exception v4

    .line 317
    :goto_4
    if-eqz v2, :cond_2

    .line 319
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 322
    :cond_2
    :goto_5
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 308
    :catchall_1
    move-exception v4

    :goto_6
    monitor-exit p0

    throw v4

    .line 320
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "aidFile":Ljava/io/File;
    .restart local v1    # "buffer":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v5

    goto :goto_0

    .end local v0    # "aidFile":Ljava/io/File;
    .end local v1    # "buffer":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    goto :goto_3

    :catch_3
    move-exception v5

    goto :goto_5

    .line 316
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "aidFile":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 315
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 308
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_6
.end method

.method private static splite([BII)I
    .locals 2
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "limit"    # I

    .prologue
    .line 538
    array-length v1, p0

    if-lt p1, v1, :cond_0

    .line 539
    const/4 v1, -0x1

    .line 542
    :goto_0
    return v1

    .line 541
    :cond_0
    array-length v1, p0

    sub-int v0, v1, p1

    .line 542
    .local v0, "delta":I
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public aidTaskInit(Ljava/lang/String;)V
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v0, "AidTask"

    const-string v1, "aidTaskInit "

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/utils/AidTask;->initAidInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAidAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;)V
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;

    .prologue
    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mAidInfo:Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 251
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mAidInfo:Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;->cloneAidInfo()Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;->onAidGenSuccessed(Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;)V

    goto :goto_0

    .line 254
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/utils/AidTask;->generateAid(Ljava/lang/String;Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;)V

    goto :goto_0
.end method

.method public getAidSync(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;
    .locals 2
    .param p1, "appkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 239
    :goto_0
    return-object v0

    .line 235
    :cond_0
    const-string v0, "AidTask"

    const-string v1, "getAidSync "

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mAidInfo:Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    if-nez v0, :cond_1

    .line 237
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/utils/AidTask;->aidTaskInit(Ljava/lang/String;)V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mAidInfo:Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    goto :goto_0
.end method
