.class Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;
.super Ljava/lang/Object;
.source "InitializedOneCameraFactory.java"

# interfaces
.implements Lcom/android/camera/one/v2/initialization/PreviewStarter$CameraCaptureSessionCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/initialization/CameraStarter;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Ljava/util/List;Ljava/util/List;Lcom/android/camera/async/MainThread;Lcom/android/camera/async/HandlerFactory;FFLjava/util/List;Lcom/android/camera/ui/motion/LinearScale;Lcom/android/camera/one/OneCamera$Facing;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory;

.field final synthetic val$afState:Lcom/android/camera/async/ConcurrentState;

.field final synthetic val$afStateListenable:Lcom/android/camera/async/Listenable;

.field final synthetic val$cameraStarter:Lcom/android/camera/one/v2/initialization/CameraStarter;

.field final synthetic val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field final synthetic val$faceData:Lcom/android/camera/async/ConcurrentState;

.field final synthetic val$faceDataListenable:Lcom/android/camera/async/Listenable;

.field final synthetic val$lengsState:Lcom/android/camera/async/ConcurrentState;

.field final synthetic val$lengsStateListenable:Lcom/android/camera/async/Listenable;

.field final synthetic val$mBokehResultProvider:Lcom/android/camera/async/ConcurrentState;

.field final synthetic val$mFlashDetector:Lcom/android/camera/async/ConcurrentState;

.field final synthetic val$mManualAutoFocus:Lcom/android/camera/async/ConcurrentState;

.field final synthetic val$mPictureTaker:Lcom/android/camera/async/ConcurrentState;

.field final synthetic val$mSceneDetector:Lcom/android/camera/async/ConcurrentState;

.field final synthetic val$mSceneRecognitionProvider:Lcom/android/camera/async/ConcurrentState;

.field final synthetic val$metadataCallback:Lcom/android/camera/one/v2/initialization/MetadataCallback;

.field final synthetic val$readyState:Lcom/android/camera/async/ConcurrentState;

.field final synthetic val$readyStateListenable:Lcom/android/camera/async/Listenable;

.field final synthetic val$slaveAfState:Lcom/android/camera/async/ConcurrentState;

.field final synthetic val$slaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field final synthetic val$slaveLengsState:Lcom/android/camera/async/ConcurrentState;

.field final synthetic val$slaveMetadataCallback:Lcom/android/camera/one/v2/initialization/MetadataCallback;

.field final synthetic val$slaveZoomState:Lcom/android/camera/async/ConcurrentState;

.field final synthetic val$slavefaceData:Lcom/android/camera/async/ConcurrentState;

.field final synthetic val$zoomState:Lcom/android/camera/async/ConcurrentState;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/v2/initialization/MetadataCallback;Lcom/android/camera/async/Listenable;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/Listenable;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/Listenable;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/v2/initialization/CameraStarter;Lcom/android/camera/one/v2/initialization/MetadataCallback;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/Listenable;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->this$0:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory;

    iput-object p2, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iput-object p3, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$zoomState:Lcom/android/camera/async/ConcurrentState;

    iput-object p4, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$slaveZoomState:Lcom/android/camera/async/ConcurrentState;

    iput-object p5, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$metadataCallback:Lcom/android/camera/one/v2/initialization/MetadataCallback;

    iput-object p6, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$afStateListenable:Lcom/android/camera/async/Listenable;

    iput-object p7, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$afState:Lcom/android/camera/async/ConcurrentState;

    iput-object p8, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$lengsStateListenable:Lcom/android/camera/async/Listenable;

    iput-object p9, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$lengsState:Lcom/android/camera/async/ConcurrentState;

    iput-object p10, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$faceDataListenable:Lcom/android/camera/async/Listenable;

    iput-object p11, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$faceData:Lcom/android/camera/async/ConcurrentState;

    iput-object p12, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$slaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iput-object p13, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$slaveAfState:Lcom/android/camera/async/ConcurrentState;

    iput-object p14, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$slaveLengsState:Lcom/android/camera/async/ConcurrentState;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$slavefaceData:Lcom/android/camera/async/ConcurrentState;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$cameraStarter:Lcom/android/camera/one/v2/initialization/CameraStarter;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$slaveMetadataCallback:Lcom/android/camera/one/v2/initialization/MetadataCallback;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$readyState:Lcom/android/camera/async/ConcurrentState;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$mPictureTaker:Lcom/android/camera/async/ConcurrentState;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$mManualAutoFocus:Lcom/android/camera/async/ConcurrentState;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$mSceneDetector:Lcom/android/camera/async/ConcurrentState;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$mFlashDetector:Lcom/android/camera/async/ConcurrentState;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$mBokehResultProvider:Lcom/android/camera/async/ConcurrentState;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$mSceneRecognitionProvider:Lcom/android/camera/async/ConcurrentState;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$readyStateListenable:Lcom/android/camera/async/Listenable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraCaptureSessionCreated(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 27
    .param p1, "previewLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "session"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;
    .param p3, "slaveSession"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;
    .param p4, "previewSurface"    # Landroid/view/Surface;
    .param p5, "slavePreviewSurface"    # Landroid/view/Surface;
    .param p6, "previewCallbackSurface"    # Landroid/view/Surface;
    .param p7, "slavePreviewCallbackSurface"    # Landroid/view/Surface;
    .param p8, "pictureImageReader"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .param p9, "slavePictureImageReader"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .param p10, "burstImageReader"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .param p11, "reprocessImageReader"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .param p12, "rawImageReader"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .param p13, "imageGeneratorProvider"    # Lcom/android/camera/opengl/image/ImageGeneratorProvider;
    .param p14, "burstFacade"    # Lcom/android/camera/burst/BurstFacade;
    .param p15, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;

    .prologue
    .line 218
    const/4 v2, 0x0

    new-instance v3, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$1;-><init>(Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/async/Lifetime;->add(ILcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 239
    if-eqz p3, :cond_0

    .line 240
    const/4 v2, 0x0

    new-instance v3, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$2;-><init>(Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/async/Lifetime;->add(ILcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 254
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$metadataCallback:Lcom/android/camera/one/v2/initialization/MetadataCallback;

    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isFocusPointInfoNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/one/v2/initialization/MetadataCallback;->setNeedFocusPointInfo(Z)V

    .line 256
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isControlByCameraIdRequired(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCurrentCameraId()Lcom/android/camera/async/Observable;

    move-result-object v25

    .line 258
    .local v25, "currentCameraId":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v2, v0, v1}, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$3;-><init>(Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;Lcom/android/camera/async/Observable;)V

    .line 272
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v3

    .line 258
    move-object/from16 v0, v25

    invoke-interface {v0, v2, v3}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v26

    .line 273
    .local v26, "currentCameraIdCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 279
    .end local v25    # "currentCameraId":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v26    # "currentCameraIdCallback":Lcom/android/camera/async/SafeCloseable;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$cameraStarter:Lcom/android/camera/one/v2/initialization/CameraStarter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$zoomState:Lcom/android/camera/async/ConcurrentState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$slaveZoomState:Lcom/android/camera/async/ConcurrentState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$metadataCallback:Lcom/android/camera/one/v2/initialization/MetadataCallback;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$slaveMetadataCallback:Lcom/android/camera/one/v2/initialization/MetadataCallback;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$readyState:Lcom/android/camera/async/ConcurrentState;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$faceData:Lcom/android/camera/async/ConcurrentState;

    move-object/from16 v23, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    invoke-interface/range {v2 .. v23}, Lcom/android/camera/one/v2/initialization/CameraStarter;->startCamera(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Observable;)Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;

    move-result-object v24

    .line 302
    .local v24, "controls":Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$mPictureTaker:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;->getPictureTaker()Lcom/android/camera/one/v2/photo/PictureTaker;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$mManualAutoFocus:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;->getManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$mSceneDetector:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;->getSceneDetector()Lcom/android/camera/one/v2/photo/SceneDetector;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$mFlashDetector:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;->getFlashDetector()Lcom/android/camera/one/v2/photo/FlashDetector;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$mBokehResultProvider:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;->getBokehResultProvider()Lcom/android/camera/one/v2/photo/BokehResultProvider;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$mSceneRecognitionProvider:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;->getSceneRecognitionProvider()Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 308
    new-instance v2, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$4;-><init>(Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 322
    return-void
.end method
