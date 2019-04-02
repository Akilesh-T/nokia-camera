.class public Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;
.super Lcom/thirdparty/arcsoft/engine/ImageEngine;
.source "DCNightShotImageEngine.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private final OUTPUT_INDEX:I

.field private final TARGET_INPUT_SIZE:I

.field private final mBayerIso:I

.field private final mCalibrationData:[B

.field private mDCNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;

.field private mImgData:[B

.field private final mImgFormat:I

.field private final mImgHeight:I

.field private final mImgWidth:I

.field private final mMonoIso:I

.field private mReceivedImgCount:I

.field private mReceivedSlaveImgCount:I

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "DCNSImgEngine"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZIIIII[B)V
    .locals 3
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requiredFrameNum"    # I
    .param p3, "infinite"    # Z
    .param p4, "imgWidth"    # I
    .param p5, "imgHeight"    # I
    .param p6, "imgFormat"    # I
    .param p7, "bayerIso"    # I
    .param p8, "monoIso"    # I
    .param p9, "calibrationData"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    const-class v0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/thirdparty/arcsoft/engine/ImageEngine;-><init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V

    .line 21
    iput-object v2, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mDCNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;

    .line 31
    iput v1, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->OUTPUT_INDEX:I

    .line 32
    iput v1, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mReceivedImgCount:I

    .line 33
    iput v1, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mReceivedSlaveImgCount:I

    .line 34
    iput-object v2, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mImgData:[B

    .line 47
    iput p2, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->TARGET_INPUT_SIZE:I

    .line 49
    iput p4, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mImgWidth:I

    .line 50
    iput p5, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mImgHeight:I

    .line 51
    iput p6, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mImgFormat:I

    .line 52
    iput p7, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mBayerIso:I

    .line 53
    iput p8, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mMonoIso:I

    .line 54
    iput-object p9, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mCalibrationData:[B

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    return-void
.end method


# virtual methods
.method protected abortEngineInternal()V
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessAbort()V

    .line 90
    :cond_0
    monitor-exit v1

    .line 91
    return-void

    .line 90
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
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 61
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 81
    :cond_0
    :goto_0
    return v9

    .line 63
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v1, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mImgWidth:I

    int-to-long v2, v0

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mImgHeight:I

    int-to-long v4, v0

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mImgFormat:I

    invoke-direct/range {v1 .. v6}, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;-><init>(JJI)V

    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mDCNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;

    .line 74
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mCalibrationData:[B

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mDCNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mCalibrationData:[B

    invoke-virtual {v0, v1}, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->setCalibData([B)I

    move-result v7

    .line 76
    .local v7, "ret":I
    sget-object v0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set CalibData ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    .end local v7    # "ret":I
    :cond_2
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mDCNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mBayerIso:I

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mMonoIso:I

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mImgWidth:I

    iget v5, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mImgHeight:I

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->setNSParam(IIZII)I

    .line 81
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mDCNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;

    if-eqz v0, :cond_3

    move v0, v8

    :goto_1
    move v9, v0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    move v0, v9

    .line 81
    goto :goto_1
.end method

.method protected inputImageInternal(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;[BZ)Z
    .locals 8
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p3, "data"    # [B
    .param p4, "sync"    # Z

    .prologue
    const/4 v0, 0x0

    .line 109
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-eqz p3, :cond_0

    .line 114
    sget-object v0, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    if-ne p1, v0, :cond_4

    .line 115
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mReceivedImgCount:I

    if-nez v0, :cond_2

    .line 116
    iput-object p3, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mImgData:[B

    .line 118
    :cond_2
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mReceivedImgCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mReceivedImgCount:I

    .line 123
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mDCNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mImgWidth:I

    int-to-long v2, v1

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mImgHeight:I

    int-to-long v4, v1

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mImgFormat:I

    move-object v1, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->setInputImage(Lcom/android/camera/one/CameraType;JJI[B)I

    .line 124
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 119
    :cond_4
    sget-object v0, Lcom/android/camera/one/CameraType;->MONO:Lcom/android/camera/one/CameraType;

    if-ne p1, v0, :cond_3

    .line 120
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mReceivedSlaveImgCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mReceivedSlaveImgCount:I

    goto :goto_1
.end method

.method protected processReultImageInternal()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 130
    :try_start_0
    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v2

    .line 140
    :goto_0
    return v1

    .line 131
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget v2, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mReceivedImgCount:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mReceivedSlaveImgCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->TARGET_INPUT_SIZE:I

    if-ne v2, v3, :cond_1

    .line 134
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mDCNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mImgData:[B

    invoke-virtual {v1, v2}, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->doEnhancement([B)I

    move-result v0

    .line 135
    .local v0, "ret":I
    sget-object v1, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

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

    .line 136
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mImgHeight:I

    const/16 v4, 0x11

    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mImgData:[B

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessDone(III[B)V

    .line 137
    const/4 v1, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 139
    :cond_1
    sget-object v2, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v3, "input image number error."

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected releaseEngineInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 97
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mDCNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mDCNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;->release()V

    .line 101
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mDCNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftDCNightShot;

    .line 104
    :cond_0
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/DCNightShotImageEngine;->mImgData:[B

    .line 105
    return-void

    .line 97
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
