.class public Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;
.super Lcom/thirdparty/arcsoft/engine/ImageEngine;
.source "PicSelfieImageEngine.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private mArcsoftBeautyImage:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

.field private mBeautyImage:Lcom/thirdparty/megvii/engine/BeautyImage;

.field private final mBeautyLevel:I

.field private final mBeautySetting:Z

.field private mBokehLevel:I

.field private mEverPicSelfieEngine:Lcom/thirdparty/imagelab/EverPicSelfie;

.field private mImgData:[B

.field private final mImgFormat:I

.field private final mImgHeight:I

.field private final mImgWidth:I

.field private final mIsBackCamera:Z

.field private mPicSelfieEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

.field private mScreenOrientation:I

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "PicSelfieImgEng"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZZIIIZII)V
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
    .param p8, "beautySetting"    # Z
    .param p9, "beautyLevel"    # I
    .param p10, "screenOrientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 43
    const-class v0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/thirdparty/arcsoft/engine/ImageEngine;-><init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V

    .line 24
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mPicSelfieEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

    .line 25
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mEverPicSelfieEngine:Lcom/thirdparty/imagelab/EverPicSelfie;

    .line 27
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautyImage:Lcom/thirdparty/megvii/engine/BeautyImage;

    .line 28
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mArcsoftBeautyImage:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    .line 38
    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgData:[B

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBokehLevel:I

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    iput-boolean p4, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mIsBackCamera:Z

    .line 46
    iput p5, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgWidth:I

    .line 47
    iput p6, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgHeight:I

    .line 48
    iput p7, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgFormat:I

    .line 49
    iput-boolean p8, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautySetting:Z

    .line 50
    iput p9, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautyLevel:I

    .line 51
    iput p10, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mScreenOrientation:I

    .line 52
    return-void
.end method


# virtual methods
.method protected abortEngineInternal()V
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessAbort()V

    .line 85
    :cond_0
    monitor-exit v1

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected initEngineInternal()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 56
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 76
    :cond_0
    :goto_0
    return v7

    .line 58
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isSelfieBokehCaptureUsingImageLabSolution()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqZeissBokeh()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61
    :cond_2
    sget-object v0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "Using : EverPicSelfieEngin"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/thirdparty/imagelab/EverPicSelfie;

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgWidth:I

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgHeight:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgFormat:I

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mScreenOrientation:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/thirdparty/imagelab/EverPicSelfie;-><init>(IIII)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mEverPicSelfieEngine:Lcom/thirdparty/imagelab/EverPicSelfie;

    .line 67
    :cond_3
    :goto_1
    sget-object v0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PicSelfieEngine processImage mScreenOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mScreenOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isPicSelfUseArcsoftBeautyCapture()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 69
    iput-object v8, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautyImage:Lcom/thirdparty/megvii/engine/BeautyImage;

    .line 70
    new-instance v1, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgWidth:I

    int-to-long v2, v0

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgHeight:I

    int-to-long v4, v0

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgFormat:I

    invoke-direct/range {v1 .. v6}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;-><init>(JJI)V

    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mArcsoftBeautyImage:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    .line 76
    :goto_2
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mPicSelfieEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mEverPicSelfieEngine:Lcom/thirdparty/imagelab/EverPicSelfie;

    if-eqz v0, :cond_0

    :cond_4
    const/4 v7, 0x1

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 63
    :cond_5
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    sget-object v0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "Using : PicSelfieEngine"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 65
    new-instance v1, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgWidth:I

    int-to-long v2, v0

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgHeight:I

    int-to-long v4, v0

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgFormat:I

    invoke-direct/range {v1 .. v6}, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;-><init>(JJI)V

    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mPicSelfieEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

    goto :goto_1

    .line 72
    :cond_6
    iput-object v8, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mArcsoftBeautyImage:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    .line 73
    new-instance v1, Lcom/thirdparty/megvii/engine/BeautyImage;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgHeight:I

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mScreenOrientation:I

    iget-boolean v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautySetting:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautyLevel:I

    :goto_3
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/thirdparty/megvii/engine/BeautyImage;-><init>(IIII)V

    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautyImage:Lcom/thirdparty/megvii/engine/BeautyImage;

    goto :goto_2

    :cond_7
    move v0, v7

    goto :goto_3
.end method

.method protected inputImageInternal(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;[BZ)Z
    .locals 3
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p3, "data"    # [B
    .param p4, "sync"    # Z

    .prologue
    const/4 v0, 0x0

    .line 115
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    if-eqz p3, :cond_0

    .line 120
    iput-object p3, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgData:[B

    .line 122
    const/4 v0, 0x1

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected processReultImageInternal()Z
    .locals 13

    .prologue
    const/16 v12, 0x11

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 127
    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v3

    .line 171
    :cond_0
    :goto_0
    return v2

    .line 129
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgData:[B

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mEverPicSelfieEngine:Lcom/thirdparty/imagelab/EverPicSelfie;

    if-eqz v1, :cond_6

    .line 136
    const/4 v7, 0x0

    .line 137
    .local v7, "yuvData":[B
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautyImage:Lcom/thirdparty/megvii/engine/BeautyImage;

    if-eqz v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautyImage:Lcom/thirdparty/megvii/engine/BeautyImage;

    invoke-virtual {v1}, Lcom/thirdparty/megvii/engine/BeautyImage;->isNeedProcessBeauty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautyImage:Lcom/thirdparty/megvii/engine/BeautyImage;

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgData:[B

    invoke-virtual {v1, v2}, Lcom/thirdparty/megvii/engine/BeautyImage;->processImage([B)[B

    move-result-object v7

    .line 145
    :goto_1
    sget-object v1, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "psmodelsdk-v2.0.3/PicSelfie: mImgData.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgData:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 147
    .local v10, "start":J
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mEverPicSelfieEngine:Lcom/thirdparty/imagelab/EverPicSelfie;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBokehLevel:I

    invoke-virtual {v1, v2}, Lcom/thirdparty/imagelab/EverPicSelfie;->setBokehLevel(I)V

    .line 148
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mEverPicSelfieEngine:Lcom/thirdparty/imagelab/EverPicSelfie;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgHeight:I

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgFormat:I

    invoke-virtual {v1, v2, v3, v4, v7}, Lcom/thirdparty/imagelab/EverPicSelfie;->processImage(III[B)[B

    move-result-object v0

    .line 149
    .local v0, "psmod_yvuData":[B
    sget-object v1, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "psmodelsdk-v2.0.3/PicSelfie: *processImage total duration ms: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgHeight:I

    invoke-interface {v1, v2, v3, v12, v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessDone(III[B)V

    move v2, v9

    .line 152
    goto :goto_0

    .line 129
    .end local v0    # "psmod_yvuData":[B
    .end local v7    # "yuvData":[B
    .end local v10    # "start":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 138
    .restart local v7    # "yuvData":[B
    :cond_2
    iget-object v7, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgData:[B

    goto :goto_1

    .line 140
    :cond_3
    sget-object v3, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PicSelfieEngine BeautyLevel : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautySetting:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautyLevel:I

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mArcsoftBeautyImage:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    iget-boolean v3, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautySetting:Z

    if-eqz v3, :cond_4

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautyLevel:I

    :cond_4
    invoke-virtual {v1, v2}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->setBeautyLevel(I)V

    .line 142
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mArcsoftBeautyImage:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgWidth:I

    int-to-long v2, v2

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgFormat:I

    iget-object v7, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgData:[B

    .end local v7    # "yuvData":[B
    invoke-virtual/range {v1 .. v7}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->processImage(JJI[B)I

    move-result v8

    .line 143
    .local v8, "ret":I
    iget-object v7, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgData:[B

    .restart local v7    # "yuvData":[B
    goto/16 :goto_1

    .end local v8    # "ret":I
    :cond_5
    move v1, v2

    .line 140
    goto :goto_2

    .line 154
    .end local v7    # "yuvData":[B
    :cond_6
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mPicSelfieEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

    if-eqz v1, :cond_0

    .line 155
    const/4 v7, 0x0

    .line 156
    .restart local v7    # "yuvData":[B
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautyImage:Lcom/thirdparty/megvii/engine/BeautyImage;

    if-eqz v1, :cond_8

    .line 157
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautyImage:Lcom/thirdparty/megvii/engine/BeautyImage;

    invoke-virtual {v1}, Lcom/thirdparty/megvii/engine/BeautyImage;->isNeedProcessBeauty()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautyImage:Lcom/thirdparty/megvii/engine/BeautyImage;

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgData:[B

    invoke-virtual {v1, v2}, Lcom/thirdparty/megvii/engine/BeautyImage;->processImage([B)[B

    move-result-object v7

    .line 164
    :goto_3
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mPicSelfieEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBokehLevel:I

    invoke-virtual {v1, v2}, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;->setBokehLevel(I)V

    .line 165
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mPicSelfieEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgWidth:I

    int-to-long v2, v2

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgFormat:I

    invoke-virtual/range {v1 .. v7}, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;->processImage(JJI[B)I

    move-result v8

    .line 166
    .restart local v8    # "ret":I
    sget-object v1, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PicSelfieEngine processImage ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgWidth:I

    iget v3, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgHeight:I

    invoke-interface {v1, v2, v3, v12, v7}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessDone(III[B)V

    move v2, v9

    .line 169
    goto/16 :goto_0

    .line 157
    .end local v8    # "ret":I
    :cond_7
    iget-object v7, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgData:[B

    goto :goto_3

    .line 159
    :cond_8
    sget-object v3, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PicSelfieEngine BeautyLevel : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautySetting:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautyLevel:I

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mArcsoftBeautyImage:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    iget-boolean v3, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautySetting:Z

    if-eqz v3, :cond_9

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautyLevel:I

    :cond_9
    invoke-virtual {v1, v2}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->setBeautyLevel(I)V

    .line 161
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mArcsoftBeautyImage:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgWidth:I

    int-to-long v2, v2

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgFormat:I

    iget-object v7, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgData:[B

    .end local v7    # "yuvData":[B
    invoke-virtual/range {v1 .. v7}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->processImage(JJI[B)I

    move-result v8

    .line 162
    .restart local v8    # "ret":I
    iget-object v7, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgData:[B

    .restart local v7    # "yuvData":[B
    goto :goto_3

    .end local v8    # "ret":I
    :cond_a
    move v1, v2

    .line 159
    goto :goto_4
.end method

.method protected releaseEngineInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 92
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mPicSelfieEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mPicSelfieEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;->release()V

    .line 96
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mPicSelfieEngine:Lcom/thirdparty/arcsoft/ArcsoftPicSelfieImage;

    .line 102
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautyImage:Lcom/thirdparty/megvii/engine/BeautyImage;

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautyImage:Lcom/thirdparty/megvii/engine/BeautyImage;

    invoke-virtual {v0}, Lcom/thirdparty/megvii/engine/BeautyImage;->release()V

    .line 104
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mBeautyImage:Lcom/thirdparty/megvii/engine/BeautyImage;

    .line 110
    :cond_1
    :goto_1
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mImgData:[B

    .line 111
    return-void

    .line 92
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mEverPicSelfieEngine:Lcom/thirdparty/imagelab/EverPicSelfie;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mEverPicSelfieEngine:Lcom/thirdparty/imagelab/EverPicSelfie;

    invoke-virtual {v0}, Lcom/thirdparty/imagelab/EverPicSelfie;->release()V

    .line 99
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mEverPicSelfieEngine:Lcom/thirdparty/imagelab/EverPicSelfie;

    goto :goto_0

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mArcsoftBeautyImage:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mArcsoftBeautyImage:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;->release()V

    .line 107
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/PicSelfieImageEngine;->mArcsoftBeautyImage:Lcom/thirdparty/arcsoft/ArcsoftBeautyImage;

    goto :goto_1
.end method
