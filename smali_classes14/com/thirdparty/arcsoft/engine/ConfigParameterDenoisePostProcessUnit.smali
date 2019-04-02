.class public Lcom/thirdparty/arcsoft/engine/ConfigParameterDenoisePostProcessUnit;
.super Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;
.source "ConfigParameterDenoisePostProcessUnit.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "ConfigParameterDenoisePostProcessUnit"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/ConfigParameterDenoisePostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 0
    .param p1, "isBackCam"    # Z
    .param p2, "imgWidth"    # I
    .param p3, "imgHeight"    # I
    .param p4, "imgFormat"    # I
    .param p5, "isoValue"    # I

    .prologue
    .line 19
    invoke-direct/range {p0 .. p5}, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;-><init>(ZIIII)V

    .line 20
    return-void
.end method


# virtual methods
.method public doEnhancement(Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;)[B
    .locals 15
    .param p1, "lockableImageBuffer"    # Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    .prologue
    .line 24
    const/4 v4, 0x0

    .line 25
    .local v4, "res":[B
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/ConfigParameterDenoisePostProcessUnit;->initEngineInternal()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 26
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00d1

    .line 27
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    .line 28
    .local v9, "sdn_type":[I
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00cd

    .line 29
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 30
    .local v5, "sdn_color_level":[I
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00ce

    .line 31
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 32
    .local v6, "sdn_lumin_level":[I
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00d0

    .line 33
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    .line 34
    .local v8, "sdn_sharp_level":[I
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00cf

    .line 35
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 36
    .local v7, "sdn_ring_level":[I
    array-length v3, v9

    .line 37
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 38
    sget-object v11, Lcom/thirdparty/arcsoft/engine/ConfigParameterDenoisePostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "type_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v9, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-color_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v5, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-lumin_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v6, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-sharp_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v8, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-ring_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v7, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    iget-object v11, p0, Lcom/thirdparty/arcsoft/engine/ConfigParameterDenoisePostProcessUnit;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    aget v12, v9, v1

    invoke-virtual {v11, v12}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setDenoiserType(I)I

    .line 44
    iget-object v11, p0, Lcom/thirdparty/arcsoft/engine/ConfigParameterDenoisePostProcessUnit;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    aget v12, v5, v1

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setColorDenoiseLevel(J)I

    .line 45
    iget-object v11, p0, Lcom/thirdparty/arcsoft/engine/ConfigParameterDenoisePostProcessUnit;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    aget v12, v6, v1

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setLuminDenoiseLevel(J)I

    .line 46
    iget-object v11, p0, Lcom/thirdparty/arcsoft/engine/ConfigParameterDenoisePostProcessUnit;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    aget v12, v8, v1

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setSharpLevel(J)I

    .line 47
    iget-object v11, p0, Lcom/thirdparty/arcsoft/engine/ConfigParameterDenoisePostProcessUnit;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    aget v12, v7, v1

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setRingNoiseLevel(J)I

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->size()I

    move-result v10

    .line 50
    .local v10, "size":I
    sget-object v11, Lcom/thirdparty/arcsoft/engine/ConfigParameterDenoisePostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

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

    .line 51
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v10, :cond_1

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->getImage()[B

    move-result-object v0

    .line 53
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 54
    const/4 v11, 0x0

    .line 70
    .end local v0    # "data":[B
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "len":I
    .end local v5    # "sdn_color_level":[I
    .end local v6    # "sdn_lumin_level":[I
    .end local v7    # "sdn_ring_level":[I
    .end local v8    # "sdn_sharp_level":[I
    .end local v9    # "sdn_type":[I
    .end local v10    # "size":I
    :goto_2
    return-object v11

    .line 55
    .restart local v0    # "data":[B
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "len":I
    .restart local v5    # "sdn_color_level":[I
    .restart local v6    # "sdn_lumin_level":[I
    .restart local v7    # "sdn_ring_level":[I
    .restart local v8    # "sdn_sharp_level":[I
    .restart local v9    # "sdn_type":[I
    .restart local v10    # "size":I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/engine/ConfigParameterDenoisePostProcessUnit;->inputImageInternal([B)Z

    .line 56
    const-string v11, "Denoise_Original_Yuv"

    iget v12, p0, Lcom/thirdparty/arcsoft/engine/ConfigParameterDenoisePostProcessUnit;->mImgWidth:I

    iget v13, p0, Lcom/thirdparty/arcsoft/engine/ConfigParameterDenoisePostProcessUnit;->mImgHeight:I

    const/16 v14, 0x11

    invoke-static {v0, v11, v12, v13, v14}, Lcom/android/camera/util/ImageDumpUtil;->dumpNV21([BLjava/lang/String;III)V

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 58
    .end local v0    # "data":[B
    :cond_1
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/ConfigParameterDenoisePostProcessUnit;->processReultImageInternal()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 59
    iget-object v11, p0, Lcom/thirdparty/arcsoft/engine/ConfigParameterDenoisePostProcessUnit;->mImgData:[B

    iget v12, p0, Lcom/thirdparty/arcsoft/engine/ConfigParameterDenoisePostProcessUnit;->mImgWidth:I

    iget v13, p0, Lcom/thirdparty/arcsoft/engine/ConfigParameterDenoisePostProcessUnit;->mImgHeight:I

    invoke-static {v11, v12, v13}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object v4

    .line 62
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v9, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-color_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v5, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-lumin_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v6, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-sharp_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v8, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-ring_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v7, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/android/camera/util/ImageDumpUtil;->dumpJpegFile([BLjava/lang/String;)V

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 68
    .end local v2    # "j":I
    .end local v10    # "size":I
    :cond_3
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/ConfigParameterDenoisePostProcessUnit;->releaseEngineInternal()V

    .end local v1    # "i":I
    .end local v3    # "len":I
    .end local v5    # "sdn_color_level":[I
    .end local v6    # "sdn_lumin_level":[I
    .end local v7    # "sdn_ring_level":[I
    .end local v8    # "sdn_sharp_level":[I
    .end local v9    # "sdn_type":[I
    :cond_4
    move-object v11, v4

    .line 70
    goto :goto_2
.end method
