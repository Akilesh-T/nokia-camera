.class public Lcom/android/camera/effect/download/DownLoaderManager;
.super Ljava/lang/Object;
.source "DownLoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/download/DownLoaderManager$JsonType;
    }
.end annotation


# static fields
.field private static final ANIMOJI_CATEGORY:Ljava/lang/String; = "CameraResource"

.field private static ANIMOJI_JASON_URL_V1:Ljava/lang/String; = null

.field private static final ANIMOJI_TYPE:Ljava/lang/String; = "AnimojiShelf"

.field private static BASE_URL:Ljava/lang/String; = null

.field private static final BR:Ljava/lang/String; = "BR"

.field private static final BR_URL:Ljava/lang/String; = "https://drmssp-no-tw-br.c2dms.com/drms/api/v1/shelfs/provisioning"

.field private static final BUF_SIZE:I = 0x400

.field private static final CHECK_SUM_ERROR:Ljava/lang/String; = "checksum error"

.field private static final HTTP_GET:Ljava/lang/String; = "GET"

.field private static final HTTP_HEADER_ACCESS_KEY_ID:Ljava/lang/String; = "AccessKeyId"

.field private static final HTTP_HEADER_ACCESS_KEY_ID_DATA:Ljava/lang/String; = "1520919777"

.field private static final HTTP_HEADER_SIGNATURE:Ljava/lang/String; = "Signature"

.field private static final HTTP_HEADER_SIGNATUREMETHOD:Ljava/lang/String; = "SignatureMethod"

.field private static final HTTP_HEADER_SIGNATUREMETHOD_DATA:Ljava/lang/String; = "HMAC-SHA1"

.field private static final HTTP_HEADER_SIGNATURE_NONCE:Ljava/lang/String; = "SignatureNonce"

.field private static final HTTP_HEADER_SIGNATURE_NONCE_DATA:Ljava/lang/String; = "3348"

.field private static final HTTP_HEADER_SIGNATURE_VERSION:Ljava/lang/String; = "SignatureVersion"

.field private static final HTTP_HEADER_SIGNATURE_VERSION_DATA:Ljava/lang/String; = "1.0"

.field private static final HTTP_HEADER_TIMESTAMP:Ljava/lang/String; = "TimeStamp"

.field private static final HTTP_HEADER_VERSION:Ljava/lang/String; = "Version"

.field private static final HTTP_HEADER_VERSION_DATA:Ljava/lang/String; = "v1"

.field private static final HTTP_NO_SELECT:Ljava/lang/String; = "noSelect"

.field private static final HTTP_OK:Ljava/lang/String; = "ok"

.field private static final HTTP_POST:Ljava/lang/String; = "POST"

.field private static final HTTP_READ_DATA_ERROR:Ljava/lang/String; = "read data from network error"

.field private static final IT:Ljava/lang/String; = "IT"

.field private static final IT_URL:Ljava/lang/String; = "https://drmssp-no-tw-it.c2dms.com/drms/api/v1/shelfs/provisioning"

.field private static final KEY_SECRET:Ljava/lang/String; = "ff7f44b327e7dbdf0a2fef35634a655c"

.field private static POST_RESULT_URL_V1:Ljava/lang/String; = null

.field private static final PRODUCT:Ljava/lang/String; = "PRODUCT"

.field private static final PRODUCT_URL:Ljava/lang/String; = "https://drmssp-no-ww.ncs-cloud.com.cn/drms/api/v1/shelfs/provisioning"

.field private static final REASON:Ljava/lang/String; = "UserRequest"

.field public static final STATE_DOWNLOADED:I = 0x2

.field public static final STATE_DOWNLOADING:I = 0x1

.field public static final STATE_DOWNLOAD_ERROR:I = 0x3

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_PRELOAD:I = -0x1

.field private static final STICKER_CATEGORY:Ljava/lang/String; = "CameraResource"

.field private static STICKER_JASON_URL_V1:Ljava/lang/String; = null

.field private static final STICKER_TYPE:Ljava/lang/String; = "ThemeStickerShelf"

.field private static final TAG:Ljava/lang/String; = "DownLoaderManager"

.field private static final TEMP_PATH:Ljava/lang/String; = "temp"

.field private static final TIMEOUT:I = 0xea60

.field private static final UNDERLINE:Ljava/lang/String; = "_"

.field private static final UNZIP_ERROR:Ljava/lang/String; = "unzip error"

.field private static final URL_FILE_NAME:Ljava/lang/String; = "effect_app1_2018_3_29.txt"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final WRITE_INTO_FILE_ERROR:Ljava/lang/String; = "write into file error"

.field private static final httpHeaderMap:Ljava/util/Map;

.field private static manager:Lcom/android/camera/effect/download/DownLoaderManager;


# instance fields
.field private animojiExecutor:Ljava/util/concurrent/ExecutorService;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private jsonExecutor:Ljava/util/concurrent/ExecutorService;

.field private mApplicationContext:Landroid/content/Context;

.field private postResultExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 96
    const-string v0, "https://drmssp-no-ww.ncs-cloud.com.cn/drms/api/v1/shelfs/provisioning"

    sput-object v0, Lcom/android/camera/effect/download/DownLoaderManager;->BASE_URL:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/android/camera/effect/download/DownLoaderManager;->BASE_URL:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/effect/download/DownLoaderManager;->STICKER_JASON_URL_V1:Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/android/camera/effect/download/DownLoaderManager;->BASE_URL:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/effect/download/DownLoaderManager;->ANIMOJI_JASON_URL_V1:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/effect/download/DownLoaderManager;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/results"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/effect/download/DownLoaderManager;->POST_RESULT_URL_V1:Ljava/lang/String;

    .line 1071
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/effect/download/DownLoaderManager;->httpHeaderMap:Ljava/util/Map;

    .line 1073
    sget-object v0, Lcom/android/camera/effect/download/DownLoaderManager;->httpHeaderMap:Ljava/util/Map;

    const-string v1, "Version"

    const-string v2, "v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    sget-object v0, Lcom/android/camera/effect/download/DownLoaderManager;->httpHeaderMap:Ljava/util/Map;

    const-string v1, "AccessKeyId"

    const-string v2, "1520919777"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    sget-object v0, Lcom/android/camera/effect/download/DownLoaderManager;->httpHeaderMap:Ljava/util/Map;

    const-string v1, "SignatureMethod"

    const-string v2, "HMAC-SHA1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    sget-object v0, Lcom/android/camera/effect/download/DownLoaderManager;->httpHeaderMap:Ljava/util/Map;

    const-string v1, "TimeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    sget-object v0, Lcom/android/camera/effect/download/DownLoaderManager;->httpHeaderMap:Ljava/util/Map;

    const-string v1, "SignatureVersion"

    const-string v2, "1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    sget-object v0, Lcom/android/camera/effect/download/DownLoaderManager;->httpHeaderMap:Ljava/util/Map;

    const-string v1, "SignatureNonce"

    const-string v2, "3348"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/android/camera/effect/download/DownLoaderManager;->mApplicationContext:Landroid/content/Context;

    .line 145
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->executor:Ljava/util/concurrent/ExecutorService;

    .line 146
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->jsonExecutor:Ljava/util/concurrent/ExecutorService;

    .line 148
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->animojiExecutor:Ljava/util/concurrent/ExecutorService;

    .line 150
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->postResultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 152
    invoke-direct {p0}, Lcom/android/camera/effect/download/DownLoaderManager;->setURL()V

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/download/DownLoaderManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/download/DownLoaderManager;->getHttpURLConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/net/HttpURLConnection;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/download/DownLoaderManager;
    .param p1, "x1"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/camera/effect/download/DownLoaderManager;->readDataFromNetwork(Ljava/net/HttpURLConnection;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/effect/download/DownLoaderManager;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/download/DownLoaderManager;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/effect/download/DownLoaderManager;->writeDataToDisk([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/io/File;Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/download/DownLoaderManager;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;
    .param p3, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/effect/download/DownLoaderManager;->checkDownloadFileMD5(Ljava/io/File;Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/effect/download/DownLoaderManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/effect/download/DownLoaderManager;->insertResultIntoDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/effect/download/DownLoaderManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/download/DownLoaderManager;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/camera/effect/download/DownLoaderManager;->getJsonPostRequest(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/download/DownLoaderManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/effect/download/DownLoaderManager;->writeFileToDisk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/download/DownLoaderManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/download/DownLoaderManager;->checkersion(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private checkDownloadFileMD5(Ljava/io/File;Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;Ljava/lang/String;)Z
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "itemData"    # Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;
    .param p3, "downloadType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1292
    new-instance v5, Lcom/android/camera/effect/util/Md5MessageDigest;

    invoke-direct {v5}, Lcom/android/camera/effect/util/Md5MessageDigest;-><init>()V

    invoke-virtual {v5, p1}, Lcom/android/camera/effect/util/Md5MessageDigest;->hash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 1293
    .local v1, "md5String":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 1294
    const-string v5, "DownLoaderManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "md5String = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    const-string v5, "STICKER_DOWNLOAD"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "THEME_DOWNLOAD"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1297
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "merge_sticker_data.json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1298
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "merge_sticker_data.json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/effect/util/EffectFileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1299
    .local v3, "originStickerFileString":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 1300
    invoke-static {v3}, Lcom/android/camera/effect/util/EffectGsonTool;->fromJsonArrayEffectDI(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1301
    .local v2, "mergeDataInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    if-eqz v2, :cond_5

    .line 1302
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/util/EffectDataInfo;

    .line 1303
    .local v0, "dataInfo":Lcom/android/camera/effect/util/EffectDataInfo;
    const-string v6, "STICKER_DOWNLOAD"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1304
    invoke-virtual {v0}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/effect/util/EffectDataInfo;->getStickerCheckSum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1305
    const-string v5, "DownLoaderManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dataInfo.getStickerCheckSum() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/camera/effect/util/EffectDataInfo;->getStickerCheckSum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    .end local v0    # "dataInfo":Lcom/android/camera/effect/util/EffectDataInfo;
    .end local v2    # "mergeDataInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    .end local v3    # "originStickerFileString":Ljava/lang/String;
    :goto_0
    return v4

    .line 1308
    .restart local v0    # "dataInfo":Lcom/android/camera/effect/util/EffectDataInfo;
    .restart local v2    # "mergeDataInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    .restart local v3    # "originStickerFileString":Ljava/lang/String;
    :cond_2
    const-string v6, "THEME_DOWNLOAD"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1309
    invoke-virtual {v0}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/effect/util/EffectDataInfo;->getThemeCheckSum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1310
    const-string v5, "DownLoaderManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dataInfo.getThemeCheckSum() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/camera/effect/util/EffectDataInfo;->getStickerCheckSum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1318
    .end local v0    # "dataInfo":Lcom/android/camera/effect/util/EffectDataInfo;
    .end local v2    # "mergeDataInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    .end local v3    # "originStickerFileString":Ljava/lang/String;
    :cond_3
    const-string v5, "ANIMOJI_DOWNLOAD"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1319
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "merge_animoji_data.json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "merge_animoji_data.json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/effect/util/EffectFileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1321
    .restart local v3    # "originStickerFileString":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 1322
    invoke-static {v3}, Lcom/android/camera/effect/util/EffectGsonTool;->fromJsonArrayEffectDI(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1323
    .restart local v2    # "mergeDataInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    if-eqz v2, :cond_5

    .line 1324
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/util/EffectDataInfo;

    .line 1325
    .restart local v0    # "dataInfo":Lcom/android/camera/effect/util/EffectDataInfo;
    invoke-virtual {v0}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/effect/util/EffectDataInfo;->getAnimojiCheckSum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1326
    const-string v5, "DownLoaderManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dataInfo.getAnimojiCheckSum() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/camera/effect/util/EffectDataInfo;->getAnimojiCheckSum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1336
    .end local v0    # "dataInfo":Lcom/android/camera/effect/util/EffectDataInfo;
    .end local v2    # "mergeDataInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    .end local v3    # "originStickerFileString":Ljava/lang/String;
    :cond_5
    const-string v4, "DownLoaderManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDownloadFileMD5 false = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", file = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private checkersion(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v5, 0x0

    .line 965
    if-eqz p1, :cond_2

    .line 966
    invoke-static {p1}, Lcom/android/camera/effect/util/EffectGsonTool;->fromJsonEffectCDI(Ljava/lang/String;)Lcom/android/camera/effect/util/EffectCloudDataInfo;

    move-result-object v0

    .line 967
    .local v0, "effectCloudDataInfo":Lcom/android/camera/effect/util/EffectCloudDataInfo;
    if-eqz v0, :cond_2

    .line 968
    invoke-virtual {v0}, Lcom/android/camera/effect/util/EffectCloudDataInfo;->getVersion()I

    move-result v3

    .line 969
    .local v3, "versionNew":I
    const/4 v2, 0x0

    .line 971
    .local v2, "originalFileString":Ljava/lang/String;
    sget-object v6, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->STICKER:Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

    invoke-virtual {v6}, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->ordinal()I

    move-result v6

    if-ne p2, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cloud_sticker_data_original.json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 972
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cloud_sticker_data_original.json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/effect/util/EffectFileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 973
    if-eqz v2, :cond_2

    .line 974
    invoke-static {v2}, Lcom/android/camera/effect/util/EffectGsonTool;->fromJsonEffectCDI(Ljava/lang/String;)Lcom/android/camera/effect/util/EffectCloudDataInfo;

    move-result-object v1

    .line 975
    .local v1, "originalEffectCloudDataInfo":Lcom/android/camera/effect/util/EffectCloudDataInfo;
    if-eqz v1, :cond_2

    .line 976
    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectCloudDataInfo;->getVersion()I

    move-result v4

    .line 977
    .local v4, "versionOrigin":I
    if-gt v3, v4, :cond_2

    .line 997
    .end local v0    # "effectCloudDataInfo":Lcom/android/camera/effect/util/EffectCloudDataInfo;
    .end local v1    # "originalEffectCloudDataInfo":Lcom/android/camera/effect/util/EffectCloudDataInfo;
    .end local v2    # "originalFileString":Ljava/lang/String;
    .end local v3    # "versionNew":I
    .end local v4    # "versionOrigin":I
    :cond_0
    :goto_0
    return v5

    .line 982
    .restart local v0    # "effectCloudDataInfo":Lcom/android/camera/effect/util/EffectCloudDataInfo;
    .restart local v2    # "originalFileString":Ljava/lang/String;
    .restart local v3    # "versionNew":I
    :cond_1
    sget-object v6, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->ANIMOJI:Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

    invoke-virtual {v6}, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->ordinal()I

    move-result v6

    if-ne p2, v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cloud_animoji_data_original.json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 983
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cloud_animoji_data_original.json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/effect/util/EffectFileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 984
    if-eqz v2, :cond_2

    .line 985
    invoke-static {v2}, Lcom/android/camera/effect/util/EffectGsonTool;->fromJsonEffectCDI(Ljava/lang/String;)Lcom/android/camera/effect/util/EffectCloudDataInfo;

    move-result-object v1

    .line 986
    .restart local v1    # "originalEffectCloudDataInfo":Lcom/android/camera/effect/util/EffectCloudDataInfo;
    if-eqz v1, :cond_2

    .line 987
    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectCloudDataInfo;->getVersion()I

    move-result v4

    .line 988
    .restart local v4    # "versionOrigin":I
    if-le v3, v4, :cond_0

    .line 997
    .end local v0    # "effectCloudDataInfo":Lcom/android/camera/effect/util/EffectCloudDataInfo;
    .end local v1    # "originalEffectCloudDataInfo":Lcom/android/camera/effect/util/EffectCloudDataInfo;
    .end local v2    # "originalFileString":Ljava/lang/String;
    .end local v3    # "versionNew":I
    .end local v4    # "versionOrigin":I
    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private getHttpURLConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v4, 0xea60

    const/4 v3, 0x1

    .line 746
    if-nez p1, :cond_0

    .line 747
    const/4 v0, 0x0

    .line 781
    :goto_0
    return-object v0

    .line 751
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 754
    .local v1, "url":Ljava/net/URL;
    invoke-static {}, Lcom/android/camera/effect/download/DownLoaderManager;->trustAllHosts()V

    .line 755
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 758
    .local v0, "httpURLConnection":Ljavax/net/ssl/HttpsURLConnection;
    const-string v2, "POST"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 759
    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 760
    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 763
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 765
    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 766
    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 768
    const-string v2, "Content-type"

    const-string v3, "application/json;charset=UTF-8"

    invoke-virtual {v0, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v2, "Connection"

    const-string v3, "close"

    invoke-virtual {v0, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string v2, "User-agent"

    invoke-direct {p0}, Lcom/android/camera/effect/download/DownLoaderManager;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-virtual {v0, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 777
    invoke-static {v0}, Lcom/android/camera/effect/download/DownLoaderManager;->setHttpHeader(Ljava/net/HttpURLConnection;)V

    .line 779
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/camera/effect/download/DownLoaderManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    sget-object v0, Lcom/android/camera/effect/download/DownLoaderManager;->manager:Lcom/android/camera/effect/download/DownLoaderManager;

    if-nez v0, :cond_1

    .line 202
    const-class v1, Lcom/android/camera/effect/download/DownLoaderManager;

    monitor-enter v1

    .line 203
    :try_start_0
    sget-object v0, Lcom/android/camera/effect/download/DownLoaderManager;->manager:Lcom/android/camera/effect/download/DownLoaderManager;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/android/camera/effect/download/DownLoaderManager;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/download/DownLoaderManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/camera/effect/download/DownLoaderManager;->manager:Lcom/android/camera/effect/download/DownLoaderManager;

    .line 206
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_1
    sget-object v0, Lcom/android/camera/effect/download/DownLoaderManager;->manager:Lcom/android/camera/effect/download/DownLoaderManager;

    return-object v0

    .line 206
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getJsonPostRequest(I)Ljava/lang/String;
    .locals 6
    .param p1, "jsonType"    # I

    .prologue
    .line 1002
    iget-object v3, p0, Lcom/android/camera/effect/download/DownLoaderManager;->mApplicationContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 1003
    const/4 v3, 0x0

    .line 1052
    :goto_0
    return-object v3

    .line 1006
    :cond_0
    new-instance v0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;

    iget-object v3, p0, Lcom/android/camera/effect/download/DownLoaderManager;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;-><init>(Landroid/content/Context;)V

    .line 1007
    .local v0, "inforCollector":Lcom/android/camera/effect/download/InfoCollector/InfoCollector;
    invoke-virtual {v0}, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->getPhoneInfo()Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;

    move-result-object v2

    .line 1009
    .local v2, "phoneInfo":Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;
    new-instance v1, Lcom/android/camera/effect/download/JsonRequestBody;

    invoke-direct {v1}, Lcom/android/camera/effect/download/JsonRequestBody;-><init>()V

    .line 1013
    .local v1, "jsonRequestBody":Lcom/android/camera/effect/download/JsonRequestBody;
    iget-object v3, p0, Lcom/android/camera/effect/download/DownLoaderManager;->mApplicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/camera/effect/util/EffectUtil;->produceUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setUuid(Ljava/lang/String;)V

    .line 1014
    sget-object v3, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->STICKER:Lcom/android/camera/effect/download/DownLoaderManager$JsonType;

    invoke-virtual {v3}, Lcom/android/camera/effect/download/DownLoaderManager$JsonType;->ordinal()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 1015
    const-string v3, "CameraResource"

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setCategory(Ljava/lang/String;)V

    .line 1016
    const-string v3, "ThemeStickerShelf"

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setType(Ljava/lang/String;)V

    .line 1017
    const-string v3, "0001"

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setBranchVersion(Ljava/lang/String;)V

    .line 1025
    :goto_1
    iget-object v3, v2, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->ProductBrand:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setBrand(Ljava/lang/String;)V

    .line 1026
    iget-object v3, v2, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->Project:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setProject(Ljava/lang/String;)V

    .line 1027
    iget-object v3, v2, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->Model:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setModel(Ljava/lang/String;)V

    .line 1028
    iget-object v3, v2, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->Version:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setVersion(Ljava/lang/String;)V

    .line 1029
    iget-object v3, v2, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->Subversion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setSubVersion(Ljava/lang/String;)V

    .line 1030
    iget-object v3, v2, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->skuId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setSkuid(Ljava/lang/String;)V

    .line 1032
    iget-object v3, v2, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->DEVICEID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setDeviceId(Ljava/lang/String;)V

    .line 1034
    iget-object v3, v2, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->MCC:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setMcc1(Ljava/lang/String;)V

    .line 1035
    iget-object v3, v2, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->MNC:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setMnc1(Ljava/lang/String;)V

    .line 1036
    const-string v3, "466"

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setMcc2(Ljava/lang/String;)V

    .line 1037
    const-string v3, "92"

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setMnc2(Ljava/lang/String;)V

    .line 1039
    const-string v3, "UserRequest"

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setReason(Ljava/lang/String;)V

    .line 1040
    iget-object v3, p0, Lcom/android/camera/effect/download/DownLoaderManager;->mApplicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/camera/effect/util/EffectUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setAppVersion(Ljava/lang/String;)V

    .line 1041
    iget-object v3, p0, Lcom/android/camera/effect/download/DownLoaderManager;->mApplicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/camera/effect/util/EffectUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setAppName(Ljava/lang/String;)V

    .line 1043
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCNModel()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1044
    const-string v3, "cn"

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setRegion(Ljava/lang/String;)V

    .line 1050
    :goto_2
    const-string v3, "DownLoaderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jsonRequestBody = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/camera/effect/util/EffectGsonTool;->toJsonJsonRequestBody(Lcom/android/camera/effect/download/JsonRequestBody;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    invoke-static {v1}, Lcom/android/camera/effect/util/EffectGsonTool;->toJsonJsonRequestBody(Lcom/android/camera/effect/download/JsonRequestBody;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1019
    :cond_1
    const-string v3, "CameraResource"

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setCategory(Ljava/lang/String;)V

    .line 1020
    const-string v3, "AnimojiShelf"

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setType(Ljava/lang/String;)V

    .line 1021
    const-string v3, "0001"

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setBranchVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1046
    :cond_2
    const-string v3, "ww"

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/download/JsonRequestBody;->setRegion(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static getSignature()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1094
    const/4 v3, 0x0

    .line 1095
    .local v3, "signature":Ljava/lang/String;
    const-string v4, ""

    .line 1096
    .local v4, "signatureTmp":Ljava/lang/String;
    const-string v2, "ff7f44b327e7dbdf0a2fef35634a655c"

    .line 1097
    .local v2, "keySecret":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/effect/download/DownLoaderManager;->httpHeaderMap:Ljava/util/Map;

    const-string v7, "Version"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/camera/effect/download/DownLoaderManager;->httpHeaderMap:Ljava/util/Map;

    const-string v7, "AccessKeyId"

    .line 1098
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/camera/effect/download/DownLoaderManager;->httpHeaderMap:Ljava/util/Map;

    const-string v7, "SignatureMethod"

    .line 1099
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/camera/effect/download/DownLoaderManager;->httpHeaderMap:Ljava/util/Map;

    const-string v7, "TimeStamp"

    .line 1100
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/camera/effect/download/DownLoaderManager;->httpHeaderMap:Ljava/util/Map;

    const-string v7, "SignatureVersion"

    .line 1101
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/camera/effect/download/DownLoaderManager;->httpHeaderMap:Ljava/util/Map;

    const-string v7, "SignatureNonce"

    .line 1102
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1103
    const-string v5, "DownLoaderManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signatureTmp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    :try_start_0
    invoke-static {v4, v2}, Lcom/android/camera/effect/download/HMACSHA1;->HmacSHA1Encrypt(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 1106
    .local v1, "encodeByte":[B
    if-eqz v1, :cond_0

    .line 1107
    const/4 v5, 0x0

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1113
    .end local v1    # "encodeByte":[B
    :cond_0
    :goto_0
    const-string v5, "DownLoaderManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signature = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    return-object v3

    .line 1109
    :catch_0
    move-exception v0

    .line 1110
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "DownLoaderManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getUserAgent()Ljava/lang/String;
    .locals 24

    .prologue
    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager;->mApplicationContext:Landroid/content/Context;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 787
    const/4 v14, 0x0

    .line 828
    :goto_0
    return-object v14

    .line 790
    :cond_0
    new-instance v7, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager;->mApplicationContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;-><init>(Landroid/content/Context;)V

    .line 791
    .local v7, "inforCollector":Lcom/android/camera/effect/download/InfoCollector/InfoCollector;
    invoke-virtual {v7}, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->getPhoneInfo()Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;

    move-result-object v11

    .line 793
    .local v11, "phoneInfo":Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager;->mApplicationContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/camera/effect/util/EffectUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 794
    .local v12, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager;->mApplicationContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/camera/effect/util/EffectUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 795
    .local v13, "pvn":Ljava/lang/String;
    iget-object v6, v11, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->ProductBrand:Ljava/lang/String;

    .line 796
    .local v6, "bt":Ljava/lang/String;
    iget-object v0, v11, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->IncVersion:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 797
    .local v19, "sw":Ljava/lang/String;
    iget-object v8, v11, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->Language:Ljava/lang/String;

    .line 798
    .local v8, "lan":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager;->mApplicationContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/camera/effect/util/EffectUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 799
    .local v10, "net":Ljava/lang/String;
    iget-object v0, v11, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->SDKVersion:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 800
    .local v17, "sdkVersion":Ljava/lang/String;
    iget-object v0, v11, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->skuId:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 801
    .local v18, "skuId":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v11, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->MCC:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v11, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->MNC:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 803
    .local v9, "mc":Ljava/lang/String;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v20

    .line 804
    .local v20, "uid":Ljava/lang/String;
    iget-object v2, v11, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->IMEI:Ljava/lang/String;

    .line 805
    .local v2, "IMEI1":Ljava/lang/String;
    iget-object v3, v11, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->IMEI2:Ljava/lang/String;

    .line 806
    .local v3, "IMEI2":Ljava/lang/String;
    iget-object v5, v11, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->PSN:Ljava/lang/String;

    .line 807
    .local v5, "PSN":Ljava/lang/String;
    iget-object v4, v11, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->MEID:Ljava/lang/String;

    .line 808
    .local v4, "MEID":Ljava/lang/String;
    const-string v21, "N/A"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 809
    const-string v2, ""

    .line 811
    :cond_1
    const-string v21, "N/A"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 812
    const-string v3, ""

    .line 814
    :cond_2
    const-string v21, "N/A"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 815
    const-string v5, ""

    .line 817
    :cond_3
    const-string v21, "N/A"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 818
    const-string v4, ""

    .line 820
    :cond_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 821
    .local v15, "sd":Ljava/lang/String;
    const-string v21, "DownLoaderManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "sd = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-static {v15}, Lcom/android/camera/effect/util/EffectUtil;->Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 825
    .local v16, "sdencode":Ljava/lang/String;
    const-string v21, "CameraResource/1.0 Camera/1.0(PKG:%s; PVN:%s; BT:%s; SW:%s; LAN:%s; NET:%s; AAL:%s; SKU:%s; MC:%s; SD:%s)"

    const/16 v22, 0xa

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v12, v22, v23

    const/16 v23, 0x1

    aput-object v13, v22, v23

    const/16 v23, 0x2

    aput-object v6, v22, v23

    const/16 v23, 0x3

    aput-object v19, v22, v23

    const/16 v23, 0x4

    aput-object v8, v22, v23

    const/16 v23, 0x5

    aput-object v10, v22, v23

    const/16 v23, 0x6

    aput-object v17, v22, v23

    const/16 v23, 0x7

    aput-object v18, v22, v23

    const/16 v23, 0x8

    aput-object v9, v22, v23

    const/16 v23, 0x9

    aput-object v16, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 828
    .local v14, "ret":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private insertResultIntoDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "shelfId"    # Ljava/lang/String;
    .param p2, "resourceId"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/String;

    .prologue
    .line 1282
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1283
    .local v0, "values":Landroid/content/ContentValues;
    sget-object v1, Lcom/android/camera/effect/provider/EffectProviderContract$EffectTable;->COLUMN_SHELF_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    sget-object v1, Lcom/android/camera/effect/provider/EffectProviderContract$EffectTable;->COLUMN_RESOURCE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    sget-object v1, Lcom/android/camera/effect/provider/EffectProviderContract$EffectTable;->COLUMN_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    iget-object v1, p0, Lcom/android/camera/effect/download/DownLoaderManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/camera/effect/provider/EffectProviderContract;->URI_EFFECT:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1288
    const-string v1, "DownLoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result(insertResultIntoDB) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    return-void
.end method

.method public static isNeedDownloadAnimojiAgain(Ljava/lang/String;)Z
    .locals 3
    .param p0, "effectContent"    # Ljava/lang/String;

    .prologue
    .line 560
    const-string v0, "DownLoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sAnimojiDownloadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sAnimojiDownloadPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    const-string v0, "DownLoaderManager"

    const-string v1, "isNeedDownloadAnimojiAgain = false"

    invoke-static {v0, v1}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/4 v0, 0x0

    .line 568
    :goto_0
    return v0

    .line 567
    :cond_0
    const-string v0, "DownLoaderManager"

    const-string v1, "isNeedDownloadAnimojiAgain = true"

    invoke-static {v0, v1}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNeedDownloadResourceZipAgain(Ljava/lang/String;)Z
    .locals 3
    .param p0, "effectContent"    # Ljava/lang/String;

    .prologue
    .line 537
    const-string v0, "DownLoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sStickerDownloadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v0, "DownLoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sThemeDownloadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v0, "DownLoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sThemeDownloadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sStickerDownloadPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    invoke-static {v0}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sThemeDownloadPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-static {v0}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sThemeDownloadPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-static {v0}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    const-string v0, "DownLoaderManager"

    const-string v1, "isNeedDownloadResourceZipAgain = false"

    invoke-static {v0, v1}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const/4 v0, 0x0

    .line 554
    :goto_0
    return v0

    .line 553
    :cond_0
    const-string v0, "DownLoaderManager"

    const-string v1, "isNeedDownloadResourceZipAgain = true"

    invoke-static {v0, v1}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private readDataFromNetwork(Ljava/net/HttpURLConnection;)[B
    .locals 9
    .param p1, "httpsURLConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    const/4 v6, 0x0

    .line 1122
    if-nez p1, :cond_1

    .line 1147
    :cond_0
    :goto_0
    return-object v6

    .line 1126
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1127
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 1130
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1131
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 1132
    .local v5, "len":I
    const/16 v7, 0x400

    :try_start_1
    new-array v0, v7, [B

    .line 1133
    .local v0, "arr":[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 1134
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1135
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    goto :goto_1

    .line 1144
    .end local v0    # "arr":[B
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 1145
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "len":I
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    :try_start_2
    const-string v7, "DownLoaderManager"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1149
    if-eqz v1, :cond_2

    .line 1151
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1155
    const/4 v1, 0x0

    .line 1158
    :cond_2
    :goto_3
    if-eqz v3, :cond_0

    .line 1160
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1164
    const/4 v3, 0x0

    .line 1165
    goto :goto_0

    .line 1137
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "arr":[B
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "len":I
    :cond_3
    if-eqz v2, :cond_7

    .line 1138
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 1139
    const/4 v1, 0x0

    .line 1142
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result-object v6

    .line 1149
    if-eqz v1, :cond_4

    .line 1151
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1155
    const/4 v1, 0x0

    .line 1158
    :cond_4
    :goto_5
    if-eqz v3, :cond_0

    .line 1160
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1164
    const/4 v3, 0x0

    .line 1165
    goto :goto_0

    .line 1152
    :catch_1
    move-exception v4

    .line 1153
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1155
    const/4 v1, 0x0

    .line 1156
    goto :goto_5

    .line 1155
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    const/4 v1, 0x0

    throw v6

    .line 1161
    :catch_2
    move-exception v4

    .line 1162
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1164
    const/4 v3, 0x0

    .line 1165
    goto :goto_0

    .line 1164
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    const/4 v3, 0x0

    throw v6

    .line 1152
    .end local v0    # "arr":[B
    .end local v5    # "len":I
    .restart local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 1153
    :try_start_b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1155
    const/4 v1, 0x0

    .line 1156
    goto :goto_3

    .line 1155
    :catchall_2
    move-exception v6

    const/4 v1, 0x0

    throw v6

    .line 1161
    :catch_4
    move-exception v4

    .line 1162
    :try_start_c
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1164
    const/4 v3, 0x0

    .line 1165
    goto :goto_0

    .line 1164
    :catchall_3
    move-exception v6

    const/4 v3, 0x0

    throw v6

    .line 1149
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v6

    :goto_6
    if-eqz v1, :cond_5

    .line 1151
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 1155
    const/4 v1, 0x0

    .line 1158
    :cond_5
    :goto_7
    if-eqz v3, :cond_6

    .line 1160
    :try_start_e
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 1164
    const/4 v3, 0x0

    :cond_6
    :goto_8
    throw v6

    .line 1152
    :catch_5
    move-exception v4

    .line 1153
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 1155
    const/4 v1, 0x0

    .line 1156
    goto :goto_7

    .line 1155
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v6

    const/4 v1, 0x0

    throw v6

    .line 1161
    :catch_6
    move-exception v4

    .line 1162
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 1164
    const/4 v3, 0x0

    .line 1165
    goto :goto_8

    .line 1164
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_6
    move-exception v6

    const/4 v3, 0x0

    throw v6

    .line 1149
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "len":I
    :catchall_7
    move-exception v6

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 1144
    .end local v5    # "len":I
    :catch_7
    move-exception v4

    goto :goto_2

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "arr":[B
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "len":I
    :cond_7
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4
.end method

.method private static setHttpHeader(Ljava/net/HttpURLConnection;)V
    .locals 4
    .param p0, "httpURLConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 1082
    sget-object v1, Lcom/android/camera/effect/download/DownLoaderManager;->httpHeaderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1083
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/camera/effect/download/DownLoaderManager;->httpHeaderMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1086
    .end local v0    # "key":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/download/DownLoaderManager;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1087
    const-string v1, "Signature"

    invoke-static {}, Lcom/android/camera/effect/download/DownLoaderManager;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    :goto_1
    return-void

    .line 1089
    :cond_1
    const-string v1, "Signature"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setURL()V
    .locals 5

    .prologue
    .line 157
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCNModel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/effect/download/DownLoaderManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "effect_app1_2018_3_29.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-static {v1}, Lcom/android/camera/effect/util/EffectFileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "data":Ljava/lang/String;
    const-string v2, "IT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    const-string v2, "https://drmssp-no-tw-it.c2dms.com/drms/api/v1/shelfs/provisioning"

    sput-object v2, Lcom/android/camera/effect/download/DownLoaderManager;->BASE_URL:Ljava/lang/String;

    .line 164
    const-string v2, "DownLoaderManager"

    const-string v3, "IT"

    invoke-static {v2, v3}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/camera/effect/download/DownLoaderManager;->BASE_URL:Ljava/lang/String;

    sput-object v2, Lcom/android/camera/effect/download/DownLoaderManager;->STICKER_JASON_URL_V1:Ljava/lang/String;

    .line 192
    sget-object v2, Lcom/android/camera/effect/download/DownLoaderManager;->BASE_URL:Ljava/lang/String;

    sput-object v2, Lcom/android/camera/effect/download/DownLoaderManager;->ANIMOJI_JASON_URL_V1:Ljava/lang/String;

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/effect/download/DownLoaderManager;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/results"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/camera/effect/download/DownLoaderManager;->POST_RESULT_URL_V1:Ljava/lang/String;

    .line 195
    const-string v2, "DownLoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STICKER_JASON_URL_V1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/effect/download/DownLoaderManager;->STICKER_JASON_URL_V1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v2, "DownLoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANIMOJI_JASON_URL_V1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/effect/download/DownLoaderManager;->ANIMOJI_JASON_URL_V1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v2, "DownLoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "POST_RESULT_URL_V1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/effect/download/DownLoaderManager;->POST_RESULT_URL_V1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void

    .line 165
    .restart local v0    # "data":Ljava/lang/String;
    :cond_1
    const-string v2, "BR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    const-string v2, "https://drmssp-no-tw-br.c2dms.com/drms/api/v1/shelfs/provisioning"

    sput-object v2, Lcom/android/camera/effect/download/DownLoaderManager;->BASE_URL:Ljava/lang/String;

    .line 167
    const-string v2, "DownLoaderManager"

    const-string v3, "BR"

    invoke-static {v2, v3}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    :cond_2
    const-string v2, "https://drmssp-no-ww.ncs-cloud.com.cn/drms/api/v1/shelfs/provisioning"

    sput-object v2, Lcom/android/camera/effect/download/DownLoaderManager;->BASE_URL:Ljava/lang/String;

    .line 170
    const-string v2, "DownLoaderManager"

    const-string v3, "PRODUCT"

    invoke-static {v2, v3}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 175
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/effect/download/DownLoaderManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "effect_app1_2018_3_29.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .restart local v1    # "filePath":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-static {v1}, Lcom/android/camera/effect/util/EffectFileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .restart local v0    # "data":Ljava/lang/String;
    const-string v2, "IT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 179
    const-string v2, "https://drmssp-no-tw-it.c2dms.com/drms/api/v1/shelfs/provisioning"

    sput-object v2, Lcom/android/camera/effect/download/DownLoaderManager;->BASE_URL:Ljava/lang/String;

    .line 180
    const-string v2, "DownLoaderManager"

    const-string v3, "IT"

    invoke-static {v2, v3}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_4
    const-string v2, "BR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 182
    const-string v2, "https://drmssp-no-tw-br.c2dms.com/drms/api/v1/shelfs/provisioning"

    sput-object v2, Lcom/android/camera/effect/download/DownLoaderManager;->BASE_URL:Ljava/lang/String;

    .line 183
    const-string v2, "DownLoaderManager"

    const-string v3, "BR"

    invoke-static {v2, v3}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :cond_5
    const-string v2, "https://drmssp-no-ww.ncs-cloud.com.cn/drms/api/v1/shelfs/provisioning"

    sput-object v2, Lcom/android/camera/effect/download/DownLoaderManager;->BASE_URL:Ljava/lang/String;

    .line 186
    const-string v2, "DownLoaderManager"

    const-string v3, "PRODUCT"

    invoke-static {v2, v3}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static trustAllHosts()V
    .locals 5

    .prologue
    .line 722
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/camera/effect/download/DownLoaderManager$3;

    invoke-direct {v4}, Lcom/android/camera/effect/download/DownLoaderManager$3;-><init>()V

    aput-object v4, v2, v3

    .line 733
    .local v2, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 734
    .local v1, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 735
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    .end local v1    # "sc":Ljavax/net/ssl/SSLContext;
    :goto_0
    return-void

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DownLoaderManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private writeDataToDisk([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "body"    # [B
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "dirPath"    # Ljava/lang/String;

    .prologue
    .line 629
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 630
    :cond_0
    const/4 v10, 0x0

    .line 682
    :cond_1
    :goto_0
    return v10

    .line 639
    :cond_2
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 640
    .local v9, "zipPath":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "temp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 642
    .local v7, "tempPath":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/camera/effect/util/EffectFileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 643
    invoke-static {v7}, Lcom/android/camera/effect/util/EffectFileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 645
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    .local v8, "tempZipFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 648
    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 651
    .local v4, "outputStream":Ljava/io/OutputStream;
    const/16 v10, 0x1000

    :try_start_1
    new-array v1, v10, [B

    .line 653
    .local v1, "fileReader":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 654
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 657
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v5, "outputStream":Ljava/io/OutputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 658
    .local v6, "read":I
    const/4 v10, -0x1

    if-ne v6, v10, :cond_4

    .line 665
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 666
    invoke-static {v7, v9}, Lcom/android/camera/effect/util/EffectFileUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 667
    const/4 v10, 0x1

    .line 672
    if-eqz v3, :cond_3

    .line 673
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 676
    :cond_3
    if-eqz v5, :cond_1

    .line 677
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 680
    .end local v1    # "fileReader":[B
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .end local v6    # "read":I
    .end local v7    # "tempPath":Ljava/lang/String;
    .end local v8    # "tempZipFile":Ljava/io/File;
    .end local v9    # "zipPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "DownLoaderManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const/4 v10, 0x0

    goto :goto_0

    .line 662
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fileReader":[B
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "read":I
    .restart local v7    # "tempPath":Ljava/lang/String;
    .restart local v8    # "tempZipFile":Ljava/io/File;
    .restart local v9    # "zipPath":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    :try_start_5
    invoke-virtual {v5, v1, v10, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 668
    .end local v6    # "read":I
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    move-object v2, v3

    .line 669
    .end local v1    # "fileReader":[B
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :goto_2
    :try_start_6
    const-string v10, "DownLoaderManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 670
    const/4 v10, 0x0

    .line 672
    if-eqz v2, :cond_5

    .line 673
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 676
    :cond_5
    if-eqz v4, :cond_1

    .line 677
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_0

    .line 672
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v2, :cond_6

    .line 673
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 676
    :cond_6
    if-eqz v4, :cond_7

    .line 677
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_7
    throw v10
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 672
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "fileReader":[B
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v10

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 668
    .end local v1    # "fileReader":[B
    :catch_2
    move-exception v0

    goto :goto_2

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "fileReader":[B
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private writeFileToDisk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "dirPath"    # Ljava/lang/String;

    .prologue
    .line 579
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 580
    .local v9, "zipPath":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "temp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 582
    .local v7, "tempPath":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/camera/effect/util/EffectFileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 583
    invoke-static {v7}, Lcom/android/camera/effect/util/EffectFileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 585
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 587
    .local v8, "tempZipFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 588
    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 591
    .local v4, "outputStream":Ljava/io/OutputStream;
    const/16 v10, 0x1000

    :try_start_1
    new-array v1, v10, [B

    .line 593
    .local v1, "fileReader":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 597
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v5, "outputStream":Ljava/io/OutputStream;
    :goto_0
    :try_start_3
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 598
    .local v6, "read":I
    const/4 v10, -0x1

    if-ne v6, v10, :cond_2

    .line 605
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 606
    invoke-static {v7, v9}, Lcom/android/camera/effect/util/EffectFileUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 607
    const/4 v10, 0x1

    .line 612
    if-eqz v3, :cond_0

    .line 613
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 616
    :cond_0
    if-eqz v5, :cond_1

    .line 617
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 622
    .end local v1    # "fileReader":[B
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .end local v6    # "read":I
    .end local v7    # "tempPath":Ljava/lang/String;
    .end local v8    # "tempZipFile":Ljava/io/File;
    .end local v9    # "zipPath":Ljava/lang/String;
    :cond_1
    :goto_1
    return v10

    .line 602
    .restart local v1    # "fileReader":[B
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "read":I
    .restart local v7    # "tempPath":Ljava/lang/String;
    .restart local v8    # "tempZipFile":Ljava/io/File;
    .restart local v9    # "zipPath":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    :try_start_5
    invoke-virtual {v5, v1, v10, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 608
    .end local v6    # "read":I
    :catch_0
    move-exception v0

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    move-object v2, v3

    .line 609
    .end local v1    # "fileReader":[B
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :goto_2
    :try_start_6
    const-string v10, "DownLoaderManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 610
    const/4 v10, 0x0

    .line 612
    if-eqz v2, :cond_3

    .line 613
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 616
    :cond_3
    if-eqz v4, :cond_1

    .line 617
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 620
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .end local v7    # "tempPath":Ljava/lang/String;
    .end local v8    # "tempZipFile":Ljava/io/File;
    .end local v9    # "zipPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 621
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "DownLoaderManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const/4 v10, 0x0

    goto :goto_1

    .line 612
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v7    # "tempPath":Ljava/lang/String;
    .restart local v8    # "tempZipFile":Ljava/io/File;
    .restart local v9    # "zipPath":Ljava/lang/String;
    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v2, :cond_4

    .line 613
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 616
    :cond_4
    if-eqz v4, :cond_5

    .line 617
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_5
    throw v10
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 612
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "fileReader":[B
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v10

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 608
    .end local v1    # "fileReader":[B
    :catch_2
    move-exception v0

    goto :goto_2

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "fileReader":[B
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_2
.end method


# virtual methods
.method public downloadAnimojiFileRunnable(Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "itemData"    # Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    .prologue
    .line 286
    new-instance v0, Lcom/android/camera/effect/download/DownLoaderManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/effect/download/DownLoaderManager$1;-><init>(Lcom/android/camera/effect/download/DownLoaderManager;Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;)V

    return-object v0
.end method

.method public downloadJasonRunnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "jsonNotifyUI"    # Ljava/lang/String;
    .param p2, "jsonUrl"    # Ljava/lang/String;
    .param p3, "jsonName"    # Ljava/lang/String;

    .prologue
    .line 835
    new-instance v0, Lcom/android/camera/effect/download/DownLoaderManager$4;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/camera/effect/download/DownLoaderManager$4;-><init>(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public downloadPostResultRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 1269
    new-instance v0, Lcom/android/camera/effect/download/DownLoaderManager$5;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/download/DownLoaderManager$5;-><init>(Lcom/android/camera/effect/download/DownLoaderManager;)V

    return-object v0
.end method

.method public downloadZIPRunnable(Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "itemData"    # Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 373
    new-instance v0, Lcom/android/camera/effect/download/DownLoaderManager$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/camera/effect/download/DownLoaderManager$2;-><init>(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;)V

    return-object v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public executePostResultRunnable()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->postResultExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->postResultExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->postResultExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0}, Lcom/android/camera/effect/download/DownLoaderManager;->downloadPostResultRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 278
    :cond_0
    return-void
.end method

.method public executeWebAnimojiDownRunnable(Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;)V
    .locals 2
    .param p1, "itemData"    # Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->animojiExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->animojiExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->animojiExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/download/DownLoaderManager;->downloadAnimojiFileRunnable(Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 250
    :cond_0
    return-void
.end method

.method public executeWebStickerFileDownRunnable(Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;Ljava/lang/String;)V
    .locals 2
    .param p1, "itemData"    # Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/download/DownLoaderManager;->downloadZIPRunnable(Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 271
    :cond_0
    return-void
.end method

.method public executeWebStickerJasonDownRunnable()V
    .locals 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->jsonExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->jsonExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->jsonExecutor:Ljava/util/concurrent/ExecutorService;

    const-string v1, "notify_ui_sticker_json_download"

    sget-object v2, Lcom/android/camera/effect/download/DownLoaderManager;->STICKER_JASON_URL_V1:Ljava/lang/String;

    const-string v3, "cloud_sticker_data_tmp.json"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/effect/download/DownLoaderManager;->downloadJasonRunnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 259
    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->jsonExecutor:Ljava/util/concurrent/ExecutorService;

    const-string v1, "notify_ui_animoji_json_download"

    sget-object v2, Lcom/android/camera/effect/download/DownLoaderManager;->ANIMOJI_JASON_URL_V1:Ljava/lang/String;

    const-string v3, "cloud_animoji_data_tmp.json"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/effect/download/DownLoaderManager;->downloadJasonRunnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 261
    :cond_0
    return-void
.end method

.method public isMainThread()Z
    .locals 2

    .prologue
    .line 281
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized postRequest()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1173
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/effect/download/DownLoaderManager;->mApplicationContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 1266
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1177
    :cond_1
    :try_start_1
    new-instance v11, Lcom/android/camera/effect/download/ResultPostData;

    invoke-direct {v11}, Lcom/android/camera/effect/download/ResultPostData;-><init>()V

    .line 1178
    .local v11, "data":Lcom/android/camera/effect/download/ResultPostData;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/effect/download/DownLoaderManager;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/effect/util/EffectUtil;->produceUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/android/camera/effect/download/ResultPostData;->setUUID(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1179
    const/4 v10, 0x0

    .line 1181
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/effect/download/DownLoaderManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/camera/effect/provider/EffectProviderContract;->URI_EFFECT:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1183
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1184
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move/from16 v0, v17

    if-ge v0, v1, :cond_3

    .line 1185
    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1187
    new-instance v20, Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;

    invoke-direct/range {v20 .. v20}, Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;-><init>()V

    .line 1188
    .local v20, "resultPostDataBean":Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;
    sget-object v1, Lcom/android/camera/effect/provider/EffectProviderContract$EffectTable;->COLUMN_SHELF_ID:Ljava/lang/String;

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;->setShelfId(Ljava/lang/String;)V

    .line 1189
    sget-object v1, Lcom/android/camera/effect/provider/EffectProviderContract$EffectTable;->COLUMN_RESOURCE_ID:Ljava/lang/String;

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;->setResourceId(Ljava/lang/String;)V

    .line 1190
    sget-object v1, Lcom/android/camera/effect/provider/EffectProviderContract$EffectTable;->COLUMN_RESULT:Ljava/lang/String;

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;->setResult(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {v11}, Lcom/android/camera/effect/download/ResultPostData;->getResults()Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1184
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1197
    .end local v17    # "i":I
    .end local v20    # "resultPostDataBean":Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;
    :cond_2
    if-eqz v10, :cond_0

    .line 1198
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1199
    const/4 v10, 0x0

    goto :goto_0

    .line 1197
    .restart local v17    # "i":I
    :cond_3
    if-eqz v10, :cond_4

    .line 1198
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1199
    const/4 v10, 0x0

    .line 1203
    :cond_4
    invoke-static {v11}, Lcom/android/camera/effect/util/EffectGsonTool;->toJsonResultPostData(Lcom/android/camera/effect/download/ResultPostData;)Ljava/lang/String;

    move-result-object v18

    .line 1205
    .local v18, "postDataString":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1206
    .local v16, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/4 v12, 0x0

    .line 1207
    .local v12, "dos":Ljava/io/DataOutputStream;
    const/4 v8, 0x0

    .line 1208
    .local v8, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 1209
    .local v7, "bis":Ljava/io/BufferedInputStream;
    const/4 v15, 0x0

    .line 1211
    .local v15, "errorInputStream":Ljava/io/InputStream;
    const-string v1, "DownLoaderManager"

    const-string v2, "postResult start!!"

    invoke-static {v1, v2}, Lcom/android/camera/effect/util/EffectLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1214
    :try_start_4
    sget-object v1, Lcom/android/camera/effect/download/DownLoaderManager;->POST_RESULT_URL_V1:Ljava/lang/String;

    const-string v2, "POST"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/effect/download/DownLoaderManager;->getHttpURLConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v16

    .line 1215
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 1216
    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v9, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    .line 1220
    .end local v12    # "dos":Ljava/io/DataOutputStream;
    .local v13, "dos":Ljava/io/DataOutputStream;
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 1222
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->flush()V

    .line 1223
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V

    .line 1224
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    .line 1225
    .local v19, "resultCode":I
    const-string v1, "DownLoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultCode(postRequest) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const/16 v1, 0xc8

    move/from16 v0, v19

    if-ne v1, v0, :cond_9

    .line 1229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/effect/download/DownLoaderManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/camera/effect/provider/EffectProviderContract;->URI_EFFECT:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    .line 1239
    :goto_2
    if-eqz v16, :cond_5

    .line 1240
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1243
    :cond_5
    if-eqz v15, :cond_6

    .line 1244
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1245
    const/4 v15, 0x0

    .line 1247
    :cond_6
    if-eqz v7, :cond_7

    .line 1249
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1253
    const/4 v7, 0x0

    .line 1256
    :cond_7
    :goto_3
    if-eqz v9, :cond_11

    .line 1258
    :try_start_9
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1262
    const/4 v8, 0x0

    .end local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    :goto_4
    move-object v12, v13

    .end local v13    # "dos":Ljava/io/DataOutputStream;
    .restart local v12    # "dos":Ljava/io/DataOutputStream;
    goto/16 :goto_0

    .line 1197
    .end local v7    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "dos":Ljava/io/DataOutputStream;
    .end local v15    # "errorInputStream":Ljava/io/InputStream;
    .end local v16    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v17    # "i":I
    .end local v18    # "postDataString":Ljava/lang/String;
    .end local v19    # "resultCode":I
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_8

    .line 1198
    :try_start_a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1199
    const/4 v10, 0x0

    :cond_8
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1173
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "data":Lcom/android/camera/effect/download/ResultPostData;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1231
    .restart local v7    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "data":Lcom/android/camera/effect/download/ResultPostData;
    .restart local v13    # "dos":Ljava/io/DataOutputStream;
    .restart local v15    # "errorInputStream":Ljava/io/InputStream;
    .restart local v16    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local v17    # "i":I
    .restart local v18    # "postDataString":Ljava/lang/String;
    .restart local v19    # "resultCode":I
    :cond_9
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v15

    .line 1232
    const-string v1, "DownLoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorMessage(postRequest) == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const-string v1, "DownLoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorMessage(postRequest) == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v15}, Lcom/android/camera/effect/util/EffectUtil;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    goto :goto_2

    .line 1235
    .end local v19    # "resultCode":I
    :catch_0
    move-exception v14

    move-object v8, v9

    .end local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v12, v13

    .line 1236
    .end local v13    # "dos":Ljava/io/DataOutputStream;
    .restart local v12    # "dos":Ljava/io/DataOutputStream;
    .local v14, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_c
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 1237
    const-string v1, "DownLoaderManager"

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 1239
    if-eqz v16, :cond_a

    .line 1240
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1243
    :cond_a
    if-eqz v15, :cond_b

    .line 1244
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1245
    const/4 v15, 0x0

    .line 1247
    :cond_b
    if-eqz v7, :cond_c

    .line 1249
    :try_start_e
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1253
    const/4 v7, 0x0

    .line 1256
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_6
    if-eqz v8, :cond_0

    .line 1258
    :try_start_f
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 1262
    const/4 v8, 0x0

    .line 1263
    goto/16 :goto_0

    .line 1250
    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "dos":Ljava/io/DataOutputStream;
    .restart local v19    # "resultCode":I
    :catch_1
    move-exception v14

    .line 1251
    .local v14, "e":Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1253
    const/4 v7, 0x0

    .line 1254
    goto :goto_3

    .line 1253
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v1

    const/4 v7, 0x0

    :try_start_11
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1259
    :catch_2
    move-exception v14

    .line 1260
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_12
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 1262
    const/4 v8, 0x0

    .line 1263
    .end local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4

    .line 1262
    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_3
    move-exception v1

    const/4 v8, 0x0

    .end local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_13
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1250
    .end local v13    # "dos":Ljava/io/DataOutputStream;
    .end local v19    # "resultCode":I
    .restart local v12    # "dos":Ljava/io/DataOutputStream;
    .local v14, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v14

    .line 1251
    .local v14, "e":Ljava/io/IOException;
    :try_start_14
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 1253
    const/4 v7, 0x0

    .line 1254
    goto :goto_6

    .line 1253
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v1

    const/4 v7, 0x0

    :try_start_15
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 1259
    :catch_4
    move-exception v14

    .line 1260
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_16
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 1262
    const/4 v8, 0x0

    .line 1263
    goto/16 :goto_0

    .line 1262
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v1

    const/4 v8, 0x0

    :try_start_17
    throw v1

    .line 1239
    :catchall_6
    move-exception v1

    :goto_7
    if-eqz v16, :cond_d

    .line 1240
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1243
    :cond_d
    if-eqz v15, :cond_e

    .line 1244
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 1245
    const/4 v15, 0x0

    .line 1247
    :cond_e
    if-eqz v7, :cond_f

    .line 1249
    :try_start_18
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_5
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 1253
    const/4 v7, 0x0

    .line 1256
    :cond_f
    :goto_8
    if-eqz v8, :cond_10

    .line 1258
    :try_start_19
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 1262
    const/4 v8, 0x0

    :cond_10
    :goto_9
    :try_start_1a
    throw v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 1250
    :catch_5
    move-exception v14

    .line 1251
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_1b
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 1253
    const/4 v7, 0x0

    .line 1254
    goto :goto_8

    .line 1253
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_7
    move-exception v1

    const/4 v7, 0x0

    :try_start_1c
    throw v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 1259
    :catch_6
    move-exception v14

    .line 1260
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_1d
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    .line 1262
    const/4 v8, 0x0

    .line 1263
    goto :goto_9

    .line 1262
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_8
    move-exception v1

    const/4 v8, 0x0

    :try_start_1e
    throw v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 1239
    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_9
    move-exception v1

    move-object v8, v9

    .end local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "dos":Ljava/io/DataOutputStream;
    :catchall_a
    move-exception v1

    move-object v8, v9

    .end local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v12, v13

    .end local v13    # "dos":Ljava/io/DataOutputStream;
    .restart local v12    # "dos":Ljava/io/DataOutputStream;
    goto :goto_7

    .line 1235
    :catch_7
    move-exception v14

    goto :goto_5

    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_8
    move-exception v14

    move-object v8, v9

    .end local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5

    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "dos":Ljava/io/DataOutputStream;
    .restart local v19    # "resultCode":I
    :cond_11
    move-object v8, v9

    .end local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v12, v13

    .end local v13    # "dos":Ljava/io/DataOutputStream;
    .restart local v12    # "dos":Ljava/io/DataOutputStream;
    goto/16 :goto_0
.end method

.method public sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "downloadFileName"    # Ljava/lang/String;

    .prologue
    .line 689
    new-instance v0, Lcom/android/camera/effect/download/BeautyDownEvent;

    invoke-direct {v0}, Lcom/android/camera/effect/download/BeautyDownEvent;-><init>()V

    .line 690
    .local v0, "event":Lcom/android/camera/effect/download/BeautyDownEvent;
    iput p2, v0, Lcom/android/camera/effect/download/BeautyDownEvent;->status:I

    .line 691
    iput-object p1, v0, Lcom/android/camera/effect/download/BeautyDownEvent;->titleChinese:Ljava/lang/String;

    .line 692
    iput-object p3, v0, Lcom/android/camera/effect/download/BeautyDownEvent;->downloadFileName:Ljava/lang/String;

    .line 693
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 695
    packed-switch p2, :pswitch_data_0

    .line 712
    :goto_0
    return-void

    .line 697
    :pswitch_0
    const-string v1, "DownLoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBeautyDownEvent key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status = STATE_PRELOAD , downloadFileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 700
    :pswitch_1
    const-string v1, "DownLoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBeautyDownEvent key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status = STATE_NONE , downloadFileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :pswitch_2
    const-string v1, "DownLoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBeautyDownEvent key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status = STATE_DOWNLOADING , downloadFileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 706
    :pswitch_3
    const-string v1, "DownLoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBeautyDownEvent key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status = STATE_DOWNLOADED , downloadFileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 709
    :pswitch_4
    const-string v1, "DownLoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBeautyDownEvent key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status = STATE_DOWNLOAD_ERROR , downloadFileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/util/EffectLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 695
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 217
    iput-object v1, p0, Lcom/android/camera/effect/download/DownLoaderManager;->executor:Ljava/util/concurrent/ExecutorService;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->jsonExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->jsonExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->jsonExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 221
    iput-object v1, p0, Lcom/android/camera/effect/download/DownLoaderManager;->jsonExecutor:Ljava/util/concurrent/ExecutorService;

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->animojiExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->animojiExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->animojiExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 225
    iput-object v1, p0, Lcom/android/camera/effect/download/DownLoaderManager;->animojiExecutor:Ljava/util/concurrent/ExecutorService;

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->postResultExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->postResultExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/android/camera/effect/download/DownLoaderManager;->postResultExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 229
    iput-object v1, p0, Lcom/android/camera/effect/download/DownLoaderManager;->postResultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 231
    :cond_3
    sput-object v1, Lcom/android/camera/effect/download/DownLoaderManager;->manager:Lcom/android/camera/effect/download/DownLoaderManager;

    .line 232
    return-void
.end method
