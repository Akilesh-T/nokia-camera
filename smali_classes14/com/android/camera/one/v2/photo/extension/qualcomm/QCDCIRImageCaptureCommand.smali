.class Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;
.super Ljava/lang/Object;
.source "QCDCIRImageCaptureCommand.java"

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

.field private static final DC_IR_REQUIRE_IMAGES:I = 0x1

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

.field private final mDualCamLayoutOrientation:I

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

.field private final mFallbackCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

.field private final mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mHorizontalViewAngle:F

.field private final mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

.field private final mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

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
    .line 78
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "QC_DCIRImgCapCmd"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 81
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->DC_CAPTURE_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;IILcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;IIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;[BIFLcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)V
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
    .param p23, "calibrationData"    # [B
    .param p24, "dualCamLayoutOrientation"    # I
    .param p25, "horizontalViewAngle"    # F
    .param p28, "fallbackCommand"    # Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
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
            ">;[BIF",
            "Lcom/google/common/base/Supplier",
            "<[",
            "Landroid/hardware/camera2/params/Face;",
            ">;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    .local p22, "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .local p26, "faceData":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<[Landroid/hardware/camera2/params/Face;>;"
    .local p27, "blurIntensitySetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 177
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 179
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 180
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 181
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 182
    iput p10, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mRepeatingRequestTemplate:I

    .line 183
    iput-object p12, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 184
    move/from16 v0, p14

    iput v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mStillCaptureRequestTemplate:I

    .line 185
    invoke-static {p7}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 187
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 188
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 189
    iput-object p8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 190
    iput p11, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveRepeatingRequestTemplate:I

    .line 191
    iput-object p13, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 192
    move/from16 v0, p15

    iput v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveStillCaptureRequestTemplate:I

    .line 193
    invoke-static {p8}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 195
    iput-object p9, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    .line 196
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mWaitForAFConvergence:Z

    .line 197
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mCalibrationData:[B

    .line 198
    move/from16 v0, p24

    iput v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mDualCamLayoutOrientation:I

    .line 199
    move/from16 v0, p25

    iput v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mHorizontalViewAngle:F

    .line 200
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mBlurIntensitySetting:Lcom/google/common/base/Supplier;

    .line 202
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->m3AStateProvider:Lcom/android/camera/one/v2/photo/State3AProvider;

    .line 203
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 204
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 205
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    .line 206
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    .line 207
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    .line 208
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mFaceData:Lcom/google/common/base/Supplier;

    .line 209
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 210
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mFallbackCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 211
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
    .line 360
    .local p6, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    new-instance v5, Ljava/util/ArrayList;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    .local v5, "burstRequest":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    new-instance v15, Ljava/util/ArrayList;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    .local v15, "slaveBurstRequest":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    new-instance v10, Ljava/util/ArrayList;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 363
    .local v10, "metadata":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;>;"
    new-instance v17, Ljava/util/ArrayList;

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 365
    .local v17, "slaveMetadata":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;>;"
    const/4 v7, 0x1

    .line 366
    .local v7, "first":Z
    invoke-interface/range {p8 .. p8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 367
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ge v8, v0, :cond_2

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mStillCaptureRequestTemplate:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v4

    .line 370
    .local v4, "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v20, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v21, 0x2

    .line 371
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 370
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 373
    if-eqz v7, :cond_0

    .line 374
    const/4 v7, 0x0

    .line 375
    invoke-static/range {p6 .. p6}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFrameExposure(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 378
    :cond_0
    new-instance v11, Lcom/android/camera/one/v2/photo/MetadataFuture;

    invoke-direct {v11}, Lcom/android/camera/one/v2/photo/MetadataFuture;-><init>()V

    .line 379
    .local v11, "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    invoke-virtual {v4, v11}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 380
    invoke-virtual {v11}, Lcom/android/camera/one/v2/photo/MetadataFuture;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 384
    if-eqz p5, :cond_1

    .line 385
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 388
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->appendParamForDCIRCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 390
    invoke-virtual {v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
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

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveStillCaptureRequestTemplate:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v14

    .line 397
    .local v14, "slaveBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v20, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v21, 0x4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 399
    sget-object v20, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v21, 0x2

    .line 400
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 399
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 402
    new-instance v18, Lcom/android/camera/one/v2/photo/MetadataFuture;

    invoke-direct/range {v18 .. v18}, Lcom/android/camera/one/v2/photo/MetadataFuture;-><init>()V

    .line 403
    .local v18, "slaveMetadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 404
    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/one/v2/photo/MetadataFuture;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->appendParamForDCIRCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 410
    invoke-virtual {v14}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
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

    .line 367
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 415
    .end local v4    # "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v11    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    .end local v14    # "slaveBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v18    # "slaveMetadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    :cond_2
    sget-object v20, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v5, v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 416
    const-string v20, "Request submited"

    move-object/from16 v0, p8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 418
    sget-object v20, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v15, v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 419
    const-string v20, "Slave Request submited"

    move-object/from16 v0, p8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 421
    invoke-interface/range {p7 .. p7}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->start()V

    .line 422
    const/4 v8, 0x0

    :goto_1
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ge v8, v0, :cond_5

    .line 424
    :try_start_0
    invoke-interface/range {p8 .. p8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 425
    const-wide/16 v20, 0xbb8

    sget-object v22, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->DC_CAPTURE_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext(JLjava/util/concurrent/TimeUnit;)Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v9

    .line 426
    .local v9, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v20, "ImageProxy get"

    move-object/from16 v0, p8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 427
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 428
    .local v12, "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    sget-object v20, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p7

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v8, v9, v12}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addFullSizeImage(Lcom/android/camera/one/CameraType;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 430
    invoke-interface/range {p8 .. p8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 431
    const-wide/16 v20, 0xbb8

    sget-object v22, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->DC_CAPTURE_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p4

    move-wide/from16 v1, v20

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext(JLjava/util/concurrent/TimeUnit;)Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v16

    .line 432
    .local v16, "slaveImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v20, "Slave ImageProxy get"

    move-object/from16 v0, p8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 433
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 434
    .local v19, "slaveMetadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    sget-object v20, Lcom/android/camera/one/CameraType;->MONO:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p7

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v8, v2, v3}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addFullSizeImage(Lcom/android/camera/one/CameraType;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 436
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

    .line 437
    sget-object v20, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v21, "frame sync"

    invoke-static/range {v20 .. v21}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 442
    :goto_2
    if-eqz p5, :cond_3

    .line 443
    invoke-interface/range {p5 .. p5}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v13

    .line 444
    .local v13, "rawImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v20, "RawImage get"

    move-object/from16 v0, p8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 445
    if-eqz v13, :cond_3

    .line 446
    sget-object v20, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 447
    sget-object v20, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p7

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13, v12}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addRawImage(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 422
    .end local v13    # "rawImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 439
    :cond_4
    sget-object v20, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 450
    .end local v9    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v12    # "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .end local v16    # "slaveImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v19    # "slaveMetadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_0
    move-exception v6

    .line 451
    .local v6, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v20, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 452
    const-string v20, "timeout when capture image"

    move-object/from16 v0, p8

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 453
    invoke-interface/range {p7 .. p7}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->abort()V

    .line 461
    .end local v6    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_5
    :goto_3
    return-void

    .line 455
    :catch_1
    move-exception v6

    .line 456
    .local v6, "e":Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
    invoke-interface/range {p7 .. p7}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->cancel()V

    goto :goto_3
.end method

.method private static resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .locals 4
    .param p0, "template"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .prologue
    const/4 v3, 0x0

    .line 124
    new-instance v0, Lcom/android/camera/one/v2/core/RequestTemplate;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 125
    .local v0, "result":Lcom/android/camera/one/v2/core/RequestTemplate;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 126
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 128
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 128
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 130
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 131
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 130
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 132
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

    .line 466
    .line 467
    invoke-interface {p2, p3}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 468
    .local v0, "repeatingBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    new-array v2, v5, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 472
    invoke-interface {p2, p3}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v1

    .line 473
    .local v1, "triggerCancelBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 475
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    .line 476
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 475
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 477
    new-array v2, v5, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 479
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

    .line 316
    new-instance v0, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;

    invoke-direct {v0}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;-><init>()V

    .line 318
    .local v0, "afStateMachine":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    iget-object v7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mRepeatingRequestTemplate:I

    invoke-interface {v7, v8}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v2

    .line 319
    .local v2, "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 320
    new-array v7, v9, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sget-object v8, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v7, v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 323
    iget-object v7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mRepeatingRequestTemplate:I

    invoke-interface {v7, v8}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v6

    .line 324
    .local v6, "triggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 326
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 327
    new-array v7, v9, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v6}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sget-object v8, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v7, v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 331
    new-instance v3, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;

    invoke-direct {v3}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;-><init>()V

    .line 333
    .local v3, "slaveAfStateMachine":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    iget-object v7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveRepeatingRequestTemplate:I

    invoke-interface {v7, v8}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v4

    .line 334
    .local v4, "slaveIdleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    invoke-static {v3}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 335
    new-array v7, v9, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sget-object v8, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p2, v7, v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 338
    iget-object v7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveRepeatingRequestTemplate:I

    invoke-interface {v7, v8}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v5

    .line 339
    .local v5, "slaveTriggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 341
    invoke-static {v3}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 342
    new-array v7, v9, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sget-object v8, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p2, v7, v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 347
    const-wide/16 v8, 0x1388

    :try_start_0
    sget-object v7, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->AF_SCAN_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v8, v9, v7}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->get(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    const-wide/16 v8, 0x1388

    :try_start_1
    sget-object v7, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->AF_SCAN_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v8, v9, v7}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->get(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    .line 357
    :goto_1
    return-void

    .line 348
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v7, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "Wait for AF - Timeout"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v1

    .line 355
    .restart local v1    # "e":Ljava/util/concurrent/TimeoutException;
    sget-object v7, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "Wait for slave AF - Timeout"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V
    .locals 26
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
    .line 220
    .local p1, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "QCDCIRImageCaptureCommand"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v15

    .line 221
    .local v15, "guard":Lcom/android/camera/stats/profiler/Profile;
    const/16 v16, 0x0

    .line 222
    .local v16, "bokeh_x_position":I
    const/16 v17, 0x0

    .line 224
    .local v17, "bokeh_y_position":I
    const/16 v24, 0x0

    .line 225
    .local v24, "needBokeh":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v2}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->getFocusAreaPoint()Landroid/graphics/PointF;

    move-result-object v21

    .line 226
    .local v21, "focusPointF":Landroid/graphics/PointF;
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 227
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v17, v0

    .line 229
    const/16 v24, 0x1

    .line 253
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needBokeh = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 255
    if-nez v24, :cond_7

    .line 256
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bokeh not required, using fallback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mFallbackCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    const-string v2, "bokeh not required"

    invoke-interface {v15, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mFallbackCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    .line 311
    :cond_2
    :goto_1
    return-void

    .line 231
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mFaceData:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/hardware/camera2/params/Face;

    .line 232
    .local v20, "faces":[Landroid/hardware/camera2/params/Face;
    if-eqz v20, :cond_1

    .line 233
    const/16 v23, 0x0

    .line 234
    .local v23, "maxFace":Landroid/graphics/Rect;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_2
    move-object/from16 v0, v20

    array-length v2, v0

    move/from16 v0, v22

    if-ge v0, v2, :cond_6

    .line 235
    if-nez v23, :cond_5

    .line 236
    aget-object v2, v20, v22

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v23

    .line 234
    :cond_4
    :goto_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 240
    :cond_5
    aget-object v2, v20, v22

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v18

    .line 241
    .local v18, "bound":Landroid/graphics/Rect;
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    if-ge v2, v3, :cond_4

    .line 242
    move-object/from16 v23, v18

    goto :goto_3

    .line 246
    .end local v18    # "bound":Landroid/graphics/Rect;
    :cond_6
    if-eqz v23, :cond_1

    .line 247
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    .line 248
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    .line 249
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 262
    .end local v20    # "faces":[Landroid/hardware/camera2/params/Face;
    .end local v22    # "i":I
    .end local v23    # "maxFace":Landroid/graphics/Rect;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    sget-object v3, Lcom/android/ex/camera2/portability/CaptureIntent;->BOKEH:Lcom/android/ex/camera2/portability/CaptureIntent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mCalibrationData:[B

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mDualCamLayoutOrientation:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mHorizontalViewAngle:F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mBlurIntensitySetting:Lcom/google/common/base/Supplier;

    invoke-interface {v13}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v9, Landroid/graphics/Point;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v9, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    invoke-interface {v13}, Lcom/android/camera/one/v2/photo/SceneDetector;->getCurrentIsoValue()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    invoke-interface {v13}, Lcom/android/camera/one/v2/photo/SceneDetector;->getCurrentIsoValue()I

    move-result v11

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    move-object/from16 v14, p2

    invoke-interface/range {v2 .. v15}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;->buildForDualCam(Lcom/android/ex/camera2/portability/CaptureIntent;[BIFFILandroid/graphics/Point;IIILcom/android/camera/util/Size;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;

    move-result-object v14

    .line 264
    .local v14, "imageProcessor":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v2}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .local v8, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/4 v6, 0x0

    .line 265
    :try_start_1
    const-string v2, "FrameServer.Session created"

    invoke-interface {v15, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v2}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-result-object v9

    .local v9, "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/4 v5, 0x0

    .line 267
    :try_start_2
    const-string v2, "SlaveFrameServer.session created"

    invoke-interface {v15, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 268
    const/4 v12, 0x0

    .line 269
    .local v12, "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v10

    .local v10, "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    const/4 v4, 0x0

    .line 270
    :try_start_4
    const-string v2, "ImageStream created"

    invoke-interface {v15, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result-object v11

    .local v11, "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    const/4 v3, 0x0

    .line 272
    :try_start_5
    const-string v2, "slaveImageStream created"

    invoke-interface {v15, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v2}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->onShutter()Z

    .line 275
    sget-boolean v2, Lcom/android/camera/product_utils/ProductUtil;->DUALCAM_LINK_ENABLE:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mWaitForAFConvergence:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->m3AStateProvider:Lcom/android/camera/one/v2/photo/State3AProvider;

    invoke-interface {v2}, Lcom/android/camera/one/v2/photo/State3AProvider;->isAFRequired()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 276
    :cond_8
    invoke-interface {v15}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 277
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->waitForAFConvergence(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 278
    const-string v2, "AF Convergence"

    invoke-interface {v15, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 281
    :cond_9
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "capture raw image : "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v13}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v2}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    move-result-object v12

    .line 284
    const-string v2, "RawImageStream created"

    invoke-interface {v15, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v7, p0

    move-object/from16 v13, p1

    .line 287
    invoke-direct/range {v7 .. v15}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->captureBurst(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;Lcom/android/camera/stats/profiler/Profile;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 288
    if-eqz v11, :cond_b

    if-eqz v3, :cond_13

    :try_start_6
    invoke-interface {v11}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 289
    :cond_b
    :goto_4
    if-eqz v10, :cond_c

    if-eqz v4, :cond_16

    :try_start_7
    invoke-interface {v10}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 291
    :cond_c
    :goto_5
    if-eqz v12, :cond_d

    .line 292
    :try_start_8
    invoke-interface {v12}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    .line 299
    :cond_d
    invoke-interface {v15}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v2}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mRepeatingRequestTemplate:I

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2, v3}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveRepeatingRequestTemplate:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v3}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)V

    .line 303
    const-string v2, "Preview reset"

    invoke-interface {v15, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 305
    if-eqz v9, :cond_e

    if-eqz v5, :cond_18

    :try_start_9
    invoke-interface {v9}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 306
    :cond_e
    :goto_6
    if-eqz v8, :cond_2

    if-eqz v6, :cond_1a

    :try_start_a
    invoke-interface {v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v2

    :try_start_b
    invoke-virtual {v6, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_1

    .end local v8    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v9    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v10    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v11    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v12    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_1
    move-exception v19

    .line 307
    .local v19, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 308
    invoke-interface {v14}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->cancel()V

    .line 309
    const-string v2, "imageProcessor error"

    invoke-interface {v15, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 288
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v8    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v9    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v10    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v11    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v12    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_2
    move-exception v2

    :try_start_c
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_4

    .line 269
    .end local v11    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_3
    move-exception v2

    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 289
    :catchall_0
    move-exception v3

    move-object/from16 v25, v3

    move-object v3, v2

    move-object/from16 v2, v25

    :goto_7
    if-eqz v10, :cond_f

    if-eqz v3, :cond_17

    :try_start_e
    invoke-interface {v10}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_f
    :goto_8
    :try_start_f
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 291
    .end local v10    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_1
    move-exception v2

    if-eqz v12, :cond_10

    .line 292
    :try_start_10
    invoke-interface {v12}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    .line 299
    :cond_10
    invoke-interface {v15}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v3}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mRepeatingRequestTemplate:I

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->mSlaveRepeatingRequestTemplate:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCDCIRImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)V

    .line 303
    const-string v3, "Preview reset"

    invoke-interface {v15, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    throw v2
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 266
    .end local v12    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_4
    move-exception v2

    :try_start_11
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 305
    :catchall_2
    move-exception v3

    move-object/from16 v25, v3

    move-object v3, v2

    move-object/from16 v2, v25

    :goto_9
    if-eqz v9, :cond_11

    if-eqz v3, :cond_19

    :try_start_12
    invoke-interface {v9}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :cond_11
    :goto_a
    :try_start_13
    throw v2
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 264
    .end local v9    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_5
    move-exception v2

    :try_start_14
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 306
    :catchall_3
    move-exception v3

    move-object/from16 v25, v3

    move-object v3, v2

    move-object/from16 v2, v25

    :goto_b
    if-eqz v8, :cond_12

    if-eqz v3, :cond_1b

    :try_start_15
    invoke-interface {v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1

    :cond_12
    :goto_c
    :try_start_16
    throw v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1

    .line 288
    .restart local v9    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v10    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v11    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v12    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_13
    :try_start_17
    invoke-interface {v11}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto/16 :goto_4

    .line 289
    .end local v11    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_4
    move-exception v2

    move-object v3, v4

    goto :goto_7

    .line 271
    .restart local v11    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_6
    move-exception v2

    :try_start_18
    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 288
    :catchall_5
    move-exception v3

    move-object/from16 v25, v3

    move-object v3, v2

    move-object/from16 v2, v25

    :goto_d
    if-eqz v11, :cond_14

    if-eqz v3, :cond_15

    :try_start_19
    invoke-interface {v11}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_7
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :cond_14
    :goto_e
    :try_start_1a
    throw v2

    :catch_7
    move-exception v7

    invoke-virtual {v3, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_15
    invoke-interface {v11}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    goto :goto_e

    .line 289
    :catch_8
    move-exception v2

    :try_start_1b
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_16
    invoke-interface {v10}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    goto/16 :goto_5

    .end local v11    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_9
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :cond_17
    invoke-interface {v10}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    goto/16 :goto_8

    .line 305
    .restart local v11    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_a
    move-exception v2

    :try_start_1c
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 306
    .end local v9    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v10    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v11    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v12    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_6
    move-exception v2

    move-object v3, v6

    goto :goto_b

    .line 305
    .restart local v9    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v10    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v11    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v12    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_18
    invoke-interface {v9}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto/16 :goto_6

    .end local v10    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v11    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v12    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_b
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_19
    invoke-interface {v9}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_5
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    goto :goto_a

    .line 306
    .restart local v10    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v11    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v12    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_1a
    :try_start_1d
    invoke-interface {v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto/16 :goto_1

    .end local v9    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v10    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v11    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v12    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_c
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_1b
    invoke-interface {v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1

    goto :goto_c

    .line 305
    .restart local v9    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catchall_7
    move-exception v2

    move-object v3, v5

    goto :goto_9

    .line 288
    .restart local v10    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v11    # "slaveImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v12    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_8
    move-exception v2

    goto :goto_d
.end method
