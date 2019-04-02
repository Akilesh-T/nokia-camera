.class public Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;
.super Ljava/lang/Object;
.source "MorphoHDRImageCaptureCommand.java"

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

.field private static final NORMAL_EXPOSURE_INDEX:I = 0x0

.field private static final RESET_EXPOSURE_INDEX:I = 0x3

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
    .line 79
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Morpho_HDRImgCapCmd"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    .line 153
    .local p16, "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 155
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 156
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 157
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 158
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 159
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 160
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    .line 161
    iput p8, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mRepeatingRequestTemplate:I

    .line 162
    iput-object p9, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 163
    iput p10, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mStillCaptureRequestTemplate:I

    .line 164
    iput-boolean p11, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mWaitForAFConvergence:Z

    .line 166
    invoke-static {p6}, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 167
    iput-object p12, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->m3AStateProvider:Lcom/android/camera/one/v2/photo/State3AProvider;

    .line 168
    iput-object p13, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 169
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    .line 170
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    .line 171
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    .line 172
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mIsFrontFacing:Z

    .line 173
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 174
    return-void
.end method

.method private captureBurst(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;Lcom/android/camera/stats/profiler/Profile;)V
    .locals 42
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
    .line 259
    .local p4, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    new-instance v14, Ljava/util/ArrayList;

    const/16 v36, 0x3

    move/from16 v0, v36

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    .local v14, "burstRequest":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    new-instance v26, Ljava/util/ArrayList;

    const/16 v36, 0x3

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 261
    .local v26, "metadata":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/android/camera/one/v2/photo/SceneDetector;->getCurrentSensorExposureTime()J

    move-result-wide v8

    .line 264
    .local v8, "CURRENT_SENSOR_EXPOSURE_TIME":J
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isUseMorphoHDR()Z

    move-result v36

    if-eqz v36, :cond_3

    .line 267
    sget-object v36, Lcom/android/camera/util/MorphoUtil;->mDrCheckerResult:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual/range {v36 .. v36}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 268
    .local v15, "dr_checker_ev":Ljava/lang/String;
    sget-object v36, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "DR_CHECKER_EV="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 269
    invoke-static {v15}, Lcom/android/camera/util/MorphoUtil;->parseEvString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 270
    .local v17, "ev_array":[Ljava/lang/String;
    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2

    .line 271
    const/16 v36, 0x1

    aget-object v36, v17, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    .line 272
    .local v30, "nagativeEV":D
    invoke-static/range {v30 .. v31}, Lcom/android/camera/util/MorphoUtil;->getDecimal(D)D

    move-result-wide v30

    .line 273
    const/16 v36, 0x2

    aget-object v36, v17, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v32

    .line 274
    .local v32, "positiveEV":D
    invoke-static/range {v32 .. v33}, Lcom/android/camera/util/MorphoUtil;->getDecimal(D)D

    move-result-wide v32

    .line 282
    :goto_0
    const-wide/16 v36, 0x3e8

    :try_start_0
    div-long v36, v8, v36

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v38

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v38

    const-wide v40, 0x408f400000000000L    # 1000.0

    mul-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-long v0, v0

    move-wide/from16 v38, v0

    mul-long v24, v36, v38

    .line 283
    .local v24, "mMorpho_low_exposure_time":J
    const-wide/16 v36, 0x3e8

    div-long v36, v8, v36

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v38

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v38

    const-wide v40, 0x408f400000000000L    # 1000.0

    mul-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-long v0, v0

    move-wide/from16 v38, v0

    mul-long v22, v36, v38

    .line 284
    .local v22, "mMorpho_high_exposure_time":J
    move-wide/from16 v12, v24

    .line 285
    .local v12, "LOW_SENSOR_EXPOSURE_TIME":J
    move-wide/from16 v10, v22

    .line 297
    .end local v15    # "dr_checker_ev":Ljava/lang/String;
    .end local v17    # "ev_array":[Ljava/lang/String;
    .end local v22    # "mMorpho_high_exposure_time":J
    .end local v24    # "mMorpho_low_exposure_time":J
    .end local v30    # "nagativeEV":D
    .end local v32    # "positiveEV":D
    .local v10, "HIGH_SENSOR_EXPOSURE_TIME":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/android/camera/one/v2/photo/SceneDetector;->getCurrentIsoValue()I

    move-result v6

    .line 298
    .local v6, "CURRENT_ISO_VALUE":I
    sget-object v36, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "CURRENT_SENSOR_EXPOSURE_TIME = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 299
    sget-object v36, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "LOW_SENSOR_EXPOSURE_TIME = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 300
    sget-object v36, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "HIGH_SENSOR_EXPOSURE_TIME = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 301
    sget-object v36, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "CURRENT_ISO_VALUE = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 302
    sget-object v36, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "EXPOSURE_SCALE = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sget v38, Lcom/android/camera/product_utils/ProductUtil;->EXPOSURE_SCALE:F

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 303
    sget-object v36, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v37, "EXPOSURE_STEP = 2"

    invoke-static/range {v36 .. v37}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 304
    sget-object v36, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "MinSensorExposureTime="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lcom/android/camera/one/OneCameraCharacteristics;->getMinSensorExposureTime()J

    move-result-wide v38

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 305
    sget-object v36, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "MaxSensorExposureTime="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lcom/android/camera/one/OneCameraCharacteristics;->getMaxSensorExposureTime()J

    move-result-wide v38

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 308
    const/16 v19, 0x1

    .line 309
    .local v19, "first":Z
    invoke-interface/range {p6 .. p6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 310
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    const/16 v36, 0x4

    move/from16 v0, v20

    move/from16 v1, v36

    if-ge v0, v1, :cond_4

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mCaptrueRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mStillCaptureRequestTemplate:I

    move/from16 v37, v0

    invoke-interface/range {v36 .. v37}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->createNonPreview(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v7

    .line 313
    .local v7, "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v36, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v37, 0x2

    .line 314
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    .line 313
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v7, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 316
    sget-object v36, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v7, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 317
    sget-object v36, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v7, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 318
    sget-object v36, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v7, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 319
    sget-object v36, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v7, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 320
    packed-switch v20, :pswitch_data_0

    .line 337
    :goto_3
    if-eqz v19, :cond_0

    .line 338
    const/16 v19, 0x0

    .line 339
    invoke-static/range {p4 .. p4}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFrameExposure(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 342
    :cond_0
    new-instance v27, Lcom/android/camera/one/v2/photo/MetadataFuture;

    invoke-direct/range {v27 .. v27}, Lcom/android/camera/one/v2/photo/MetadataFuture;-><init>()V

    .line 343
    .local v27, "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 344
    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/one/v2/photo/MetadataFuture;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v36

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 348
    if-eqz p3, :cond_1

    .line 349
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 352
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->appendParamForHDRCapture(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 354
    invoke-virtual {v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Request added : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p6

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 310
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 276
    .end local v6    # "CURRENT_ISO_VALUE":I
    .end local v7    # "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v10    # "HIGH_SENSOR_EXPOSURE_TIME":J
    .end local v12    # "LOW_SENSOR_EXPOSURE_TIME":J
    .end local v19    # "first":Z
    .end local v20    # "i":I
    .end local v27    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    .restart local v15    # "dr_checker_ev":Ljava/lang/String;
    .restart local v17    # "ev_array":[Ljava/lang/String;
    :cond_2
    sget-object v36, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v37, "Process DR Checker EV error"

    invoke-static/range {v36 .. v37}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 277
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v36 .. v37}, Lcom/android/camera/util/MorphoUtil;->getDecimal(D)D

    move-result-wide v30

    .line 278
    .restart local v30    # "nagativeEV":D
    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    invoke-static/range {v36 .. v37}, Lcom/android/camera/util/MorphoUtil;->getDecimal(D)D

    move-result-wide v32

    .restart local v32    # "positiveEV":D
    goto/16 :goto_0

    .line 286
    :catch_0
    move-exception v18

    .line 287
    .local v18, "ex":Ljava/lang/Exception;
    sget-object v36, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v37, "Set low hight exposure time error"

    invoke-static/range {v36 .. v37}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/android/camera/one/OneCameraCharacteristics;->getMinSensorExposureTime()J

    move-result-wide v36

    sget v38, Lcom/android/camera/product_utils/ProductUtil;->EXPOSURE_SCALE:F

    const/high16 v39, 0x40000000    # 2.0f

    mul-float v38, v38, v39

    move/from16 v0, v38

    float-to-long v0, v0

    move-wide/from16 v38, v0

    div-long v38, v8, v38

    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 289
    .restart local v12    # "LOW_SENSOR_EXPOSURE_TIME":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/android/camera/one/OneCameraCharacteristics;->getMaxSensorExposureTime()J

    move-result-wide v36

    sget v38, Lcom/android/camera/product_utils/ProductUtil;->EXPOSURE_SCALE:F

    const/high16 v39, 0x40000000    # 2.0f

    mul-float v38, v38, v39

    move/from16 v0, v38

    float-to-long v0, v0

    move-wide/from16 v38, v0

    mul-long v38, v38, v8

    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .restart local v10    # "HIGH_SENSOR_EXPOSURE_TIME":J
    goto/16 :goto_1

    .line 292
    .end local v10    # "HIGH_SENSOR_EXPOSURE_TIME":J
    .end local v12    # "LOW_SENSOR_EXPOSURE_TIME":J
    .end local v15    # "dr_checker_ev":Ljava/lang/String;
    .end local v17    # "ev_array":[Ljava/lang/String;
    .end local v18    # "ex":Ljava/lang/Exception;
    .end local v30    # "nagativeEV":D
    .end local v32    # "positiveEV":D
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/android/camera/one/OneCameraCharacteristics;->getMinSensorExposureTime()J

    move-result-wide v36

    sget v38, Lcom/android/camera/product_utils/ProductUtil;->EXPOSURE_SCALE:F

    const/high16 v39, 0x40000000    # 2.0f

    mul-float v38, v38, v39

    move/from16 v0, v38

    float-to-long v0, v0

    move-wide/from16 v38, v0

    div-long v38, v8, v38

    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 293
    .restart local v12    # "LOW_SENSOR_EXPOSURE_TIME":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/android/camera/one/OneCameraCharacteristics;->getMaxSensorExposureTime()J

    move-result-wide v36

    sget v38, Lcom/android/camera/product_utils/ProductUtil;->EXPOSURE_SCALE:F

    const/high16 v39, 0x40000000    # 2.0f

    mul-float v38, v38, v39

    move/from16 v0, v38

    float-to-long v0, v0

    move-wide/from16 v38, v0

    mul-long v38, v38, v8

    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .restart local v10    # "HIGH_SENSOR_EXPOSURE_TIME":J
    goto/16 :goto_1

    .line 322
    .restart local v6    # "CURRENT_ISO_VALUE":I
    .restart local v7    # "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .restart local v19    # "first":Z
    .restart local v20    # "i":I
    :pswitch_0
    sget-object v36, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v7, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 325
    :pswitch_1
    sget-object v36, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v7, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 328
    :pswitch_2
    sget-object v36, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v7, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 331
    :pswitch_3
    sget-object v36, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v7, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 358
    .end local v7    # "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    :cond_4
    sget-object v36, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-interface {v0, v14, v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 359
    const-string v36, "Request submited"

    move-object/from16 v0, p6

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 361
    invoke-interface/range {p5 .. p5}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->start()V

    .line 362
    const/16 v20, 0x0

    :goto_4
    const/16 v36, 0x3

    move/from16 v0, v20

    move/from16 v1, v36

    if-ge v0, v1, :cond_7

    .line 364
    :try_start_1
    invoke-interface/range {p6 .. p6}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 365
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v21

    .line 366
    .local v21, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v36, "ImageProxy get"

    move-object/from16 v0, p6

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 367
    sget-object v37, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "row stride="

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-interface/range {v21 .. v21}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v36

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface/range {v36 .. v36}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getRowStride()I

    move-result v36

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 368
    sget-boolean v36, Lcom/android/camera/product_utils/ProductUtil;->DUMP_YUV_IMAGE:Z

    if-eqz v36, :cond_5

    .line 369
    new-instance v35, Ljava/text/SimpleDateFormat;

    const-string v36, "HH:mm:ss"

    invoke-direct/range {v35 .. v36}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 370
    .local v35, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v34, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 371
    .local v34, "resultdate":Ljava/util/Date;
    invoke-interface/range {v21 .. v21}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getOriginImage()Landroid/media/Image;

    move-result-object v36

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v34 .. v34}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "_"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/android/camera/util/ImageDumpUtil;->dumpImage(Landroid/media/Image;Ljava/lang/String;)V

    .line 373
    .end local v34    # "resultdate":Ljava/util/Date;
    .end local v35    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_5
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 374
    .local v28, "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    sget-object v36, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p5

    move-object/from16 v1, v36

    move/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v28

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addFullSizeImage(Lcom/android/camera/one/CameraType;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 376
    if-eqz p3, :cond_6

    .line 377
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v29

    .line 378
    .local v29, "rawImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const-string v36, "RawImage get"

    move-object/from16 v0, p6

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 379
    if-eqz v29, :cond_6

    .line 380
    sget-object v36, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "rawImage = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-interface/range {v29 .. v29}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "x"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-interface/range {v29 .. v29}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "; format = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-interface/range {v29 .. v29}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 381
    sget-object v36, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p5

    move-object/from16 v1, v36

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->addRawImage(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    :try_end_1
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 362
    .end local v29    # "rawImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_6
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    .line 384
    .end local v21    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v28    # "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_1
    move-exception v16

    .line 385
    .local v16, "e":Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
    invoke-interface/range {p5 .. p5}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->cancel()V

    .line 390
    .end local v16    # "e":Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
    :cond_7
    return-void

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static resetFocusExposureModes(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .locals 4
    .param p0, "template"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .prologue
    const/4 v3, 0x0

    .line 112
    new-instance v0, Lcom/android/camera/one/v2/core/RequestTemplate;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 113
    .local v0, "result":Lcom/android/camera/one/v2/core/RequestTemplate;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 114
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 116
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 118
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 120
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

    .line 395
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v2}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 396
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mRepeatingRequestTemplate:I

    .line 397
    invoke-interface {v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 398
    .local v0, "repeatingBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    new-array v2, v5, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 401
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mRepeatingRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mRepeatingRequestTemplate:I

    .line 402
    invoke-interface {v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v1

    .line 403
    .local v1, "triggerCancelBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 405
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    .line 406
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 405
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 407
    new-array v2, v5, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 409
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

    .line 229
    new-instance v0, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;

    invoke-direct {v0}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;-><init>()V

    .line 231
    .local v0, "afStateMachine":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    iget-object v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mRepeatingRequestTemplate:I

    invoke-interface {v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v2

    .line 232
    .local v2, "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 233
    new-array v4, v6, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v4, v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 236
    iget-object v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mScanRequestTemplate:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mRepeatingRequestTemplate:I

    invoke-interface {v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v3

    .line 237
    .local v3, "triggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 239
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 240
    new-array v4, v6, [Lcom/android/camera/one/v2/core/Request;

    invoke-virtual {v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v4, v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 245
    const-wide/16 v4, 0x1388

    :try_start_0
    sget-object v6, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->AF_SCAN_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->get(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v4, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    const/4 v2, 0x3

    .line 183
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v1, "MorphoHDRImageCaptureCommand"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v8

    .line 184
    .local v8, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    iget-boolean v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mIsFrontFacing:Z

    iget-object v6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    invoke-interface {v6}, Lcom/android/camera/one/v2/photo/SceneDetector;->getCurrentIsoValue()I

    move-result v5

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    invoke-interface {v9}, Lcom/android/camera/one/v2/photo/SceneDetector;->getMetaData()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v9

    move-object v7, p2

    invoke-interface/range {v0 .. v9}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;->build(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;ZIILcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;Landroid/hardware/camera2/CameraCharacteristics;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;

    move-result-object v7

    .line 186
    .local v7, "imageProcessor":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .local v3, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/4 v1, 0x0

    .line 187
    :try_start_1
    const-string v0, "FrameServer.Session created"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 188
    const/4 v5, 0x0

    .line 189
    .local v5, "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .local v4, "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    const/4 v9, 0x0

    .line 190
    :try_start_3
    const-string v0, "ImageStream created"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->onShutter()Z

    .line 198
    sget-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "capture raw image : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v6}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->mRawImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    move-result-object v5

    .line 201
    const-string v0, "RawImageStream created"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    :cond_0
    move-object v2, p0

    move-object v6, p1

    .line 204
    invoke-direct/range {v2 .. v8}, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->captureBurst(Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;Lcom/android/camera/stats/profiler/Profile;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 205
    if-eqz v4, :cond_1

    if-eqz v11, :cond_6

    :try_start_4
    invoke-interface {v4}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    .line 208
    :try_start_5
    invoke-interface {v5}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    .line 215
    :cond_2
    invoke-interface {v8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 216
    invoke-direct {p0, v3}, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 217
    const-string v0, "Preview reset"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 219
    if-eqz v3, :cond_3

    if-eqz v11, :cond_9

    :try_start_6
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 224
    .end local v3    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v4    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v5    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_3
    :goto_1
    return-void

    .line 205
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

    .line 207
    .end local v4    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_0
    move-exception v0

    if-eqz v5, :cond_4

    .line 208
    :try_start_8
    invoke-interface {v5}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    .line 215
    :cond_4
    invoke-interface {v8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 216
    invoke-direct {p0, v3}, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->resetRepeating(Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    .line 217
    const-string v1, "Preview reset"

    invoke-interface {v8, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 186
    .end local v5    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_1
    move-exception v0

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 219
    :catchall_1
    move-exception v1

    move-object v11, v0

    move-object v0, v1

    :goto_2
    if-eqz v3, :cond_5

    if-eqz v11, :cond_a

    :try_start_a
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :cond_5
    :goto_3
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .end local v3    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_2
    move-exception v10

    .line 220
    .local v10, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/MorphoHDRImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 221
    invoke-interface {v7}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;->cancel()V

    .line 222
    const-string v0, "imageProcessor error"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto :goto_1

    .line 205
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v3    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v4    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v5    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_6
    :try_start_c
    invoke-interface {v4}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_0

    .line 189
    :catch_3
    move-exception v0

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 205
    :catchall_2
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_4
    if-eqz v4, :cond_7

    if-eqz v1, :cond_8

    :try_start_e
    invoke-interface {v4}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_7
    :goto_5
    :try_start_f
    throw v0

    :catch_4
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_8
    invoke-interface {v4}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_5

    .line 219
    :catch_5
    move-exception v0

    :try_start_10
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_9
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto :goto_1

    .end local v4    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v5    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_6
    move-exception v1

    invoke-virtual {v11, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_a
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 205
    .restart local v4    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v5    # "rawImageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_4
    move-exception v0

    move-object v1, v11

    goto :goto_4
.end method
