.class Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;
.super Ljava/lang/Object;
.source "QCDSImageCaptureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/ImageCaptureCommand;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field public static final DS_CAPTURE_TIMEOUT:J = 0xbb8L

.field public static final DS_CAPTURE_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final DS_REQUIRE_IMAGES:I = 0x1

.field public static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mBeautyLevelSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBeautySetting:Lcom/android/camera/async/Observable;
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

.field private final mImageGeneratorProvider:Lcom/android/camera/opengl/image/ImageGeneratorProvider;

.field private final mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

.field private final mMainCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mMainCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mMainFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mMainImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

.field private final mMainImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

.field private final mMainRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mMainRepeatingRequestTemplate:I

.field private final mMainScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mMainTargetCaptureSize:Lcom/android/camera/util/Size;

.field private final mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

.field private final mProfiler:Lcom/android/camera/stats/profiler/Profiler;

.field private final mScreenMode:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlaveCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mSlaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mSlaveFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mSlaveImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

.field private final mSlaveImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

.field private final mSlaveRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mSlaveRepeatingRequestTemplate:I

.field private final mSlaveScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mSlaveTargetCaptureSize:Lcom/android/camera/util/Size;

.field private final mStillCaptureRequestTemplate:I

.field private final mTwiceShotSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaitForAFConvergence:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "QC_DSImgCapCmd"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 82
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->DS_CAPTURE_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIIZLcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;)V
    .locals 2
    .param p1, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p2, "slaveFrameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p3, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "slaveCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p5, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p6, "rootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p7, "slaveRootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p8, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p9, "sharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p10, "slaveSharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p11, "repeatingRequestTemplate"    # I
    .param p12, "slaveRepeatingRequestTemplate"    # I
    .param p13, "stillCaptureRequestTemplate"    # I
    .param p14, "waitForAFConvergence"    # Z
    .param p15, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p16, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p17, "slaveTargetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p18, "imageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p19, "slaveImageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p20, "imageGeneratorProvider"    # Lcom/android/camera/opengl/image/ImageGeneratorProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "IIIZ",
            "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/one/v2/photo/ImageRotationCalculator;",
            "Lcom/android/camera/one/v2/photo/ImageRotationCalculator;",
            "Lcom/android/camera/opengl/image/ImageGeneratorProvider;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p21, "beautySetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .local p22, "beautyLevelSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .local p23, "twiceShotSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .local p24, "screenMode":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 148
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 149
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 150
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 151
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 152
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 153
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 154
    iput-object p8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    .line 155
    iput-object p9, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 156
    iput-object p10, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 157
    iput p11, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainRepeatingRequestTemplate:I

    .line 158
    iput p12, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveRepeatingRequestTemplate:I

    .line 159
    iput p13, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mStillCaptureRequestTemplate:I

    .line 160
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mWaitForAFConvergence:Z

    .line 161
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    .line 162
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainTargetCaptureSize:Lcom/android/camera/util/Size;

    .line 163
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveTargetCaptureSize:Lcom/android/camera/util/Size;

    .line 164
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    .line 165
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    .line 166
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mImageGeneratorProvider:Lcom/android/camera/opengl/image/ImageGeneratorProvider;

    .line 167
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mBeautySetting:Lcom/android/camera/async/Observable;

    .line 168
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mBeautyLevelSetting:Lcom/android/camera/async/Observable;

    .line 169
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mTwiceShotSetting:Lcom/android/camera/async/Observable;

    .line 170
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mScreenMode:Lcom/android/camera/async/Observable;

    .line 171
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 172
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 173
    invoke-static {p6}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 174
    invoke-static {p7}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 175
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 176
    return-void
.end method

.method private captureBurst(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;Lcom/android/camera/stats/profiler/Profile;)V
    .locals 22
    .param p1, "session"    # Lcom/android/camera/one/v2/core/FrameServer$Session;
    .param p2, "slaveSession"    # Lcom/android/camera/one/v2/core/FrameServer$Session;
    .param p3, "imageStream"    # Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .param p4, "slaveImageStream"    # Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .param p6, "imageProcessor"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .param p7, "guard"    # Lcom/android/camera/stats/profiler/Profile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer$Session;",
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
    .line 422
    .local p5, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    new-instance v5, Ljava/util/ArrayList;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 423
    .local v5, "burstRequest":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    new-instance v14, Ljava/util/ArrayList;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 424
    .local v14, "slaveBurstRequest":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    new-instance v10, Ljava/util/ArrayList;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 425
    .local v10, "metadata":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;>;"
    new-instance v16, Ljava/util/ArrayList;

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 427
    .local v16, "slaveMetadata":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;>;"
    const/4 v7, 0x1

    .line 428
    .local v7, "first":Z
    invoke-interface/range {p7 .. p7}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 429
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ge v8, v0, :cond_1

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mStillCaptureRequestTemplate:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v4

    .line 432
    .local v4, "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v20, 0x2

    .line 433
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 432
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 435
    if-eqz v7, :cond_0

    .line 436
    const/4 v7, 0x0

    .line 437
    invoke-static/range {p5 .. p5}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFrameExposure(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 440
    :cond_0
    new-instance v11, Lcom/android/camera/one/v2/photo/MetadataFuture;

    invoke-direct {v11}, Lcom/android/camera/one/v2/photo/MetadataFuture;-><init>()V

    .line 441
    .local v11, "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    invoke-virtual {v4, v11}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 442
    invoke-virtual {v11}, Lcom/android/camera/one/v2/photo/MetadataFuture;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->appendParamForDSCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 448
    invoke-virtual {v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Request added : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mStillCaptureRequestTemplate:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v13

    .line 455
    .local v13, "slaveBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 457
    sget-object v19, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v20, 0x2

    .line 458
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 457
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 460
    new-instance v17, Lcom/android/camera/one/v2/photo/MetadataFuture;

    invoke-direct/range {v17 .. v17}, Lcom/android/camera/one/v2/photo/MetadataFuture;-><init>()V

    .line 461
    .local v17, "slaveMetadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 462
    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/one/v2/photo/MetadataFuture;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->appendParamForDSCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 468
    invoke-virtual {v13}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Slave Request added : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 429
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 473
    .end local v4    # "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v11    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    .end local v13    # "slaveBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v17    # "slaveMetadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    :cond_1
    sget-object v19, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v5, v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 474
    const-string v19, "Request submited"

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 476
    sget-object v19, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v14, v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 477
    const-string v19, "Slave Request submited"

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 479
    invoke-interface/range {p6 .. p6}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->start()V

    .line 480
    const/4 v8, 0x0

    :goto_1
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ge v8, v0, :cond_2

    .line 482
    :try_start_0
    invoke-interface/range {p7 .. p7}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 483
    const-wide/16 v20, 0xbb8

    sget-object v19, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->DS_CAPTURE_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext(JLjava/util/concurrent/TimeUnit;)Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v9

    .line 484
    .local v9, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v19, "ImageProxy get"

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 485
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 486
    .local v12, "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    sget-object v19, Lcom/android/camera/one/DualSightCamType;->MAIN:Lcom/android/camera/one/DualSightCamType;

    move-object/from16 v0, p6

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v9, v12}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addFullSizeImage(Lcom/android/camera/one/DualSightCamType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 488
    invoke-interface/range {p7 .. p7}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 489
    const-wide/16 v20, 0xbb8

    sget-object v19, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->DS_CAPTURE_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p4

    move-wide/from16 v1, v20

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext(JLjava/util/concurrent/TimeUnit;)Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v15

    .line 490
    .local v15, "slaveImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v19, "Slave ImageProxy get"

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 491
    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 492
    .local v18, "slaveMetadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    sget-object v19, Lcom/android/camera/one/DualSightCamType;->SLAVE:Lcom/android/camera/one/DualSightCamType;

    move-object/from16 v0, p6

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v15, v2}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addFullSizeImage(Lcom/android/camera/one/DualSightCamType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 480
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 493
    .end local v9    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v12    # "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .end local v15    # "slaveImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v18    # "slaveMetadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_0
    move-exception v6

    .line 494
    .local v6, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v19, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TimeoutException when capture"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 495
    const-string v19, "timeout when capture image"

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 496
    invoke-interface/range {p6 .. p6}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->abort()V

    .line 504
    .end local v6    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_2
    :goto_2
    return-void

    .line 498
    :catch_1
    move-exception v6

    .line 500
    .local v6, "e":Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
    invoke-interface/range {p6 .. p6}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->cancel()V

    goto :goto_2
.end method

.method private captureBurst(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;)V
    .locals 14
    .param p1, "session"    # Lcom/android/camera/one/v2/core/FrameServer$Session;
    .param p2, "repeatingRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p3, "imageStream"    # Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .param p5, "imageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .param p6, "guard"    # Lcom/android/camera/stats/profiler/Profile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer$Session;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/android/camera/one/v2/imagesaver/ImageSaver;",
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
    .line 509
    .local p4, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    new-instance v3, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 510
    .local v3, "burstRequest":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    new-instance v8, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 512
    .local v8, "metadata":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;>;"
    const/4 v5, 0x1

    .line 513
    .local v5, "first":Z
    invoke-interface/range {p6 .. p6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 514
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v11, 0x1

    if-ge v6, v11, :cond_1

    .line 515
    iget v11, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mStillCaptureRequestTemplate:I

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v2

    .line 517
    .local v2, "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 519
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v12, 0x2

    .line 520
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 519
    invoke-virtual {v2, v11, v12}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 522
    if-eqz v5, :cond_0

    .line 523
    const/4 v5, 0x0

    .line 524
    invoke-static/range {p4 .. p4}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFrameExposure(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 527
    :cond_0
    new-instance v9, Lcom/android/camera/one/v2/photo/MetadataFuture;

    invoke-direct {v9}, Lcom/android/camera/one/v2/photo/MetadataFuture;-><init>()V

    .line 528
    .local v9, "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    invoke-virtual {v2, v9}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 529
    invoke-virtual {v9}, Lcom/android/camera/one/v2/photo/MetadataFuture;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 533
    iget-object v11, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    invoke-virtual {v11, v2}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->appendParamForDSCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 535
    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Request added : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 514
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 540
    .end local v2    # "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v9    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    :cond_1
    sget-object v11, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v3, v11}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 541
    const-string v11, "Request submited"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 543
    const/4 v6, 0x0

    :goto_1
    const/4 v11, 0x1

    if-ge v6, v11, :cond_2

    .line 545
    :try_start_0
    invoke-interface/range {p6 .. p6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 546
    const-wide/16 v12, 0xbb8

    sget-object v11, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->DS_CAPTURE_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p3

    invoke-interface {v0, v12, v13, v11}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext(JLjava/util/concurrent/TimeUnit;)Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v7

    .line 557
    .local v7, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v11, "ImageProxy get"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 558
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 559
    .local v10, "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v7, v10, v11}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->addFullSizeImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 543
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 560
    .end local v7    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v10    # "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_0
    move-exception v4

    .line 561
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v11, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TimeoutException when capture"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 562
    const-string v11, "timeout when capture image"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 569
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_2
    :goto_2
    return-void

    .line 564
    :catch_1
    move-exception v4

    .line 566
    .local v4, "e":Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
    goto :goto_2
.end method

.method private captureBurst(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/async/Updatable;Z[BLcom/android/camera/one/v2/imageprocessor/ImageProcessor;Lcom/android/camera/stats/profiler/Profile;)V
    .locals 14
    .param p1, "session"    # Lcom/android/camera/one/v2/core/FrameServer$Session;
    .param p2, "repeatingRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p3, "imageStream"    # Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .param p5, "isMainCamera"    # Z
    .param p6, "prevPhotoData"    # [B
    .param p7, "imageProcessor"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .param p8, "guard"    # Lcom/android/camera/stats/profiler/Profile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer$Session;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Void;",
            ">;Z[B",
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
    .line 574
    .local p4, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    new-instance v3, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 575
    .local v3, "burstRequest":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    new-instance v8, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 577
    .local v8, "metadata":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;>;"
    const/4 v5, 0x1

    .line 578
    .local v5, "first":Z
    invoke-interface/range {p8 .. p8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 579
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v11, 0x1

    if-ge v6, v11, :cond_1

    .line 580
    iget v11, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mStillCaptureRequestTemplate:I

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v2

    .line 582
    .local v2, "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 584
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v12, 0x2

    .line 585
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 584
    invoke-virtual {v2, v11, v12}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 587
    if-eqz v5, :cond_0

    .line 588
    const/4 v5, 0x0

    .line 589
    invoke-static/range {p4 .. p4}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFrameExposure(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 592
    :cond_0
    new-instance v9, Lcom/android/camera/one/v2/photo/MetadataFuture;

    invoke-direct {v9}, Lcom/android/camera/one/v2/photo/MetadataFuture;-><init>()V

    .line 593
    .local v9, "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    invoke-virtual {v2, v9}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 594
    invoke-virtual {v9}, Lcom/android/camera/one/v2/photo/MetadataFuture;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 598
    iget-object v11, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    invoke-virtual {v11, v2}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->appendParamForDSCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 600
    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Request added : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p8

    invoke-interface {v0, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 579
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 605
    .end local v2    # "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v9    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    :cond_1
    sget-object v11, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v3, v11}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 606
    const-string v11, "Request submited"

    move-object/from16 v0, p8

    invoke-interface {v0, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 608
    invoke-interface/range {p7 .. p7}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->start()V

    .line 609
    const/4 v6, 0x0

    :goto_1
    const/4 v11, 0x1

    if-ge v6, v11, :cond_4

    .line 611
    :try_start_0
    invoke-interface/range {p8 .. p8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 612
    const-wide/16 v12, 0xbb8

    sget-object v11, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->DS_CAPTURE_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p3

    invoke-interface {v0, v12, v13, v11}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext(JLjava/util/concurrent/TimeUnit;)Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v7

    .line 613
    .local v7, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v11, "ImageProxy get"

    move-object/from16 v0, p8

    invoke-interface {v0, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 614
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 615
    .local v10, "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    if-eqz p5, :cond_2

    sget-object v11, Lcom/android/camera/one/DualSightCamType;->MAIN:Lcom/android/camera/one/DualSightCamType;

    :goto_2
    move-object/from16 v0, p7

    invoke-interface {v0, v11, v7, v10}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addFullSizeImage(Lcom/android/camera/one/DualSightCamType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 617
    invoke-interface/range {p8 .. p8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 620
    if-eqz p5, :cond_3

    sget-object v11, Lcom/android/camera/one/DualSightCamType;->SLAVE:Lcom/android/camera/one/DualSightCamType;

    :goto_3
    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-interface {v0, v11, v1}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addFullSizeImage(Lcom/android/camera/one/DualSightCamType;[B)V

    .line 609
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 615
    :cond_2
    sget-object v11, Lcom/android/camera/one/DualSightCamType;->SLAVE:Lcom/android/camera/one/DualSightCamType;

    goto :goto_2

    .line 620
    :cond_3
    sget-object v11, Lcom/android/camera/one/DualSightCamType;->MAIN:Lcom/android/camera/one/DualSightCamType;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 621
    .end local v7    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v10    # "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_0
    move-exception v4

    .line 622
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v11, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TimeoutException when capture"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 623
    const-string v11, "timeout when capture image"

    move-object/from16 v0, p8

    invoke-interface {v0, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 624
    invoke-interface/range {p7 .. p7}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->abort()V

    .line 632
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_4
    :goto_4
    return-void

    .line 626
    :catch_1
    move-exception v4

    .line 628
    .local v4, "e":Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
    invoke-interface/range {p7 .. p7}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->cancel()V

    goto :goto_4
.end method

.method private imageProxyToByte(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)[B
    .locals 10
    .param p1, "proxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .prologue
    .line 341
    const/4 v4, 0x0

    .line 344
    .local v4, "convertedData":[B
    const/4 v3, 0x0

    .line 346
    .local v3, "byteBufferResource":Lcom/android/camera/processing/memory/LruResourcePool$Resource;, "Lcom/android/camera/processing/memory/LruResourcePool$Resource<Ljava/nio/ByteBuffer;>;"
    :try_start_0
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v8}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 347
    .local v7, "origBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 348
    .local v0, "IMAGE_SIZE":I
    new-instance v2, Lcom/android/camera/processing/memory/ByteBufferDirectPool;

    const/4 v8, 0x2

    invoke-direct {v2, v8}, Lcom/android/camera/processing/memory/ByteBufferDirectPool;-><init>(I)V

    .line 350
    .local v2, "byteBufferDirectPool":Lcom/android/camera/processing/memory/LruResourcePool;, "Lcom/android/camera/processing/memory/LruResourcePool<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/android/camera/processing/memory/LruResourcePool;->acquire(Ljava/lang/Object;)Lcom/android/camera/processing/memory/LruResourcePool$Resource;

    move-result-object v3

    .line 351
    invoke-interface {v3}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 352
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    move v6, v0

    .line 353
    .local v6, "numBytesRequired":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 354
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 355
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 356
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 358
    new-array v4, v6, [B

    .line 359
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v0    # "IMAGE_SIZE":I
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "byteBufferDirectPool":Lcom/android/camera/processing/memory/LruResourcePool;, "Lcom/android/camera/processing/memory/LruResourcePool<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    .end local v6    # "numBytesRequired":I
    .end local v7    # "origBuffer":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v4

    .line 360
    :catch_0
    move-exception v5

    .line 361
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .locals 4
    .param p0, "template"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .prologue
    const/4 v3, 0x0

    .line 122
    new-instance v0, Lcom/android/camera/one/v2/core/RequestTemplate;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 123
    .local v0, "result":Lcom/android/camera/one/v2/core/RequestTemplate;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 124
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 126
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 128
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 128
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 130
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

    .line 637
    .line 638
    invoke-interface {p2, p3}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 639
    .local v0, "repeatingBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    new-array v2, v5, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 643
    invoke-interface {p2, p3}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v1

    .line 644
    .local v1, "triggerCancelBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 646
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    .line 647
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 646
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 648
    new-array v2, v5, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 650
    return-void
.end method

.method private twiceShotOffRun(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V
    .locals 15
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

    .prologue
    .line 213
    .local p1, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    sget-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[TS] twiceShotOffRun"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v1, "QCDSImageCaptureCommand"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v10

    .line 216
    .local v10, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->DUALSIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainTargetCaptureSize:Lcom/android/camera/util/Size;

    iget-object v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveTargetCaptureSize:Lcom/android/camera/util/Size;

    iget-object v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    invoke-interface {v8}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v5

    iget-object v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mImageGeneratorProvider:Lcom/android/camera/opengl/image/ImageGeneratorProvider;

    invoke-interface {v8}, Lcom/android/camera/opengl/image/ImageGeneratorProvider;->getImageGenerator()Lcom/android/camera/opengl/image/ImageGenerator;

    move-result-object v6

    iget-object v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mBeautySetting:Lcom/android/camera/async/Observable;

    invoke-interface {v8}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v12, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mBeautyLevelSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v12}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v7, p2

    invoke-interface/range {v0 .. v10}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;->buildForDualSight(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;Lcom/android/camera/util/Size;ILcom/android/camera/opengl/image/ImageGenerator;Lcom/android/camera/one/v2/imagesaver/ImageSaver;ZILcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;

    move-result-object v9

    .line 218
    .local v9, "imageProcessor":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    .local v4, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/4 v13, 0x0

    .line 219
    :try_start_1
    const-string v0, "FrameServer.Session created"

    invoke-interface {v10, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-result-object v5

    .local v5, "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/4 v12, 0x0

    .line 221
    :try_start_2
    const-string v0, "SlaveFrameServer.session created"

    invoke-interface {v10, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 222
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    .local v6, "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    const/4 v2, 0x0

    .line 223
    :try_start_4
    const-string v0, "ImageStream created"

    invoke-interface {v10, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result-object v7

    .local v7, "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    const/4 v1, 0x0

    .line 225
    :try_start_5
    const-string v0, "slaveImageStream created"

    invoke-interface {v10, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->onShutter()Z

    .line 228
    iget-boolean v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mWaitForAFConvergence:Z

    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v10}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 230
    invoke-direct {p0, v4, v5}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->waitForAFConvergence(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 231
    const-string v0, "AF Convergence"

    invoke-interface {v10, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    :cond_0
    move-object v3, p0

    move-object/from16 v8, p1

    .line 234
    invoke-direct/range {v3 .. v10}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->captureBurst(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;Lcom/android/camera/stats/profiler/Profile;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 235
    if-eqz v7, :cond_1

    if-eqz v1, :cond_8

    :try_start_6
    invoke-interface {v7}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 236
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    if-eqz v2, :cond_b

    :try_start_7
    invoke-interface {v6}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 241
    :cond_2
    :goto_1
    :try_start_8
    invoke-interface {v10}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 242
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 243
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainRepeatingRequestTemplate:I

    invoke-direct {p0, v4, v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)V

    .line 244
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveRepeatingRequestTemplate:I

    invoke-direct {p0, v5, v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)V

    .line 245
    const-string v0, "Preview reset"

    invoke-interface {v10, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 247
    if-eqz v5, :cond_3

    if-eqz v12, :cond_d

    :try_start_9
    invoke-interface {v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 248
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    if-eqz v13, :cond_f

    :try_start_a
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 253
    .end local v4    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v5    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v6    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v7    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_4
    :goto_3
    return-void

    .line 235
    .restart local v4    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v5    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v6    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v7    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_0
    move-exception v0

    :try_start_b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_0

    .line 222
    .end local v7    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_1
    move-exception v0

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 236
    :catchall_0
    move-exception v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    :goto_4
    if-eqz v6, :cond_5

    if-eqz v1, :cond_c

    :try_start_d
    invoke-interface {v6}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_5
    :goto_5
    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 241
    .end local v6    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_1
    move-exception v0

    :try_start_f
    invoke-interface {v10}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 242
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v1}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 243
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainRepeatingRequestTemplate:I

    invoke-direct {p0, v4, v1, v2}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)V

    .line 244
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveRepeatingRequestTemplate:I

    invoke-direct {p0, v5, v1, v2}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)V

    .line 245
    const-string v1, "Preview reset"

    invoke-interface {v10, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 220
    :catch_2
    move-exception v0

    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 247
    :catchall_2
    move-exception v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    :goto_6
    if-eqz v5, :cond_6

    if-eqz v1, :cond_e

    :try_start_11
    invoke-interface {v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :cond_6
    :goto_7
    :try_start_12
    throw v0
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 218
    .end local v5    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_3
    move-exception v0

    :try_start_13
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 248
    :catchall_3
    move-exception v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    :goto_8
    if-eqz v4, :cond_7

    if-eqz v1, :cond_10

    :try_start_14
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4

    :cond_7
    :goto_9
    :try_start_15
    throw v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    .end local v4    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_4
    move-exception v11

    .line 249
    .local v11, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 250
    invoke-interface {v9}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->cancel()V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto :goto_3

    .line 235
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v4    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v5    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v6    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v7    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_8
    :try_start_16
    invoke-interface {v7}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    goto/16 :goto_0

    .line 236
    .end local v7    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 224
    .restart local v7    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_5
    move-exception v0

    :try_start_17
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 235
    :catchall_5
    move-exception v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    :goto_a
    if-eqz v7, :cond_9

    if-eqz v1, :cond_a

    :try_start_18
    invoke-interface {v7}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :cond_9
    :goto_b
    :try_start_19
    throw v0

    :catch_6
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_a
    invoke-interface {v7}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    goto :goto_b

    .line 236
    :catch_7
    move-exception v0

    :try_start_1a
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_b
    invoke-interface {v6}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    goto/16 :goto_1

    .end local v7    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_8
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_c
    invoke-interface {v6}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto/16 :goto_5

    .line 247
    .restart local v7    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_9
    move-exception v0

    :try_start_1b
    invoke-virtual {v12, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 248
    .end local v5    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v6    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v7    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_6
    move-exception v0

    move-object v1, v13

    goto :goto_8

    .line 247
    .restart local v5    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v6    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v7    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_d
    invoke-interface {v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto/16 :goto_2

    .end local v6    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v7    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_e
    invoke-interface {v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_3
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    goto/16 :goto_7

    .line 248
    .restart local v6    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v7    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_b
    move-exception v0

    :try_start_1c
    invoke-virtual {v13, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_f
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto/16 :goto_3

    .end local v5    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v6    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v7    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_10
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_4

    goto/16 :goto_9

    .line 247
    .restart local v5    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catchall_7
    move-exception v0

    move-object v1, v12

    goto/16 :goto_6

    .line 235
    .restart local v6    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v7    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_8
    move-exception v0

    goto :goto_a
.end method

.method private twiceShotOnIDLERun(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V
    .locals 15
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

    .prologue
    .line 257
    .local p1, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v4, "QCDSImageCaptureCommand(TS.IDLE)"

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v6

    .line 259
    .local v6, "guard":Lcom/android/camera/stats/profiler/Profile;
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->getCaptureSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->isMainCamera()Z

    move-result v10

    .line 260
    .local v10, "isMainCamera":Z
    sget-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TS] TWICE_SHOT 1 - twiceShotOnIDLERun isMainCamera:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 261
    if-eqz v10, :cond_3

    iget-object v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 262
    .local v8, "frameServer":Lcom/android/camera/one/v2/core/FrameServer;
    :goto_0
    if-eqz v10, :cond_4

    iget-object v9, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 263
    .local v9, "imageReader":Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    :goto_1
    if-eqz v10, :cond_5

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 264
    .local v2, "repeatingRequestBuilder":Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    :goto_2
    if-eqz v10, :cond_6

    iget v11, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainRepeatingRequestTemplate:I

    .line 265
    .local v11, "repeatingRequestTemplate":I
    :goto_3
    :try_start_0
    invoke-interface {v8}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v1

    .local v1, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/4 v13, 0x0

    .line 266
    :try_start_1
    const-string v0, "FrameServer.Session created"

    invoke-interface {v6, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 267
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v9, v0}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .local v3, "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    const/4 v12, 0x0

    .line 268
    :try_start_3
    const-string v0, "ImageStream created"

    invoke-interface {v6, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->onShutter()Z

    .line 270
    iget-boolean v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mWaitForAFConvergence:Z

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->waitForAFConvergence(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 273
    const-string v0, "AF Convergence"

    invoke-interface {v6, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 276
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->captureBurst(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 277
    if-eqz v3, :cond_1

    if-eqz v12, :cond_8

    :try_start_4
    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 282
    :cond_1
    :goto_4
    :try_start_5
    invoke-interface {v6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 283
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 284
    invoke-direct {p0, v1, v2, v11}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)V

    .line 285
    const-string v0, "Preview reset"

    invoke-interface {v6, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 287
    if-eqz v1, :cond_2

    if-eqz v13, :cond_b

    :try_start_6
    invoke-interface {v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 291
    :cond_2
    :goto_5
    invoke-interface {v6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 292
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->close()V

    .line 293
    const-string v0, "imageSaver.close"

    invoke-interface {v6, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 295
    .end local v1    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :goto_6
    return-void

    .line 261
    .end local v2    # "repeatingRequestBuilder":Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .end local v8    # "frameServer":Lcom/android/camera/one/v2/core/FrameServer;
    .end local v9    # "imageReader":Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .end local v11    # "repeatingRequestTemplate":I
    :cond_3
    iget-object v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    goto :goto_0

    .line 262
    .restart local v8    # "frameServer":Lcom/android/camera/one/v2/core/FrameServer;
    :cond_4
    iget-object v9, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    goto :goto_1

    .line 263
    .restart local v9    # "imageReader":Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    :cond_5
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    goto :goto_2

    .line 264
    .restart local v2    # "repeatingRequestBuilder":Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    :cond_6
    iget v11, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveRepeatingRequestTemplate:I

    goto :goto_3

    .line 277
    .restart local v1    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v11    # "repeatingRequestTemplate":I
    :catch_0
    move-exception v0

    :try_start_7
    invoke-virtual {v12, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 282
    .end local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_0
    move-exception v0

    :try_start_8
    invoke-interface {v6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 283
    iget-object v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v4}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 284
    invoke-direct {p0, v1, v2, v11}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)V

    .line 285
    const-string v4, "Preview reset"

    invoke-interface {v6, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 265
    :catch_1
    move-exception v0

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 287
    :catchall_1
    move-exception v4

    move-object v14, v4

    move-object v4, v0

    move-object v0, v14

    :goto_7
    if-eqz v1, :cond_7

    if-eqz v4, :cond_c

    :try_start_a
    invoke-interface {v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_7
    :goto_8
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .end local v1    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_2
    move-exception v7

    .line 288
    .local v7, "e":Ljava/lang/Exception;
    :try_start_c
    sget-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 291
    invoke-interface {v6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 292
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->close()V

    .line 293
    const-string v0, "imageSaver.close"

    invoke-interface {v6, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    goto :goto_6

    .line 277
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v1    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_8
    :try_start_d
    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_4

    .line 267
    :catch_3
    move-exception v0

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 277
    :catchall_2
    move-exception v4

    move-object v14, v4

    move-object v4, v0

    move-object v0, v14

    :goto_9
    if-eqz v3, :cond_9

    if-eqz v4, :cond_a

    :try_start_f
    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_9
    :goto_a
    :try_start_10
    throw v0

    :catch_4
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_a
    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_a

    .line 287
    :catch_5
    move-exception v0

    :try_start_11
    invoke-virtual {v13, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto/16 :goto_5

    .line 291
    .end local v1    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_3
    move-exception v0

    invoke-interface {v6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 292
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->close()V

    .line 293
    const-string v4, "imageSaver.close"

    invoke-interface {v6, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    throw v0

    .line 287
    .restart local v1    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_b
    :try_start_12
    invoke-interface {v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto/16 :goto_5

    .end local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_6
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_c
    invoke-interface {v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v4, v13

    goto/16 :goto_7

    .line 277
    .restart local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_5
    move-exception v0

    move-object v4, v12

    goto :goto_9
.end method

.method private twiceShotOnNextRun(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V
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

    .prologue
    .line 299
    .local p1, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v2, "QCDSImageCaptureCommand(TS.NEXT)"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v11

    .line 301
    .local v11, "guard":Lcom/android/camera/stats/profiler/Profile;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->DUALSIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainTargetCaptureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveTargetCaptureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    invoke-interface {v7}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mImageGeneratorProvider:Lcom/android/camera/opengl/image/ImageGeneratorProvider;

    invoke-interface {v7}, Lcom/android/camera/opengl/image/ImageGeneratorProvider;->getImageGenerator()Lcom/android/camera/opengl/image/ImageGenerator;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mBeautySetting:Lcom/android/camera/async/Observable;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mBeautyLevelSetting:Lcom/android/camera/async/Observable;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v8, p2

    invoke-interface/range {v1 .. v11}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;->buildForDualSight(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;Lcom/android/camera/util/Size;ILcom/android/camera/opengl/image/ImageGenerator;Lcom/android/camera/one/v2/imagesaver/ImageSaver;ZILcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;

    move-result-object v10

    .line 303
    .local v10, "imageProcessor":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->getCaptureSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->isMainCamera()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v8, 0x1

    .line 304
    .local v8, "isMainCamera":Z
    :goto_0
    sget-object v1, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TS] TWICE_SHOT 2 -  twiceShotOnNextRun  isMainCamera:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 305
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->getCaptureSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getPrevPhoto()[B

    move-result-object v9

    .line 306
    .local v9, "prevPhotoData":[B
    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 307
    .local v13, "frameServer":Lcom/android/camera/one/v2/core/FrameServer;
    :goto_1
    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 308
    .local v14, "imageReader":Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    :goto_2
    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 309
    .local v5, "repeatingRequestBuilder":Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    :goto_3
    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainRepeatingRequestTemplate:I

    .line 310
    .local v15, "repeatingRequestTemplate":I
    :goto_4
    :try_start_0
    invoke-interface {v13}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .local v4, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/16 v16, 0x0

    .line 311
    :try_start_1
    const-string v1, "FrameServer.Session created"

    invoke-interface {v11, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 312
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {v14, v1}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .local v6, "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    const/4 v2, 0x0

    .line 313
    :try_start_3
    const-string v1, "ImageStream created"

    invoke-interface {v11, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v1}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->onShutter()Z

    .line 315
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mWaitForAFConvergence:Z

    if-eqz v1, :cond_0

    .line 316
    invoke-interface {v11}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 317
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->waitForAFConvergence(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 318
    const-string v1, "AF Convergence"

    invoke-interface {v11, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v3, p0

    move-object/from16 v7, p1

    .line 321
    invoke-direct/range {v3 .. v11}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->captureBurst(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/async/Updatable;Z[BLcom/android/camera/one/v2/imageprocessor/ImageProcessor;Lcom/android/camera/stats/profiler/Profile;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 322
    if-eqz v6, :cond_1

    if-eqz v2, :cond_9

    :try_start_4
    invoke-interface {v6}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 327
    :cond_1
    :goto_5
    :try_start_5
    invoke-interface {v11}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v1}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 329
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v15}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)V

    .line 330
    const-string v1, "Preview reset"

    invoke-interface {v11, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 332
    if-eqz v4, :cond_2

    if-eqz v16, :cond_c

    :try_start_6
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 337
    .end local v4    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v6    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_2
    :goto_6
    return-void

    .line 303
    .end local v5    # "repeatingRequestBuilder":Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .end local v8    # "isMainCamera":Z
    .end local v9    # "prevPhotoData":[B
    .end local v13    # "frameServer":Lcom/android/camera/one/v2/core/FrameServer;
    .end local v14    # "imageReader":Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .end local v15    # "repeatingRequestTemplate":I
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 306
    .restart local v8    # "isMainCamera":Z
    .restart local v9    # "prevPhotoData":[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    goto :goto_1

    .line 307
    .restart local v13    # "frameServer":Lcom/android/camera/one/v2/core/FrameServer;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    goto :goto_2

    .line 308
    .restart local v14    # "imageReader":Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    goto :goto_3

    .line 309
    .restart local v5    # "repeatingRequestBuilder":Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    :cond_7
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveRepeatingRequestTemplate:I

    goto :goto_4

    .line 322
    .restart local v4    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v6    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v15    # "repeatingRequestTemplate":I
    :catch_0
    move-exception v1

    :try_start_7
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 327
    .end local v6    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_0
    move-exception v1

    :try_start_8
    invoke-interface {v11}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v2}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 329
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v15}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)V

    .line 330
    const-string v2, "Preview reset"

    invoke-interface {v11, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 310
    :catch_1
    move-exception v1

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 332
    :catchall_1
    move-exception v2

    move-object/from16 v17, v2

    move-object v2, v1

    move-object/from16 v1, v17

    :goto_7
    if-eqz v4, :cond_8

    if-eqz v2, :cond_d

    :try_start_a
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :cond_8
    :goto_8
    :try_start_b
    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .end local v4    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_2
    move-exception v12

    .line 333
    .local v12, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 334
    invoke-interface {v10}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->cancel()V

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto :goto_6

    .line 322
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v4    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v6    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_9
    :try_start_c
    invoke-interface {v6}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_5

    .line 312
    :catch_3
    move-exception v1

    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 322
    :catchall_2
    move-exception v2

    move-object/from16 v17, v2

    move-object v2, v1

    move-object/from16 v1, v17

    :goto_9
    if-eqz v6, :cond_a

    if-eqz v2, :cond_b

    :try_start_e
    invoke-interface {v6}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_a
    :goto_a
    :try_start_f
    throw v1

    :catch_4
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_b
    invoke-interface {v6}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_a

    .line 332
    :catch_5
    move-exception v1

    :try_start_10
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_c
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto/16 :goto_6

    .end local v6    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_6
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_d
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    goto :goto_8

    :catchall_3
    move-exception v1

    move-object/from16 v2, v16

    goto :goto_7

    .line 322
    .restart local v6    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_4
    move-exception v1

    goto :goto_9
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

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "afStateMachine":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    if-eqz p1, :cond_0

    .line 373
    new-instance v0, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;

    .end local v0    # "afStateMachine":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    invoke-direct {v0}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;-><init>()V

    .line 374
    .restart local v0    # "afStateMachine":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    iget-object v7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainRepeatingRequestTemplate:I

    invoke-interface {v7, v8}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v2

    .line 375
    .local v2, "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 376
    new-array v7, v9, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sget-object v8, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v7, v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 379
    iget-object v7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mMainRepeatingRequestTemplate:I

    invoke-interface {v7, v8}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v6

    .line 380
    .local v6, "triggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 382
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 383
    new-array v7, v9, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v6}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sget-object v8, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v7, v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 388
    .end local v2    # "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v6    # "triggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    :cond_0
    const/4 v3, 0x0

    .line 389
    .local v3, "slaveAfStateMachine":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    if-eqz p2, :cond_1

    .line 390
    new-instance v3, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;

    .end local v3    # "slaveAfStateMachine":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    invoke-direct {v3}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;-><init>()V

    .line 392
    .restart local v3    # "slaveAfStateMachine":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    iget-object v7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveRepeatingRequestTemplate:I

    invoke-interface {v7, v8}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v4

    .line 393
    .local v4, "slaveIdleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    invoke-static {v3}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 394
    new-array v7, v9, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sget-object v8, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p2, v7, v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 397
    iget-object v7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mSlaveRepeatingRequestTemplate:I

    invoke-interface {v7, v8}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v5

    .line 398
    .local v5, "slaveTriggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 400
    invoke-static {v3}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 401
    new-array v7, v9, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sget-object v8, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p2, v7, v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 405
    .end local v4    # "slaveIdleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v5    # "slaveTriggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    :cond_1
    if-eqz v0, :cond_2

    .line 407
    const-wide/16 v8, 0x1388

    :try_start_0
    sget-object v7, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->AF_SCAN_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v8, v9, v7}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->get(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 414
    const-wide/16 v8, 0x1388

    :try_start_1
    sget-object v7, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->AF_SCAN_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v8, v9, v7}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->get(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    .line 419
    :cond_3
    :goto_1
    return-void

    .line 408
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v7, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "Wait for AF - Timeout"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 415
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v1

    .line 416
    .restart local v1    # "e":Ljava/util/concurrent/TimeoutException;
    sget-object v7, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "Wait for slave AF - Timeout"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V
    .locals 3
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
    .line 186
    .local p1, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    sget-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TS] >>> mTwiceShotSetting :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mTwiceShotSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v2}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mTwiceShotSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->mScreenMode:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "1"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 195
    :cond_0
    sget-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[TS] twiceShotOffRun 0"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->twiceShotOffRun(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    .line 210
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-interface {p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->getCaptureSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->isForceHideThumbnail()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    sget-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[TS] twiceShotOnIDLERun 1"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->twiceShotOnIDLERun(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    goto :goto_0

    .line 202
    :cond_2
    sget-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[TS] twiceShotOnNextRun 2"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDSImageCaptureCommand;->twiceShotOnNextRun(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    goto :goto_0
.end method
