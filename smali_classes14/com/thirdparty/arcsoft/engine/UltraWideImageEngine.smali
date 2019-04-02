.class public Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;
.super Lcom/thirdparty/arcsoft/engine/ImageEngine;
.source "UltraWideImageEngine.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private final mAlginWidth:I

.field private final mCurrentIso:I

.field private mFihUltraWideEngine:Lcom/thirdparty/fih/FihUndistortion;

.field private mImgData:[B

.field private final mImgFormat:I

.field private final mImgHeight:I

.field private final mImgWidth:I

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mUltraWideEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "UltraWideImageEngine"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIII)V
    .locals 4
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
    .param p8, "currentIso"    # I

    .prologue
    const/4 v1, 0x0

    .line 36
    const-class v0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/thirdparty/arcsoft/engine/ImageEngine;-><init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V

    .line 23
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mUltraWideEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;

    .line 24
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mFihUltraWideEngine:Lcom/thirdparty/fih/FihUndistortion;

    .line 33
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgData:[B

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    iput p5, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgWidth:I

    .line 39
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4050000000000000L    # 64.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mAlginWidth:I

    .line 40
    iput p6, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgHeight:I

    .line 41
    iput p7, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgFormat:I

    .line 42
    iput p8, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mCurrentIso:I

    .line 43
    return-void
.end method


# virtual methods
.method protected abortEngineInternal()V
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessAbort()V

    .line 70
    :cond_0
    monitor-exit v1

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected initEngineInternal()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 48
    :try_start_0
    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v2

    move v0, v1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isUseFihUndistortion()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 51
    invoke-static {}, Lcom/thirdparty/fih/FihUndistortion;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    new-instance v2, Lcom/thirdparty/fih/FihUndistortion;

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgWidth:I

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgHeight:I

    invoke-direct {v2, v3, v4}, Lcom/thirdparty/fih/FihUndistortion;-><init>(II)V

    iput-object v2, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mFihUltraWideEngine:Lcom/thirdparty/fih/FihUndistortion;

    .line 54
    :cond_2
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mFihUltraWideEngine:Lcom/thirdparty/fih/FihUndistortion;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 56
    :cond_3
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 57
    new-instance v2, Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;

    invoke-direct {v2}, Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;-><init>()V

    iput-object v2, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mUltraWideEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;

    .line 60
    :cond_4
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mUltraWideEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected inputImageInternal(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;[BZ)Z
    .locals 6
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p3, "data"    # [B
    .param p4, "sync"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1

    move v5, v0

    .line 100
    :goto_0
    return v5

    .line 94
    :cond_0
    monitor-exit v1

    .line 95
    if-nez p3, :cond_1

    move v5, v0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 97
    :cond_1
    iput-object p3, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgData:[B

    .line 98
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgData:[B

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mCurrentIso:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgHeight:I

    const-string v4, "DC_Before"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/DebugYuvDumpUtil;->dumpYUVImage([BLjava/lang/String;IILjava/lang/String;Z)V

    goto :goto_0
.end method

.method protected processReultImageInternal()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 105
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgData:[B

    if-eqz v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mFihUltraWideEngine:Lcom/thirdparty/fih/FihUndistortion;

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mFihUltraWideEngine:Lcom/thirdparty/fih/FihUndistortion;

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgWidth:I

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgHeight:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mAlginWidth:I

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgFormat:I

    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgData:[B

    invoke-virtual/range {v0 .. v5}, Lcom/thirdparty/fih/FihUndistortion;->processNV21(IIII[B)I

    move-result v8

    .line 116
    .local v8, "ret":I
    :goto_1
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgData:[B

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mCurrentIso:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgHeight:I

    const-string v4, "DC_After"

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/DebugYuvDumpUtil;->dumpYUVImage([BLjava/lang/String;IILjava/lang/String;Z)V

    .line 117
    sget-object v0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UltraWideImageEngine processImage ret : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v0

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgWidth:I

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgHeight:I

    const/16 v3, 0x11

    iget-object v4, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgData:[B

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessDone(III[B)V

    move v0, v9

    .line 121
    goto :goto_0

    .line 107
    .end local v8    # "ret":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mUltraWideEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgWidth:I

    int-to-long v2, v0

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgHeight:I

    int-to-long v4, v0

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgFormat:I

    iget-object v7, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgData:[B

    invoke-virtual/range {v1 .. v7}, Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;->DoUndistortionHAL1(JJI[B)I

    move-result v8

    .restart local v8    # "ret":I
    goto :goto_1
.end method

.method protected releaseEngineInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 77
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mUltraWideEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mUltraWideEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;->release()V

    .line 81
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mUltraWideEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mFihUltraWideEngine:Lcom/thirdparty/fih/FihUndistortion;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mFihUltraWideEngine:Lcom/thirdparty/fih/FihUndistortion;

    invoke-virtual {v0}, Lcom/thirdparty/fih/FihUndistortion;->release()V

    .line 85
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mFihUltraWideEngine:Lcom/thirdparty/fih/FihUndistortion;

    .line 87
    :cond_1
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/UltraWideImageEngine;->mImgData:[B

    .line 88
    return-void

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
