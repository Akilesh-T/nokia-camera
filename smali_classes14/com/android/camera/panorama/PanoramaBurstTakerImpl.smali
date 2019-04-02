.class public Lcom/android/camera/panorama/PanoramaBurstTakerImpl;
.super Ljava/lang/Object;
.source "PanoramaBurstTakerImpl.java"

# interfaces
.implements Lcom/android/camera/burst/BurstTaker;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mCameraCommandExecutor:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

.field private final mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

.field private final mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

.field private final mImageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

.field private final mImageStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

.field private final mLog:Lcom/android/camera/debug/Logger;

.field private final mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

.field private final mMaxRingBufferSize:Lcom/android/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPanoramaLifetime:Lcom/android/camera/async/Lifetime;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mRestorePreviewCommand:Ljava/lang/Runnable;

.field private final mTargetCaptureSize:Lcom/android/camera/util/Size;

.field private final mTemplateType:I

.field private final mZslMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Ljava/lang/Runnable;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/async/Updatable;Lcom/android/camera/util/Size;I)V
    .locals 3
    .param p1, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .param p2, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "cameraCommandExecutor"    # Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    .param p4, "imageSaverBuilder"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
    .param p5, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p6, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p7, "rootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p8, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p9, "imageStream"    # Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .param p10, "metadataPool"    # Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;
    .param p11, "restorePreviewCommand"    # Ljava/lang/Runnable;
    .param p12, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p14, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p15, "templateType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/commands/CameraCommandExecutor;",
            "Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;",
            "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;",
            "Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;",
            "Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;",
            "Ljava/lang/Runnable;",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/util/Size;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p13, "maxRingBufferSize":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v1, Lcom/android/camera/debug/Log$Tag;

    const-string v2, "PanoBurstTakerImpl"

    invoke-direct {v1, v2}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mLog:Lcom/android/camera/debug/Logger;

    .line 95
    iput-object p2, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 96
    iput-object p3, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mCameraCommandExecutor:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    .line 97
    iput-object p4, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mImageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    .line 98
    iput-object p5, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    .line 99
    iput-object p8, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    .line 100
    iput-object p6, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 101
    iput-object p7, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 102
    iput-object p9, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mImageStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    .line 103
    iput-object p10, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mZslMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    .line 104
    iput-object p11, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mRestorePreviewCommand:Ljava/lang/Runnable;

    .line 105
    iput-object p12, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 106
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mMaxRingBufferSize:Lcom/android/camera/async/Updatable;

    .line 107
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    .line 108
    move/from16 v0, p15

    iput v0, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mTemplateType:I

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/panorama/PanoramaBurstTakerImpl;)Lcom/android/camera/async/Updatable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/panorama/PanoramaBurstTakerImpl;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mMaxRingBufferSize:Lcom/android/camera/async/Updatable;

    return-object v0
.end method


# virtual methods
.method public startBurst(Lcom/android/camera/burst/BurstController;)V
    .locals 23
    .param p1, "burstController"    # Lcom/android/camera/burst/BurstController;

    .prologue
    .line 113
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 114
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mPanoramaLifetime:Lcom/android/camera/async/Lifetime;

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    const-string v6, "Panorama cannot be started, while another is running."

    invoke-static {v5, v6}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 116
    new-instance v5, Lcom/android/camera/async/Lifetime;

    invoke-direct {v5}, Lcom/android/camera/async/Lifetime;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mPanoramaLifetime:Lcom/android/camera/async/Lifetime;

    .line 119
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mMaxRingBufferSize:Lcom/android/camera/async/Updatable;

    const v6, 0x7fffffff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mPanoramaLifetime:Lcom/android/camera/async/Lifetime;

    new-instance v6, Lcom/android/camera/panorama/PanoramaBurstTakerImpl$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/camera/panorama/PanoramaBurstTakerImpl$1;-><init>(Lcom/android/camera/panorama/PanoramaBurstTakerImpl;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 127
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mImageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/android/camera/burst/BurstController;->buildImageSaverForBurst(Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;)Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    move-result-object v15

    .line 128
    .local v15, "imageSaver":Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    const-string v5, "ImageSaver can\'t be null."

    invoke-static {v5, v15}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    new-instance v22, Lcom/android/camera/async/ConcurrentState;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 131
    .local v22, "isPanoramaEnd":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mPanoramaLifetime:Lcom/android/camera/async/Lifetime;

    const/4 v6, 0x0

    new-instance v7, Lcom/android/camera/panorama/PanoramaBurstTakerImpl$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v7, v0, v1}, Lcom/android/camera/panorama/PanoramaBurstTakerImpl$2;-><init>(Lcom/android/camera/panorama/PanoramaBurstTakerImpl;Lcom/android/camera/async/ConcurrentState;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/async/Lifetime;->add(ILcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 138
    const/16 v19, 0x1388

    .line 140
    .local v19, "CPU_BOOST_DURATION":I
    new-instance v21, Ljava/util/Timer;

    invoke-direct/range {v21 .. v21}, Ljava/util/Timer;-><init>()V

    .line 141
    .local v21, "boostTimer":Ljava/util/Timer;
    new-instance v20, Lcom/android/camera/panorama/PanoramaBurstTakerImpl$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/panorama/PanoramaBurstTakerImpl$3;-><init>(Lcom/android/camera/panorama/PanoramaBurstTakerImpl;Lcom/android/camera/async/ConcurrentState;Ljava/util/Timer;)V

    .line 161
    .local v20, "boostRunnable":Ljava/lang/Runnable;
    invoke-interface/range {v20 .. v20}, Ljava/lang/Runnable;->run()V

    .line 163
    new-instance v4, Lcom/android/camera/panorama/PanoramaCaptureCommand;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mImageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mImageStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mZslMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mPanoramaLifetime:Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mRestorePreviewCommand:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mTargetCaptureSize:Lcom/android/camera/util/Size;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mTemplateType:I

    move/from16 v18, v0

    move-object/from16 v14, p1

    invoke-direct/range {v4 .. v18}, Lcom/android/camera/panorama/PanoramaCaptureCommand;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/async/Lifetime;Lcom/android/camera/burst/BurstController;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Ljava/lang/Runnable;Lcom/android/camera/util/Size;I)V

    .line 179
    .local v4, "panoramaCaptureCommand":Lcom/android/camera/panorama/PanoramaCaptureCommand;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mCameraCommandExecutor:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    invoke-virtual {v5, v4}, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->execute(Lcom/android/camera/one/v2/commands/CameraCommand;)Ljava/util/concurrent/Future;

    .line 180
    return-void

    .line 114
    .end local v4    # "panoramaCaptureCommand":Lcom/android/camera/panorama/PanoramaCaptureCommand;
    .end local v15    # "imageSaver":Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .end local v19    # "CPU_BOOST_DURATION":I
    .end local v20    # "boostRunnable":Ljava/lang/Runnable;
    .end local v21    # "boostTimer":Ljava/util/Timer;
    .end local v22    # "isPanoramaEnd":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    :cond_0
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized stopBurst()V
    .locals 2

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 185
    invoke-static {}, Lcom/android/camera/cpuboost/CpuBooster;->instance()Lcom/android/camera/cpuboost/BoostEngine;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/android/camera/cpuboost/BoostEngine;->boostInTime(I)Z

    .line 186
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mPanoramaLifetime:Lcom/android/camera/async/Lifetime;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mPanoramaLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;->mPanoramaLifetime:Lcom/android/camera/async/Lifetime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_0
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
