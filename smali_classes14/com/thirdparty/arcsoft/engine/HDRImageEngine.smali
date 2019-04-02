.class public Lcom/thirdparty/arcsoft/engine/HDRImageEngine;
.super Lcom/thirdparty/arcsoft/engine/ImageEngine;
.source "HDRImageEngine.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private final OUTPUT_INDEX:I

.field private final TARGET_INPUT_SIZE:I

.field private mHDREngine:Lcom/thirdparty/arcsoft/ArcsoftHDR;

.field private mImgData:[B

.field private final mImgFormat:I

.field private final mImgHeight:I

.field private final mImgWidth:I

.field private final mIsBackCamera:Z

.field private mReceivedImgCount:I

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "HDRImageEngine"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIII)V
    .locals 3
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requiredFrameNum"    # I
    .param p3, "infinite"    # Z
    .param p4, "isBackCam"    # Z
    .param p5, "imgWidth"    # I
    .param p6, "imgHeight"    # I
    .param p7, "imgFormat"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    const-class v0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/thirdparty/arcsoft/engine/ImageEngine;-><init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V

    .line 23
    iput-object v2, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mHDREngine:Lcom/thirdparty/arcsoft/ArcsoftHDR;

    .line 29
    iput v1, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->OUTPUT_INDEX:I

    .line 31
    iput v1, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mReceivedImgCount:I

    .line 33
    iput-object v2, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgData:[B

    .line 40
    iput p2, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->TARGET_INPUT_SIZE:I

    .line 41
    iput p5, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgWidth:I

    .line 42
    iput p6, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgHeight:I

    .line 43
    iput p7, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgFormat:I

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    iput-boolean p4, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mIsBackCamera:Z

    .line 47
    return-void
.end method


# virtual methods
.method protected abortEngineInternal()V
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessAbort()V

    .line 66
    :cond_0
    monitor-exit v1

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected initEngineInternal()Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 51
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftHDR;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    new-instance v1, Lcom/thirdparty/arcsoft/ArcsoftHDR;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgWidth:I

    int-to-long v2, v2

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgFormat:I

    const-wide/16 v7, 0x0

    iget-boolean v9, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mIsBackCamera:Z

    invoke-direct/range {v1 .. v9}, Lcom/thirdparty/arcsoft/ArcsoftHDR;-><init>(JJIJZ)V

    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mHDREngine:Lcom/thirdparty/arcsoft/ArcsoftHDR;

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mHDREngine:Lcom/thirdparty/arcsoft/ArcsoftHDR;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected inputImageInternal(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;[BZ)Z
    .locals 8
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p3, "data"    # [B
    .param p4, "sync"    # Z

    .prologue
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-eqz p3, :cond_0

    .line 89
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgData:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgHeight:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HDR_Before_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mReceivedImgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mIsBackCamera:Z

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/DebugYuvDumpUtil;->dumpYUVImage([BLjava/lang/String;IILjava/lang/String;Z)V

    .line 90
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mReceivedImgCount:I

    if-nez v0, :cond_2

    .line 91
    iput-object p3, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgData:[B

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mHDREngine:Lcom/thirdparty/arcsoft/ArcsoftHDR;

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mReceivedImgCount:I

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgWidth:I

    int-to-long v2, v2

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgFormat:I

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/thirdparty/arcsoft/ArcsoftHDR;->setHAL1InputImage(IJJI[B)I

    .line 95
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mReceivedImgCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mReceivedImgCount:I

    .line 96
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected processReultImageInternal()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1

    .line 113
    :goto_0
    return v0

    .line 103
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget v1, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mReceivedImgCount:I

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->TARGET_INPUT_SIZE:I

    if-ne v1, v2, :cond_1

    .line 106
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mHDREngine:Lcom/thirdparty/arcsoft/ArcsoftHDR;

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgData:[B

    invoke-virtual {v1, v0, v2}, Lcom/thirdparty/arcsoft/ArcsoftHDR;->doHDR(I[B)I

    move-result v6

    .line 107
    .local v6, "ret":I
    sget-object v0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doHDR ret : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgData:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgHeight:I

    const-string v4, "HDR_After"

    iget-boolean v5, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mIsBackCamera:Z

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/DebugYuvDumpUtil;->dumpYUVImage([BLjava/lang/String;IILjava/lang/String;Z)V

    .line 109
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v0

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgWidth:I

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgHeight:I

    const/16 v3, 0x11

    iget-object v4, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgData:[B

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessDone(III[B)V

    .line 110
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    .end local v6    # "ret":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 112
    :cond_1
    sget-object v1, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v2, "ArcsoftHDR input image number error."

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected releaseEngineInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 73
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mHDREngine:Lcom/thirdparty/arcsoft/ArcsoftHDR;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mHDREngine:Lcom/thirdparty/arcsoft/ArcsoftHDR;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftHDR;->release()V

    .line 77
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mHDREngine:Lcom/thirdparty/arcsoft/ArcsoftHDR;

    .line 80
    :cond_0
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/HDRImageEngine;->mImgData:[B

    .line 81
    return-void

    .line 73
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
