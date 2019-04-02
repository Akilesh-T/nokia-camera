.class public Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;
.super Ljava/lang/Object;
.source "HDRPostProcessUnit.java"

# interfaces
.implements Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private final OUTPUT_INDEX:I

.field private final TARGET_INPUT_SIZE:I

.field private mArcsoftHdrEngine:Lcom/thirdparty/arcsoft/ArcsoftHDR;

.field private mImgData:[B

.field private final mImgFormat:I

.field private final mImgHeight:I

.field private final mImgWidth:I

.field private final mIsBackCamera:Z

.field private mReceivedImgCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "HDRPostProcessUnit"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(IZIII)V
    .locals 1
    .param p1, "requiredFrameNum"    # I
    .param p2, "isBackCam"    # Z
    .param p3, "imgWidth"    # I
    .param p4, "imgHeight"    # I
    .param p5, "imgFormat"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->OUTPUT_INDEX:I

    .line 32
    iput-boolean p2, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mIsBackCamera:Z

    .line 33
    iput p1, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->TARGET_INPUT_SIZE:I

    .line 35
    iput p3, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mImgWidth:I

    .line 36
    iput p4, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mImgHeight:I

    .line 37
    iput p5, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mImgFormat:I

    .line 38
    return-void
.end method


# virtual methods
.method public doEnhancement(Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;)[B
    .locals 9
    .param p1, "lockableImageBuffer"    # Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    .prologue
    .line 42
    const/4 v7, 0x0

    .line 44
    .local v7, "res":[B
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->initEngineInternal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->size()I

    move-result v8

    .line 46
    .local v8, "size":I
    const-string v0, "HDRPostProcessUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doEnhancement size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-object v0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

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

    .line 48
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->getImage()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->inputImageInternal([B)Z

    .line 48
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->processReultImageInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mImgData:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mImgHeight:I

    const-string v4, "HDR_After"

    iget-boolean v5, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mIsBackCamera:Z

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/DebugYuvDumpUtil;->dumpYUVImage([BLjava/lang/String;IILjava/lang/String;Z)V

    .line 54
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mImgData:[B

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mImgWidth:I

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mImgHeight:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object v7

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->releaseEngineInternal()V

    .line 60
    .end local v6    # "i":I
    .end local v8    # "size":I
    :cond_2
    return-object v7
.end method

.method protected initEngineInternal()Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftHDR;->isSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    new-instance v1, Lcom/thirdparty/arcsoft/ArcsoftHDR;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mImgWidth:I

    int-to-long v2, v2

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mImgFormat:I

    const-wide/16 v7, 0x0

    iget-boolean v9, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mIsBackCamera:Z

    invoke-direct/range {v1 .. v9}, Lcom/thirdparty/arcsoft/ArcsoftHDR;-><init>(JJIJZ)V

    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mArcsoftHdrEngine:Lcom/thirdparty/arcsoft/ArcsoftHDR;

    .line 73
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mArcsoftHdrEngine:Lcom/thirdparty/arcsoft/ArcsoftHDR;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected inputImageInternal([B)Z
    .locals 8
    .param p1, "data"    # [B

    .prologue
    .line 87
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    .line 89
    :cond_0
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mReceivedImgCount:I

    if-nez v0, :cond_1

    .line 90
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mImgData:[B

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mArcsoftHdrEngine:Lcom/thirdparty/arcsoft/ArcsoftHDR;

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mReceivedImgCount:I

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mImgWidth:I

    int-to-long v2, v2

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mImgFormat:I

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/thirdparty/arcsoft/ArcsoftHDR;->setHAL1InputImage(IJJI[B)I

    .line 94
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mReceivedImgCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mReceivedImgCount:I

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected processReultImageInternal()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 99
    iget v2, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mReceivedImgCount:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->TARGET_INPUT_SIZE:I

    if-ne v2, v3, :cond_0

    .line 100
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mArcsoftHdrEngine:Lcom/thirdparty/arcsoft/ArcsoftHDR;

    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mImgData:[B

    invoke-virtual {v2, v1, v3}, Lcom/thirdparty/arcsoft/ArcsoftHDR;->doHDR(I[B)I

    move-result v0

    .line 101
    .local v0, "ret":I
    sget-object v1, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doHDR ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x1

    .line 105
    .end local v0    # "ret":I
    :goto_0
    return v1

    .line 104
    :cond_0
    sget-object v2, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v3, "ArcsoftHDR input image number error."

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected releaseEngineInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mArcsoftHdrEngine:Lcom/thirdparty/arcsoft/ArcsoftHDR;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mArcsoftHdrEngine:Lcom/thirdparty/arcsoft/ArcsoftHDR;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftHDR;->release()V

    .line 80
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mArcsoftHdrEngine:Lcom/thirdparty/arcsoft/ArcsoftHDR;

    .line 83
    :cond_0
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/HDRPostProcessUnit;->mImgData:[B

    .line 84
    return-void
.end method
