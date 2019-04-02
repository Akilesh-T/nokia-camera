.class public Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;
.super Ljava/lang/Object;
.source "DenoisePostProcessUnit.java"

# interfaces
.implements Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field protected mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

.field protected mImgData:[B

.field protected final mImgFormat:I

.field protected final mImgHeight:I

.field protected final mImgWidth:I

.field protected final mIsBackCamera:Z

.field protected final mIsoValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "DenoisePostProcessUnit"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 1
    .param p1, "isBackCam"    # Z
    .param p2, "imgWidth"    # I
    .param p3, "imgHeight"    # I
    .param p4, "imgFormat"    # I
    .param p5, "isoValue"    # I

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    .line 23
    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgData:[B

    .line 31
    iput-boolean p1, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mIsBackCamera:Z

    .line 32
    iput p2, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgWidth:I

    .line 33
    iput p3, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgHeight:I

    .line 34
    iput p4, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgFormat:I

    .line 35
    iput p5, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mIsoValue:I

    .line 36
    return-void
.end method


# virtual methods
.method public doEnhancement(Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;)[B
    .locals 9
    .param p1, "lockableImageBuffer"    # Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    .prologue
    .line 40
    const/4 v7, 0x0

    .line 42
    .local v7, "res":[B
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->initEngineInternal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->size()I

    move-result v8

    .line 44
    .local v8, "size":I
    sget-object v0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doEnhancement size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 45
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->getImage()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->inputImageInternal([B)Z

    .line 45
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->processReultImageInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgData:[B

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mIsoValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgHeight:I

    const-string v4, "Denoise_After"

    iget-boolean v5, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mIsBackCamera:Z

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/DebugYuvDumpUtil;->dumpYUVImage([BLjava/lang/String;IILjava/lang/String;Z)V

    .line 51
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgData:[B

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgWidth:I

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgHeight:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object v7

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->releaseEngineInternal()V

    .line 57
    .end local v6    # "i":I
    .end local v8    # "size":I
    :cond_2
    return-object v7
.end method

.method protected initEngineInternal()Z
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    iget-boolean v1, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mIsBackCamera:Z

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mIsoValue:I

    invoke-direct {v0, v1, v2}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;-><init>(ZI)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected inputImageInternal([B)Z
    .locals 12
    .param p1, "data"    # [B

    .prologue
    .line 77
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgData:[B

    .line 80
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgData:[B

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mIsoValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgHeight:I

    const-string v4, "Denoise_Before"

    iget-boolean v5, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mIsBackCamera:Z

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/DebugYuvDumpUtil;->dumpYUVImage([BLjava/lang/String;IILjava/lang/String;Z)V

    .line 81
    const/4 v10, 0x1

    .line 83
    .local v10, "needAutoNoiseEst":Z
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mIsoValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 84
    iget-boolean v0, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mIsBackCamera:Z

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mIsoValue:I

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgHeight:I

    invoke-static {v0, v1, v2, v3}, Lcom/thirdparty/arcsoft/utils/NcfUtil;->getNcfData(ZIII)[B

    move-result-object v9

    .line 85
    .local v9, "configData":[B
    if-eqz v9, :cond_1

    .line 86
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    invoke-virtual {v0, v9}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setNoiseConfigData([B)I

    move-result v11

    .line 87
    .local v11, "setNoiseConfigData_ret":I
    sget-object v0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNoiseConfigData end : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    if-nez v11, :cond_1

    .line 89
    const/4 v10, 0x0

    .line 94
    .end local v9    # "configData":[B
    .end local v11    # "setNoiseConfigData_ret":I
    :cond_1
    if-eqz v10, :cond_2

    .line 95
    sget-object v0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "Arcsoft autoNoiseEst HAL1 start"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgWidth:I

    int-to-long v2, v0

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgHeight:I

    int-to-long v4, v0

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgFormat:I

    iget-object v7, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgData:[B

    invoke-virtual/range {v1 .. v7}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->autoNoiseEstHAL1(JJI[B)I

    move-result v8

    .line 97
    .local v8, "autoNoiseEst_ret":I
    sget-object v0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Arcsoft autoNoiseEst HAL1 end : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    .end local v8    # "autoNoiseEst_ret":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected processReultImageInternal()Z
    .locals 8

    .prologue
    .line 105
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgData:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 109
    :goto_0
    return v1

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgWidth:I

    int-to-long v2, v2

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgFormat:I

    iget-object v7, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgData:[B

    invoke-virtual/range {v1 .. v7}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->doDenoiseHAL1(JJI[B)I

    move-result v0

    .line 107
    .local v0, "doDenoise_ret":I
    sget-object v1, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doDenoiseHAL1 ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 109
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected releaseEngineInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->release()V

    .line 70
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    .line 73
    :cond_0
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/DenoisePostProcessUnit;->mImgData:[B

    .line 74
    return-void
.end method
