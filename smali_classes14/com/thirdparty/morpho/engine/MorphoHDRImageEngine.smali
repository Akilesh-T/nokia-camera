.class public Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;
.super Lcom/thirdparty/arcsoft/engine/ImageEngine;
.source "MorphoHDRImageEngine.java"


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

.field protected mMorphoHDREngine:Lcom/thirdparty/morpho/MorphoHDR;

.field protected mReceivedImgCount:I

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field params:Landroid/hardware/Camera$Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "MorphoHDRImageEngine"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

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

    .line 47
    const-class v0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/thirdparty/arcsoft/engine/ImageEngine;-><init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V

    .line 31
    iput-object v2, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mMorphoHDREngine:Lcom/thirdparty/morpho/MorphoHDR;

    .line 38
    iput v1, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->OUTPUT_INDEX:I

    .line 39
    iput v1, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mReceivedImgCount:I

    .line 40
    iput-object v2, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mImgData:[B

    .line 49
    iput p2, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->TARGET_INPUT_SIZE:I

    .line 50
    iput p5, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mImgWidth:I

    .line 51
    iput p6, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mImgHeight:I

    .line 52
    iput p7, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mImgFormat:I

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    iput-boolean p4, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mIsBackCamera:Z

    .line 56
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

    .line 59
    const-class v0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/thirdparty/arcsoft/engine/ImageEngine;-><init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V

    .line 31
    iput-object v2, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mMorphoHDREngine:Lcom/thirdparty/morpho/MorphoHDR;

    .line 38
    iput v1, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->OUTPUT_INDEX:I

    .line 39
    iput v1, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mReceivedImgCount:I

    .line 40
    iput-object v2, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mImgData:[B

    .line 61
    iput p2, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->TARGET_INPUT_SIZE:I

    .line 62
    iput p5, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mImgWidth:I

    .line 63
    iput p6, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mImgHeight:I

    .line 64
    iput p7, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mImgFormat:I

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    iput-boolean p4, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mIsBackCamera:Z

    .line 67
    iput-object p8, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    .line 69
    return-void
.end method


# virtual methods
.method protected abortEngineInternal()V
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessAbort()V

    .line 95
    :cond_0
    monitor-exit v1

    .line 96
    return-void

    .line 95
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

    .line 73
    iget-object v2, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 86
    :goto_0
    return v11

    .line 75
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object v1, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mMorphoHDREngine:Lcom/thirdparty/morpho/MorphoHDR;

    invoke-static {}, Lcom/thirdparty/morpho/MorphoHDR;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    const/4 v10, 0x1

    .line 78
    .local v10, "a_value":I
    iget v1, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mImgWidth:I

    int-to-double v2, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 79
    .local v0, "stridewidth":I
    new-instance v1, Lcom/thirdparty/morpho/MorphoHDR;

    int-to-long v2, v0

    iget v4, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->TARGET_INPUT_SIZE:I

    iget v7, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mImgFormat:I

    iget-boolean v8, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mIsBackCamera:Z

    const/16 v9, 0xc80

    invoke-direct/range {v1 .. v10}, Lcom/thirdparty/morpho/MorphoHDR;-><init>(JJIIZII)V

    iput-object v1, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mMorphoHDREngine:Lcom/thirdparty/morpho/MorphoHDR;

    .line 80
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getOpticalConfiguration()Lcom/android/camera/util/FihOpticalConfiguration;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mMorphoHDREngine:Lcom/thirdparty/morpho/MorphoHDR;

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getOpticalConfiguration()Lcom/android/camera/util/FihOpticalConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/thirdparty/morpho/MorphoHDR;->setParameters(Lcom/android/camera/util/FihOpticalConfiguration;)V

    .line 86
    .end local v0    # "stridewidth":I
    .end local v10    # "a_value":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mMorphoHDREngine:Lcom/thirdparty/morpho/MorphoHDR;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    move v11, v1

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 83
    .restart local v0    # "stridewidth":I
    .restart local v10    # "a_value":I
    :cond_2
    iget-object v1, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mMorphoHDREngine:Lcom/thirdparty/morpho/MorphoHDR;

    iget-object v2, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mMetadata:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v1, v2}, Lcom/thirdparty/morpho/MorphoHDR;->setMetaParameter(Landroid/hardware/camera2/CameraCharacteristics;)V

    goto :goto_1

    .end local v0    # "stridewidth":I
    .end local v10    # "a_value":I
    :cond_3
    move v1, v11

    .line 86
    goto :goto_2
.end method

.method protected inputImageInternal(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;[BZ)Z
    .locals 4
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p3, "data"    # [B
    .param p4, "sync"    # Z

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v2, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 115
    :try_start_0
    iget-object v3, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v2

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 116
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    if-eqz p3, :cond_0

    .line 119
    iget v1, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mReceivedImgCount:I

    if-nez v1, :cond_2

    .line 120
    iput-object p3, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mImgData:[B

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mMorphoHDREngine:Lcom/thirdparty/morpho/MorphoHDR;

    invoke-virtual {v1, p3}, Lcom/thirdparty/morpho/MorphoHDR;->setInputImage([B)Z

    move-result v0

    .line 129
    .local v0, "result":Z
    sget-object v1, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 130
    iget v1, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mReceivedImgCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mReceivedImgCount:I

    .line 131
    const/4 v1, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected processReultImageInternal()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v2, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 137
    :try_start_0
    iget-object v3, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v2

    .line 150
    :goto_0
    return v1

    .line 138
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget v2, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mReceivedImgCount:I

    iget v3, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->TARGET_INPUT_SIZE:I

    if-ne v2, v3, :cond_1

    .line 142
    iget-object v1, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mMorphoHDREngine:Lcom/thirdparty/morpho/MorphoHDR;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/thirdparty/morpho/MorphoHDR;->setRefNum(J)V

    .line 143
    iget-object v1, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mMorphoHDREngine:Lcom/thirdparty/morpho/MorphoHDR;

    invoke-virtual {v1}, Lcom/thirdparty/morpho/MorphoHDR;->doEnhancement()Z

    move-result v0

    .line 144
    .local v0, "ret":Z
    sget-object v1, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doHDR ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mImgHeight:I

    const/16 v4, 0x11

    iget-object v5, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mImgData:[B

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessDone(III[B)V

    .line 147
    const/4 v1, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "ret":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 149
    :cond_1
    sget-object v2, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v3, "ArcsoftHDR input image number error."

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected releaseEngineInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-object v1, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 102
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v0, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mMorphoHDREngine:Lcom/thirdparty/morpho/MorphoHDR;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mMorphoHDREngine:Lcom/thirdparty/morpho/MorphoHDR;

    invoke-virtual {v0}, Lcom/thirdparty/morpho/MorphoHDR;->release()V

    .line 106
    iput-object v3, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mMorphoHDREngine:Lcom/thirdparty/morpho/MorphoHDR;

    .line 109
    :cond_0
    iput-object v3, p0, Lcom/thirdparty/morpho/engine/MorphoHDRImageEngine;->mImgData:[B

    .line 110
    return-void

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
