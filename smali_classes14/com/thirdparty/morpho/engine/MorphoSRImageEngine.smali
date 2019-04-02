.class public Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;
.super Lcom/thirdparty/arcsoft/engine/ImageEngine;
.source "MorphoSRImageEngine.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field protected final OUTPUT_INDEX:I

.field protected final TARGET_INPUT_SIZE:I

.field alignment:I

.field protected mImgData:[B

.field protected final mImgFormat:I

.field protected final mImgHeight:I

.field protected final mImgWidth:I

.field protected final mIsBackCamera:Z

.field private mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

.field protected mMorphoSREngine:Lcom/thirdparty/morpho/MorphoSR;

.field protected mReceivedImgCount:I

.field private mScale:I

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field params:Landroid/hardware/Camera$Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "MorphoHDRImageEngine"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

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

    .line 45
    const-class v0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/thirdparty/arcsoft/engine/ImageEngine;-><init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V

    .line 28
    iput-object v2, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mMorphoSREngine:Lcom/thirdparty/morpho/MorphoSR;

    .line 35
    iput v1, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->OUTPUT_INDEX:I

    .line 36
    iput v1, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mReceivedImgCount:I

    .line 37
    iput-object v2, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mImgData:[B

    .line 42
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getSRScale()I

    move-result v0

    iput v0, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mScale:I

    .line 47
    iput p2, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->TARGET_INPUT_SIZE:I

    .line 48
    iput p5, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mImgWidth:I

    .line 49
    iput p6, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mImgHeight:I

    .line 50
    iput p7, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mImgFormat:I

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    iput-boolean p4, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mIsBackCamera:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIILandroid/hardware/camera2/CameraCharacteristics;)V
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
    .param p8, "metadata"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    const-class v0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/thirdparty/arcsoft/engine/ImageEngine;-><init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V

    .line 28
    iput-object v2, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mMorphoSREngine:Lcom/thirdparty/morpho/MorphoSR;

    .line 35
    iput v1, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->OUTPUT_INDEX:I

    .line 36
    iput v1, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mReceivedImgCount:I

    .line 37
    iput-object v2, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mImgData:[B

    .line 42
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getSRScale()I

    move-result v0

    iput v0, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mScale:I

    .line 59
    iput p2, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->TARGET_INPUT_SIZE:I

    .line 60
    iput p5, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mImgWidth:I

    .line 61
    iput p6, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mImgHeight:I

    .line 62
    iput p7, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mImgFormat:I

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    iput-boolean p4, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mIsBackCamera:Z

    .line 65
    iput-object p8, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    .line 67
    return-void
.end method


# virtual methods
.method protected abortEngineInternal()V
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessAbort()V

    .line 93
    :cond_0
    monitor-exit v1

    .line 94
    return-void

    .line 93
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
    const/4 v11, 0x0

    const-wide/high16 v4, 0x4050000000000000L    # 64.0

    .line 71
    iget-object v2, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 84
    :goto_0
    return v11

    .line 73
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object v1, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mMorphoSREngine:Lcom/thirdparty/morpho/MorphoSR;

    invoke-static {}, Lcom/thirdparty/morpho/MorphoSR;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    const/4 v10, 0x1

    .line 76
    .local v10, "a_value":I
    iget v1, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mImgWidth:I

    int-to-double v2, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 77
    .local v0, "stridewidth":I
    new-instance v1, Lcom/thirdparty/morpho/MorphoSR;

    int-to-long v2, v0

    iget v4, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->TARGET_INPUT_SIZE:I

    iget v7, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mImgFormat:I

    iget-boolean v8, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mIsBackCamera:Z

    const/16 v9, 0xc80

    invoke-direct/range {v1 .. v10}, Lcom/thirdparty/morpho/MorphoSR;-><init>(JJIIZII)V

    iput-object v1, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mMorphoSREngine:Lcom/thirdparty/morpho/MorphoSR;

    .line 78
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getOpticalConfiguration()Lcom/android/camera/util/FihOpticalConfiguration;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mMorphoSREngine:Lcom/thirdparty/morpho/MorphoSR;

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getOpticalConfiguration()Lcom/android/camera/util/FihOpticalConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/thirdparty/morpho/MorphoSR;->setParameters(Lcom/android/camera/util/FihOpticalConfiguration;)V

    .line 84
    .end local v0    # "stridewidth":I
    .end local v10    # "a_value":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mMorphoSREngine:Lcom/thirdparty/morpho/MorphoSR;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    move v11, v1

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 81
    .restart local v0    # "stridewidth":I
    .restart local v10    # "a_value":I
    :cond_2
    iget-object v1, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mMorphoSREngine:Lcom/thirdparty/morpho/MorphoSR;

    iget-object v2, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v1, v2}, Lcom/thirdparty/morpho/MorphoSR;->setMetaParameter(Landroid/hardware/camera2/CameraCharacteristics;)V

    goto :goto_1

    .end local v0    # "stridewidth":I
    .end local v10    # "a_value":I
    :cond_3
    move v1, v11

    .line 84
    goto :goto_2
.end method

.method protected inputImageInternal(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;[BZ)Z
    .locals 3
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p3, "data"    # [B
    .param p4, "sync"    # Z

    .prologue
    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    if-eqz p3, :cond_0

    .line 117
    iget v0, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mReceivedImgCount:I

    if-nez v0, :cond_2

    .line 118
    iput-object p3, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mImgData:[B

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mMorphoSREngine:Lcom/thirdparty/morpho/MorphoSR;

    invoke-virtual {v0, p3}, Lcom/thirdparty/morpho/MorphoSR;->setInputImage([B)Z

    .line 127
    iget v0, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mReceivedImgCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mReceivedImgCount:I

    .line 128
    const/4 v0, 0x1

    goto :goto_0

    .line 114
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
    const/4 v6, 0x0

    const-wide/high16 v10, 0x4050000000000000L    # 64.0

    .line 133
    iget-object v7, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v7

    .line 134
    :try_start_0
    iget-object v8, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_0

    monitor-exit v7

    .line 155
    :goto_0
    return v6

    .line 135
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget v7, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mImgWidth:I

    iget v8, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mScale:I

    mul-int v3, v7, v8

    .line 139
    .local v3, "output_width":I
    int-to-double v8, v3

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    mul-double/2addr v8, v10

    double-to-int v5, v8

    .line 141
    .local v5, "stridewidth":I
    iget v7, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mImgHeight:I

    iget v8, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mScale:I

    mul-int v1, v7, v8

    .line 143
    .local v1, "output_height":I
    mul-int v7, v5, v1

    int-to-double v8, v7

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v8, v10

    double-to-int v2, v8

    .line 144
    .local v2, "output_size":I
    new-array v0, v2, [B

    .line 146
    .local v0, "output":[B
    iget v7, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mReceivedImgCount:I

    iget v8, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->TARGET_INPUT_SIZE:I

    if-ne v7, v8, :cond_1

    .line 148
    iget-object v6, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mMorphoSREngine:Lcom/thirdparty/morpho/MorphoSR;

    invoke-virtual {v6, v0}, Lcom/thirdparty/morpho/MorphoSR;->doEnhancement([B)I

    move-result v4

    .line 149
    .local v4, "ret":I
    sget-object v6, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doEnhancement ret : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v6

    const/16 v7, 0x11

    invoke-interface {v6, v5, v1, v7, v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessDone(III[B)V

    .line 152
    const/4 v6, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "output":[B
    .end local v1    # "output_height":I
    .end local v2    # "output_size":I
    .end local v3    # "output_width":I
    .end local v4    # "ret":I
    .end local v5    # "stridewidth":I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 154
    .restart local v0    # "output":[B
    .restart local v1    # "output_height":I
    .restart local v2    # "output_size":I
    .restart local v3    # "output_width":I
    .restart local v5    # "stridewidth":I
    :cond_1
    sget-object v7, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v8, "ArcsoftPicZoom input image number error."

    invoke-static {v7, v8}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected releaseEngineInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    iget-object v1, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 100
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v0, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mMorphoSREngine:Lcom/thirdparty/morpho/MorphoSR;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mMorphoSREngine:Lcom/thirdparty/morpho/MorphoSR;

    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoSR;->release()V

    .line 104
    iput-object v3, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mMorphoSREngine:Lcom/thirdparty/morpho/MorphoSR;

    .line 107
    :cond_0
    iput-object v3, p0, Lcom/thirdparty/morpho/engine/MorphoSRImageEngine;->mImgData:[B

    .line 108
    return-void

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
