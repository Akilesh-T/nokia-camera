.class Lcom/android/camera/one/v2/initialization/PreviewStarter;
.super Ljava/lang/Object;
.source "PreviewStarter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/initialization/PreviewStarter$CameraCaptureSessionCreatedListener;
    }
.end annotation


# instance fields
.field private final mCameraStarter:Lcom/android/camera/one/v2/initialization/CameraStarter;

.field private final mCaptureSessionCreator:Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;

.field private final mCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mOutputSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionListener:Lcom/android/camera/one/v2/initialization/PreviewStarter$CameraCaptureSessionCreatedListener;

.field private final mSlaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mSlaveOutputSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;Lcom/android/camera/one/v2/initialization/CameraStarter;Lcom/android/camera/one/v2/initialization/PreviewStarter$CameraCaptureSessionCreatedListener;)V
    .locals 0
    .param p3, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "slaveCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p5, "captureSessionCreator"    # Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;
    .param p6, "cameraStarter"    # Lcom/android/camera/one/v2/initialization/CameraStarter;
    .param p7, "sessionListener"    # Lcom/android/camera/one/v2/initialization/PreviewStarter$CameraCaptureSessionCreatedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;",
            "Lcom/android/camera/one/v2/initialization/CameraStarter;",
            "Lcom/android/camera/one/v2/initialization/PreviewStarter$CameraCaptureSessionCreatedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "outputSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .local p2, "slaveOutputSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mOutputSurfaces:Ljava/util/List;

    .line 88
    iput-object p2, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mSlaveOutputSurfaces:Ljava/util/List;

    .line 89
    iput-object p3, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 90
    iput-object p4, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mSlaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 91
    iput-object p5, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCaptureSessionCreator:Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;

    .line 92
    iput-object p6, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCameraStarter:Lcom/android/camera/one/v2/initialization/CameraStarter;

    .line 93
    iput-object p7, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mSessionListener:Lcom/android/camera/one/v2/initialization/PreviewStarter$CameraCaptureSessionCreatedListener;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/initialization/PreviewStarter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/initialization/PreviewStarter;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mOutputSurfaces:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/initialization/PreviewStarter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/initialization/PreviewStarter;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mSlaveOutputSurfaces:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/initialization/PreviewStarter;)Lcom/android/camera/one/v2/initialization/PreviewStarter$CameraCaptureSessionCreatedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/initialization/PreviewStarter;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mSessionListener:Lcom/android/camera/one/v2/initialization/PreviewStarter$CameraCaptureSessionCreatedListener;

    return-object v0
.end method


# virtual methods
.method public startPreview(Lcom/android/camera/async/Lifetime;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 24
    .param p1, "previewLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "slaveSurface"    # Landroid/view/Surface;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "previewCallbackSurface"    # Landroid/view/Surface;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "slavePreviewCallbackSurface"    # Landroid/view/Surface;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "imageGeneratorProvider"    # Lcom/android/camera/opengl/image/ImageGeneratorProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "burstFacade"    # Lcom/android/camera/burst/BurstFacade;
    .param p8, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Lifetime;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Lcom/android/camera/opengl/image/ImageGeneratorProvider;",
            "Lcom/android/camera/burst/BurstFacade;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v5, "surfaceList":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v6, "slaveSurfaceList":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-virtual/range {p8 .. p8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getEIS()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isEnableEIS(Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 110
    const/16 v2, 0x11

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->setDualCamModeConfig(I)V

    .line 115
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->isQCFASensor()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->useFakeQCFASolution()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->setDualCamModeConfig(I)V

    .line 119
    :cond_0
    invoke-virtual/range {p8 .. p8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->needChangeStreamOpreationMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 120
    const/16 v2, 0x12

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->setDualCamModeConfig(I)V

    .line 125
    :goto_1
    invoke-virtual/range {p8 .. p8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->needCapture(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 126
    const/4 v14, 0x0

    .line 127
    .local v14, "pictureImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    const/16 v16, 0x0

    .line 151
    .local v16, "burstImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mSlaveOutputSurfaces:Ljava/util/List;

    if-eqz v2, :cond_14

    .line 152
    invoke-virtual/range {p8 .. p8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->needCapture(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 153
    const/4 v15, 0x0

    .line 168
    .local v15, "slavePictureImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    :goto_3
    if-eqz v14, :cond_18

    .line 169
    invoke-virtual/range {p8 .. p8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isReprocessSessionNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCameraStarter:Lcom/android/camera/one/v2/initialization/CameraStarter;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v14}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getImageFormat()I

    move-result v8

    move-object/from16 v0, p8

    invoke-interface {v2, v0, v7, v8}, Lcom/android/camera/one/v2/initialization/CameraStarter;->getInputConfiguration(Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;I)Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v3

    .line 171
    .local v3, "inputConfiguration":Landroid/hardware/camera2/params/InputConfiguration;
    if-eqz v3, :cond_15

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCameraStarter:Lcom/android/camera/one/v2/initialization/CameraStarter;

    const/16 v7, 0x100

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-interface {v2, v0, v1, v7}, Lcom/android/camera/one/v2/initialization/CameraStarter;->createImageReaderForReprocess(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;I)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v17

    .line 173
    .local v17, "reprocessImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    if-eqz v17, :cond_2

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mOutputSurfaces:Ljava/util/List;

    invoke-interface/range {v17 .. v17}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mSlaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v2, :cond_1b

    .line 195
    if-eqz v15, :cond_19

    invoke-virtual/range {p8 .. p8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isSlaveReprocessSessionNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCameraStarter:Lcom/android/camera/one/v2/initialization/CameraStarter;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mSlaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v15}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getImageFormat()I

    move-result v8

    move-object/from16 v0, p8

    invoke-interface {v2, v0, v7, v8}, Lcom/android/camera/one/v2/initialization/CameraStarter;->getInputConfiguration(Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;I)Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v4

    .line 196
    .local v4, "slaveInputConfiguration":Landroid/hardware/camera2/params/InputConfiguration;
    :goto_5
    if-eqz v4, :cond_1a

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCameraStarter:Lcom/android/camera/one/v2/initialization/CameraStarter;

    const/16 v7, 0x100

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-interface {v2, v0, v1, v7}, Lcom/android/camera/one/v2/initialization/CameraStarter;->createImageReaderForReprocess(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;I)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v23

    .line 198
    .local v23, "slaveReprocessImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    if-eqz v23, :cond_3

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mSlaveOutputSurfaces:Ljava/util/List;

    invoke-interface/range {v23 .. v23}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_3
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->isRawCaptureSupported()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 211
    invoke-virtual/range {p8 .. p8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isRawCaptureAllow(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 212
    invoke-virtual/range {p8 .. p8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->isRawCaptureRequired()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 213
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCameraStarter:Lcom/android/camera/one/v2/initialization/CameraStarter;

    const/16 v7, 0x25

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-interface {v2, v0, v1, v7}, Lcom/android/camera/one/v2/initialization/CameraStarter;->createImageReaderForRaw(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;I)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v18

    .line 214
    .local v18, "rawImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    if-eqz v18, :cond_5

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mOutputSurfaces:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_5
    :goto_7
    invoke-virtual/range {p8 .. p8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isVideoMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 222
    if-eqz p7, :cond_6

    invoke-interface/range {p7 .. p7}, Lcom/android/camera/burst/BurstFacade;->getInputSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mOutputSurfaces:Ljava/util/List;

    invoke-interface/range {p7 .. p7}, Lcom/android/camera/burst/BurstFacade;->getInputSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_6
    if-eqz p4, :cond_7

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mOutputSurfaces:Ljava/util/List;

    move-object/from16 v0, p4

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mSlaveOutputSurfaces:Ljava/util/List;

    if-eqz v2, :cond_8

    if-eqz p5, :cond_8

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mSlaveOutputSurfaces:Ljava/util/List;

    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_8
    new-instance v2, Lcom/android/camera/one/v2/initialization/PreviewStarter$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/initialization/PreviewStarter$1;-><init>(Lcom/android/camera/one/v2/initialization/PreviewStarter;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 256
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLorLMr1()Z

    move-result v2

    if-eqz v2, :cond_1d

    sget-boolean v2, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_5:Z

    if-eqz v2, :cond_1d

    .line 257
    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mSlaveOutputSurfaces:Ljava/util/List;

    if-eqz v2, :cond_9

    if-eqz p3, :cond_9

    .line 259
    move-object/from16 v0, p3

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCaptureSessionCreator:Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->createCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Ljava/util/List;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/burst/BurstFacade;)Lcom/google/common/util/concurrent/SettableFuture;

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mOutputSurfaces:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mSlaveOutputSurfaces:Ljava/util/List;

    if-eqz v2, :cond_a

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mSlaveOutputSurfaces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 277
    :cond_a
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCaptureSessionCreator:Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->createCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Ljava/util/List;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/burst/BurstFacade;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v22

    .line 279
    .local v22, "sessionFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Landroid/support/v4/util/Pair<Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;>;>;"
    new-instance v7, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    move-object/from16 v21, p8

    invoke-direct/range {v7 .. v21}, Lcom/android/camera/one/v2/initialization/PreviewStarter$2;-><init>(Lcom/android/camera/one/v2/initialization/PreviewStarter;Lcom/android/camera/async/Lifetime;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    move-object/from16 v0, v22

    invoke-static {v0, v7}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    return-object v2

    .line 112
    .end local v3    # "inputConfiguration":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v4    # "slaveInputConfiguration":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v14    # "pictureImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .end local v15    # "slavePictureImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .end local v16    # "burstImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .end local v17    # "reprocessImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .end local v18    # "rawImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .end local v22    # "sessionFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Landroid/support/v4/util/Pair<Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;>;>;"
    .end local v23    # "slaveReprocessImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    :cond_b
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->setDualCamModeConfig(I)V

    goto/16 :goto_0

    .line 122
    :cond_c
    const/16 v2, 0x13

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->setDualCamModeConfig(I)V

    goto/16 :goto_1

    .line 129
    :cond_d
    invoke-virtual/range {p8 .. p8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->useJpegPicture(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lcom/android/camera/DebugManager;->getInstance()Lcom/android/camera/DebugManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/DebugManager;->isJPEGMode()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 130
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCameraStarter:Lcom/android/camera/one/v2/initialization/CameraStarter;

    invoke-virtual/range {p8 .. p8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v7}, Lcom/android/camera/one/v2/initialization/CameraStarter;->createImageReaderForJpegPicture(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v14

    .line 138
    .restart local v14    # "pictureImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mOutputSurfaces:Ljava/util/List;

    invoke-interface {v14}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual/range {p8 .. p8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isBurstShotNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCameraStarter:Lcom/android/camera/one/v2/initialization/CameraStarter;

    invoke-virtual/range {p8 .. p8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v7}, Lcom/android/camera/one/v2/initialization/CameraStarter;->createImageReaderForJpegPicture(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v16

    .line 142
    .restart local v16    # "burstImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    invoke-static {}, Lcom/android/camera/DebugManager;->getInstance()Lcom/android/camera/DebugManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/DebugManager;->isJPEGMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mOutputSurfaces:Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 131
    .end local v14    # "pictureImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .end local v16    # "burstImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    :cond_f
    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-virtual/range {p8 .. p8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v7

    if-ne v2, v7, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 132
    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v2, v7, :cond_10

    .line 133
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v2

    sget-object v7, Lcom/android/camera/util/ProductModelUtil$DualCamType;->QC_LOGIC_CAM:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v2, v7, :cond_10

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCameraStarter:Lcom/android/camera/one/v2/initialization/CameraStarter;

    invoke-virtual/range {p8 .. p8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v7}, Lcom/android/camera/one/v2/initialization/CameraStarter;->createImageReaderForJpegPicture(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v14

    .restart local v14    # "pictureImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    goto :goto_9

    .line 136
    .end local v14    # "pictureImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCameraStarter:Lcom/android/camera/one/v2/initialization/CameraStarter;

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-interface {v2, v0, v1}, Lcom/android/camera/one/v2/initialization/CameraStarter;->createImageReaderForPicture(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v14

    .restart local v14    # "pictureImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    goto :goto_9

    .line 146
    :cond_11
    const/16 v16, 0x0

    .restart local v16    # "burstImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    goto/16 :goto_2

    .line 155
    :cond_12
    invoke-virtual/range {p8 .. p8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->useJpegPicture(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCameraStarter:Lcom/android/camera/one/v2/initialization/CameraStarter;

    invoke-virtual/range {p8 .. p8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSlaveCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v7}, Lcom/android/camera/one/v2/initialization/CameraStarter;->createImageReaderForJpegPicture(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v15

    .line 160
    .restart local v15    # "slavePictureImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mSlaveOutputSurfaces:Ljava/util/List;

    invoke-interface {v15}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 158
    .end local v15    # "slavePictureImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCameraStarter:Lcom/android/camera/one/v2/initialization/CameraStarter;

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-interface {v2, v0, v1}, Lcom/android/camera/one/v2/initialization/CameraStarter;->createImageReaderForPicture(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v15

    .restart local v15    # "slavePictureImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    goto :goto_a

    .line 163
    .end local v15    # "slavePictureImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    :cond_14
    const/4 v15, 0x0

    .restart local v15    # "slavePictureImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    goto/16 :goto_3

    .line 177
    .restart local v3    # "inputConfiguration":Landroid/hardware/camera2/params/InputConfiguration;
    :cond_15
    const/16 v17, 0x0

    .restart local v17    # "reprocessImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    goto/16 :goto_4

    .line 179
    .end local v3    # "inputConfiguration":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v17    # "reprocessImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    :cond_16
    invoke-virtual/range {p8 .. p8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isBurstShotNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCameraStarter:Lcom/android/camera/one/v2/initialization/CameraStarter;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v14}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getImageFormat()I

    move-result v8

    move-object/from16 v0, p8

    invoke-interface {v2, v0, v7, v8}, Lcom/android/camera/one/v2/initialization/CameraStarter;->getInputConfiguration(Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;I)Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v3

    .line 181
    .restart local v3    # "inputConfiguration":Landroid/hardware/camera2/params/InputConfiguration;
    const/16 v17, 0x0

    .restart local v17    # "reprocessImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    goto/16 :goto_4

    .line 183
    .end local v3    # "inputConfiguration":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v17    # "reprocessImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    :cond_17
    const/4 v3, 0x0

    .line 184
    .restart local v3    # "inputConfiguration":Landroid/hardware/camera2/params/InputConfiguration;
    const/16 v17, 0x0

    .restart local v17    # "reprocessImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    goto/16 :goto_4

    .line 187
    .end local v3    # "inputConfiguration":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v17    # "reprocessImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    :cond_18
    const/4 v3, 0x0

    .line 188
    .restart local v3    # "inputConfiguration":Landroid/hardware/camera2/params/InputConfiguration;
    const/16 v17, 0x0

    .restart local v17    # "reprocessImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    goto/16 :goto_4

    .line 195
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 202
    .restart local v4    # "slaveInputConfiguration":Landroid/hardware/camera2/params/InputConfiguration;
    :cond_1a
    const/16 v23, 0x0

    .restart local v23    # "slaveReprocessImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    goto/16 :goto_6

    .line 205
    .end local v4    # "slaveInputConfiguration":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v23    # "slaveReprocessImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    :cond_1b
    const/4 v4, 0x0

    .line 206
    .restart local v4    # "slaveInputConfiguration":Landroid/hardware/camera2/params/InputConfiguration;
    const/16 v23, 0x0

    .restart local v23    # "slaveReprocessImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    goto/16 :goto_6

    .line 218
    :cond_1c
    const/16 v18, 0x0

    .restart local v18    # "rawImageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    goto/16 :goto_7

    .line 267
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mOutputSurfaces:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 268
    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mSlaveOutputSurfaces:Ljava/util/List;

    if-eqz v2, :cond_a

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/PreviewStarter;->mSlaveOutputSurfaces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    if-eqz p3, :cond_a

    .line 272
    move-object/from16 v0, p3

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8
.end method
