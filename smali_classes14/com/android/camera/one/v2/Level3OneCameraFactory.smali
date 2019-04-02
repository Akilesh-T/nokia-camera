.class public Lcom/android/camera/one/v2/Level3OneCameraFactory;
.super Ljava/lang/Object;
.source "Level3OneCameraFactory.java"

# interfaces
.implements Lcom/android/camera/one/v2/OneCameraFactory;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mImageFormat:I

.field private final mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

.field private final mLogger:Lcom/android/camera/debug/Logger;

.field private final mMaxImageCount:I

.field private final mSlaveImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

.field private final maxRingBufferSize:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "L3OneCamFactory"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/Level3OneCameraFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(IILcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;)V
    .locals 2
    .param p1, "imageFormat"    # I
    .param p2, "maxImageCount"    # I
    .param p3, "imageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p4, "slaveImageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p1, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory;->mImageFormat:I

    .line 144
    iput p2, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory;->mMaxImageCount:I

    .line 145
    iput-object p3, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory;->mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    .line 146
    iput-object p4, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory;->mSlaveImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    .line 147
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/v2/Level3OneCameraFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory;->mLogger:Lcom/android/camera/debug/Logger;

    .line 166
    new-instance v0, Lcom/android/camera/async/ConcurrentState;

    sget v1, Lcom/android/camera/one/v2/OneCameraFactory;->DEFAULT_RING_BUFFER_SIZE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory;->maxRingBufferSize:Lcom/android/camera/async/ConcurrentState;

    .line 167
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/android/camera/one/v2/Level3OneCameraFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/Level3OneCameraFactory;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/Level3OneCameraFactory;

    .prologue
    .line 131
    iget v0, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory;->mImageFormat:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/Level3OneCameraFactory;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/Level3OneCameraFactory;

    .prologue
    .line 131
    iget v0, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory;->mMaxImageCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/Level3OneCameraFactory;)Lcom/android/camera/debug/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/Level3OneCameraFactory;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory;->mLogger:Lcom/android/camera/debug/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/Level3OneCameraFactory;)Lcom/android/camera/async/ConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/Level3OneCameraFactory;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory;->maxRingBufferSize:Lcom/android/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/Level3OneCameraFactory;Lcom/android/camera/one/v2/core/RequestTemplate;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/Level3OneCameraFactory;
    .param p1, "x1"    # Lcom/android/camera/one/v2/core/RequestTemplate;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->applyNexus5BackCameraFrameRateWorkaround(Lcom/android/camera/one/v2/core/RequestTemplate;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/one/v2/Level3OneCameraFactory;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/Level3OneCameraFactory;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory;->mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/one/v2/Level3OneCameraFactory;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/Level3OneCameraFactory;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory;->mSlaveImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    return-object v0
.end method

.method private applyNexus5BackCameraFrameRateWorkaround(Lcom/android/camera/one/v2/core/RequestTemplate;)V
    .locals 4
    .param p1, "requestTemplate"    # Lcom/android/camera/one/v2/core/RequestTemplate;

    .prologue
    .line 184
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 185
    .local v0, "frameRateBackOff":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Applying Nexus5 specific framerate backoff of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 186
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 187
    return-void
.end method


# virtual methods
.method public createOneCamera(Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/FatalErrorHandler;)Lcom/android/camera/one/OneCamera;
    .locals 23
    .param p1, "device"    # Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;
    .param p2, "slaveCameraDevice"    # Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;
    .param p3, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "slaveCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p5, "featureConfig"    # Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;
    .param p6, "mainThread"    # Lcom/android/camera/async/MainThread;
    .param p7, "imageSaverBuilder"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
    .param p8, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p9, "fatalErrorHandler"    # Lcom/android/camera/FatalErrorHandler;

    .prologue
    .line 199
    new-instance v20, Lcom/android/camera/async/Lifetime;

    invoke-direct/range {v20 .. v20}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 200
    .local v20, "deviceLifetime":Lcom/android/camera/async/Lifetime;
    new-instance v4, Lcom/android/camera/one/v2/Level3OneCameraFactory$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lcom/android/camera/one/v2/Level3OneCameraFactory$1;-><init>(Lcom/android/camera/one/v2/Level3OneCameraFactory;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 239
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v21, "outputSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v22, "slaveOutputSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v3, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p9

    invoke-direct/range {v3 .. v12}, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;-><init>(Lcom/android/camera/one/v2/Level3OneCameraFactory;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/MainThread;Lcom/android/camera/FatalErrorHandler;)V

    .line 989
    .local v3, "cameraStarter":Lcom/android/camera/one/v2/initialization/CameraStarter;
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/OneCameraCharacteristics;->getAvailableMaxDigitalZoom()F

    move-result v15

    .line 990
    .local v15, "maxZoom":F
    if-eqz p4, :cond_0

    invoke-interface/range {p4 .. p4}, Lcom/android/camera/one/OneCameraCharacteristics;->getAvailableMaxDigitalZoom()F

    move-result v16

    .line 991
    .local v16, "maxSlaveZoom":F
    :goto_0
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v17

    .line 992
    .local v17, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v19

    .line 993
    .local v19, "direction":Lcom/android/camera/one/OneCamera$Facing;
    new-instance v4, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory;

    new-instance v14, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v14}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    .line 996
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/OneCameraCharacteristics;->getLensFocusRange()Lcom/android/camera/ui/motion/LinearScale;

    move-result-object v18

    move-object/from16 v5, v20

    move-object v6, v3

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, p6

    invoke-direct/range {v4 .. v19}, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/initialization/CameraStarter;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Ljava/util/List;Ljava/util/List;Lcom/android/camera/async/MainThread;Lcom/android/camera/async/HandlerFactory;FFLjava/util/List;Lcom/android/camera/ui/motion/LinearScale;Lcom/android/camera/one/OneCamera$Facing;)V

    .line 997
    invoke-virtual {v4}, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory;->provideOneCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v4

    .line 993
    return-object v4

    .line 990
    .end local v16    # "maxSlaveZoom":F
    .end local v17    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    .end local v19    # "direction":Lcom/android/camera/one/OneCamera$Facing;
    :cond_0
    const/16 v16, 0x0

    goto :goto_0
.end method
