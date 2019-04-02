.class Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;
.super Ljava/lang/Object;
.source "QCDenoiseImageCaptureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/ImageCaptureCommand;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final DENOISE_REQUIRE_IMAGES:I = 0x1

.field public static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final m3AStateProvider:Lcom/android/camera/one/v2/photo/State3AProvider;

.field private final mCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mCaptureRawSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

.field private final mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

.field private final mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

.field private final mIsFrontFacing:Z

.field private final mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

.field private final mMaxLookBackNanos:J

.field private final mMetadataFilter:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mPostHandleUltraWideDC:Z

.field private final mProfiler:Lcom/android/camera/stats/profiler/Profiler;

.field private final mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

.field private final mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mRepeatingRequestTemplate:I

.field private final mRestorePreviewCommand:Ljava/lang/Runnable;

.field private final mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

.field private final mStillCaptureRequestTemplate:I

.field private final mTargetCaptureSize:Lcom/android/camera/util/Size;

.field private final mWaitForAFConvergence:Z

.field private final mZslMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

.field private final mZslRingBuffer:Lcom/android/camera/async/BufferQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "QC_SDNImgCapCmd"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;ILcom/android/camera/one/v2/core/RequestBuilder$Factory;IZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Ljava/lang/Runnable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;ZJZ)V
    .locals 6
    .param p2, "zslMetadataPool"    # Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;
    .param p3, "imageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p4, "rawImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p5, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p6, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p7, "repeatingRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p8, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p9, "repeatingRequestTemplate"    # I
    .param p10, "stillCaptureRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p11, "stillCaptureRequestTemplate"    # I
    .param p12, "waitForAFConvergence"    # Z
    .param p13, "state3AProvider"    # Lcom/android/camera/one/v2/photo/State3AProvider;
    .param p14, "sceneDetector"    # Lcom/android/camera/one/v2/photo/SceneDetector;
    .param p15, "restorePreviewCommand"    # Ljava/lang/Runnable;
    .param p16, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p17, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p19, "isFrontFacing"    # Z
    .param p20, "maxLookBackNanos"    # J
    .param p22, "postHandleUltraWideDC"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;",
            "Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;",
            "I",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "IZ",
            "Lcom/android/camera/one/v2/photo/State3AProvider;",
            "Lcom/android/camera/one/v2/photo/SceneDetector;",
            "Ljava/lang/Runnable;",
            "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;ZJZ)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "zslRingBuffer":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    .local p18, "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mZslRingBuffer:Lcom/android/camera/async/BufferQueue;

    .line 161
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mZslMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    .line 162
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 163
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 164
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 165
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 166
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 167
    iput-object p8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    .line 168
    iput p9, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mRepeatingRequestTemplate:I

    .line 169
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 170
    move/from16 v0, p11

    iput v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mStillCaptureRequestTemplate:I

    .line 171
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mWaitForAFConvergence:Z

    .line 173
    invoke-static {p7}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 174
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->m3AStateProvider:Lcom/android/camera/one/v2/photo/State3AProvider;

    .line 175
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 176
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    .line 177
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    .line 178
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    .line 179
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    .line 180
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mIsFrontFacing:Z

    .line 181
    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mMaxLookBackNanos:J

    .line 182
    new-instance v2, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;-><init>(ZZ)V

    iput-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mMetadataFilter:Lcom/google/common/base/Predicate;

    .line 183
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 184
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mPostHandleUltraWideDC:Z

    .line 185
    return-void
.end method

.method private captureBurst(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;Lcom/android/camera/stats/profiler/Profile;)V
    .locals 14
    .param p1, "session"    # Lcom/android/camera/one/v2/core/FrameServer$Session;
    .param p2, "imageStream"    # Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .param p3, "rawImageStream"    # Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .param p5, "imageProcessor"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .param p6, "guard"    # Lcom/android/camera/stats/profiler/Profile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer$Session;",
            "Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;",
            "Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;",
            "Lcom/android/camera/stats/profiler/Profile;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    .line 387
    .local p4, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    new-instance v2, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 388
    .local v2, "burstRequest":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    new-instance v7, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 389
    .local v7, "metadata":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;>;"
    const/4 v4, 0x1

    .line 390
    .local v4, "first":Z
    invoke-interface/range {p6 .. p6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 391
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v11, 0x1

    if-ge v5, v11, :cond_2

    .line 392
    iget-object v11, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v12, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mStillCaptureRequestTemplate:I

    invoke-interface {v11, v12}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v1

    .line 394
    .local v1, "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v12, 0x2

    .line 395
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 394
    invoke-virtual {v1, v11, v12}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 397
    if-eqz v4, :cond_0

    .line 398
    const/4 v4, 0x0

    .line 399
    invoke-static/range {p4 .. p4}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFrameExposure(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 402
    :cond_0
    new-instance v8, Lcom/android/camera/one/v2/photo/MetadataFuture;

    invoke-direct {v8}, Lcom/android/camera/one/v2/photo/MetadataFuture;-><init>()V

    .line 403
    .local v8, "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    invoke-virtual {v1, v8}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 404
    invoke-virtual {v8}, Lcom/android/camera/one/v2/photo/MetadataFuture;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 408
    if-eqz p3, :cond_1

    .line 409
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 412
    :cond_1
    iget-object v11, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    invoke-virtual {v11, v1}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->appendParamForDenoiseCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 414
    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Request added : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 391
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 418
    .end local v1    # "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v8    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    :cond_2
    sget-object v11, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v2, v11}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 419
    const-string v11, "Request submited"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 421
    invoke-interface/range {p5 .. p5}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->start()V

    .line 422
    const/4 v5, 0x0

    :goto_1
    const/4 v11, 0x1

    if-ge v5, v11, :cond_4

    .line 424
    :try_start_0
    invoke-interface/range {p6 .. p6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 425
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v6

    .line 426
    .local v6, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v11, "ImageProxy get"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 427
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 428
    .local v9, "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    sget-object v11, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p5

    invoke-interface {v0, v11, v5, v6, v9}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addFullSizeImage(Lcom/android/camera/one/CameraType;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 430
    if-eqz p3, :cond_3

    .line 431
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v10

    .line 432
    .local v10, "rawImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v11, "RawImage get"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 433
    if-eqz v10, :cond_3

    .line 434
    sget-object v11, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "rawImage = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v10}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v10}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; format = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v10}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 435
    sget-object v11, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p5

    invoke-interface {v0, v11, v10, v9}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addRawImage(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    :try_end_0
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .end local v10    # "rawImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 438
    .end local v6    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v9    # "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_0
    move-exception v3

    .line 439
    .local v3, "e":Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
    invoke-interface/range {p5 .. p5}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->cancel()V

    .line 444
    .end local v3    # "e":Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
    :cond_4
    return-void
.end method

.method private filterImagesWithinMaxLookBack(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    iget-object v6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mZslRingBuffer:Lcom/android/camera/async/BufferQueue;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mZslMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    if-nez v6, :cond_2

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 231
    :cond_1
    :goto_0
    return-object v0

    .line 218
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v0, "filtered":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v2

    .line 223
    .local v2, "mostRecentTimestamp":J
    iget-wide v6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mMaxLookBackNanos:J

    sub-long v4, v2, v6

    .line 224
    .local v4, "timestampThreshold":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 225
    .local v1, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-lez v7, :cond_4

    .line 226
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 228
    :cond_4
    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    goto :goto_1
.end method

.method private getAllAvailableImages()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mZslRingBuffer:Lcom/android/camera/async/BufferQueue;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mZslMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    if-nez v3, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 213
    :goto_0
    return-object v2

    .line 194
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v2, "images":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mZslRingBuffer:Lcom/android/camera/async/BufferQueue;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Lcom/android/camera/async/BufferQueue;->getNext(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_0

    .line 205
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 209
    .local v1, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    goto :goto_2

    .line 211
    .end local v1    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_2
    throw v0
.end method

.method private static resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .locals 4
    .param p0, "template"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .prologue
    const/4 v3, 0x0

    .line 116
    new-instance v0, Lcom/android/camera/one/v2/core/RequestTemplate;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 117
    .local v0, "result":Lcom/android/camera/one/v2/core/RequestTemplate;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 118
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 120
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 122
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 124
    return-object v0
.end method

.method private resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;)V
    .locals 6
    .param p1, "session"    # Lcom/android/camera/one/v2/core/FrameServer$Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;,
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 449
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v2}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 450
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mRepeatingRequestTemplate:I

    .line 451
    invoke-interface {v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 452
    .local v0, "repeatingBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    new-array v2, v5, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 455
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mRepeatingRequestTemplate:I

    .line 456
    invoke-interface {v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v1

    .line 457
    .local v1, "triggerCancelBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 459
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    .line 460
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 459
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 461
    new-array v2, v5, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 463
    return-void
.end method

.method private tryGetZslImage()Landroid/support/v4/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 237
    sget-boolean v8, Lcom/android/camera/product_utils/ProductUtil;->USE_DEVICE_OPERATED_ZSL:Z

    if-eqz v8, :cond_0

    move-object v8, v9

    .line 277
    :goto_0
    return-object v8

    .line 238
    :cond_0
    iget-object v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v8}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 240
    sget-object v8, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v10, "raw capture enabled, not use zsl image."

    invoke-static {v8, v10}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move-object v8, v9

    .line 241
    goto :goto_0

    .line 243
    :cond_1
    iget-object v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mZslRingBuffer:Lcom/android/camera/async/BufferQueue;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mZslMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    if-nez v8, :cond_3

    :cond_2
    move-object v8, v9

    goto :goto_0

    .line 245
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->getAllAvailableImages()Ljava/util/List;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->filterImagesWithinMaxLookBack(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 246
    .local v5, "images":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    const/4 v4, 0x0

    .line 247
    .local v4, "imageToSave":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const/4 v6, 0x0

    .line 249
    .local v6, "metadata":Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 250
    .local v3, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    iget-object v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mZslMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    .line 251
    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v12

    invoke-interface {v8, v12, v13}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;->removeMetadataFuture(J)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 253
    .local v7, "metadataFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :try_start_1
    iget-object v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mMetadataFilter:Lcom/google/common/base/Predicate;

    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v8, v11}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 254
    move-object v4, v3

    .line 255
    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    move-object v6, v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 268
    .end local v3    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v7    # "metadataFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 269
    .restart local v3    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    if-eq v3, v4, :cond_6

    .line 270
    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    goto :goto_2

    .line 262
    .end local v3    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :catch_0
    move-exception v2

    .line 263
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v4, :cond_7

    .line 264
    :try_start_2
    invoke-interface {v4}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 266
    :cond_7
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 269
    .restart local v3    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    if-eq v3, v4, :cond_8

    .line 270
    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    goto :goto_3

    .line 272
    .end local v3    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_9
    throw v8

    .line 274
    :cond_a
    if-nez v4, :cond_b

    move-object v8, v9

    .line 275
    goto/16 :goto_0

    .line 277
    :cond_b
    new-instance v8, Landroid/support/v4/util/Pair;

    invoke-direct {v8, v4, v6}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 257
    .restart local v3    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .restart local v7    # "metadataFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_1
    move-exception v8

    goto :goto_1

    :catch_2
    move-exception v8

    goto :goto_1
.end method

.method private waitForAFConvergence(Lcom/android/camera/one/v2/core/FrameServer$Session;)V
    .locals 8
    .param p1, "session"    # Lcom/android/camera/one/v2/core/FrameServer$Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 361
    new-instance v0, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;

    invoke-direct {v0}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;-><init>()V

    .line 363
    .local v0, "afStateMachine":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    iget-object v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mRepeatingRequestTemplate:I

    invoke-interface {v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v2

    .line 364
    .local v2, "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 365
    new-array v4, v6, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v4, v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 368
    iget-object v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mRepeatingRequestTemplate:I

    invoke-interface {v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v3

    .line 369
    .local v3, "triggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 371
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 372
    new-array v4, v6, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v4, v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 377
    const-wide/16 v4, 0x1388

    :try_start_0
    sget-object v6, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->AF_SCAN_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->get(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v1

    .line 379
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v4, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Wait for AF - Timeout"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V
    .locals 18
    .param p2, "imageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/android/camera/one/v2/imagesaver/ImageSaver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v2, "QCDenoiseImageCaptureCommand"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v9

    .line 290
    .local v9, "guard":Lcom/android/camera/stats/profiler/Profile;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->DENOISE:Lcom/android/ex/camera2/portability/CaptureIntent;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mIsFrontFacing:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    invoke-interface {v7}, Lcom/android/camera/one/v2/photo/SceneDetector;->getCurrentIsoValue()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    invoke-interface {v10}, Lcom/android/camera/one/v2/photo/SceneDetector;->getMetaData()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mPostHandleUltraWideDC:Z

    move-object/from16 v8, p2

    invoke-interface/range {v1 .. v11}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;->build(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;ZIILcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;Landroid/hardware/camera2/CameraCharacteristics;Z)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;

    move-result-object v8

    .line 292
    .local v8, "imageProcessor":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v1}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->onShutter()Z

    move-result v15

    .line 295
    .local v15, "needResetPreview":Z
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->tryGetZslImage()Landroid/support/v4/util/Pair;

    move-result-object v16

    .line 297
    .local v16, "zslImage":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    const/4 v13, 0x1

    .line 298
    .local v13, "force":Z
    if-eqz v16, :cond_2

    .line 299
    sget-object v1, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "ZSL image available"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 300
    const-string v1, "ZSL image available"

    invoke-interface {v9, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 301
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 302
    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v14

    .line 303
    .local v14, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    const-string v1, "metadata get"

    invoke-interface {v9, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 304
    invoke-interface {v8}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->start()V

    .line 305
    sget-object v2, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v8, v2, v3, v1, v14}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addFullSizeImage(Lcom/android/camera/one/CameraType;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    :try_end_0
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 351
    .end local v14    # "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :cond_0
    :goto_0
    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v1}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 356
    .end local v13    # "force":Z
    .end local v16    # "zslImage":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :cond_1
    :goto_1
    return-void

    .line 307
    .restart local v13    # "force":Z
    .restart local v16    # "zslImage":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "No ZSL image available, capture new Image."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 308
    const/4 v15, 0x0

    .line 310
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v1}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v4

    .local v4, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/4 v10, 0x0

    .line 311
    :try_start_3
    const-string v1, "FrameServer.Session created"

    invoke-interface {v9, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 312
    const/4 v6, 0x0

    .line 313
    .local v6, "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .local v5, "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    const/4 v2, 0x0

    .line 314
    :try_start_5
    const-string v1, "ImageStream created"

    invoke-interface {v9, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 315
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mWaitForAFConvergence:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->m3AStateProvider:Lcom/android/camera/one/v2/photo/State3AProvider;

    invoke-interface {v1}, Lcom/android/camera/one/v2/photo/State3AProvider;->isAFRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 316
    invoke-interface {v9}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 317
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->waitForAFConvergence(Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 318
    const-string v1, "AF Convergence"

    invoke-interface {v9, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 321
    :cond_3
    sget-object v1, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "capture raw image : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v7}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v1}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 323
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    move-result-object v6

    .line 324
    const-string v1, "RawImageStream created"

    invoke-interface {v9, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v3, p0

    move-object/from16 v7, p1

    .line 327
    invoke-direct/range {v3 .. v9}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->captureBurst(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;Lcom/android/camera/stats/profiler/Profile;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 328
    if-eqz v5, :cond_5

    if-eqz v2, :cond_a

    :try_start_6
    invoke-interface {v5}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 330
    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    .line 331
    :try_start_7
    invoke-interface {v6}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    .line 338
    :cond_6
    invoke-interface {v9}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 339
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 340
    const-string v1, "Preview reset"

    invoke-interface {v9, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 342
    if-eqz v4, :cond_0

    if-eqz v10, :cond_d

    :try_start_8
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_9
    invoke-virtual {v10, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_0

    .end local v4    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v5    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v6    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_1
    move-exception v12

    .line 343
    .local v12, "e":Ljava/lang/Exception;
    :try_start_a
    sget-object v1, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 344
    invoke-interface {v8}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->cancel()V

    .line 345
    const-string v1, "imageProcessor error"

    invoke-interface {v9, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V
    :try_end_a
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_0

    .line 348
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "force":Z
    .end local v16    # "zslImage":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_2
    move-exception v12

    .line 349
    .local v12, "e":Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
    :try_start_b
    invoke-interface {v8}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->cancel()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 351
    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v1}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_1

    .line 328
    .end local v12    # "e":Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
    .restart local v4    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v5    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v6    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v13    # "force":Z
    .restart local v16    # "zslImage":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_3
    move-exception v1

    :try_start_c
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    .line 330
    .end local v5    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_7

    .line 331
    :try_start_d
    invoke-interface {v6}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    .line 338
    :cond_7
    invoke-interface {v9}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 339
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 340
    const-string v2, "Preview reset"

    invoke-interface {v9, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 310
    .end local v6    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_4
    move-exception v1

    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 342
    :catchall_1
    move-exception v2

    move-object/from16 v17, v2

    move-object v2, v1

    move-object/from16 v1, v17

    :goto_3
    if-eqz v4, :cond_8

    if-eqz v2, :cond_e

    :try_start_f
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :cond_8
    :goto_4
    :try_start_10
    throw v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 351
    .end local v4    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v13    # "force":Z
    .end local v16    # "zslImage":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catchall_2
    move-exception v1

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    if-eqz v2, :cond_9

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v2}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDenoiseImageCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_9
    throw v1

    .line 328
    .restart local v4    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v5    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v6    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v13    # "force":Z
    .restart local v16    # "zslImage":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :cond_a
    :try_start_11
    invoke-interface {v5}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_2

    .line 313
    :catch_5
    move-exception v1

    :try_start_12
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 328
    :catchall_3
    move-exception v2

    move-object/from16 v17, v2

    move-object v2, v1

    move-object/from16 v1, v17

    :goto_5
    if-eqz v5, :cond_b

    if-eqz v2, :cond_c

    :try_start_13
    invoke-interface {v5}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_b
    :goto_6
    :try_start_14
    throw v1

    :catch_6
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_c
    invoke-interface {v5}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_6

    .line 342
    :cond_d
    :try_start_15
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto/16 :goto_0

    .end local v5    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v6    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_7
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_e
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto :goto_4

    :catchall_4
    move-exception v1

    move-object v2, v10

    goto :goto_3

    .line 328
    .restart local v5    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v6    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_5
    move-exception v1

    goto :goto_5
.end method
