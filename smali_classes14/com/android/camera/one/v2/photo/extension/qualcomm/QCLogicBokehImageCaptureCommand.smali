.class public Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;
.super Ljava/lang/Object;
.source "QCLogicBokehImageCaptureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/ImageCaptureCommand;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final BOKEH_REQUIRE_IMAGES:I

.field public static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final m3AStateProvider:Lcom/android/camera/one/v2/photo/State3AProvider;

.field private final mBlurIntensitySetting:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBokehResultProvider:Lcom/android/camera/one/v2/photo/BokehResultProvider;

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

.field private final mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field private final mFaceData:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<[",
            "Landroid/hardware/camera2/params/Face;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mHorizontalViewAngle:I

.field private final mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

.field private final mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

.field private final mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

.field private final mProfiler:Lcom/android/camera/stats/profiler/Profiler;

.field private final mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

.field private final mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mRepeatingRequestTemplate:I

.field private final mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mStillCaptureRequestTemplate:I

.field private final mTargetCaptureSize:Lcom/android/camera/util/Size;

.field private final mWaitForAFConvergence:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "QC_LBokehImgCapCmd"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 99
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->generateMPOinHAL()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->generateMTKBokehinHAL()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->BOKEH_REQUIRE_IMAGES:I

    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;ILcom/android/camera/one/v2/core/RequestBuilder$Factory;IZILcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/async/Observable;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/v2/photo/BokehResultProvider;)V
    .locals 2
    .param p1, "imageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p2, "rawImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p3, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p4, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p5, "repeatingRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p6, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p7, "repeatingRequestTemplate"    # I
    .param p8, "stillCaptureRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p9, "stillCaptureRequestTemplate"    # I
    .param p10, "waitForAFConvergence"    # Z
    .param p11, "horizontalViewAngle"    # I
    .param p12, "state3AProvider"    # Lcom/android/camera/one/v2/photo/State3AProvider;
    .param p13, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p14, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p18, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p19, "bokehResultProvider"    # Lcom/android/camera/one/v2/photo/BokehResultProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;",
            "I",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "IZI",
            "Lcom/android/camera/one/v2/photo/State3AProvider;",
            "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;",
            "Lcom/android/camera/util/Size;",
            "Lcom/google/common/base/Supplier",
            "<[",
            "Landroid/hardware/camera2/params/Face;",
            ">;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            "Lcom/android/camera/one/v2/photo/BokehResultProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    .local p15, "faceData":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<[Landroid/hardware/camera2/params/Face;>;"
    .local p16, "blurIntensitySetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/Integer;>;"
    .local p17, "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 153
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 154
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 155
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 156
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 157
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    .line 158
    iput p7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mRepeatingRequestTemplate:I

    .line 159
    iput-object p8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 160
    iput p9, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mStillCaptureRequestTemplate:I

    .line 161
    iput-boolean p10, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mWaitForAFConvergence:Z

    .line 163
    invoke-static {p5}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 164
    iput-object p12, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->m3AStateProvider:Lcom/android/camera/one/v2/photo/State3AProvider;

    .line 165
    iput-object p13, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    .line 166
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    .line 167
    iput p11, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mHorizontalViewAngle:I

    .line 168
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mFaceData:Lcom/google/common/base/Supplier;

    .line 169
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mBlurIntensitySetting:Lcom/google/common/base/Supplier;

    .line 170
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    .line 171
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 173
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    .line 174
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mBokehResultProvider:Lcom/android/camera/one/v2/photo/BokehResultProvider;

    .line 175
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
    .line 289
    .local p4, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    new-instance v2, Ljava/util/ArrayList;

    sget v11, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->BOKEH_REQUIRE_IMAGES:I

    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 290
    .local v2, "burstRequest":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    new-instance v7, Ljava/util/ArrayList;

    sget v11, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->BOKEH_REQUIRE_IMAGES:I

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 291
    .local v7, "metadata":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;>;"
    const/4 v4, 0x1

    .line 292
    .local v4, "first":Z
    invoke-interface/range {p6 .. p6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 293
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    sget v11, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->BOKEH_REQUIRE_IMAGES:I

    if-ge v5, v11, :cond_2

    .line 294
    iget-object v11, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v12, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mStillCaptureRequestTemplate:I

    invoke-interface {v11, v12}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v1

    .line 296
    .local v1, "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v12, 0x2

    .line 297
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 296
    invoke-virtual {v1, v11, v12}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 299
    if-eqz v4, :cond_0

    .line 300
    const/4 v4, 0x0

    .line 301
    invoke-static/range {p4 .. p4}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFrameExposure(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 304
    :cond_0
    new-instance v8, Lcom/android/camera/one/v2/photo/MetadataFuture;

    invoke-direct {v8}, Lcom/android/camera/one/v2/photo/MetadataFuture;-><init>()V

    .line 305
    .local v8, "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    invoke-virtual {v1, v8}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 306
    invoke-virtual {v8}, Lcom/android/camera/one/v2/photo/MetadataFuture;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 309
    if-eqz p3, :cond_1

    .line 310
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 313
    :cond_1
    iget-object v11, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    iget-object v12, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    iget-object v13, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mBokehResultProvider:Lcom/android/camera/one/v2/photo/BokehResultProvider;

    invoke-virtual {v11, v1, v12, v13}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->appendParamForBokehCapture(Lcom/android/camera/one/v2/core/RequestBuilder;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/v2/photo/BokehResultProvider;)V

    .line 315
    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
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

    .line 293
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 319
    .end local v1    # "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v8    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    :cond_2
    sget-object v11, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v2, v11}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 320
    const-string v11, "Request submited"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 322
    invoke-interface/range {p5 .. p5}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->start()V

    .line 323
    const/4 v5, 0x0

    :goto_1
    sget v11, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->BOKEH_REQUIRE_IMAGES:I

    if-ge v5, v11, :cond_4

    .line 325
    :try_start_0
    invoke-interface/range {p6 .. p6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 326
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v6

    .line 327
    .local v6, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ImageProxy get : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 328
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 329
    .local v9, "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    sget-object v11, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p5

    invoke-interface {v0, v11, v5, v6, v9}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addFullSizeImage(Lcom/android/camera/one/CameraType;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 331
    if-eqz p3, :cond_3

    .line 332
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v10

    .line 333
    .local v10, "rawImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v11, "RawImage get"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 334
    if-eqz v10, :cond_3

    .line 335
    sget-object v11, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 336
    invoke-interface {v10}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 335
    invoke-static {v11, v12}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 337
    sget-object v11, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p5

    invoke-interface {v0, v11, v10, v9}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addRawImage(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    :try_end_0
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v10    # "rawImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 340
    .end local v6    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v9    # "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_0
    move-exception v3

    .line 341
    .local v3, "e":Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
    invoke-interface/range {p5 .. p5}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->cancel()V

    .line 346
    .end local v3    # "e":Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
    :cond_4
    return-void
.end method

.method private static resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .locals 4
    .param p0, "template"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .prologue
    const/4 v3, 0x0

    .line 109
    new-instance v0, Lcom/android/camera/one/v2/core/RequestTemplate;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 110
    .local v0, "result":Lcom/android/camera/one/v2/core/RequestTemplate;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 111
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 111
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 113
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 115
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 117
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

    .line 351
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v2}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 352
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mRepeatingRequestTemplate:I

    .line 353
    invoke-interface {v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 354
    .local v0, "repeatingBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    new-array v2, v5, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 357
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mRepeatingRequestTemplate:I

    .line 358
    invoke-interface {v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v1

    .line 359
    .local v1, "triggerCancelBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 361
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    .line 362
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 361
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 363
    new-array v2, v5, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 365
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

    .line 263
    new-instance v0, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;

    invoke-direct {v0}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;-><init>()V

    .line 265
    .local v0, "afStateMachine":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    iget-object v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mRepeatingRequestTemplate:I

    invoke-interface {v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v2

    .line 266
    .local v2, "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 267
    new-array v4, v6, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v4, v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 270
    iget-object v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mRepeatingRequestTemplate:I

    invoke-interface {v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v3

    .line 271
    .local v3, "triggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 273
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 274
    new-array v4, v6, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v4, v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 279
    const-wide/16 v4, 0x1388

    :try_start_0
    sget-object v6, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->AF_SCAN_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->get(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v4, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Wait for AF - Timeout"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V
    .locals 20
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
    .line 184
    .local p1, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v2, "QCLogicBokehImageCaptureCommand"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v9

    .line 185
    .local v9, "guard":Lcom/android/camera/stats/profiler/Profile;
    const/4 v10, -0x1

    .line 186
    .local v10, "bokeh_x_position":I
    const/4 v11, -0x1

    .line 188
    .local v11, "bokeh_y_position":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v1}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->getFocusAreaPoint()Landroid/graphics/PointF;

    move-result-object v15

    .line 189
    .local v15, "focusPointF":Landroid/graphics/PointF;
    iget v1, v15, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v15, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    .line 190
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, v15, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    float-to-int v10, v1

    .line 191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v11, v1

    .line 214
    :cond_1
    :goto_0
    const-string v1, "bokeh_position read done"

    invoke-interface {v9, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->BOKEH:Lcom/android/ex/camera2/portability/CaptureIntent;

    sget v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->BOKEH_REQUIRE_IMAGES:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mHorizontalViewAngle:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mBlurIntensitySetting:Lcom/google/common/base/Supplier;

    .line 217
    invoke-interface {v7}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v8, p2

    .line 216
    invoke-interface/range {v1 .. v9}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;->buildForLogicCam(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;IILandroid/graphics/Point;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;

    move-result-object v8

    .line 220
    .local v8, "imageProcessor":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v1}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .local v4, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/16 v18, 0x0

    .line 221
    :try_start_1
    const-string v1, "FrameServer.Session created"

    invoke-interface {v9, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 222
    const/4 v6, 0x0

    .line 223
    .local v6, "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    sget v2, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->BOKEH_REQUIRE_IMAGES:I

    invoke-virtual {v1, v2}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .local v5, "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    const/4 v2, 0x0

    .line 224
    :try_start_3
    const-string v1, "ImageStream created"

    invoke-interface {v9, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v1}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->onShutter()Z

    .line 226
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mWaitForAFConvergence:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->m3AStateProvider:Lcom/android/camera/one/v2/photo/State3AProvider;

    invoke-interface {v1}, Lcom/android/camera/one/v2/photo/State3AProvider;->isAFRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    invoke-interface {v9}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 228
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->waitForAFConvergence(Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 229
    const-string v1, "AF Convergence"

    invoke-interface {v9, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 232
    :cond_2
    sget-object v1, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "capture raw image : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v7}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v1}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    sget v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->BOKEH_REQUIRE_IMAGES:I

    invoke-virtual {v1, v3}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    move-result-object v6

    .line 235
    const-string v1, "RawImageStream created"

    invoke-interface {v9, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v3, p0

    move-object/from16 v7, p1

    .line 238
    invoke-direct/range {v3 .. v9}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->captureBurst(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;Lcom/android/camera/stats/profiler/Profile;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 239
    if-eqz v5, :cond_4

    if-eqz v2, :cond_d

    :try_start_4
    invoke-interface {v5}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 241
    :cond_4
    :goto_1
    if-eqz v6, :cond_5

    .line 242
    :try_start_5
    invoke-interface {v6}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    .line 249
    :cond_5
    invoke-interface {v9}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 250
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 251
    const-string v1, "Preview reset"

    invoke-interface {v9, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 253
    if-eqz v4, :cond_6

    if-eqz v18, :cond_10

    :try_start_6
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 258
    .end local v4    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v5    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v6    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_6
    :goto_2
    return-void

    .line 193
    .end local v8    # "imageProcessor":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->mFaceData:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/hardware/camera2/params/Face;

    .line 194
    .local v14, "faces":[Landroid/hardware/camera2/params/Face;
    if-eqz v14, :cond_1

    .line 195
    const/16 v17, 0x0

    .line 196
    .local v17, "maxFace":Landroid/graphics/Rect;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    array-length v1, v14

    move/from16 v0, v16

    if-ge v0, v1, :cond_a

    .line 197
    if-nez v17, :cond_9

    .line 198
    aget-object v1, v14, v16

    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    .line 196
    :cond_8
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 202
    :cond_9
    aget-object v1, v14, v16

    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 203
    .local v12, "bound":Landroid/graphics/Rect;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v2, v3

    if-ge v1, v2, :cond_8

    .line 204
    move-object/from16 v17, v12

    goto :goto_4

    .line 208
    .end local v12    # "bound":Landroid/graphics/Rect;
    :cond_a
    if-eqz v17, :cond_1

    .line 209
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    .line 210
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    goto/16 :goto_0

    .line 239
    .end local v14    # "faces":[Landroid/hardware/camera2/params/Face;
    .end local v16    # "i":I
    .end local v17    # "maxFace":Landroid/graphics/Rect;
    .restart local v4    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v5    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v6    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v8    # "imageProcessor":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    :catch_0
    move-exception v1

    :try_start_7
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 241
    .end local v5    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_b

    .line 242
    :try_start_8
    invoke-interface {v6}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    .line 249
    :cond_b
    invoke-interface {v9}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 250
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 251
    const-string v2, "Preview reset"

    invoke-interface {v9, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 220
    .end local v6    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_1
    move-exception v1

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 253
    :catchall_1
    move-exception v2

    move-object/from16 v19, v2

    move-object v2, v1

    move-object/from16 v1, v19

    :goto_5
    if-eqz v4, :cond_c

    if-eqz v2, :cond_11

    :try_start_a
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :cond_c
    :goto_6
    :try_start_b
    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .end local v4    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_2
    move-exception v13

    .line 254
    .local v13, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCLogicBokehImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 255
    invoke-interface {v8}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->cancel()V

    .line 256
    const-string v1, "imageProcessor error"

    invoke-interface {v9, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 239
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v4    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v5    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v6    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_d
    :try_start_c
    invoke-interface {v5}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 223
    :catch_3
    move-exception v1

    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 239
    :catchall_2
    move-exception v2

    move-object/from16 v19, v2

    move-object v2, v1

    move-object/from16 v1, v19

    :goto_7
    if-eqz v5, :cond_e

    if-eqz v2, :cond_f

    :try_start_e
    invoke-interface {v5}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_e
    :goto_8
    :try_start_f
    throw v1

    :catch_4
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_f
    invoke-interface {v5}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_8

    .line 253
    :catch_5
    move-exception v1

    :try_start_10
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_10
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto/16 :goto_2

    .end local v5    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v6    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_6
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_11
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    goto :goto_6

    :catchall_3
    move-exception v1

    move-object/from16 v2, v18

    goto :goto_5

    .line 239
    .restart local v5    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v6    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_4
    move-exception v1

    goto :goto_7
.end method
