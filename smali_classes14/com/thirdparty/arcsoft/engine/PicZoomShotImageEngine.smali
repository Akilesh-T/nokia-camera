.class public Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;
.super Lcom/thirdparty/arcsoft/engine/ImageEngine;
.source "PicZoomShotImageEngine.java"


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

.field private mPicZoomEngine:Lcom/thirdparty/arcsoft/ArcsoftPicZoom;

.field private mReceivedImgCount:I

.field private mScale:I

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "PicZoomShotImageEngine"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

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

    .line 50
    const-class v0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/thirdparty/arcsoft/engine/ImageEngine;-><init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V

    .line 26
    iput-object v2, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mPicZoomEngine:Lcom/thirdparty/arcsoft/ArcsoftPicZoom;

    .line 34
    iput v1, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->OUTPUT_INDEX:I

    .line 35
    iput v1, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mReceivedImgCount:I

    .line 36
    iput-object v2, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mImgData:[B

    .line 39
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getSRScale()I

    move-result v0

    iput v0, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mScale:I

    .line 51
    iput-boolean p4, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mIsBackCamera:Z

    .line 52
    iput p2, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->TARGET_INPUT_SIZE:I

    .line 54
    iput p5, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mImgWidth:I

    .line 55
    iput p6, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mImgHeight:I

    .line 56
    iput p7, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mImgFormat:I

    .line 57
    iput p8, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mIsoValue:I

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
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

    .line 70
    const-class v0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/thirdparty/arcsoft/engine/ImageEngine;-><init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V

    .line 26
    iput-object v2, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mPicZoomEngine:Lcom/thirdparty/arcsoft/ArcsoftPicZoom;

    .line 34
    iput v1, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->OUTPUT_INDEX:I

    .line 35
    iput v1, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mReceivedImgCount:I

    .line 36
    iput-object v2, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mImgData:[B

    .line 39
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getSRScale()I

    move-result v0

    iput v0, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mScale:I

    .line 71
    iput-boolean p4, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mIsBackCamera:Z

    .line 72
    iput p2, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->TARGET_INPUT_SIZE:I

    .line 74
    iput p5, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mImgWidth:I

    .line 75
    iput p6, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mImgHeight:I

    .line 76
    iput p7, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mImgFormat:I

    .line 77
    iput p8, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mIsoValue:I

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    iput-object p9, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    .line 80
    return-void
.end method


# virtual methods
.method protected abortEngineInternal()V
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessAbort()V

    .line 112
    :cond_0
    monitor-exit v1

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected initEngineInternal()Z
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    new-instance v1, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mImgWidth:I

    int-to-long v2, v2

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->TARGET_INPUT_SIZE:I

    iget v7, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mImgFormat:I

    iget-boolean v8, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mIsBackCamera:Z

    iget v9, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mIsoValue:I

    iget-object v10, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct/range {v1 .. v10}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;-><init>(JJIIZILandroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mPicZoomEngine:Lcom/thirdparty/arcsoft/ArcsoftPicZoom;

    .line 100
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mPicZoomEngine:Lcom/thirdparty/arcsoft/ArcsoftPicZoom;

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getSRScale()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->setScale(I)V

    .line 103
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mPicZoomEngine:Lcom/thirdparty/arcsoft/ArcsoftPicZoom;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 86
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

    .line 131
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    if-eqz p3, :cond_0

    .line 135
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mIsoValue:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mImgHeight:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PicZoom_Before_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mReceivedImgCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mIsBackCamera:Z

    move-object v0, p3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/DebugYuvDumpUtil;->dumpYUVImage([BLjava/lang/String;IILjava/lang/String;Z)V

    .line 136
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mReceivedImgCount:I

    if-nez v0, :cond_2

    .line 137
    iput-object p3, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mImgData:[B

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mPicZoomEngine:Lcom/thirdparty/arcsoft/ArcsoftPicZoom;

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mImgWidth:I

    int-to-long v2, v0

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mImgHeight:I

    int-to-long v4, v0

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mImgFormat:I

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->setHAL1InputImage(JJI[B)I

    .line 142
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mReceivedImgCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mReceivedImgCount:I

    .line 143
    const/4 v0, 0x1

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected processReultImageInternal()Z
    .locals 12

    .prologue
    const/4 v1, 0x0

    const-wide/high16 v10, 0x4050000000000000L    # 64.0

    .line 148
    iget-object v4, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 149
    :try_start_0
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_0

    monitor-exit v4

    .line 171
    :goto_0
    return v1

    .line 150
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget v4, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mImgWidth:I

    iget v5, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mScale:I

    mul-int v2, v4, v5

    .line 155
    .local v2, "output_width":I
    int-to-double v4, v2

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    mul-double/2addr v4, v10

    double-to-int v8, v4

    .line 157
    .local v8, "stridewidth":I
    iget v4, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mImgHeight:I

    iget v5, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mScale:I

    mul-int v3, v4, v5

    .line 159
    .local v3, "output_height":I
    mul-int v4, v8, v3

    int-to-double v4, v4

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v10

    double-to-int v6, v4

    .line 160
    .local v6, "output_size":I
    new-array v0, v6, [B

    .line 162
    .local v0, "output":[B
    iget v4, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mReceivedImgCount:I

    iget v5, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->TARGET_INPUT_SIZE:I

    if-ne v4, v5, :cond_1

    .line 164
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mPicZoomEngine:Lcom/thirdparty/arcsoft/ArcsoftPicZoom;

    invoke-virtual {v1, v0}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->doEnhancement([B)I

    move-result v7

    .line 165
    .local v7, "ret":I
    sget-object v1, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doEnhancement ret : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    iget v1, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mIsoValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "PicZoom_After"

    iget-boolean v5, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mIsBackCamera:Z

    invoke-static/range {v0 .. v5}, Lcom/android/camera/util/DebugYuvDumpUtil;->dumpYUVImage([BLjava/lang/String;IILjava/lang/String;Z)V

    .line 167
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v1

    const/16 v4, 0x11

    invoke-interface {v1, v8, v3, v4, v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessDone(III[B)V

    .line 168
    const/4 v1, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "output":[B
    .end local v2    # "output_width":I
    .end local v3    # "output_height":I
    .end local v6    # "output_size":I
    .end local v7    # "ret":I
    .end local v8    # "stridewidth":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 170
    .restart local v0    # "output":[B
    .restart local v2    # "output_width":I
    .restart local v3    # "output_height":I
    .restart local v6    # "output_size":I
    .restart local v8    # "stridewidth":I
    :cond_1
    sget-object v4, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v5, "ArcsoftPicZoom input image number error."

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected releaseEngineInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 119
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mPicZoomEngine:Lcom/thirdparty/arcsoft/ArcsoftPicZoom;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mPicZoomEngine:Lcom/thirdparty/arcsoft/ArcsoftPicZoom;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom;->release()V

    .line 123
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mPicZoomEngine:Lcom/thirdparty/arcsoft/ArcsoftPicZoom;

    .line 126
    :cond_0
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/PicZoomShotImageEngine;->mImgData:[B

    .line 127
    return-void

    .line 119
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
