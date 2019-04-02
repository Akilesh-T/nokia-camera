.class public Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;
.super Lcom/thirdparty/arcsoft/engine/ImageEngine;
.source "NightShotImageEngine.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private final OUTPUT_INDEX:I

.field private final TARGET_INPUT_SIZE:I

.field private mImgData:[B

.field private final mImgFormat:I

.field private final mImgHeight:I

.field private final mImgWidth:I

.field private final mIsBackCamera:Z

.field private final mIsoValue:I

.field private mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

.field private mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

.field private mReceivedImgCount:I

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "NightShotImageEngine"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIII)V
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
    .param p8, "isoValue"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    const-class v0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/thirdparty/arcsoft/engine/ImageEngine;-><init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V

    .line 23
    iput-object v2, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    .line 31
    iput v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->OUTPUT_INDEX:I

    .line 32
    iput v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mReceivedImgCount:I

    .line 33
    iput-object v2, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgData:[B

    .line 47
    iput-boolean p4, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mIsBackCamera:Z

    .line 48
    iput p2, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->TARGET_INPUT_SIZE:I

    .line 50
    iput p5, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgWidth:I

    .line 51
    iput p6, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgHeight:I

    .line 52
    iput p7, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgFormat:I

    .line 53
    iput p8, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mIsoValue:I

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIILandroid/hardware/camera2/CameraCharacteristics;)V
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
    .param p8, "isoValue"    # I
    .param p9, "metadata"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    const-class v0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/thirdparty/arcsoft/engine/ImageEngine;-><init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V

    .line 23
    iput-object v2, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    .line 31
    iput v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->OUTPUT_INDEX:I

    .line 32
    iput v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mReceivedImgCount:I

    .line 33
    iput-object v2, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgData:[B

    .line 67
    iput-boolean p4, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mIsBackCamera:Z

    .line 68
    iput p2, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->TARGET_INPUT_SIZE:I

    .line 70
    iput p5, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgWidth:I

    .line 71
    iput p6, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgHeight:I

    .line 72
    iput p7, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgFormat:I

    .line 73
    iput p8, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mIsoValue:I

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    iput-object p9, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    .line 76
    return-void
.end method


# virtual methods
.method protected abortEngineInternal()V
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessAbort()V

    .line 108
    :cond_0
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected initEngineInternal()Z
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgWidth:I

    int-to-long v2, v2

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->TARGET_INPUT_SIZE:I

    iget v7, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgFormat:I

    iget-boolean v8, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mIsBackCamera:Z

    sget-object v9, Lcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;->NORMAL:Lcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;

    iget v10, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mIsoValue:I

    iget-object v11, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct/range {v1 .. v11}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;-><init>(JJIIZLcom/thirdparty/arcsoft/ArcsoftNightShot$ImageType;ILandroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    .line 99
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 82
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

    .line 127
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    if-eqz p3, :cond_0

    .line 132
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mIsoValue:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgHeight:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LowLight_Before_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mReceivedImgCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mIsBackCamera:Z

    move-object v0, p3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/DebugYuvDumpUtil;->dumpYUVImage([BLjava/lang/String;IILjava/lang/String;Z)V

    .line 134
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mReceivedImgCount:I

    if-nez v0, :cond_2

    .line 135
    iput-object p3, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgData:[B

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgWidth:I

    int-to-long v2, v0

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgHeight:I

    int-to-long v4, v0

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgFormat:I

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setHAL1InputImage(JJI[B)I

    .line 140
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mReceivedImgCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mReceivedImgCount:I

    .line 141
    const/4 v0, 0x1

    goto :goto_0

    .line 129
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

    .line 146
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1

    .line 159
    :goto_0
    return v0

    .line 148
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mReceivedImgCount:I

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->TARGET_INPUT_SIZE:I

    if-ne v1, v2, :cond_1

    .line 151
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->setRefNum(J)V

    .line 152
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgData:[B

    invoke-virtual {v0, v1}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->doEnhancement([B)I

    move-result v6

    .line 153
    .local v6, "ret":I
    sget-object v0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doEnhancement ret : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgData:[B

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mIsoValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgHeight:I

    const-string v4, "LowLight_After"

    iget-boolean v5, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mIsBackCamera:Z

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/DebugYuvDumpUtil;->dumpYUVImage([BLjava/lang/String;IILjava/lang/String;Z)V

    .line 155
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v0

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgWidth:I

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgHeight:I

    const/16 v3, 0x11

    iget-object v4, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgData:[B

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessDone(III[B)V

    .line 156
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    .end local v6    # "ret":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 158
    :cond_1
    sget-object v1, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v2, "ArcsoftNightShot input image number error."

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected releaseEngineInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 115
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftNightShot;->release()V

    .line 119
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mNightShotEngine:Lcom/thirdparty/arcsoft/ArcsoftNightShot;

    .line 122
    :cond_0
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/NightShotImageEngine;->mImgData:[B

    .line 123
    return-void

    .line 115
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
