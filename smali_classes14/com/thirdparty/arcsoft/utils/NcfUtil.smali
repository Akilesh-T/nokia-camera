.class public Lcom/thirdparty/arcsoft/utils/NcfUtil;
.super Ljava/lang/Object;
.source "NcfUtil.java"


# static fields
.field private static final BACK_CAM_FOLDER:Ljava/lang/String; = "rear/"

.field private static final FRONT_CAM_FOLDER:Ljava/lang/String; = "front/"

.field private static final ISO_C1_FRONT_STEPS:[I

.field private static final ISO_C1_REAR_STEPS:[I

.field private static final NCF_FOLDER:Ljava/lang/String; = "ncf/"

.field private static final NCF_POSFIX:Ljava/lang/String; = ".ncf"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/thirdparty/arcsoft/utils/NcfUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/thirdparty/arcsoft/utils/NcfUtil;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/thirdparty/arcsoft/utils/NcfUtil;->ISO_C1_FRONT_STEPS:[I

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/thirdparty/arcsoft/utils/NcfUtil;->ISO_C1_REAR_STEPS:[I

    return-void

    .line 29
    nop

    :array_0
    .array-data 4
        0x0
        0x320
        0x3e8
    .end array-data

    .line 33
    :array_1
    .array-data 4
        0x0
        0x190
        0x1f4
        0x280
        0x320
        0x3e8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNcfData(ZIII)[B
    .locals 16
    .param p0, "isBackCam"    # Z
    .param p1, "isoValue"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 38
    const/4 v12, 0x0

    .line 39
    .local v12, "target_iso":I
    if-eqz p0, :cond_0

    .line 40
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget-object v13, Lcom/thirdparty/arcsoft/utils/NcfUtil;->ISO_C1_REAR_STEPS:[I

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    if-ge v6, v13, :cond_1

    .line 41
    sget-object v13, Lcom/thirdparty/arcsoft/utils/NcfUtil;->ISO_C1_REAR_STEPS:[I

    aget v13, v13, v6

    move/from16 v0, p1

    if-le v0, v13, :cond_1

    .line 42
    sget-object v13, Lcom/thirdparty/arcsoft/utils/NcfUtil;->ISO_C1_REAR_STEPS:[I

    add-int/lit8 v14, v6, 0x1

    aget v12, v13, v14

    .line 40
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 48
    .end local v6    # "i":I
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    sget-object v13, Lcom/thirdparty/arcsoft/utils/NcfUtil;->ISO_C1_FRONT_STEPS:[I

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    if-ge v6, v13, :cond_1

    .line 49
    sget-object v13, Lcom/thirdparty/arcsoft/utils/NcfUtil;->ISO_C1_FRONT_STEPS:[I

    aget v13, v13, v6

    move/from16 v0, p1

    if-le v0, v13, :cond_1

    .line 50
    sget-object v13, Lcom/thirdparty/arcsoft/utils/NcfUtil;->ISO_C1_FRONT_STEPS:[I

    add-int/lit8 v14, v6, 0x1

    aget v12, v13, v14

    .line 48
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 57
    :cond_1
    if-nez v12, :cond_3

    .line 58
    const/4 v2, 0x0

    .line 102
    :cond_2
    :goto_2
    return-object v2

    .line 61
    :cond_3
    const-string v13, "ro.boot.device"

    invoke-static {v13}, Lcom/thirdparty/arcsoft/utils/NcfUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 62
    .local v10, "productName":Ljava/lang/String;
    if-nez v10, :cond_4

    .line 63
    sget-object v13, Lcom/thirdparty/arcsoft/utils/NcfUtil;->TAG:Ljava/lang/String;

    const-string v14, "productName null"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v2, 0x0

    goto :goto_2

    .line 66
    :cond_4
    sget-object v13, Lcom/thirdparty/arcsoft/utils/NcfUtil;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " productName: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 68
    .local v11, "productNameFolder":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v13, "ncf/"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    if-eqz p0, :cond_5

    const-string v13, "rear/"

    :goto_3
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v13, "ISO"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string v13, "_"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v13, ".ncf"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "fileName":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    const-string v13, "/system/etc/"

    invoke-direct {v9, v13, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .local v9, "ncfFile":Ljava/io/File;
    sget-object v13, Lcom/thirdparty/arcsoft/utils/NcfUtil;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getNcfData = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, "data":[B
    const/4 v7, 0x0

    .line 83
    .local v7, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .local v8, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v13

    new-array v2, v13, [B

    .line 86
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    .line 87
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 88
    const/4 v7, 0x0

    .line 89
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    :try_start_2
    sget-object v13, Lcom/thirdparty/arcsoft/utils/NcfUtil;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getNcfData OK = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 90
    :catch_0
    move-exception v3

    .line 91
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    sget-object v13, Lcom/thirdparty/arcsoft/utils/NcfUtil;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "inputStream.read Error = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-eqz v7, :cond_2

    .line 94
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 98
    :goto_5
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 71
    .end local v2    # "data":[B
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "ncfFile":Ljava/io/File;
    :cond_5
    const-string v13, "front/"

    goto/16 :goto_3

    .line 95
    .restart local v2    # "data":[B
    .restart local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "ncfFile":Ljava/io/File;
    :catch_1
    move-exception v4

    .line 96
    .local v4, "e1":Ljava/io/IOException;
    sget-object v13, Lcom/thirdparty/arcsoft/utils/NcfUtil;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "inputStream.close Error = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 90
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "e1":Ljava/io/IOException;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v3

    move-object v7, v8

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    goto :goto_4
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "strKey"    # Ljava/lang/String;

    .prologue
    .line 106
    const/4 v4, 0x0

    .line 109
    .local v4, "strResult":Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 110
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

    .line 111
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

    .line 118
    .end local v1    # "classProperty":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "md":Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 113
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
