.class public Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;
.super Ljava/lang/Object;
.source "QCHDRImageCaptureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/ImageCaptureCommand;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field public static final EXPOSURE_STEP:J = 0x2L

.field private static final HDR_REQUIRE_IMAGES:I = 0x3

.field private static final HIGH_EXPOSURE_INDEX:I = 0x2

.field private static final LOW_EXPOSURE_INDEX:I = 0x1

.field private static final NORMAL_EXPOSURE_INDEX:I

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
    .line 73
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "QC_HDRImgCapCmd"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    .line 146
    .local p16, "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 148
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 149
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 150
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 151
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 152
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 153
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    .line 154
    iput p8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mRepeatingRequestTemplate:I

    .line 155
    iput-object p9, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 156
    iput p10, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mStillCaptureRequestTemplate:I

    .line 157
    iput-boolean p11, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mWaitForAFConvergence:Z

    .line 159
    invoke-static {p6}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 160
    iput-object p12, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->m3AStateProvider:Lcom/android/camera/one/v2/photo/State3AProvider;

    .line 161
    iput-object p13, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 162
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    .line 163
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    .line 164
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    .line 165
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mIsFrontFacing:Z

    .line 166
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 167
    return-void
.end method

.method private captureBurst(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;Lcom/android/camera/stats/profiler/Profile;)V
    .locals 26
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
    .line 248
    .local p4, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    new-instance v12, Ljava/util/ArrayList;

    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 249
    .local v12, "burstRequest":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    new-instance v17, Ljava/util/ArrayList;

    const/16 v21, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    .local v17, "metadata":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/camera/one/v2/photo/SceneDetector;->getCurrentSensorExposureTime()J

    move-result-wide v6

    .line 251
    .local v6, "CURRENT_SENSOR_EXPOSURE_TIME":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/camera/one/OneCameraCharacteristics;->getMinSensorExposureTime()J

    move-result-wide v22

    sget v21, Lcom/android/camera/product_utils/ProductUtil;->EXPOSURE_SCALE:F

    const/high16 v24, 0x40000000    # 2.0f

    mul-float v21, v21, v24

    move/from16 v0, v21

    float-to-long v0, v0

    move-wide/from16 v24, v0

    div-long v24, v6, v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 252
    .local v10, "LOW_SENSOR_EXPOSURE_TIME":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/camera/one/OneCameraCharacteristics;->getMaxSensorExposureTime()J

    move-result-wide v22

    sget v21, Lcom/android/camera/product_utils/ProductUtil;->EXPOSURE_SCALE:F

    const/high16 v24, 0x40000000    # 2.0f

    mul-float v21, v21, v24

    move/from16 v0, v21

    float-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v24, v24, v6

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 253
    .local v8, "HIGH_SENSOR_EXPOSURE_TIME":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/camera/one/v2/photo/SceneDetector;->getCurrentIsoValue()I

    move-result v4

    .line 254
    .local v4, "CURRENT_ISO_VALUE":I
    sget-object v21, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "CURRENT_SENSOR_EXPOSURE_TIME = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 255
    sget-object v21, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "LOW_SENSOR_EXPOSURE_TIME = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 256
    sget-object v21, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "HIGH_SENSOR_EXPOSURE_TIME = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    sget-object v21, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "CURRENT_ISO_VALUE = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 258
    sget-object v21, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "EXPOSURE_SCALE = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/android/camera/product_utils/ProductUtil;->EXPOSURE_SCALE:F

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 259
    sget-object v21, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v22, "EXPOSURE_STEP = 2"

    invoke-static/range {v21 .. v22}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 261
    const/4 v14, 0x1

    .line 262
    .local v14, "first":Z
    invoke-interface/range {p6 .. p6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 263
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ge v15, v0, :cond_2

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mStillCaptureRequestTemplate:I

    move/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->createNonPreview(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v5

    .line 266
    .local v5, "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v21, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v22, 0x2

    .line 267
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 266
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 269
    sget-object v21, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 270
    sget-object v21, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 271
    sget-object v21, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 272
    sget-object v21, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 273
    packed-switch v15, :pswitch_data_0

    .line 287
    :goto_1
    if-eqz v14, :cond_0

    .line 288
    const/4 v14, 0x0

    .line 289
    invoke-static/range {p4 .. p4}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFrameExposure(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 292
    :cond_0
    new-instance v18, Lcom/android/camera/one/v2/photo/MetadataFuture;

    invoke-direct/range {v18 .. v18}, Lcom/android/camera/one/v2/photo/MetadataFuture;-><init>()V

    .line 293
    .local v18, "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 294
    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/one/v2/photo/MetadataFuture;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 298
    if-eqz p3, :cond_1

    .line 299
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 302
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->appendParamForHDRCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 304
    invoke-virtual {v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Request added : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 263
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 275
    .end local v18    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    :pswitch_0
    sget-object v21, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 278
    :pswitch_1
    sget-object v21, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 281
    :pswitch_2
    sget-object v21, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 308
    .end local v5    # "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    :cond_2
    sget-object v21, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v12, v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 309
    const-string v21, "Request submited"

    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 311
    invoke-interface/range {p5 .. p5}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->start()V

    .line 312
    const/4 v15, 0x0

    :goto_2
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ge v15, v0, :cond_4

    .line 314
    :try_start_0
    invoke-interface/range {p6 .. p6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 315
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v16

    .line 316
    .local v16, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v21, "ImageProxy get"

    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 318
    .local v19, "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    sget-object v21, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v15, v2, v3}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addFullSizeImage(Lcom/android/camera/one/CameraType;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 320
    if-eqz p3, :cond_3

    .line 321
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v20

    .line 322
    .local v20, "rawImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v21, "RawImage get"

    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 323
    if-eqz v20, :cond_3

    .line 324
    sget-object v21, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "rawImage = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {v20 .. v20}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {v20 .. v20}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "; format = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {v20 .. v20}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 325
    sget-object v21, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addRawImage(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    :try_end_0
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .end local v20    # "rawImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 328
    .end local v16    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v19    # "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_0
    move-exception v13

    .line 329
    .local v13, "e":Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
    invoke-interface/range {p5 .. p5}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->cancel()V

    .line 334
    .end local v13    # "e":Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
    :cond_4
    return-void

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .locals 4
    .param p0, "template"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .prologue
    const/4 v3, 0x0

    .line 105
    new-instance v0, Lcom/android/camera/one/v2/core/RequestTemplate;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 106
    .local v0, "result":Lcom/android/camera/one/v2/core/RequestTemplate;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 107
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 109
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 111
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 111
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 113
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

    .line 339
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v2}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 340
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mRepeatingRequestTemplate:I

    .line 341
    invoke-interface {v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 342
    .local v0, "repeatingBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    new-array v2, v5, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 345
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mRepeatingRequestTemplate:I

    .line 346
    invoke-interface {v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v1

    .line 347
    .local v1, "triggerCancelBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 349
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    .line 350
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 349
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 351
    new-array v2, v5, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 353
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

    .line 222
    new-instance v0, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;

    invoke-direct {v0}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;-><init>()V

    .line 224
    .local v0, "afStateMachine":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    iget-object v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mRepeatingRequestTemplate:I

    invoke-interface {v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v2

    .line 225
    .local v2, "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 226
    new-array v4, v6, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v4, v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 229
    iget-object v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mRepeatingRequestTemplate:I

    invoke-interface {v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v3

    .line 230
    .local v3, "triggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 232
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 233
    new-array v4, v6, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v4, v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 238
    const-wide/16 v4, 0x1388

    :try_start_0
    sget-object v6, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->AF_SCAN_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->get(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v4, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    const/4 v10, 0x0

    const/4 v2, 0x3

    .line 176
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v1, "QCHDRImageCaptureCommand"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v8

    .line 177
    .local v8, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    iget-boolean v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mIsFrontFacing:Z

    iget-object v6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    invoke-interface {v6}, Lcom/android/camera/one/v2/photo/SceneDetector;->getCurrentIsoValue()I

    move-result v5

    const/4 v6, 0x0

    move-object v7, p2

    invoke-interface/range {v0 .. v8}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;->build(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;ZIILcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;

    move-result-object v7

    .line 179
    .local v7, "imageProcessor":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .local v3, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/4 v1, 0x0

    .line 180
    :try_start_1
    const-string v0, "FrameServer.Session created"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 181
    const/4 v5, 0x0

    .line 182
    .local v5, "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .local v4, "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    const/4 v11, 0x0

    .line 183
    :try_start_3
    const-string v0, "ImageStream created"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->onShutter()Z

    .line 185
    iget-boolean v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mWaitForAFConvergence:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->m3AStateProvider:Lcom/android/camera/one/v2/photo/State3AProvider;

    invoke-interface {v0}, Lcom/android/camera/one/v2/photo/State3AProvider;->isAFRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 187
    invoke-direct {p0, v3}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->waitForAFConvergence(Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 188
    const-string v0, "AF Convergence"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 191
    :cond_0
    sget-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "capture raw image : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v6}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    move-result-object v5

    .line 194
    const-string v0, "RawImageStream created"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    :cond_1
    move-object v2, p0

    move-object v6, p1

    .line 197
    invoke-direct/range {v2 .. v8}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->captureBurst(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;Lcom/android/camera/stats/profiler/Profile;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 198
    if-eqz v4, :cond_2

    if-eqz v10, :cond_7

    :try_start_4
    invoke-interface {v4}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 200
    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    .line 201
    :try_start_5
    invoke-interface {v5}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    .line 208
    :cond_3
    invoke-interface {v8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 209
    invoke-direct {p0, v3}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 210
    const-string v0, "Preview reset"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 212
    if-eqz v3, :cond_4

    if-eqz v10, :cond_a

    :try_start_6
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 217
    .end local v3    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v4    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v5    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_4
    :goto_1
    return-void

    .line 198
    .restart local v3    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v4    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v5    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_0
    move-exception v0

    :try_start_7
    invoke-virtual {v11, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 200
    .end local v4    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_0
    move-exception v0

    if-eqz v5, :cond_5

    .line 201
    :try_start_8
    invoke-interface {v5}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    .line 208
    :cond_5
    invoke-interface {v8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 209
    invoke-direct {p0, v3}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 210
    const-string v1, "Preview reset"

    invoke-interface {v8, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 179
    .end local v5    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_1
    move-exception v0

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 212
    :catchall_1
    move-exception v1

    move-object v10, v0

    move-object v0, v1

    :goto_2
    if-eqz v3, :cond_6

    if-eqz v10, :cond_b

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
    move-exception v9

    .line 213
    .local v9, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 214
    invoke-interface {v7}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->cancel()V

    .line 215
    const-string v0, "imageProcessor error"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto :goto_1

    .line 198
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v3    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v4    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v5    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_7
    :try_start_c
    invoke-interface {v4}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_0

    .line 182
    :catch_3
    move-exception v0

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 198
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

    .line 212
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

    invoke-virtual {v10, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_b
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 198
    .restart local v4    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v5    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_4
    move-exception v0

    move-object v1, v10

    goto :goto_4
.end method
