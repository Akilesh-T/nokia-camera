.class public Lcom/android/camera/one/v2/SimpleOneCameraFactory;
.super Ljava/lang/Object;
.source "SimpleOneCameraFactory.java"

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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "SimpleOneCameraFactory"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(IILcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;)V
    .locals 2
    .param p1, "imageFormat"    # I
    .param p2, "maxImageCount"    # I
    .param p3, "imageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p4, "slaveImageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p1, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->mImageFormat:I

    .line 133
    iput p2, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->mMaxImageCount:I

    .line 134
    iput-object p3, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    .line 135
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->mLogger:Lcom/android/camera/debug/Logger;

    .line 136
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    .prologue
    .line 117
    iget v0, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->mImageFormat:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    .prologue
    .line 117
    iget v0, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->mMaxImageCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)Lcom/android/camera/debug/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->mLogger:Lcom/android/camera/debug/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    return-object v0
.end method


# virtual methods
.method public createOneCamera(Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/FatalErrorHandler;)Lcom/android/camera/one/OneCamera;
    .locals 23
    .param p1, "device"    # Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;
    .param p2, "slaveCameraDevice"    # Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;
    .param p3, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "slaveCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p5, "supportLevel"    # Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;
    .param p6, "mainExecutor"    # Lcom/android/camera/async/MainThread;
    .param p7, "imageSaverBuilder"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
    .param p8, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p9, "fatalErrorHandler"    # Lcom/android/camera/FatalErrorHandler;

    .prologue
    .line 148
    new-instance v20, Lcom/android/camera/async/Lifetime;

    invoke-direct/range {v20 .. v20}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 149
    .local v20, "deviceLifetime":Lcom/android/camera/async/Lifetime;
    new-instance v4, Lcom/android/camera/one/v2/SimpleOneCameraFactory$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lcom/android/camera/one/v2/SimpleOneCameraFactory$1;-><init>(Lcom/android/camera/one/v2/SimpleOneCameraFactory;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 188
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v21, "outputSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v22, "slaveOutputSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v3, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p5

    invoke-direct/range {v3 .. v12}, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;-><init>(Lcom/android/camera/one/v2/SimpleOneCameraFactory;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;)V

    .line 668
    .local v3, "cameraStarter":Lcom/android/camera/one/v2/initialization/CameraStarter;
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/OneCameraCharacteristics;->getAvailableMaxDigitalZoom()F

    move-result v15

    .line 669
    .local v15, "maxZoom":F
    if-eqz p4, :cond_0

    invoke-interface/range {p4 .. p4}, Lcom/android/camera/one/OneCameraCharacteristics;->getAvailableMaxDigitalZoom()F

    move-result v16

    .line 670
    .local v16, "slaveMaxZoom":F
    :goto_0
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v17

    .line 671
    .local v17, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v19

    .line 673
    .local v19, "direction":Lcom/android/camera/one/OneCamera$Facing;
    new-instance v4, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory;

    new-instance v14, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v14}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    .line 676
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

    .line 677
    invoke-virtual {v4}, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory;->provideOneCamera()Lcom/android/camera/one/OneCamera;

    move-result-object v4

    .line 673
    return-object v4

    .line 669
    .end local v16    # "slaveMaxZoom":F
    .end local v17    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    .end local v19    # "direction":Lcom/android/camera/one/OneCamera$Facing;
    :cond_0
    const/16 v16, 0x0

    goto :goto_0
.end method
