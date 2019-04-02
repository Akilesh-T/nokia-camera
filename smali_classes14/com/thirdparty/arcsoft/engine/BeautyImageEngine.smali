.class public Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;
.super Lcom/thirdparty/arcsoft/engine/ImageEngine;
.source "BeautyImageEngine.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private mBeautyEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

.field private final mBeautyLevel:I

.field private mImgData:[B

.field private final mImgFormat:I

.field private final mImgHeight:I

.field private final mImgWidth:I

.field private final mIsBackCamera:Z

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "BeautyImgEng"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

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
    .param p8, "beautyLevel"    # I

    .prologue
    const/4 v1, 0x0

    .line 36
    const-class v0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/thirdparty/arcsoft/engine/ImageEngine;-><init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V

    .line 24
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mBeautyEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    .line 33
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mImgData:[B

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    iput-boolean p4, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mIsBackCamera:Z

    .line 39
    iput p5, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mImgWidth:I

    .line 40
    iput p6, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mImgHeight:I

    .line 41
    iput p7, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mImgFormat:I

    .line 42
    iput p8, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mBeautyLevel:I

    .line 43
    return-void
.end method


# virtual methods
.method protected abortEngineInternal()V
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessAbort()V

    .line 64
    :cond_0
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected initEngineInternal()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 47
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    new-instance v1, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mImgWidth:I

    int-to-long v2, v2

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mImgFormat:I

    invoke-direct/range {v1 .. v6}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;-><init>(JJI)V

    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mBeautyEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mBeautyEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected inputImageInternal(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;[BZ)Z
    .locals 3
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p3, "data"    # [B
    .param p4, "sync"    # Z

    .prologue
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    if-eqz p3, :cond_0

    .line 88
    iput-object p3, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mImgData:[B

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected processReultImageInternal()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 96
    :try_start_0
    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v2

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mImgData:[B

    if-eqz v2, :cond_0

    .line 100
    sget-object v1, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBeautyLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mBeautyLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mBeautyEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mBeautyLevel:I

    invoke-virtual {v1, v2}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->setBeautyLevel(I)V

    .line 102
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mBeautyEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mImgWidth:I

    int-to-long v2, v2

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mImgFormat:I

    iget-object v7, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mImgData:[B

    invoke-virtual/range {v1 .. v7}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->processImage(JJI[B)I

    move-result v0

    .line 103
    .local v0, "ret":I
    sget-object v1, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeautyEngine processImage ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mImgHeight:I

    const/16 v4, 0x11

    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mImgData:[B

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessDone(III[B)V

    .line 107
    const/4 v1, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected releaseEngineInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 69
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 71
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mBeautyEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mBeautyEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->release()V

    .line 75
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mBeautyEngine:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    .line 78
    :cond_0
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/BeautyImageEngine;->mImgData:[B

    .line 79
    return-void

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
