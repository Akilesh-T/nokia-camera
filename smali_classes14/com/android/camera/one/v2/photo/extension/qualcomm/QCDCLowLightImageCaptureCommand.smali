.class Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;
.super Ljava/lang/Object;
.source "QCDCLowLightImageCaptureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/ImageCaptureCommand;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field public static final DC_CAPTURE_TIMEOUT:J = 0xbb8L

.field public static final DC_CAPTURE_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final DC_LOWLIGHT_REQUIRE_IMAGES:I = 0x1

.field public static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final m3AStateProvider:Lcom/android/camera/one/v2/photo/State3AProvider;

.field private final mCalibrationData:[B

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

.field private final mProfiler:Lcom/android/camera/stats/profiler/Profiler;

.field private final mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

.field private final mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mRepeatingRequestTemplate:I

.field private final mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

.field private final mSlaveCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mSlaveFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mSlaveImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

.field private final mSlaveRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mSlaveRepeatingRequestTemplate:I

.field private final mSlaveScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mSlaveSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

.field private final mSlaveStillCaptureRequestTemplate:I

.field private final mStillCaptureRequestTemplate:I

.field private final mTargetCaptureSize:Lcom/android/camera/util/Size;

.field private final mWaitForAFConvergence:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "QC_DCLLImgCapCmd"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 76
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->DC_CAPTURE_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;IILcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;IIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;Z[B)V
    .locals 2
    .param p1, "imageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p2, "slaveImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p3, "rawImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p4, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p5, "slaveFrameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p6, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p7, "repeatingRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p8, "slaveRepeatingRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p9, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p10, "repeatingRequestTemplate"    # I
    .param p11, "slaveRepeatingRequestTemplate"    # I
    .param p12, "stillCaptureRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p13, "slaveStillCaptureRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p14, "stillCaptureRequestTemplate"    # I
    .param p15, "slaveStillCaptureRequestTemplate"    # I
    .param p16, "waitForAFConvergence"    # Z
    .param p17, "state3AProvider"    # Lcom/android/camera/one/v2/photo/State3AProvider;
    .param p18, "sceneDetector"    # Lcom/android/camera/one/v2/photo/SceneDetector;
    .param p19, "slaveSceneDetector"    # Lcom/android/camera/one/v2/photo/SceneDetector;
    .param p20, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p21, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p23, "isFrontFacing"    # Z
    .param p24, "calibrationData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;",
            "II",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "IIZ",
            "Lcom/android/camera/one/v2/photo/State3AProvider;",
            "Lcom/android/camera/one/v2/photo/SceneDetector;",
            "Lcom/android/camera/one/v2/photo/SceneDetector;",
            "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z[B)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p22, "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 163
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 165
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 166
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 167
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 168
    iput p10, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mRepeatingRequestTemplate:I

    .line 169
    iput-object p12, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 170
    move/from16 v0, p14

    iput v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mStillCaptureRequestTemplate:I

    .line 171
    invoke-static {p7}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 173
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 174
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 175
    iput-object p8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 176
    iput p11, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveRepeatingRequestTemplate:I

    .line 177
    iput-object p13, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 178
    move/from16 v0, p15

    iput v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveStillCaptureRequestTemplate:I

    .line 179
    invoke-static {p8}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 181
    iput-object p9, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    .line 182
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mWaitForAFConvergence:Z

    .line 183
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mCalibrationData:[B

    .line 185
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->m3AStateProvider:Lcom/android/camera/one/v2/photo/State3AProvider;

    .line 186
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 187
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 188
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    .line 189
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    .line 190
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    .line 191
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mIsFrontFacing:Z

    .line 192
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 193
    return-void
.end method

.method private captureBurst(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;Lcom/android/camera/stats/profiler/Profile;)V
    .locals 24
    .param p1, "session"    # Lcom/android/camera/one/v2/core/FrameServer$Session;
    .param p2, "slaveSession"    # Lcom/android/camera/one/v2/core/FrameServer$Session;
    .param p3, "imageStream"    # Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .param p4, "slaveImageStream"    # Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .param p5, "rawImageStream"    # Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .param p7, "imageProcessor"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .param p8, "guard"    # Lcom/android/camera/stats/profiler/Profile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer$Session;",
            "Lcom/android/camera/one/v2/core/FrameServer$Session;",
            "Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;",
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
    .line 301
    .local p6, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    new-instance v5, Ljava/util/ArrayList;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 302
    .local v5, "burstRequest":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    new-instance v15, Ljava/util/ArrayList;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 303
    .local v15, "slaveBurstRequest":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    new-instance v10, Ljava/util/ArrayList;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 304
    .local v10, "metadata":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;>;"
    new-instance v17, Ljava/util/ArrayList;

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 306
    .local v17, "slaveMetadata":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;>;"
    const/4 v7, 0x1

    .line 307
    .local v7, "first":Z
    invoke-interface/range {p8 .. p8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 308
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ge v8, v0, :cond_2

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mStillCaptureRequestTemplate:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v4

    .line 311
    .local v4, "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v20, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v21, 0x2

    .line 312
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 311
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 313
    sget-object v20, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 315
    if-eqz v7, :cond_0

    .line 316
    const/4 v7, 0x0

    .line 317
    invoke-static/range {p6 .. p6}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFrameExposure(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 320
    :cond_0
    new-instance v11, Lcom/android/camera/one/v2/photo/MetadataFuture;

    invoke-direct {v11}, Lcom/android/camera/one/v2/photo/MetadataFuture;-><init>()V

    .line 321
    .local v11, "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    invoke-virtual {v4, v11}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 322
    invoke-virtual {v11}, Lcom/android/camera/one/v2/photo/MetadataFuture;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 326
    if-eqz p5, :cond_1

    .line 327
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 330
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->appendParamForDCLowLightCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 332
    invoke-virtual {v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Request added : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveStillCaptureRequestTemplate:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v14

    .line 339
    .local v14, "slaveBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v20, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v21, 0x4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 341
    sget-object v20, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v21, 0x2

    .line 342
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 341
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 343
    sget-object v20, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 345
    new-instance v18, Lcom/android/camera/one/v2/photo/MetadataFuture;

    invoke-direct/range {v18 .. v18}, Lcom/android/camera/one/v2/photo/MetadataFuture;-><init>()V

    .line 346
    .local v18, "slaveMetadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 347
    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/one/v2/photo/MetadataFuture;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->appendParamForDCLowLightCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 353
    invoke-virtual {v14}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Slave Request added : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 308
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 358
    .end local v4    # "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v11    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    .end local v14    # "slaveBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v18    # "slaveMetadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    :cond_2
    sget-object v20, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v5, v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 359
    const-string v20, "Request submited"

    move-object/from16 v0, p8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 361
    sget-object v20, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v15, v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 362
    const-string v20, "Slave Request submited"

    move-object/from16 v0, p8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 364
    invoke-interface/range {p7 .. p7}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->start()V

    .line 365
    const/4 v8, 0x0

    :goto_1
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ge v8, v0, :cond_5

    .line 367
    :try_start_0
    invoke-interface/range {p8 .. p8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 368
    const-wide/16 v20, 0xbb8

    sget-object v22, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->DC_CAPTURE_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext(JLjava/util/concurrent/TimeUnit;)Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v9

    .line 369
    .local v9, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v20, "ImageProxy get"

    move-object/from16 v0, p8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 370
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 371
    .local v12, "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    sget-object v20, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p7

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v8, v9, v12}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addFullSizeImage(Lcom/android/camera/one/CameraType;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 373
    invoke-interface/range {p8 .. p8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 374
    const-wide/16 v20, 0xbb8

    sget-object v22, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->DC_CAPTURE_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p4

    move-wide/from16 v1, v20

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext(JLjava/util/concurrent/TimeUnit;)Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v16

    .line 375
    .local v16, "slaveImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v20, "Slave ImageProxy get"

    move-object/from16 v0, p8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 377
    .local v19, "slaveMetadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    sget-object v20, Lcom/android/camera/one/CameraType;->MONO:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p7

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v8, v2, v3}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addFullSizeImage(Lcom/android/camera/one/CameraType;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 379
    invoke-interface {v9}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v20

    invoke-interface/range {v16 .. v16}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v22

    sub-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v20

    sget-wide v22, Lcom/android/camera/product_utils/ProductUtil;->DUAL_SYNC_TIMEOUT_MS:J

    cmp-long v20, v20, v22

    if-gtz v20, :cond_4

    .line 380
    sget-object v20, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v21, "frame sync"

    invoke-static/range {v20 .. v21}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 385
    :goto_2
    if-eqz p5, :cond_3

    .line 386
    invoke-interface/range {p5 .. p5}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v13

    .line 387
    .local v13, "rawImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v20, "RawImage get"

    move-object/from16 v0, p8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 388
    if-eqz v13, :cond_3

    .line 389
    sget-object v20, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "rawImage = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v13}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v13}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "; format = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v13}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 390
    sget-object v20, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p7

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13, v12}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addRawImage(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 365
    .end local v13    # "rawImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 382
    :cond_4
    sget-object v20, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "frame not sync : main = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v9}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", slave = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {v16 .. v16}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 393
    .end local v9    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v12    # "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .end local v16    # "slaveImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v19    # "slaveMetadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_0
    move-exception v6

    .line 394
    .local v6, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v20, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "TimeoutException when capture"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 395
    const-string v20, "timeout when capture image"

    move-object/from16 v0, p8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 396
    invoke-interface/range {p7 .. p7}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->abort()V

    .line 404
    .end local v6    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_5
    :goto_3
    return-void

    .line 398
    :catch_1
    move-exception v6

    .line 399
    .local v6, "e":Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
    invoke-interface/range {p7 .. p7}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->cancel()V

    goto :goto_3
.end method

.method private static resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .locals 4
    .param p0, "template"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .prologue
    const/4 v3, 0x0

    .line 114
    new-instance v0, Lcom/android/camera/one/v2/core/RequestTemplate;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 115
    .local v0, "result":Lcom/android/camera/one/v2/core/RequestTemplate;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 116
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 118
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 120
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 122
    return-object v0
.end method

.method private resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)V
    .locals 6
    .param p1, "session"    # Lcom/android/camera/one/v2/core/FrameServer$Session;
    .param p2, "repeatingRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p3, "repeatingRequestTemplate"    # I
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

    .line 409
    .line 410
    invoke-interface {p2, p3}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 411
    .local v0, "repeatingBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    new-array v2, v5, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 415
    invoke-interface {p2, p3}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v1

    .line 416
    .local v1, "triggerCancelBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 418
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    .line 419
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 418
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 420
    new-array v2, v5, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 422
    return-void
.end method

.method private waitForAFConvergence(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/FrameServer$Session;)V
    .locals 11
    .param p1, "session"    # Lcom/android/camera/one/v2/core/FrameServer$Session;
    .param p2, "slaveSession"    # Lcom/android/camera/one/v2/core/FrameServer$Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 257
    new-instance v0, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;

    invoke-direct {v0}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;-><init>()V

    .line 259
    .local v0, "afStateMachine":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    iget-object v7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mRepeatingRequestTemplate:I

    invoke-interface {v7, v8}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v2

    .line 260
    .local v2, "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 261
    new-array v7, v9, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sget-object v8, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v7, v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 264
    iget-object v7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mRepeatingRequestTemplate:I

    invoke-interface {v7, v8}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v6

    .line 265
    .local v6, "triggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 267
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 268
    new-array v7, v9, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v6}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sget-object v8, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v7, v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 272
    new-instance v3, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;

    invoke-direct {v3}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;-><init>()V

    .line 274
    .local v3, "slaveAfStateMachine":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    iget-object v7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveRepeatingRequestTemplate:I

    invoke-interface {v7, v8}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v4

    .line 275
    .local v4, "slaveIdleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    invoke-static {v3}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 276
    new-array v7, v9, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sget-object v8, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p2, v7, v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 279
    iget-object v7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveRepeatingRequestTemplate:I

    invoke-interface {v7, v8}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v5

    .line 280
    .local v5, "slaveTriggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 282
    invoke-static {v3}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 283
    new-array v7, v9, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sget-object v8, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p2, v7, v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 288
    const-wide/16 v8, 0x1388

    :try_start_0
    sget-object v7, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->AF_SCAN_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v8, v9, v7}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->get(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    const-wide/16 v8, 0x1388

    :try_start_1
    sget-object v7, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->AF_SCAN_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v8, v9, v7}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->get(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    .line 298
    :goto_1
    return-void

    .line 289
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v7, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "Wait for AF - Timeout"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v1

    .line 296
    .restart local v1    # "e":Ljava/util/concurrent/TimeoutException;
    sget-object v7, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "Wait for slave AF - Timeout"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V
    .locals 17
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
    .line 202
    .local p1, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v2, "QCDCLowLightImageCaptureCommand"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v14

    .line 203
    .local v14, "guard":Lcom/android/camera/stats/profiler/Profile;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->LOWLIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mCalibrationData:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    invoke-interface {v12}, Lcom/android/camera/one/v2/photo/SceneDetector;->getCurrentIsoValue()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    invoke-interface {v12}, Lcom/android/camera/one/v2/photo/SceneDetector;->getCurrentIsoValue()I

    move-result v10

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    move-object/from16 v13, p2

    invoke-interface/range {v1 .. v14}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;->buildForDualCam(Lcom/android/ex/camera2/portability/CaptureIntent;[BIFFILandroid/graphics/Point;IIILcom/android/camera/util/Size;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;

    move-result-object v13

    .line 205
    .local v13, "imageProcessor":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v1}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v7

    .local v7, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/4 v5, 0x0

    .line 206
    :try_start_1
    const-string v1, "FrameServer.Session created"

    invoke-interface {v14, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v1}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-result-object v8

    .local v8, "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/4 v4, 0x0

    .line 208
    :try_start_2
    const-string v1, "SlaveFrameServer.session created"

    invoke-interface {v14, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 209
    const/4 v11, 0x0

    .line 210
    .local v11, "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v9

    .local v9, "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    const/4 v3, 0x0

    .line 211
    :try_start_4
    const-string v1, "ImageStream created"

    invoke-interface {v14, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result-object v10

    .local v10, "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    const/4 v2, 0x0

    .line 213
    :try_start_5
    const-string v1, "slaveImageStream created"

    invoke-interface {v14, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v1}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->onShutter()Z

    .line 216
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil;->DUALCAM_LINK_ENABLE:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mWaitForAFConvergence:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->m3AStateProvider:Lcom/android/camera/one/v2/photo/State3AProvider;

    invoke-interface {v1}, Lcom/android/camera/one/v2/photo/State3AProvider;->isAFRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    :cond_0
    invoke-interface {v14}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 218
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->waitForAFConvergence(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 219
    const-string v1, "AF Convergence"

    invoke-interface {v14, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 222
    :cond_1
    sget-object v1, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "capture raw image : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v12}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v1}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    move-result-object v11

    .line 225
    const-string v1, "RawImageStream created"

    invoke-interface {v14, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v6, p0

    move-object/from16 v12, p1

    .line 228
    invoke-direct/range {v6 .. v14}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->captureBurst(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;Lcom/android/camera/stats/profiler/Profile;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 229
    if-eqz v10, :cond_3

    if-eqz v2, :cond_c

    :try_start_6
    invoke-interface {v10}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 230
    :cond_3
    :goto_0
    if-eqz v9, :cond_4

    if-eqz v3, :cond_f

    :try_start_7
    invoke-interface {v9}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 232
    :cond_4
    :goto_1
    if-eqz v11, :cond_5

    .line 233
    :try_start_8
    invoke-interface {v11}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    .line 240
    :cond_5
    invoke-interface {v14}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v1}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 242
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mRepeatingRequestTemplate:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveRepeatingRequestTemplate:I

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v1, v2}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)V

    .line 244
    const-string v1, "Preview reset"

    invoke-interface {v14, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 246
    if-eqz v8, :cond_6

    if-eqz v4, :cond_11

    :try_start_9
    invoke-interface {v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 247
    :cond_6
    :goto_2
    if-eqz v7, :cond_7

    if-eqz v5, :cond_13

    :try_start_a
    invoke-interface {v7}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 252
    .end local v7    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v8    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v9    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v10    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v11    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_7
    :goto_3
    return-void

    .line 229
    .restart local v7    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v8    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v9    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v10    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v11    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_0
    move-exception v1

    :try_start_b
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_0

    .line 210
    .end local v10    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_1
    move-exception v1

    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 230
    :catchall_0
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    :goto_4
    if-eqz v9, :cond_8

    if-eqz v2, :cond_10

    :try_start_d
    invoke-interface {v9}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_8
    :goto_5
    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 232
    .end local v9    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_1
    move-exception v1

    if-eqz v11, :cond_9

    .line 233
    :try_start_f
    invoke-interface {v11}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    .line 240
    :cond_9
    invoke-interface {v14}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v2}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mRepeatingRequestTemplate:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2, v3}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->mSlaveRepeatingRequestTemplate:I

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2, v3}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)V

    .line 244
    const-string v2, "Preview reset"

    invoke-interface {v14, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    throw v1
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 207
    .end local v11    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_2
    move-exception v1

    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 246
    :catchall_2
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    :goto_6
    if-eqz v8, :cond_a

    if-eqz v2, :cond_12

    :try_start_11
    invoke-interface {v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :cond_a
    :goto_7
    :try_start_12
    throw v1
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 205
    .end local v8    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_3
    move-exception v1

    :try_start_13
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 247
    :catchall_3
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    :goto_8
    if-eqz v7, :cond_b

    if-eqz v2, :cond_14

    :try_start_14
    invoke-interface {v7}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4

    :cond_b
    :goto_9
    :try_start_15
    throw v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    .end local v7    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_4
    move-exception v15

    .line 248
    .local v15, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCLowLightImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 249
    invoke-interface {v13}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->cancel()V

    .line 250
    const-string v1, "imageProcessor error"

    invoke-interface {v14, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 229
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v7    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v8    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v9    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v10    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v11    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_c
    :try_start_16
    invoke-interface {v10}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    goto/16 :goto_0

    .line 230
    .end local v10    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_4
    move-exception v1

    move-object v2, v3

    goto/16 :goto_4

    .line 212
    .restart local v10    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_5
    move-exception v1

    :try_start_17
    throw v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 229
    :catchall_5
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    :goto_a
    if-eqz v10, :cond_d

    if-eqz v2, :cond_e

    :try_start_18
    invoke-interface {v10}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :cond_d
    :goto_b
    :try_start_19
    throw v1

    :catch_6
    move-exception v6

    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_e
    invoke-interface {v10}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    goto :goto_b

    .line 230
    :catch_7
    move-exception v1

    :try_start_1a
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_f
    invoke-interface {v9}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    goto/16 :goto_1

    .end local v10    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_8
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_10
    invoke-interface {v9}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto/16 :goto_5

    .line 246
    .restart local v10    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_9
    move-exception v1

    :try_start_1b
    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 247
    .end local v8    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v9    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v10    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v11    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_6
    move-exception v1

    move-object v2, v5

    goto :goto_8

    .line 246
    .restart local v8    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v9    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v10    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v11    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_11
    invoke-interface {v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto/16 :goto_2

    .end local v9    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v10    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v11    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_a
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_12
    invoke-interface {v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_3
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    goto/16 :goto_7

    .line 247
    .restart local v9    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v10    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v11    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_b
    move-exception v1

    :try_start_1c
    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_13
    invoke-interface {v7}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto/16 :goto_3

    .end local v8    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v9    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v10    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v11    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_c
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_14
    invoke-interface {v7}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_4

    goto/16 :goto_9

    .line 246
    .restart local v8    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catchall_7
    move-exception v1

    move-object v2, v4

    goto/16 :goto_6

    .line 229
    .restart local v9    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v10    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v11    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_8
    move-exception v1

    goto :goto_a
.end method
