.class Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;
.super Ljava/lang/Object;
.source "GenericOneCameraImpl.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera;


# instance fields
.field private final mAFStateListenable:Lcom/android/camera/async/Listenable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Listenable",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBokehResultProvider:Lcom/android/camera/one/v2/photo/BokehResultProvider;

.field private final mCameraId:Lcom/android/camera/device/CameraId;

.field private final mDeviceLifetime:Lcom/android/camera/async/Lifetime;

.field private final mDirection:Lcom/android/camera/one/OneCamera$Facing;

.field private final mFaceDataListenable:Lcom/android/camera/async/Listenable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Listenable",
            "<[",
            "Landroid/hardware/camera2/params/Face;",
            ">;"
        }
    .end annotation
.end field

.field private final mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

.field private final mLengsStateListenable:Lcom/android/camera/async/Listenable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Listenable",
            "<",
            "Lcom/android/camera/one/OneCamera$LengsState;",
            ">;"
        }
    .end annotation
.end field

.field private final mLensRange:Lcom/android/camera/ui/motion/LinearScale;

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

.field private final mMaxZoom:F

.field private final mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTaker;

.field private mPreviewLifetime:Lcom/android/camera/async/Lifetime;

.field private final mPreviewSizeSelector:Lcom/android/camera/one/PreviewSizeSelector;

.field private final mPreviewStarter:Lcom/android/camera/one/v2/initialization/PreviewStarter;

.field private final mReadyStateListenable:Lcom/android/camera/async/Listenable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Listenable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

.field private final mSceneRecognitionProvider:Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;

.field private final mSlaveCameraId:Lcom/android/camera/device/CameraId;

.field private final mSlaveMaxZoom:F

.field private final mSlaveOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mSlaveZoom:Lcom/android/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mZoom:Lcom/android/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/photo/PictureTaker;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/v2/photo/BokehResultProvider;Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;Lcom/android/camera/ui/motion/LinearScale;Ljava/util/concurrent/Executor;Lcom/android/camera/async/Listenable;Lcom/android/camera/async/Listenable;Lcom/android/camera/async/Listenable;Lcom/android/camera/async/Listenable;FFLcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/PreviewSizeSelector;Lcom/android/camera/one/v2/initialization/PreviewStarter;)V
    .locals 1
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p2, "slaveCameraId"    # Lcom/android/camera/device/CameraId;
    .param p3, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "slaveCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p5, "deviceLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p6, "pictureTaker"    # Lcom/android/camera/one/v2/photo/PictureTaker;
    .param p7, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p8, "sceneDetector"    # Lcom/android/camera/one/v2/photo/SceneDetector;
    .param p9, "flashDetector"    # Lcom/android/camera/one/v2/photo/FlashDetector;
    .param p10, "bokehResultProvider"    # Lcom/android/camera/one/v2/photo/BokehResultProvider;
    .param p11, "sceneRecognitionProvider"    # Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;
    .param p12, "lensRange"    # Lcom/android/camera/ui/motion/LinearScale;
    .param p13, "mainExecutor"    # Ljava/util/concurrent/Executor;
    .param p18, "maxZoom"    # F
    .param p19, "slaveMaxZoom"    # F
    .param p22, "direction"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p23, "previewSizeSelector"    # Lcom/android/camera/one/PreviewSizeSelector;
    .param p24, "previewStarter"    # Lcom/android/camera/one/v2/initialization/PreviewStarter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/device/CameraId;",
            "Lcom/android/camera/device/CameraId;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/async/Lifetime;",
            "Lcom/android/camera/one/v2/photo/PictureTaker;",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Lcom/android/camera/one/v2/photo/SceneDetector;",
            "Lcom/android/camera/one/v2/photo/FlashDetector;",
            "Lcom/android/camera/one/v2/photo/BokehResultProvider;",
            "Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;",
            "Lcom/android/camera/ui/motion/LinearScale;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/async/Listenable",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/PointF;",
            ">;>;",
            "Lcom/android/camera/async/Listenable",
            "<",
            "Lcom/android/camera/one/OneCamera$LengsState;",
            ">;",
            "Lcom/android/camera/async/Listenable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/async/Listenable",
            "<[",
            "Landroid/hardware/camera2/params/Face;",
            ">;FF",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "Lcom/android/camera/one/PreviewSizeSelector;",
            "Lcom/android/camera/one/v2/initialization/PreviewStarter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    .local p14, "afStateProvider":Lcom/android/camera/async/Listenable;, "Lcom/android/camera/async/Listenable<Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/PointF;>;>;"
    .local p15, "lengsStateProvider":Lcom/android/camera/async/Listenable;, "Lcom/android/camera/async/Listenable<Lcom/android/camera/one/OneCamera$LengsState;>;"
    .local p16, "readyStateListenable":Lcom/android/camera/async/Listenable;, "Lcom/android/camera/async/Listenable<Ljava/lang/Boolean;>;"
    .local p17, "faceDataListenable":Lcom/android/camera/async/Listenable;, "Lcom/android/camera/async/Listenable<[Landroid/hardware/camera2/params/Face;>;"
    .local p20, "zoom":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Float;>;"
    .local p21, "slaveZoom":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Float;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mCameraId:Lcom/android/camera/device/CameraId;

    .line 124
    iput-object p2, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mSlaveCameraId:Lcom/android/camera/device/CameraId;

    .line 125
    iput-object p3, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 126
    iput-object p4, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mSlaveOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 127
    iput-object p5, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mDeviceLifetime:Lcom/android/camera/async/Lifetime;

    .line 128
    iput-object p13, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 129
    move/from16 v0, p18

    iput v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mMaxZoom:F

    .line 130
    move/from16 v0, p19

    iput v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mSlaveMaxZoom:F

    .line 131
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mDirection:Lcom/android/camera/one/OneCamera$Facing;

    .line 132
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPreviewSizeSelector:Lcom/android/camera/one/PreviewSizeSelector;

    .line 133
    iput-object p6, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTaker;

    .line 134
    iput-object p7, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 135
    iput-object p8, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 136
    iput-object p9, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    .line 137
    iput-object p10, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mBokehResultProvider:Lcom/android/camera/one/v2/photo/BokehResultProvider;

    .line 138
    iput-object p11, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mSceneRecognitionProvider:Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;

    .line 139
    iput-object p12, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mLensRange:Lcom/android/camera/ui/motion/LinearScale;

    .line 140
    iput-object p14, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mAFStateListenable:Lcom/android/camera/async/Listenable;

    .line 141
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mLengsStateListenable:Lcom/android/camera/async/Listenable;

    .line 142
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mReadyStateListenable:Lcom/android/camera/async/Listenable;

    .line 143
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mFaceDataListenable:Lcom/android/camera/async/Listenable;

    .line 144
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mZoom:Lcom/android/camera/async/Updatable;

    .line 145
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mSlaveZoom:Lcom/android/camera/async/Updatable;

    .line 146
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPreviewStarter:Lcom/android/camera/one/v2/initialization/PreviewStarter;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;)Lcom/android/camera/async/Lifetime;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPreviewLifetime:Lcom/android/camera/async/Lifetime;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;)Lcom/android/camera/one/v2/photo/PictureTaker;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTaker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;)Lcom/android/camera/ui/motion/LinearScale;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mLensRange:Lcom/android/camera/ui/motion/LinearScale;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mDeviceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 340
    return-void
.end method

.method public getCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mCameraId:Lcom/android/camera/device/CameraId;

    return-object v0
.end method

.method public getCurrentScene()Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    invoke-interface {v0}, Lcom/android/camera/one/v2/photo/SceneDetector;->get()Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()Lcom/android/camera/one/OneCamera$Facing;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mDirection:Lcom/android/camera/one/OneCamera$Facing;

    return-object v0
.end method

.method public getMaxZoom()F
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mMaxZoom:F

    return v0
.end method

.method public getSlaveCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mSlaveCameraId:Lcom/android/camera/device/CameraId;

    return-object v0
.end method

.method public getSlaveMaxZoom()F
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mSlaveMaxZoom:F

    return v0
.end method

.method public getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    return-object v0
.end method

.method public isFlashRequired()Z
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    invoke-interface {v0}, Lcom/android/camera/one/v2/photo/FlashDetector;->isFlashRequired()Z

    move-result v0

    return v0
.end method

.method public pickMotionPreviewDataCallbackSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;
    .locals 1
    .param p1, "pictureSize"    # Lcom/android/camera/util/Size;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPreviewSizeSelector:Lcom/android/camera/one/PreviewSizeSelector;

    invoke-interface {v0, p1}, Lcom/android/camera/one/PreviewSizeSelector;->pickMotionPreviewDataCallbackSize(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public pickPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;
    .locals 1
    .param p1, "pictureSize"    # Lcom/android/camera/util/Size;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPreviewSizeSelector:Lcom/android/camera/one/PreviewSizeSelector;

    invoke-interface {v0, p1}, Lcom/android/camera/one/PreviewSizeSelector;->pickPreviewSize(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public pickSlavePreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;
    .locals 1
    .param p1, "pictureSize"    # Lcom/android/camera/util/Size;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPreviewSizeSelector:Lcom/android/camera/one/PreviewSizeSelector;

    invoke-interface {v0, p1}, Lcom/android/camera/one/PreviewSizeSelector;->pickSmallestPreviewSize(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public pickVideoPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;
    .locals 1
    .param p1, "videoSize"    # Lcom/android/camera/util/Size;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPreviewSizeSelector:Lcom/android/camera/one/PreviewSizeSelector;

    invoke-interface {v0, p1}, Lcom/android/camera/one/PreviewSizeSelector;->pickVIdeoPreviewSize(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPreviewLifetime:Lcom/android/camera/async/Lifetime;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mDeviceLifetime:Lcom/android/camera/async/Lifetime;

    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPreviewLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->remove(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 332
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPreviewLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPreviewLifetime:Lcom/android/camera/async/Lifetime;

    .line 335
    :cond_0
    return-void
.end method

.method public setBokehResultListener(Lcom/android/camera/one/v2/photo/BokehResultListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/one/v2/photo/BokehResultListener;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mBokehResultProvider:Lcom/android/camera/one/v2/photo/BokehResultProvider;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/photo/BokehResultProvider;->setBokehListener(Lcom/android/camera/one/v2/photo/BokehResultListener;)V

    .line 279
    return-void
.end method

.method public setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$FaceDetectionListener;

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mFaceDataListenable:Lcom/android/camera/async/Listenable;

    invoke-virtual {v0}, Lcom/android/camera/async/Listenable;->clear()V

    .line 274
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mFaceDataListenable:Lcom/android/camera/async/Listenable;

    new-instance v1, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$6;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$6;-><init>(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Listenable;->setCallback(Lcom/android/camera/util/Callback;)V

    goto :goto_0
.end method

.method public setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$FocusStateListener;

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mAFStateListenable:Lcom/android/camera/async/Listenable;

    invoke-virtual {v0}, Lcom/android/camera/async/Listenable;->clear()V

    .line 244
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mAFStateListenable:Lcom/android/camera/async/Listenable;

    new-instance v1, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$4;-><init>(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Listenable;->setCallback(Lcom/android/camera/util/Callback;)V

    goto :goto_0
.end method

.method public setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$LensStateListener;

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mLengsStateListenable:Lcom/android/camera/async/Listenable;

    invoke-virtual {v0}, Lcom/android/camera/async/Listenable;->clear()V

    .line 260
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mLengsStateListenable:Lcom/android/camera/async/Listenable;

    new-instance v1, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$5;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$5;-><init>(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;Lcom/android/camera/one/OneCamera$LensStateListener;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Listenable;->setCallback(Lcom/android/camera/util/Callback;)V

    goto :goto_0
.end method

.method public setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mReadyStateListenable:Lcom/android/camera/async/Listenable;

    invoke-virtual {v1}, Lcom/android/camera/async/Listenable;->clear()V

    .line 305
    :goto_0
    return-void

    .line 297
    :cond_0
    new-instance v0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$7;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$7;-><init>(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 304
    .local v0, "readyStateCallback":Lcom/android/camera/util/Callback;, "Lcom/android/camera/util/Callback<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mReadyStateListenable:Lcom/android/camera/async/Listenable;

    new-instance v2, Lcom/android/camera/async/FilteredCallback;

    invoke-direct {v2, v0}, Lcom/android/camera/async/FilteredCallback;-><init>(Lcom/android/camera/util/Callback;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/async/Listenable;->setCallback(Lcom/android/camera/util/Callback;)V

    goto :goto_0
.end method

.method public setSceneModeChangeListener(Lcom/android/camera/one/OneCamera$SceneModeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$SceneModeChangeListener;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/photo/SceneDetector;->setSceneModeChangeListener(Lcom/android/camera/one/OneCamera$SceneModeChangeListener;)V

    .line 289
    return-void
.end method

.method public setSceneRecognitionListener(Lcom/android/camera/one/OneCamera$SceneRecognitionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$SceneRecognitionListener;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mSceneRecognitionProvider:Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;->setSceneRecognitionListener(Lcom/android/camera/one/OneCamera$SceneRecognitionListener;)V

    .line 284
    return-void
.end method

.method public setSlaveZoom(F)V
    .locals 2
    .param p1, "zoom"    # F

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mSlaveZoom:Lcom/android/camera/async/Updatable;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 365
    return-void
.end method

.method public setZoom(F)V
    .locals 2
    .param p1, "zoom"    # F

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mZoom:Lcom/android/camera/async/Updatable;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 360
    return-void
.end method

.method public startPreview(Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V
    .locals 11
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "slaveSurface"    # Landroid/view/Surface;
    .param p3, "previewCallbackSurface"    # Landroid/view/Surface;
    .param p4, "slavePreviewCallbackSurface"    # Landroid/view/Surface;
    .param p5, "localPreviewLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p6, "imageGeneratorProvider"    # Lcom/android/camera/opengl/image/ImageGeneratorProvider;
    .param p7, "burstFacade"    # Lcom/android/camera/burst/BurstFacade;
    .param p8, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p9, "listener"    # Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    .prologue
    .line 309
    new-instance v1, Lcom/android/camera/async/Lifetime;

    invoke-direct {v1}, Lcom/android/camera/async/Lifetime;-><init>()V

    iput-object v1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPreviewLifetime:Lcom/android/camera/async/Lifetime;

    .line 310
    if-eqz p5, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPreviewLifetime:Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mDeviceLifetime:Lcom/android/camera/async/Lifetime;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPreviewLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/async/Lifetime;->add(ILcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 314
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPreviewStarter:Lcom/android/camera/one/v2/initialization/PreviewStarter;

    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPreviewLifetime:Lcom/android/camera/async/Lifetime;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/camera/one/v2/initialization/PreviewStarter;->startPreview(Lcom/android/camera/async/Lifetime;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v10

    .line 315
    .local v10, "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;"
    new-instance v1, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$8;

    move-object/from16 v0, p9

    invoke-direct {v1, p0, v0}, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$8;-><init>(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V

    invoke-static {v10, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 326
    return-void
.end method

.method public takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V
    .locals 13
    .param p1, "params"    # Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    .param p2, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v1

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 157
    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->isFlashSupported()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->frontFlashIfNeed:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    .line 160
    invoke-interface {v1}, Lcom/android/camera/one/v2/photo/FlashDetector;->isFlashRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget-object v1, p1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->title:Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->orientation:I

    iget-object v3, p1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->location:Landroid/location/Location;

    iget-object v4, p1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->debugDataFolder:Ljava/io/File;

    new-instance v5, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$1;

    invoke-direct {v5, p0, p1}, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$1;-><init>(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;)V

    iget-object v6, p1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->screenFlashController:Lcom/android/camera/one/OneCamera$ScreenFlashController;

    iget-object v7, p1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->saverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    iget v8, p1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->heading:I

    iget v9, p1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->zoom:F

    iget v10, p1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->timerSeconds:F

    iget-boolean v11, p1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->frontFlashIfNeed:Z

    invoke-direct/range {v0 .. v11}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;-><init>(Ljava/lang/String;ILandroid/location/Location;Ljava/io/File;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$ScreenFlashController;Lcom/android/camera/one/OneCamera$PictureSaverCallback;IFFZ)V

    .line 200
    .local v0, "paramWrap":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    new-instance v12, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$2;

    invoke-direct {v12, p0, p1, p2}, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$2;-><init>(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    .line 208
    .local v12, "resetScreenFlash":Lcom/android/camera/async/SafeCloseable;
    iget-object v1, p1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->screenFlashController:Lcom/android/camera/one/OneCamera$ScreenFlashController;

    new-instance v2, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$3;

    invoke-direct {v2, p0, v12, v0, p2}, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$3;-><init>(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;Lcom/android/camera/async/SafeCloseable;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    invoke-interface {v1, v2}, Lcom/android/camera/one/OneCamera$ScreenFlashController;->showScreenFlash(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPreviewLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v1, v12}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 225
    .end local v0    # "paramWrap":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    .end local v12    # "resetScreenFlash":Lcom/android/camera/async/SafeCloseable;
    :goto_0
    return-void

    .line 220
    .restart local v0    # "paramWrap":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    .restart local v12    # "resetScreenFlash":Lcom/android/camera/async/SafeCloseable;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTaker;

    invoke-interface {v1, p1, p2}, Lcom/android/camera/one/v2/photo/PictureTaker;->takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    goto :goto_0

    .line 223
    .end local v0    # "paramWrap":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    .end local v12    # "resetScreenFlash":Lcom/android/camera/async/SafeCloseable;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTaker;

    invoke-interface {v1, p1, p2}, Lcom/android/camera/one/v2/photo/PictureTaker;->takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    goto :goto_0
.end method

.method public triggerFocusAndMeterAtPoint(FF)V
    .locals 1
    .param p1, "nx"    # F
    .param p2, "ny"    # F

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->triggerFocusAndMeterAtPoint(FF)V

    .line 152
    return-void
.end method
