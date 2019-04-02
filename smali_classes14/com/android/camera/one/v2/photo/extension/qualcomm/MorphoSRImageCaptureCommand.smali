.class Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;
.super Ljava/lang/Object;
.source "MorphoSRImageCaptureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/ImageCaptureCommand;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final SR_REQUIRE_IMAGES:I = 0x5

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

.field private final mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mProfiler:Lcom/android/camera/stats/profiler/Profiler;

.field private final mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

.field private final mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mRepeatingRequestTemplate:I

.field private final mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

.field private final mStillCaptureRequestTemplate:I

.field private final mTargetCaptureSize:Lcom/android/camera/util/Size;

.field private final mWaitForAFConvergence:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "SRImageCaptureCommand"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;ILcom/android/camera/one/v2/core/RequestBuilder$Factory;IZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;Z)V
    .locals 2
    .param p1, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p2, "imageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p3, "rawImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p4, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p5, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p6, "repeatingRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p7, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p8, "repeatingRequestTemplate"    # I
    .param p9, "stillCaptureRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p10, "stillCaptureRequestTemplate"    # I
    .param p11, "waitForAFConvergence"    # Z
    .param p12, "state3AProvider"    # Lcom/android/camera/one/v2/photo/State3AProvider;
    .param p13, "sceneDetector"    # Lcom/android/camera/one/v2/photo/SceneDetector;
    .param p14, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p15, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p17, "isFrontFacing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
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
            "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p16, "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 149
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 150
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 151
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 152
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 153
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 154
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    .line 155
    iput p8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mRepeatingRequestTemplate:I

    .line 156
    iput-object p9, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 157
    iput p10, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mStillCaptureRequestTemplate:I

    .line 158
    iput-boolean p11, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mWaitForAFConvergence:Z

    .line 160
    invoke-static {p6}, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 161
    iput-object p12, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->m3AStateProvider:Lcom/android/camera/one/v2/photo/State3AProvider;

    .line 162
    iput-object p13, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 163
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    .line 164
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    .line 165
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    .line 166
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mIsFrontFacing:Z

    .line 167
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 168
    return-void
.end method

.method private captureBurst(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;Lcom/android/camera/stats/profiler/Profile;)V
    .locals 16
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
    .line 249
    .local p4, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    new-instance v3, Ljava/util/ArrayList;

    const/4 v12, 0x5

    invoke-direct {v3, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    .local v3, "burstRequest":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    new-instance v8, Ljava/util/ArrayList;

    const/4 v12, 0x5

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 251
    .local v8, "metadata":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;>;"
    const/4 v5, 0x1

    .line 252
    .local v5, "first":Z
    invoke-interface/range {p6 .. p6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 253
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v12, 0x5

    if-ge v6, v12, :cond_2

    .line 254
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mStillCaptureRequestTemplate:I

    invoke-interface {v12, v13}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v2

    .line 256
    .local v2, "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v13, 0x2

    .line 257
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 256
    invoke-virtual {v2, v12, v13}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 259
    if-eqz v5, :cond_0

    .line 260
    const/4 v5, 0x0

    .line 261
    invoke-static/range {p4 .. p4}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFrameExposure(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 264
    :cond_0
    new-instance v9, Lcom/android/camera/one/v2/photo/MetadataFuture;

    invoke-direct {v9}, Lcom/android/camera/one/v2/photo/MetadataFuture;-><init>()V

    .line 265
    .local v9, "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    invoke-virtual {v2, v9}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 266
    invoke-virtual {v9}, Lcom/android/camera/one/v2/photo/MetadataFuture;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 270
    if-eqz p3, :cond_1

    .line 271
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 274
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    invoke-virtual {v12, v2}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->appendParamForLowLightCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 276
    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Request added : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 253
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 280
    .end local v2    # "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v9    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    :cond_2
    sget-object v12, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v12}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 281
    const-string v12, "Request submited"

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 283
    invoke-interface/range {p5 .. p5}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->start()V

    .line 284
    const/4 v6, 0x0

    :goto_1
    const/4 v12, 0x5

    if-ge v6, v12, :cond_4

    .line 286
    :try_start_0
    invoke-interface/range {p6 .. p6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 287
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v7

    .line 288
    .local v7, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v12, "ImageProxy get"

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 289
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 292
    .local v10, "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    new-instance v12, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v12, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 294
    sget-object v12, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v6, v7, v10}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addFullSizeImage(Lcom/android/camera/one/CameraType;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 298
    if-eqz p3, :cond_3

    .line 299
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v11

    .line 300
    .local v11, "rawImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v12, "RawImage get"

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 301
    if-eqz v11, :cond_3

    .line 302
    sget-object v12, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "rawImage = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v11}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v11}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; format = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v11}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 303
    sget-object v12, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v11, v10}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addRawImage(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    :try_end_0
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v11    # "rawImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 306
    .end local v7    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v10    # "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_0
    move-exception v4

    .line 307
    .local v4, "e":Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
    invoke-interface/range {p5 .. p5}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->cancel()V

    .line 312
    .end local v4    # "e":Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
    :cond_4
    return-void
.end method

.method private static resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .locals 4
    .param p0, "template"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .prologue
    const/4 v3, 0x0

    .line 106
    new-instance v0, Lcom/android/camera/one/v2/core/RequestTemplate;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 107
    .local v0, "result":Lcom/android/camera/one/v2/core/RequestTemplate;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 108
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 110
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 112
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 114
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

    .line 317
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v2}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 318
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mRepeatingRequestTemplate:I

    .line 319
    invoke-interface {v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 320
    .local v0, "repeatingBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    new-array v2, v5, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 323
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mRepeatingRequestTemplate:I

    .line 324
    invoke-interface {v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v1

    .line 325
    .local v1, "triggerCancelBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 327
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    .line 328
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 327
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 329
    new-array v2, v5, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 331
    return-void
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

    .line 223
    new-instance v0, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;

    invoke-direct {v0}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;-><init>()V

    .line 225
    .local v0, "afStateMachine":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    iget-object v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mRepeatingRequestTemplate:I

    invoke-interface {v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v2

    .line 226
    .local v2, "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 227
    new-array v4, v6, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v4, v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 230
    iget-object v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mRepeatingRequestTemplate:I

    invoke-interface {v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v3

    .line 231
    .local v3, "triggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 233
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 234
    new-array v4, v6, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v4, v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 239
    const-wide/16 v4, 0x1388

    :try_start_0
    sget-object v6, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->AF_SCAN_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->get(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v4, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    .local p1, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    const/4 v11, 0x0

    const/4 v2, 0x5

    .line 177
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v1, "MorphoHDRImageCaptureCommand"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v8

    .line 178
    .local v8, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->SR:Lcom/android/ex/camera2/portability/CaptureIntent;

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    iget-boolean v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mIsFrontFacing:Z

    iget-object v6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    invoke-interface {v6}, Lcom/android/camera/one/v2/photo/SceneDetector;->getCurrentIsoValue()I

    move-result v5

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    invoke-interface {v9}, Lcom/android/camera/one/v2/photo/SceneDetector;->getMetaData()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v9

    move-object v7, p2

    invoke-interface/range {v0 .. v9}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;->build(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;ZIILcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;Landroid/hardware/camera2/CameraCharacteristics;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;

    move-result-object v7

    .line 180
    .local v7, "imageProcessor":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .local v3, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/4 v1, 0x0

    .line 181
    :try_start_1
    const-string v0, "FrameServer.Session created"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 182
    const/4 v5, 0x0

    .line 183
    .local v5, "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .local v4, "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    const/4 v9, 0x0

    .line 184
    :try_start_3
    const-string v0, "ImageStream created"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->onShutter()Z

    .line 186
    iget-boolean v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mWaitForAFConvergence:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->m3AStateProvider:Lcom/android/camera/one/v2/photo/State3AProvider;

    invoke-interface {v0}, Lcom/android/camera/one/v2/photo/State3AProvider;->isAFRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 188
    invoke-direct {p0, v3}, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->waitForAFConvergence(Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 189
    const-string v0, "AF Convergence"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 192
    :cond_0
    sget-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "capture raw image : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v6}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    move-result-object v5

    .line 195
    const-string v0, "RawImageStream created"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    :cond_1
    move-object v2, p0

    move-object v6, p1

    .line 198
    invoke-direct/range {v2 .. v8}, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->captureBurst(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;Lcom/android/camera/stats/profiler/Profile;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 199
    if-eqz v4, :cond_2

    if-eqz v11, :cond_7

    :try_start_4
    invoke-interface {v4}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 201
    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    .line 202
    :try_start_5
    invoke-interface {v5}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    .line 209
    :cond_3
    invoke-interface {v8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 210
    invoke-direct {p0, v3}, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 211
    const-string v0, "Preview reset"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 213
    if-eqz v3, :cond_4

    if-eqz v11, :cond_a

    :try_start_6
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 218
    .end local v3    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v4    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v5    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_4
    :goto_1
    return-void

    .line 199
    .restart local v3    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v4    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v5    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_0
    move-exception v0

    :try_start_7
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 201
    .end local v4    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_0
    move-exception v0

    if-eqz v5, :cond_5

    .line 202
    :try_start_8
    invoke-interface {v5}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    .line 209
    :cond_5
    invoke-interface {v8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 210
    invoke-direct {p0, v3}, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 211
    const-string v1, "Preview reset"

    invoke-interface {v8, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 180
    .end local v5    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_1
    move-exception v0

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 213
    :catchall_1
    move-exception v1

    move-object v11, v0

    move-object v0, v1

    :goto_2
    if-eqz v3, :cond_6

    if-eqz v11, :cond_b

    :try_start_a
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :cond_6
    :goto_3
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .end local v3    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_2
    move-exception v10

    .line 214
    .local v10, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoSRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    invoke-interface {v7}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->cancel()V

    .line 216
    const-string v0, "imageProcessor error"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto :goto_1

    .line 199
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v3    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v4    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v5    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_7
    :try_start_c
    invoke-interface {v4}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_0

    .line 183
    :catch_3
    move-exception v0

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 199
    :catchall_2
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_4
    if-eqz v4, :cond_8

    if-eqz v1, :cond_9

    :try_start_e
    invoke-interface {v4}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_8
    :goto_5
    :try_start_f
    throw v0

    :catch_4
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_9
    invoke-interface {v4}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_5

    .line 213
    :catch_5
    move-exception v0

    :try_start_10
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_a
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto :goto_1

    .end local v4    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v5    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_6
    move-exception v1

    invoke-virtual {v11, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_b
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 199
    .restart local v4    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v5    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_4
    move-exception v0

    move-object v1, v11

    goto :goto_4
.end method
