.class public Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;
.super Ljava/lang/Object;
.source "NightShotPostProcessUnit.java"

# interfaces
.implements Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field protected final OUTPUT_INDEX:I

.field protected final TARGET_INPUT_SIZE:I

.field protected mImgData:[B

.field protected final mImgFormat:I

.field protected final mImgHeight:I

.field protected final mImgWidth:I

.field protected final mIsBackCamera:Z

.field private final mIsoValue:I

.field protected mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

.field protected mReceivedImgCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "NightShotPostProcessUnit"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(IZIIII)V
    .locals 2
    .param p1, "requiredFrameNum"    # I
    .param p2, "isBackCam"    # Z
    .param p3, "imgWidth"    # I
    .param p4, "imgHeight"    # I
    .param p5, "imgFormat"    # I
    .param p6, "isoValue"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    .line 22
    iput v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->OUTPUT_INDEX:I

    .line 23
    iput v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mReceivedImgCount:I

    .line 24
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgData:[B

    .line 33
    iput-boolean p2, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mIsBackCamera:Z

    .line 34
    iput p1, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->TARGET_INPUT_SIZE:I

    .line 36
    iput p3, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgWidth:I

    .line 37
    iput p4, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgHeight:I

    .line 38
    iput p5, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgFormat:I

    .line 39
    iput p6, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mIsoValue:I

    .line 40
    return-void
.end method


# virtual methods
.method public doEnhancement(Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;)[B
    .locals 9
    .param p1, "lockableImageBuffer"    # Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    .prologue
    .line 44
    const/4 v7, 0x0

    .line 46
    .local v7, "res":[B
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->initEngineInternal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->size()I

    move-result v8

    .line 48
    .local v8, "size":I
    sget-object v0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

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

    .line 49
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->getImage()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->inputImageInternal([B)Z

    .line 49
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->processReultImageInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgData:[B

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mIsoValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgHeight:I

    const-string v4, "LowLight_After"

    iget-boolean v5, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mIsBackCamera:Z

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/DebugYuvDumpUtil;->dumpYUVImage([BLjava/lang/String;IILjava/lang/String;Z)V

    .line 55
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgData:[B

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgWidth:I

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgHeight:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object v7

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->releaseEngineInternal()V

    .line 61
    .end local v6    # "i":I
    .end local v8    # "size":I
    :cond_2
    return-object v7
.end method

.method protected initEngineInternal()Z
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->isSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    new-instance v1, Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgWidth:I

    int-to-long v2, v2

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->TARGET_INPUT_SIZE:I

    iget v7, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgFormat:I

    iget-boolean v8, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mIsBackCamera:Z

    sget-object v9, Lcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;->NORMAL:Lcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;

    iget v10, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mIsoValue:I

    invoke-direct/range {v1 .. v10}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;-><init>(JJIIZLcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;I)V

    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    .line 78
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected inputImageInternal([B)Z
    .locals 8
    .param p1, "data"    # [B

    .prologue
    .line 92
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    .line 94
    :cond_0
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mIsoValue:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgHeight:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LowLight_Before_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mReceivedImgCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mIsBackCamera:Z

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/DebugYuvDumpUtil;->dumpYUVImage([BLjava/lang/String;IILjava/lang/String;Z)V

    .line 96
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mReceivedImgCount:I

    if-nez v0, :cond_1

    .line 97
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgData:[B

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgWidth:I

    int-to-long v2, v0

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgHeight:I

    int-to-long v4, v0

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgFormat:I

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setHAL1InputImage(JJI[B)I

    .line 102
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mReceivedImgCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mReceivedImgCount:I

    .line 103
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected processReultImageInternal()Z
    .locals 4

    .prologue
    .line 107
    iget v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mReceivedImgCount:I

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->TARGET_INPUT_SIZE:I

    if-ne v1, v2, :cond_0

    .line 108
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setRefNum(J)V

    .line 109
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgData:[B

    invoke-virtual {v1, v2}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->doEnhancement([B)I

    move-result v0

    .line 110
    .local v0, "ret":I
    sget-object v1, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doEnhancement ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    const/4 v1, 0x1

    .line 114
    .end local v0    # "ret":I
    :goto_0
    return v1

    .line 113
    :cond_0
    sget-object v1, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v2, "ArcsoftNightShot input image number error."

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected releaseEngineInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->release()V

    .line 84
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    .line 87
    :cond_0
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotPostProcessUnit;->mImgData:[B

    .line 88
    return-void
.end method
