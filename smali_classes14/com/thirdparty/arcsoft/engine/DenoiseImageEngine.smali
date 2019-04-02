.class public Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;
.super Lcom/thirdparty/arcsoft/engine/ImageEngine;
.source "DenoiseImageEngine.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

.field private mImgData:[B

.field private final mImgFormat:I

.field private final mImgHeight:I

.field private final mImgWidth:I

.field private final mIsBackCamera:Z

.field private final mIsoValue:I

.field private mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "DenoiseImgEng"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIII)V
    .locals 2
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
    const/4 v1, 0x0

    .line 36
    const-class v0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/thirdparty/arcsoft/engine/ImageEngine;-><init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V

    .line 24
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    .line 33
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgData:[B

    .line 37
    iput-boolean p4, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mIsBackCamera:Z

    .line 38
    iput p5, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgWidth:I

    .line 39
    iput p6, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgHeight:I

    .line 40
    iput p7, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgFormat:I

    .line 41
    iput p8, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mIsoValue:I

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIILandroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2
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
    const/4 v1, 0x0

    .line 46
    const-class v0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/thirdparty/arcsoft/engine/ImageEngine;-><init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V

    .line 24
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    .line 33
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgData:[B

    .line 47
    iput-boolean p4, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mIsBackCamera:Z

    .line 48
    iput p5, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgWidth:I

    .line 49
    iput p6, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgHeight:I

    .line 50
    iput p7, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgFormat:I

    .line 51
    iput p8, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mIsoValue:I

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    iput-object p9, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    .line 54
    return-void
.end method


# virtual methods
.method protected abortEngineInternal()V
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessAbort()V

    .line 75
    :cond_0
    monitor-exit v1

    .line 76
    return-void

    .line 75
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
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    new-instance v1, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    iget-boolean v2, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mIsBackCamera:Z

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mIsoValue:I

    iget-object v4, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v1, v2, v3, v4}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;-><init>(ZILandroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected inputImageInternal(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;[BZ)Z
    .locals 12
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p3, "data"    # [B
    .param p4, "sync"    # Z

    .prologue
    .line 94
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 121
    :goto_0
    return v0

    .line 96
    :cond_0
    monitor-exit v1

    .line 97
    if-nez p3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 99
    :cond_1
    iput-object p3, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgData:[B

    .line 101
    const/4 v10, 0x1

    .line 103
    .local v10, "needAutoNoiseEst":Z
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mIsoValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 104
    iget-boolean v0, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mIsBackCamera:Z

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mIsoValue:I

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgHeight:I

    invoke-static {v0, v1, v2, v3}, Lcom/thirdparty/arcsoft/utils/NcfUtil;->getNcfData(ZIII)[B

    move-result-object v9

    .line 105
    .local v9, "configData":[B
    if-eqz v9, :cond_2

    .line 106
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    invoke-virtual {v0, v9}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->setNoiseConfigData([B)I

    move-result v11

    .line 107
    .local v11, "setNoiseConfigData_ret":I
    sget-object v0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

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

    .line 108
    if-nez v11, :cond_2

    .line 109
    const/4 v10, 0x0

    .line 114
    .end local v9    # "configData":[B
    .end local v11    # "setNoiseConfigData_ret":I
    :cond_2
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgData:[B

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mIsoValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgHeight:I

    const-string v4, "Denoise_Before"

    iget-boolean v5, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mIsBackCamera:Z

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/DebugYuvDumpUtil;->dumpYUVImage([BLjava/lang/String;IILjava/lang/String;Z)V

    .line 115
    if-eqz v10, :cond_3

    .line 116
    sget-object v0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "Arcsoft autoNoiseEst HAL1 start"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgWidth:I

    int-to-long v2, v0

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgHeight:I

    int-to-long v4, v0

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgFormat:I

    iget-object v7, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgData:[B

    invoke-virtual/range {v1 .. v7}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->autoNoiseEstHAL1(JJI[B)I

    move-result v8

    .line 118
    .local v8, "autoNoiseEst_ret":I
    sget-object v0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

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

    .line 121
    .end local v8    # "autoNoiseEst_ret":I
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method protected processReultImageInternal()Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgData:[B

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgWidth:I

    int-to-long v2, v0

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgHeight:I

    int-to-long v4, v0

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgFormat:I

    iget-object v7, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgData:[B

    invoke-virtual/range {v1 .. v7}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->doDenoiseHAL1(JJI[B)I

    move-result v8

    .line 132
    .local v8, "doDenoise_ret":I
    sget-object v0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doDenoiseHAL1 ret : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgData:[B

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mIsoValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgHeight:I

    const-string v4, "Denoise_After"

    iget-boolean v5, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mIsBackCamera:Z

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/DebugYuvDumpUtil;->dumpYUVImage([BLjava/lang/String;IILjava/lang/String;Z)V

    .line 134
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v0

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgWidth:I

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgHeight:I

    const/16 v3, 0x11

    iget-object v4, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgData:[B

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessDone(III[B)V

    .line 136
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    .end local v8    # "doDenoise_ret":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected releaseEngineInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 82
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;->release()V

    .line 86
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mDenoiseEngine:Lcom/thirdparty/arcsoft/ArcsoftSmartDenoise;

    .line 89
    :cond_0
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/DenoiseImageEngine;->mImgData:[B

    .line 90
    return-void

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
