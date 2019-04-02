.class public Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;
.super Lcom/thirdparty/arcsoft/engine/ImageEngine;
.source "PanoramaImageEngine.java"


# static fields
.field private static final PANO_ERROR_TORRENCE:I = 0x14

.field private static final REQUIRE_FRAME_NUM:I = 0x3

.field public static final SHAKE_LARGE_RATIO:F = 0.1f

.field public static final SHAKE_SMALL_RATIO:F = 0.05f

.field public static final SHAKE_TOO_LARGE_RATIO:F = 0.3f

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

.field private static final UPDATE_PREVIEW_OFFSET_THRESHOLD:I = 0x64

.field private static final UPDATE_PREVIEW_SHAKE_THRESHOLD:I = 0x1e


# instance fields
.field private final lCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

.field private final mError:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mErrorCnt:I

.field private final mHorizontalViewAngle:F

.field private final mImgFormat:I

.field private final mImgHeight:I

.field private final mImgWidth:I

.field private mLastOffset:[I

.field private mLastPreviewAttr:[I

.field private mLastPreviewData:[B

.field private mLastProgress:I

.field private mPanoBurstEngine:Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;

.field private final mRealtimeUpdate:Z

.field private final mService:Ljava/util/concurrent/ExecutorService;

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSuccessCnt:I

.field private final mVerticalViewAngle:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "PanoImgEngine"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;ZIIIFFLcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;Z)V
    .locals 5
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "infinite"    # Z
    .param p3, "imgWidth"    # I
    .param p4, "imgHeight"    # I
    .param p5, "imgFormat"    # I
    .param p6, "hAngle"    # F
    .param p7, "vAngle"    # F
    .param p8, "capturePanoramaCallback"    # Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
    .param p9, "realtimeUpdate"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 65
    const-class v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;

    const/4 v1, 0x3

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/thirdparty/arcsoft/engine/ImageEngine;-><init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V

    .line 56
    iput v2, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mErrorCnt:I

    .line 57
    iput v2, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mSuccessCnt:I

    .line 58
    iput v4, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastProgress:I

    .line 59
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastOffset:[I

    .line 60
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastPreviewData:[B

    .line 61
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastPreviewAttr:[I

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mService:Ljava/util/concurrent/ExecutorService;

    .line 72
    iput p3, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mImgWidth:I

    .line 73
    iput p4, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mImgHeight:I

    .line 75
    iput p5, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mImgFormat:I

    .line 76
    iput p6, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mHorizontalViewAngle:F

    .line 77
    iput p7, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mVerticalViewAngle:F

    .line 78
    iput-object p8, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->lCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    .line 79
    iput-boolean p9, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mRealtimeUpdate:Z

    .line 80
    iput v4, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastProgress:I

    .line 81
    iput-object v3, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastOffset:[I

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$202(Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;
    .param p1, "x1"    # [B

    .prologue
    .line 33
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastPreviewData:[B

    return-object p1
.end method

.method static synthetic access$302(Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;
    .param p1, "x1"    # [I

    .prologue
    .line 33
    iput-object p1, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastPreviewAttr:[I

    return-object p1
.end method

.method static synthetic access$400(Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;

    .prologue
    .line 33
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mImgWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;

    .prologue
    .line 33
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mImgHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;)Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->lCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    return-object v0
.end method


# virtual methods
.method protected abortEngineInternal()V
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v2, "abortEngineInternal"

    invoke-static {v0, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessAbort()V

    .line 102
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastProgress:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 103
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->lCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    const/16 v2, 0x7012

    invoke-interface {v0, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->onPanoramaFailed(I)V

    .line 106
    :cond_0
    monitor-exit v1

    .line 107
    return-void

    .line 106
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
    const/4 v0, 0x0

    .line 86
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    new-instance v1, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;

    iget v2, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mImgWidth:I

    int-to-long v2, v2

    iget v4, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mImgHeight:I

    int-to-long v4, v4

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mImgFormat:I

    iget v7, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mHorizontalViewAngle:F

    iget v8, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mVerticalViewAngle:F

    invoke-direct/range {v1 .. v8}, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;-><init>(JJIFF)V

    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mPanoBurstEngine:Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mPanoBurstEngine:Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected inputImageInternal(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;[BZ)Z
    .locals 20
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p3, "data"    # [B
    .param p4, "sync"    # Z

    .prologue
    .line 127
    sget-object v2, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inputImageInternal : mStop = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 129
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    .line 248
    :goto_0
    return v2

    .line 130
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 133
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 130
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 134
    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    const/4 v2, 0x1

    new-array v10, v2, [I

    .line 137
    .local v10, "progress":[I
    const/4 v2, 0x1

    new-array v11, v2, [I

    .line 138
    .local v11, "direction":[I
    const/4 v2, 0x2

    new-array v12, v2, [I

    .line 139
    .local v12, "offset":[I
    const/4 v2, 0x5

    new-array v13, v2, [I

    .line 140
    .local v13, "imageAttr":[I
    const/4 v2, 0x1

    new-array v14, v2, [I

    .line 142
    .local v14, "totalLength":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mPanoBurstEngine:Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mImgWidth:I

    int-to-long v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mImgHeight:I

    int-to-long v6, v2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mImgFormat:I

    move-object/from16 v9, p3

    invoke-virtual/range {v3 .. v14}, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->setInputImage(JJI[B[I[I[I[I[I)I

    move-result v18

    .line 144
    .local v18, "ret":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastProgress:I

    if-lez v2, :cond_3

    .line 145
    if-nez v18, :cond_2

    .line 146
    const/4 v2, 0x0

    aget v2, v11, v2

    packed-switch v2, :pswitch_data_0

    .line 171
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->lCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->onPanoramaWarning(I)V

    .line 174
    :cond_3
    if-eqz v18, :cond_4

    const v2, 0x8000

    move/from16 v0, v18

    if-le v0, v2, :cond_e

    const v2, 0x8080

    move/from16 v0, v18

    if-gt v0, v2, :cond_e

    .line 175
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mErrorCnt:I

    .line 176
    const/16 v17, 0x0

    .line 177
    .local v17, "needUpdatePreview":Z
    const/4 v2, 0x0

    aget v2, v10, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastProgress:I

    if-le v2, v3, :cond_b

    .line 178
    const/4 v2, 0x0

    aget v2, v10, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastProgress:I

    .line 179
    move-object/from16 v0, p0

    iget v2, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastProgress:I

    if-lez v2, :cond_5

    .line 180
    const/16 v17, 0x1

    .line 181
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastOffset:[I

    .line 210
    :cond_5
    :goto_2
    if-eqz v17, :cond_6

    .line 211
    const/4 v2, 0x3

    aget v2, v13, v2

    if-lez v2, :cond_6

    const/4 v2, 0x1

    aget v2, v13, v2

    if-lez v2, :cond_6

    .line 212
    const/4 v2, 0x3

    aget v15, v13, v2

    .line 213
    .local v15, "aligned64_width":I
    const/4 v2, 0x1

    aget v2, v13, v2

    mul-int/2addr v2, v15

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    .line 214
    .local v16, "imageSize":I
    move/from16 v0, v16

    new-array v4, v0, [B

    .line 215
    .local v4, "previewData":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mPanoBurstEngine:Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;

    invoke-virtual {v2, v4}, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->getPreviewImage([B)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mService:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v19, v0

    new-instance v2, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;

    move-object/from16 v3, p0

    move-object v5, v13

    move-object v6, v11

    move-object v7, v12

    move-object v8, v10

    move-object v9, v14

    invoke-direct/range {v2 .. v9}, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine$1;-><init>(Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;[B[I[I[I[I[I)V

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 248
    .end local v4    # "previewData":[B
    .end local v15    # "aligned64_width":I
    .end local v16    # "imageSize":I
    .end local v17    # "needUpdatePreview":Z
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 149
    :pswitch_0
    const/4 v2, 0x1

    aget v2, v12, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mImgHeight:I

    int-to-float v3, v3

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 150
    const/16 v18, 0x7007

    goto/16 :goto_1

    .line 151
    :cond_7
    const/4 v2, 0x1

    aget v2, v12, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mImgHeight:I

    int-to-float v3, v3

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 152
    const v18, 0x8020

    goto/16 :goto_1

    .line 153
    :cond_8
    const/4 v2, 0x1

    aget v2, v12, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mImgHeight:I

    int-to-float v3, v3

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 154
    const v18, 0x8010

    goto/16 :goto_1

    .line 159
    :pswitch_1
    const/4 v2, 0x0

    aget v2, v12, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mImgWidth:I

    int-to-float v3, v3

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    .line 160
    const/16 v18, 0x7007

    goto/16 :goto_1

    .line 161
    :cond_9
    const/4 v2, 0x0

    aget v2, v12, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mImgWidth:I

    int-to-float v3, v3

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    .line 162
    const v18, 0x8020

    goto/16 :goto_1

    .line 163
    :cond_a
    const/4 v2, 0x0

    aget v2, v12, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mImgWidth:I

    int-to-float v3, v3

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 164
    const v18, 0x8010

    goto/16 :goto_1

    .line 183
    .restart local v17    # "needUpdatePreview":Z
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mRealtimeUpdate:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastProgress:I

    if-lez v2, :cond_5

    .line 184
    const/4 v2, 0x0

    aget v2, v11, v2

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_2

    .line 187
    :pswitch_2
    const/4 v2, 0x0

    aget v2, v12, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastOffset:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_c

    const/4 v2, 0x0

    aget v2, v12, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastOffset:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_c

    .line 188
    const/16 v17, 0x1

    .line 189
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastOffset:[I

    goto/16 :goto_2

    .line 190
    :cond_c
    const/4 v2, 0x1

    aget v2, v12, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_5

    .line 191
    const/16 v17, 0x1

    .line 192
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastOffset:[I

    goto/16 :goto_2

    .line 197
    :pswitch_3
    const/4 v2, 0x1

    aget v2, v12, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_d

    const/4 v2, 0x1

    aget v2, v12, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_d

    .line 198
    const/16 v17, 0x1

    .line 199
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastOffset:[I

    goto/16 :goto_2

    .line 200
    :cond_d
    const/4 v2, 0x0

    aget v2, v12, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastOffset:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_5

    .line 201
    const/16 v17, 0x1

    .line 202
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastOffset:[I

    goto/16 :goto_2

    .line 236
    .end local v17    # "needUpdatePreview":Z
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mErrorCnt:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mErrorCnt:I

    const/16 v3, 0x14

    if-le v2, v3, :cond_10

    .line 237
    sget-object v2, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v3, "Too many error, abort engine."

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 239
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_f

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->lCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->onPanoramaFailed(I)V

    .line 242
    :cond_f
    monitor-exit v3

    goto/16 :goto_3

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 244
    :cond_10
    sget-object v2, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mErrorCnt : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mErrorCnt:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 248
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 184
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected processReultImageInternal()Z
    .locals 17

    .prologue
    .line 253
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v11

    .line 254
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v11

    .line 296
    :goto_0
    return v1

    .line 255
    :cond_0
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 257
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v11

    .line 258
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    monitor-exit v11

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 255
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 259
    :cond_1
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 261
    sget-object v1, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mLastProgress = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastProgress:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    iget v1, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastProgress:I

    if-nez v1, :cond_2

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->lCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    const/16 v11, 0x7012

    invoke-interface {v1, v11}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->onPanoramaFailed(I)V

    .line 264
    const/4 v1, 0x0

    goto :goto_0

    .line 267
    :cond_2
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 268
    .local v2, "progress":[I
    const/4 v1, 0x1

    new-array v3, v1, [I

    .line 269
    .local v3, "direction":[I
    const/4 v1, 0x2

    new-array v4, v1, [I

    .line 270
    .local v4, "offset":[I
    const/4 v1, 0x5

    new-array v5, v1, [I

    .line 271
    .local v5, "imageAttr":[I
    const/4 v1, 0x1

    new-array v6, v1, [I

    .line 273
    .local v6, "totalLength":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mPanoBurstEngine:Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;

    invoke-virtual/range {v1 .. v6}, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->stopPanorama([I[I[I[I[I)I

    move-result v10

    .line 275
    .local v10, "ret":I
    if-nez v10, :cond_4

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastPreviewData:[B

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastPreviewAttr:[I

    if-eqz v1, :cond_3

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastPreviewAttr:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastPreviewAttr:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    const/16 v13, 0x100

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastPreviewData:[B

    invoke-interface {v1, v11, v12, v13, v14}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onPostImage(III[B)V

    .line 280
    :cond_3
    const/4 v1, 0x3

    aget v7, v5, v1

    .line 281
    .local v7, "aligned64_width":I
    const/4 v1, 0x1

    aget v1, v5, v1

    mul-int/2addr v1, v7

    int-to-float v1, v1

    const/high16 v11, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v11

    float-to-int v8, v1

    .line 282
    .local v8, "imageSize":I
    new-array v9, v8, [B

    .line 283
    .local v9, "resultImage":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mPanoBurstEngine:Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;

    invoke-virtual {v1, v9}, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->getResultImage([B)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v1

    const/4 v11, 0x0

    aget v11, v5, v11

    const/4 v12, 0x1

    aget v12, v5, v12

    const/16 v13, 0x100

    const/4 v14, 0x0

    aget v14, v5, v14

    const/4 v15, 0x1

    aget v15, v5, v15

    const/16 v16, 0x3

    aget v16, v5, v16

    move/from16 v0, v16

    invoke-static {v9, v14, v15, v0}, Lcom/android/camera/util/YuvToJpeg;->transPanoByteData([BIII)[B

    move-result-object v14

    invoke-interface {v1, v11, v12, v13, v14}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessDone(III[B)V

    .line 293
    .end local v7    # "aligned64_width":I
    .end local v8    # "imageSize":I
    .end local v9    # "resultImage":[B
    :goto_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastPreviewData:[B

    .line 294
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mLastPreviewAttr:[I

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 286
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v11

    .line 287
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_5

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->lCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    invoke-interface {v1, v10}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->onPanoramaFailed(I)V

    .line 290
    :cond_5
    monitor-exit v11

    goto :goto_1

    :catchall_2
    move-exception v1

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 296
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method protected releaseEngineInternal()V
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 113
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mPanoBurstEngine:Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mPanoBurstEngine:Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;->release()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mPanoBurstEngine:Lcom/thirdparty/arcsoft/ArcsoftPanoramaBurst;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PanoramaImageEngine;->mService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 123
    :cond_1
    return-void

    .line 113
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
