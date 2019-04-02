.class public Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;
.super Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;
.source "ConfigParameterNightShotPostProcessUnit.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "ConfigParameterNightShotPostProcessUnit"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(IZIIII)V
    .locals 0
    .param p1, "requiredFrameNum"    # I
    .param p2, "isBackCam"    # Z
    .param p3, "imgWidth"    # I
    .param p4, "imgHeight"    # I
    .param p5, "imgFormat"    # I
    .param p6, "isoValue"    # I

    .prologue
    .line 19
    invoke-direct/range {p0 .. p6}, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;-><init>(IZIIII)V

    .line 20
    return-void
.end method


# virtual methods
.method public doEnhancement(Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;)[B
    .locals 15
    .param p1, "lockableImageBuffer"    # Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    .prologue
    .line 24
    const/4 v9, 0x0

    .line 25
    .local v9, "res":[B
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;->initEngineInternal()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 26
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d003e

    .line 27
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 28
    .local v7, "lowlight_need_sharpe":[I
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d003c

    .line 29
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 30
    .local v5, "lowlight_intensity":[I
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d003d

    .line 31
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 32
    .local v6, "lowlight_light_intensity":[I
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d003f

    .line 33
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    .line 34
    .local v8, "lowlight_saturation":[I
    array-length v4, v7

    .line 35
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 36
    sget-object v11, Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sharpe_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v7, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-intensity_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v5, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-light_intensity_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v6, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-saturation_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v8, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 41
    aget v11, v7, v2

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    const/4 v1, 0x1

    .line 42
    .local v1, "flag":Z
    :goto_1
    iget-object v11, p0, Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    invoke-virtual {v11, v1}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setNeedSharpen(Z)V

    .line 43
    iget-object v11, p0, Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    aget v12, v5, v2

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setIntensity(J)V

    .line 44
    iget-object v11, p0, Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    aget v12, v6, v2

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setLightIntensity(J)V

    .line 45
    iget-object v11, p0, Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    aget v12, v8, v2

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setSaturation(J)V

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->size()I

    move-result v10

    .line 48
    .local v10, "size":I
    sget-object v11, Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doEnhancement size : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 50
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v10, :cond_2

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->getImage()[B

    move-result-object v0

    .line 52
    .local v0, "data":[B
    if-nez v3, :cond_0

    .line 53
    const-string v11, "LowLight_Original_Yuv"

    iget v12, p0, Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;->mImgWidth:I

    iget v13, p0, Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;->mImgHeight:I

    const/16 v14, 0x11

    invoke-static {v0, v11, v12, v13, v14}, Lcom/android/camera/util/ImageDumpUtil;->dumpNV21([BLjava/lang/String;III)V

    .line 55
    :cond_0
    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;->inputImageInternal([B)Z

    .line 50
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 41
    .end local v0    # "data":[B
    .end local v1    # "flag":Z
    .end local v3    # "j":I
    .end local v10    # "size":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 58
    .restart local v1    # "flag":Z
    .restart local v3    # "j":I
    .restart local v10    # "size":I
    :cond_2
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;->processReultImageInternal()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 59
    iget-object v11, p0, Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;->mImgData:[B

    iget v12, p0, Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;->mImgWidth:I

    iget v13, p0, Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;->mImgHeight:I

    invoke-static {v11, v12, v13}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object v9

    .line 61
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sharpe_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v7, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-intensity_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v5, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-light_intensity_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v6, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-saturation_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v8, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/camera/util/ImageDumpUtil;->dumpJpegFile([BLjava/lang/String;)V

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 67
    .end local v1    # "flag":Z
    .end local v3    # "j":I
    .end local v10    # "size":I
    :cond_4
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/ConfigParameterNightShotPostProcessUnit;->releaseEngineInternal()V

    .line 69
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v5    # "lowlight_intensity":[I
    .end local v6    # "lowlight_light_intensity":[I
    .end local v7    # "lowlight_need_sharpe":[I
    .end local v8    # "lowlight_saturation":[I
    :cond_5
    return-object v9
.end method
