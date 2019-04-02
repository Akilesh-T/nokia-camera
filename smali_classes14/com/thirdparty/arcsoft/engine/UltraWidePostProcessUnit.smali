.class public Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;
.super Ljava/lang/Object;
.source "UltraWidePostProcessUnit.java"

# interfaces
.implements Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private final mCurrentIso:I

.field protected final mEnablePicSelfie:Z

.field protected mFihUltraWideEngine:Lcom/thirdparty/fih/FihUndistortion;

.field protected mImgData:[B

.field protected final mImgFormat:I

.field protected final mImgHeight:I

.field protected final mImgWidth:I

.field protected final mIsBackCamera:Z

.field protected mUltraWideEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "UltraWidePostProcessUnit"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(ZIIIIZ)V
    .locals 1
    .param p1, "isBackCam"    # Z
    .param p2, "imgWidth"    # I
    .param p3, "imgHeight"    # I
    .param p4, "imgFormat"    # I
    .param p5, "currentIso"    # I
    .param p6, "enablePicSelfie"    # Z

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mUltraWideEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;

    .line 19
    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mFihUltraWideEngine:Lcom/thirdparty/fih/FihUndistortion;

    .line 25
    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgData:[B

    .line 35
    iput-boolean p1, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mIsBackCamera:Z

    .line 36
    iput p2, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgWidth:I

    .line 37
    iput p3, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgHeight:I

    .line 38
    iput p4, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgFormat:I

    .line 39
    iput-boolean p6, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mEnablePicSelfie:Z

    .line 40
    iput p5, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mCurrentIso:I

    .line 41
    return-void
.end method


# virtual methods
.method public doEnhancement(Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;)[B
    .locals 9
    .param p1, "lockableImageBuffer"    # Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    .prologue
    .line 45
    const/4 v7, 0x0

    .line 47
    .local v7, "res":[B
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->initEngineInternal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->size()I

    move-result v8

    .line 49
    .local v8, "size":I
    sget-object v0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

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

    .line 50
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->getImage()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->inputImageInternal([B)Z

    .line 50
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->processResultImageInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgData:[B

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mCurrentIso:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgHeight:I

    const-string v4, "DC_After"

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/DebugYuvDumpUtil;->dumpYUVImage([BLjava/lang/String;IILjava/lang/String;Z)V

    .line 56
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgData:[B

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgWidth:I

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgHeight:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object v7

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->releaseEngineInternal()V

    .line 62
    .end local v6    # "i":I
    .end local v8    # "size":I
    :cond_2
    return-object v7
.end method

.method protected initEngineInternal()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isUseFihUndistortion()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    invoke-static {}, Lcom/thirdparty/fih/FihUndistortion;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    new-instance v2, Lcom/thirdparty/fih/FihUndistortion;

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgWidth:I

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgHeight:I

    invoke-direct {v2, v3, v4}, Lcom/thirdparty/fih/FihUndistortion;-><init>(II)V

    iput-object v2, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mFihUltraWideEngine:Lcom/thirdparty/fih/FihUndistortion;

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mFihUltraWideEngine:Lcom/thirdparty/fih/FihUndistortion;

    if-eqz v2, :cond_2

    .line 75
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 70
    goto :goto_0

    .line 72
    :cond_3
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 73
    new-instance v2, Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;

    invoke-direct {v2}, Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;-><init>()V

    iput-object v2, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mUltraWideEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;

    .line 75
    :cond_4
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mUltraWideEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method protected inputImageInternal([B)Z
    .locals 6
    .param p1, "data"    # [B

    .prologue
    const/4 v5, 0x1

    .line 92
    if-nez p1, :cond_0

    const/4 v5, 0x0

    .line 97
    :goto_0
    return v5

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgData:[B

    .line 95
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgData:[B

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mCurrentIso:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgHeight:I

    const-string v4, "DC_Before"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/DebugYuvDumpUtil;->dumpYUVImage([BLjava/lang/String;IILjava/lang/String;Z)V

    goto :goto_0
.end method

.method protected processResultImageInternal()Z
    .locals 19

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgData:[B

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 119
    :goto_0
    return v2

    .line 103
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgWidth:I

    int-to-double v2, v2

    const-wide/high16 v6, 0x4050000000000000L    # 64.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v16, v0

    .line 104
    .local v16, "alignW":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgHeight:I

    int-to-double v2, v2

    const-wide/high16 v6, 0x4050000000000000L    # 64.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v15, v2

    .line 105
    .local v15, "alignH":I
    mul-int/lit8 v5, v16, 0x40

    .line 106
    .local v5, "pitch0":I
    move/from16 v17, v5

    .line 107
    .local v17, "pitch1":I
    mul-int/lit8 v2, v15, 0x40

    mul-int v18, v5, v2

    .line 109
    .local v18, "plane1":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgData:[B

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 112
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mFihUltraWideEngine:Lcom/thirdparty/fih/FihUndistortion;

    if-eqz v2, :cond_2

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mFihUltraWideEngine:Lcom/thirdparty/fih/FihUndistortion;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgFormat:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgData:[B

    invoke-virtual/range {v2 .. v7}, Lcom/thirdparty/fih/FihUndistortion;->processNV21(IIII[B)I

    move-result v14

    .line 117
    .local v14, "DoUndistortion_ret":I
    :goto_1
    sget-object v2, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DoUndistortionHAL1 ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    const/4 v2, 0x1

    goto :goto_0

    .line 115
    .end local v14    # "DoUndistortion_ret":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mUltraWideEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgWidth:I

    int-to-long v8, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgHeight:I

    int-to-long v10, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgFormat:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgData:[B

    invoke-virtual/range {v7 .. v13}, Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;->DoUndistortionHAL1(JJI[B)I

    move-result v14

    .restart local v14    # "DoUndistortion_ret":I
    goto :goto_1
.end method

.method protected releaseEngineInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mUltraWideEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mUltraWideEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;->release()V

    .line 82
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mUltraWideEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mFihUltraWideEngine:Lcom/thirdparty/fih/FihUndistortion;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mFihUltraWideEngine:Lcom/thirdparty/fih/FihUndistortion;

    invoke-virtual {v0}, Lcom/thirdparty/fih/FihUndistortion;->release()V

    .line 86
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mFihUltraWideEngine:Lcom/thirdparty/fih/FihUndistortion;

    .line 88
    :cond_1
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/UltraWidePostProcessUnit;->mImgData:[B

    .line 89
    return-void
.end method
