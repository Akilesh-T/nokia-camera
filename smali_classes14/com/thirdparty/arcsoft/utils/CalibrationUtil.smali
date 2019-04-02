.class public Lcom/thirdparty/arcsoft/utils/CalibrationUtil;
.super Ljava/lang/Object;
.source "CalibrationUtil.java"


# static fields
.field private static final CALBRATION_FOLDER:Ljava/lang/String; = "calibration/"

.field private static final FILE_NAME:Ljava/lang/String; = "calibration.data"

.field private static final TAG:Ljava/lang/String;

.field private static mCalibrationData:[B

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/thirdparty/arcsoft/utils/CalibrationUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/thirdparty/arcsoft/utils/CalibrationUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/thirdparty/arcsoft/utils/CalibrationUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sput-object p0, Lcom/thirdparty/arcsoft/utils/CalibrationUtil;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public static instance()Lcom/thirdparty/arcsoft/utils/CalibrationUtil;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/thirdparty/arcsoft/utils/CalibrationUtil;->sInstance:Lcom/thirdparty/arcsoft/utils/CalibrationUtil;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/thirdparty/arcsoft/utils/CalibrationUtil;

    invoke-direct {v0}, Lcom/thirdparty/arcsoft/utils/CalibrationUtil;-><init>()V

    sput-object v0, Lcom/thirdparty/arcsoft/utils/CalibrationUtil;->sInstance:Lcom/thirdparty/arcsoft/utils/CalibrationUtil;

    .line 34
    :cond_0
    sget-object v0, Lcom/thirdparty/arcsoft/utils/CalibrationUtil;->sInstance:Lcom/thirdparty/arcsoft/utils/CalibrationUtil;

    return-object v0
.end method


# virtual methods
.method public getCalibrationData()[B
    .locals 16

    .prologue
    .line 91
    sget-object v12, Lcom/thirdparty/arcsoft/utils/CalibrationUtil;->mCalibrationData:[B

    if-nez v12, :cond_4

    .line 92
    sget-object v12, Lcom/thirdparty/arcsoft/utils/CalibrationUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 93
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    const/4 v10, 0x0

    .line 94
    .local v10, "inputStream":Ljava/io/InputStream;
    const-string v0, "mwc_calibration_data"

    .line 95
    .local v0, "assetFolder":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".bin"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "calibrationFileName":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".bin"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "calibrationFilePath":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/default.bin"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "defaultCalibrationFilePath":Ljava/lang/String;
    const/4 v9, 0x0

    .line 100
    .local v9, "hasMatchedCalibData":Z
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 101
    .local v8, "fileNames":[Ljava/lang/String;
    array-length v13, v8

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v13, :cond_1

    aget-object v11, v8, v12

    .line 102
    .local v11, "s":Ljava/lang/String;
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 103
    sget-object v14, Lcom/thirdparty/arcsoft/utils/CalibrationUtil;->TAG:Ljava/lang/String;

    const-string v15, "Match MWC calibration data"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    const/4 v9, 0x1

    .line 101
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 107
    .end local v8    # "fileNames":[Ljava/lang/String;
    .end local v11    # "s":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 108
    .local v6, "e":Ljava/lang/Exception;
    sget-object v12, Lcom/thirdparty/arcsoft/utils/CalibrationUtil;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read asset folder "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " failed, Error = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    if-nez v9, :cond_2

    .line 112
    sget-object v12, Lcom/thirdparty/arcsoft/utils/CalibrationUtil;->TAG:Ljava/lang/String;

    const-string v13, "No matched calibration data, use default"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    move-object v3, v5

    .line 116
    :cond_2
    const/4 v4, 0x0

    .line 118
    .local v4, "data":[B
    :try_start_1
    sget-object v12, Lcom/thirdparty/arcsoft/utils/CalibrationUtil;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read calibration data from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 120
    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v12

    new-array v4, v12, [B

    .line 122
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    .line 123
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    const/4 v10, 0x0

    .line 136
    :cond_3
    :goto_1
    sput-object v4, Lcom/thirdparty/arcsoft/utils/CalibrationUtil;->mCalibrationData:[B

    .line 138
    .end local v0    # "assetFolder":Ljava/lang/String;
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "calibrationFileName":Ljava/lang/String;
    .end local v3    # "calibrationFilePath":Ljava/lang/String;
    .end local v4    # "data":[B
    .end local v5    # "defaultCalibrationFilePath":Ljava/lang/String;
    .end local v9    # "hasMatchedCalibData":Z
    .end local v10    # "inputStream":Ljava/io/InputStream;
    :cond_4
    sget-object v12, Lcom/thirdparty/arcsoft/utils/CalibrationUtil;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mCalibrationData: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/thirdparty/arcsoft/utils/CalibrationUtil;->mCalibrationData:[B

    array-length v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v12, Lcom/thirdparty/arcsoft/utils/CalibrationUtil;->mCalibrationData:[B

    return-object v12

    .line 125
    .restart local v0    # "assetFolder":Ljava/lang/String;
    .restart local v1    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v2    # "calibrationFileName":Ljava/lang/String;
    .restart local v3    # "calibrationFilePath":Ljava/lang/String;
    .restart local v4    # "data":[B
    .restart local v5    # "defaultCalibrationFilePath":Ljava/lang/String;
    .restart local v9    # "hasMatchedCalibData":Z
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v6

    .line 126
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-object v12, Lcom/thirdparty/arcsoft/utils/CalibrationUtil;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read calibration data failed, Error = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-eqz v10, :cond_3

    .line 129
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 133
    :goto_2
    const/4 v10, 0x0

    goto :goto_1

    .line 130
    :catch_2
    move-exception v7

    .line 131
    .local v7, "e1":Ljava/io/IOException;
    sget-object v12, Lcom/thirdparty/arcsoft/utils/CalibrationUtil;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "inputStream.close Error = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
