.class Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;
.super Ljava/lang/Object;
.source "ConvergedImageCaptureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/ImageCaptureCommand;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field public static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mBurst:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

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

.field private final mCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

.field private final mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

.field private final mImageReprocessor:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

.field private final mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

.field private final mProfiler:Lcom/android/camera/stats/profiler/Profiler;

.field private final mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

.field private final mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mRepeatingRequestTemplate:I

.field private final mReprocessTaskSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mState3AProvider:Lcom/android/camera/one/v2/photo/State3AProvider;

.field private final mStillCaptureRequestTemplate:I

.field private final mWaitForAEConvergence:Z

.field private final mWaitForAFConvergence:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ConImgCapCmd"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;IILjava/util/List;ZZLcom/android/camera/async/Observable;Lcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
    .locals 3
    .param p1, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p2, "imageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p3, "imageReprocessor"    # Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;
    .param p4, "rawImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p5, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p6, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p7, "repeatingRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p8, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p9, "repeatingRequestTemplate"    # I
    .param p10, "stillCaptureRequestTemplate"    # I
    .param p12, "waitForAEConvergence"    # Z
    .param p13, "waitForAFConvergence"    # Z
    .param p15, "state3AProvider"    # Lcom/android/camera/one/v2/photo/State3AProvider;
    .param p16, "flashDetector"    # Lcom/android/camera/one/v2/photo/FlashDetector;
    .param p17, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            ">;ZZ",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/one/v2/photo/State3AProvider;",
            "Lcom/android/camera/one/v2/photo/FlashDetector;",
            "Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p11, "burst":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/RequestBuilder$Factory;>;"
    .local p14, "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 143
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 144
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mImageReprocessor:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

    .line 145
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 146
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 147
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 148
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 149
    iput-object p8, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    .line 150
    iput p9, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mRepeatingRequestTemplate:I

    .line 151
    iput p10, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mStillCaptureRequestTemplate:I

    .line 152
    iput-object p11, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mBurst:Ljava/util/List;

    .line 153
    iput-boolean p12, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mWaitForAEConvergence:Z

    .line 154
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mWaitForAFConvergence:Z

    .line 156
    invoke-static {p7}, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 157
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    .line 158
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mState3AProvider:Lcom/android/camera/one/v2/photo/State3AProvider;

    .line 159
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    .line 160
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 162
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mReprocessTaskSet:Ljava/util/Set;

    .line 163
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mReprocessTaskSet:Ljava/util/Set;

    sget-object v2, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;->COMPRESS_TO_JEPG:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 165
    return-void
.end method

.method private captureBurst(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;)Z
    .locals 21
    .param p1, "session"    # Lcom/android/camera/one/v2/core/FrameServer$Session;
    .param p2, "imageStream"    # Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .param p3, "rawImageStream"    # Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .param p5, "imageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
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
            "Lcom/android/camera/one/v2/imagesaver/ImageSaver;",
            "Lcom/android/camera/stats/profiler/Profile;",
            ")Z"
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
    .line 280
    .local p4, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mBurst:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 281
    .local v13, "burstRequest":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mBurst:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 282
    .local v18, "metadata":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;>;"
    const/16 v17, 0x0

    .line 283
    .local v17, "isReprocessing":Z
    const/4 v15, 0x1

    .line 284
    .local v15, "first":Z
    invoke-interface/range {p6 .. p6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mBurst:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 286
    .local v12, "builderTemplate":Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mStillCaptureRequestTemplate:I

    invoke-interface {v12, v3}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v11

    .line 288
    .local v11, "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mStillCaptureRequestTemplate:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    invoke-virtual {v3, v11}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->configureVideoSnapshotForNormalCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 295
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mWaitForAEConvergence:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    invoke-interface {v3}, Lcom/android/camera/one/v2/photo/FlashDetector;->isFlashRequired()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v3}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isZSLNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    const/4 v4, 0x1

    invoke-virtual {v3, v11, v4}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->configureZslParamForNormalCapture(Lcom/android/camera/one/v2/core/RequestBuilder;Z)V

    .line 299
    :cond_1
    if-eqz v15, :cond_2

    .line 300
    const/4 v15, 0x0

    .line 301
    invoke-static/range {p4 .. p4}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFrameExposure(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 304
    :cond_2
    new-instance v19, Lcom/android/camera/one/v2/photo/MetadataFuture;

    invoke-direct/range {v19 .. v19}, Lcom/android/camera/one/v2/photo/MetadataFuture;-><init>()V

    .line 305
    .local v19, "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 306
    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/one/v2/photo/MetadataFuture;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 310
    if-eqz p3, :cond_3

    .line 311
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 314
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    invoke-virtual {v3, v4, v7, v11}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->appendParamForNormalCapture(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 316
    invoke-virtual {v11}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    const-string v3, "Request added"

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    .end local v19    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    :cond_4
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x2

    .line 292
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 291
    invoke-virtual {v11, v3, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 320
    .end local v11    # "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v12    # "builderTemplate":Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    :cond_5
    invoke-interface/range {p6 .. p6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 321
    sget-object v2, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v2}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 322
    const-string v2, "Request submited"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 324
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mBurst:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_8

    .line 326
    :try_start_0
    invoke-interface/range {p6 .. p6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 327
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v5

    .line 328
    .local v5, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v2, "ImageProxy get"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 330
    .local v6, "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    const-string v2, "metadata get"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mImageReprocessor:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mReprocessTaskSet:Ljava/util/Set;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-interface/range {v2 .. v10}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;->tryReprocessImage(Lcom/android/camera/one/v2/core/FrameServer$Session;Ljava/util/Set;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Optional;Lcom/android/camera/one/v2/imagesaver/ImageSaver;ZLcom/android/camera/stats/profiler/Profile;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 332
    invoke-interface/range {p6 .. p6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 333
    const/4 v2, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v5, v6, v2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->addFullSizeImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Z)V

    .line 334
    const-string v2, "add Image to ImageSaver"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 339
    :goto_3
    if-eqz p3, :cond_6

    .line 340
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v20

    .line 341
    .local v20, "rawImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v2, "RawImage get"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 342
    if-eqz v20, :cond_6

    .line 343
    sget-object v2, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rawImage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v20 .. v20}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v20 .. v20}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; format = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v20 .. v20}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v6}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->addRawImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    :try_end_0
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v20    # "rawImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 336
    :cond_7
    or-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 347
    .end local v5    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v6    # "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_0
    move-exception v14

    .line 352
    :cond_8
    return v17
.end method

.method private static resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .locals 4
    .param p0, "template"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .prologue
    const/4 v3, 0x0

    .line 101
    new-instance v0, Lcom/android/camera/one/v2/core/RequestTemplate;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 102
    .local v0, "result":Lcom/android/camera/one/v2/core/RequestTemplate;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 103
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 105
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 106
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 107
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 109
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

    .line 358
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v2}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 359
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v3, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mRepeatingRequestTemplate:I

    .line 360
    invoke-interface {v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 361
    .local v0, "repeatingBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    new-array v2, v5, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 364
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v3, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mRepeatingRequestTemplate:I

    .line 365
    invoke-interface {v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v1

    .line 366
    .local v1, "triggerCancelBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 368
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    .line 369
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 368
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 370
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    invoke-virtual {v2, v1, v4}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->configureZslParamForNormalCapture(Lcom/android/camera/one/v2/core/RequestBuilder;Z)V

    .line 371
    new-array v2, v5, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 393
    return-void
.end method

.method private waitForAEConvergence(Lcom/android/camera/one/v2/core/FrameServer$Session;)V
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

    .line 256
    new-instance v0, Lcom/android/camera/one/v2/autofocus/AETriggerResult;

    invoke-direct {v0}, Lcom/android/camera/one/v2/autofocus/AETriggerResult;-><init>()V

    .line 259
    .local v0, "aeStateMachine":Lcom/android/camera/one/v2/autofocus/AETriggerResult;
    iget-object v4, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v5, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mRepeatingRequestTemplate:I

    invoke-interface {v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v2

    .line 260
    .local v2, "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 261
    new-array v4, v6, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v4, v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 264
    iget-object v4, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v5, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mRepeatingRequestTemplate:I

    invoke-interface {v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v3

    .line 265
    .local v3, "triggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 266
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 265
    invoke-virtual {v3, v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 267
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 268
    new-array v4, v6, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v4, v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 273
    const-wide/16 v4, 0xbb8

    :try_start_0
    sget-object v6, Lcom/android/camera/one/v2/autofocus/AETriggerResult;->AE_SCAN_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/camera/one/v2/autofocus/AETriggerResult;->get(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v4, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Wait for AE - Timeout"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
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

    .line 231
    new-instance v0, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;

    invoke-direct {v0}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;-><init>()V

    .line 233
    .local v0, "afStateMachine":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    iget-object v4, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v5, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mRepeatingRequestTemplate:I

    invoke-interface {v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v2

    .line 234
    .local v2, "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 235
    new-array v4, v6, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v4, v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 238
    iget-object v4, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v5, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mRepeatingRequestTemplate:I

    invoke-interface {v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v3

    .line 239
    .local v3, "triggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 241
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 242
    new-array v4, v6, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v4, v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 247
    const-wide/16 v4, 0x1388

    :try_start_0
    sget-object v6, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->AF_SCAN_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->get(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v4, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Wait for AF - Timeout"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V
    .locals 13
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
    .line 175
    .local p1, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v4, "ConvergedImageCaptureCommand"

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v6

    .line 176
    .local v6, "guard":Lcom/android/camera/stats/profiler/Profile;
    const/4 v8, 0x1

    .line 177
    .local v8, "neeCloseImageSaver":Z
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    invoke-interface {v0}, Lcom/android/camera/one/v2/photo/FlashDetector;->isFlashRequired()Z

    move-result v9

    .line 178
    .local v9, "needFlash":Z
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v1

    .local v1, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/4 v11, 0x0

    .line 179
    :try_start_1
    const-string v0, "FrameServer.Session created"

    invoke-interface {v6, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 180
    const/4 v3, 0x0

    .line 181
    .local v3, "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    iget-object v4, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mBurst:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .local v2, "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    const/4 v10, 0x0

    .line 182
    :try_start_3
    const-string v0, "ImageStream created"

    invoke-interface {v6, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->onShutter()Z

    .line 184
    iget-boolean v0, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mWaitForAFConvergence:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mState3AProvider:Lcom/android/camera/one/v2/photo/State3AProvider;

    invoke-interface {v0}, Lcom/android/camera/one/v2/photo/State3AProvider;->isAFRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    .line 185
    invoke-interface {v6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 186
    invoke-direct {p0, v1}, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->waitForAFConvergence(Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 187
    const-string v0, "AF Convergence"

    invoke-interface {v6, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 189
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mWaitForAEConvergence:Z

    if-eqz v0, :cond_1

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->skipAEConvergeForcely()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    invoke-interface {v6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 191
    invoke-direct {p0, v1}, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->waitForAEConvergence(Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 192
    const-string v0, "AE Convergence"

    invoke-interface {v6, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 195
    :cond_1
    sget-object v0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "capture raw image : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v5}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    iget-object v4, p0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->mBurst:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    move-result-object v3

    .line 198
    const-string v0, "RawImageStream created"

    invoke-interface {v6, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    :cond_2
    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    .line 201
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->captureBurst(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-result v0

    if-nez v0, :cond_7

    const/4 v8, 0x1

    .line 202
    :goto_0
    if-eqz v2, :cond_3

    if-eqz v10, :cond_b

    :try_start_4
    invoke-interface {v2}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 205
    :try_start_5
    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    .line 212
    :cond_4
    invoke-interface {v6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 213
    invoke-direct {p0, v1}, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 214
    const-string v0, "Preview reset"

    invoke-interface {v6, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 216
    if-eqz v1, :cond_5

    if-eqz v11, :cond_e

    :try_start_6
    invoke-interface {v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 220
    :cond_5
    :goto_2
    if-eqz v8, :cond_6

    .line 221
    invoke-interface {v6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 222
    invoke-interface {p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->close()V

    .line 223
    const-string v0, "imageSaver.close"

    invoke-interface {v6, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 226
    :cond_6
    return-void

    .line 201
    :cond_7
    const/4 v8, 0x0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    :try_start_7
    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 204
    .end local v2    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_8

    .line 205
    :try_start_8
    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    .line 212
    :cond_8
    invoke-interface {v6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 213
    invoke-direct {p0, v1}, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 214
    const-string v4, "Preview reset"

    invoke-interface {v6, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 178
    .end local v3    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_1
    move-exception v0

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 216
    :catchall_1
    move-exception v4

    move-object v12, v4

    move-object v4, v0

    move-object v0, v12

    :goto_3
    if-eqz v1, :cond_9

    if-eqz v4, :cond_f

    :try_start_a
    invoke-interface {v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_9
    :goto_4
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .end local v1    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_2
    move-exception v7

    .line 217
    .local v7, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_c
    sget-object v0, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimeoutException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout when running command : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 220
    .end local v7    # "e":Ljava/util/concurrent/TimeoutException;
    :catchall_2
    move-exception v0

    if-eqz v8, :cond_a

    .line 221
    invoke-interface {v6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 222
    invoke-interface {p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->close()V

    .line 223
    const-string v4, "imageSaver.close"

    invoke-interface {v6, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    :cond_a
    throw v0

    .line 202
    .restart local v1    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v2    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v3    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_b
    :try_start_d
    invoke-interface {v2}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 181
    :catch_3
    move-exception v0

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 202
    :catchall_3
    move-exception v4

    move-object v12, v4

    move-object v4, v0

    move-object v0, v12

    :goto_5
    if-eqz v2, :cond_c

    if-eqz v4, :cond_d

    :try_start_f
    invoke-interface {v2}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_c
    :goto_6
    :try_start_10
    throw v0

    :catch_4
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_d
    invoke-interface {v2}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_6

    .line 216
    :catch_5
    move-exception v0

    :try_start_11
    invoke-virtual {v11, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_e
    invoke-interface {v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto/16 :goto_2

    .end local v2    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v3    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_6
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_f
    invoke-interface {v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_11
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v4, v11

    goto :goto_3

    .line 202
    .restart local v2    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v3    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_5
    move-exception v0

    move-object v4, v10

    goto :goto_5
.end method
