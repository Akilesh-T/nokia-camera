.class public final Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;
.super Ljava/lang/Object;
.source "ResourceOpenedCameraImpl.java"

# interfaces
.implements Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mBurstFacade:Lcom/android/camera/burst/BurstFacade;

.field private final mCamera:Lcom/android/camera/one/OneCamera;

.field private final mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

.field private final mCameraId:Lcom/android/camera/device/CameraId;

.field private mMaxZoom:F

.field private final mOneCameraCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field private final mOneCameraProvider:Lcom/android/camera/app/OneCameraProvider;

.field private final mPictureSize:Lcom/android/camera/util/Size;

.field private final mResourceConstructed:Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ResOpenedCam"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/async/RefCountBase;Lcom/android/camera/app/OneCameraProvider;Lcom/android/camera/one/OneCamera;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 1
    .param p2, "oneCameraProvider"    # Lcom/android/camera/app/OneCameraProvider;
    .param p3, "camera"    # Lcom/android/camera/one/OneCamera;
    .param p4, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p5, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p6, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p7, "pictureSize"    # Lcom/android/camera/util/Size;
    .param p8, "burstFacade"    # Lcom/android/camera/burst/BurstFacade;
    .param p9, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;",
            "Lcom/android/camera/app/OneCameraProvider;",
            "Lcom/android/camera/one/OneCamera;",
            "Lcom/android/camera/device/CameraId;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/burst/BurstFacade;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    .line 93
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 94
    iput-object p2, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mOneCameraProvider:Lcom/android/camera/app/OneCameraProvider;

    .line 95
    iput-object p3, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 96
    iput-object p4, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mCameraId:Lcom/android/camera/device/CameraId;

    .line 97
    iput-object p5, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 98
    iput-object p6, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 99
    iput-object p7, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mPictureSize:Lcom/android/camera/util/Size;

    .line 100
    iput-object p8, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mBurstFacade:Lcom/android/camera/burst/BurstFacade;

    .line 101
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->getMaxZoom()F

    move-result v0

    iput v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mMaxZoom:F

    .line 102
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mZoomRatio:F

    .line 103
    iput-object p9, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mOneCameraCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    .line 104
    return-void
.end method

.method public static create(Lcom/android/camera/async/RefCountBase;Lcom/android/camera/app/OneCameraProvider;Lcom/android/camera/one/OneCamera;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/async/RefCountBase;
    .locals 10
    .param p1, "oneCameraProvider"    # Lcom/android/camera/app/OneCameraProvider;
    .param p2, "camera"    # Lcom/android/camera/one/OneCamera;
    .param p3, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p4, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p5, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p6, "pictureSize"    # Lcom/android/camera/util/Size;
    .param p7, "burstFacade"    # Lcom/android/camera/burst/BurstFacade;
    .param p8, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;",
            "Lcom/android/camera/app/OneCameraProvider;",
            "Lcom/android/camera/one/OneCamera;",
            "Lcom/android/camera/device/CameraId;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/burst/BurstFacade;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            ")",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    new-instance v0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;-><init>(Lcom/android/camera/async/RefCountBase;Lcom/android/camera/app/OneCameraProvider;Lcom/android/camera/one/OneCamera;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    .line 79
    .local v0, "resourceOpenedCamera":Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;
    new-instance v1, Lcom/android/camera/async/RefCountBase;

    invoke-direct {v1, v0}, Lcom/android/camera/async/RefCountBase;-><init>(Lcom/android/camera/async/SafeCloseable;)V

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    sget-object v0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mBurstFacade:Lcom/android/camera/burst/BurstFacade;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mBurstFacade:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->release()V

    .line 111
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0, v2}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->setBurstFacade(Lcom/android/camera/burst/BurstFacade;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 114
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v0, v2}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mOneCameraProvider:Lcom/android/camera/app/OneCameraProvider;

    iget-object v1, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mCameraId:Lcom/android/camera/device/CameraId;

    invoke-interface {v0, v1}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 116
    return-void
.end method

.method public getCamera()Lcom/android/camera/one/OneCamera;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object v0
.end method

.method public getCameraCharacteristics()Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method public getCameraFacing()Lcom/android/camera/one/OneCamera$Facing;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object v0
.end method

.method public getCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mCameraId:Lcom/android/camera/device/CameraId;

    return-object v0
.end method

.method public getCaptureSetting()Lcom/android/camera/one/OneCameraCaptureSetting;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mOneCameraCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    return-object v0
.end method

.method public getMaxZoom()F
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mMaxZoom:F

    return v0
.end method

.method public getPictureSize()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mPictureSize:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method public getZoomRatio()F
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mZoomRatio:F

    return v0
.end method

.method public setZoomRatio(F)V
    .locals 1
    .param p1, "zoomRatio"    # F

    .prologue
    .line 160
    iput p1, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mZoomRatio:F

    .line 161
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCamera;->setZoom(F)V

    .line 162
    return-void
.end method

.method public startPreview(Landroid/view/Surface;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V
    .locals 10
    .param p1, "previewSurface"    # Landroid/view/Surface;
    .param p2, "localPreviewLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p3, "captureReadyCallback"    # Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v7, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mBurstFacade:Lcom/android/camera/burst/BurstFacade;

    iget-object v8, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mOneCameraCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p2

    move-object v6, v2

    move-object v9, p3

    invoke-interface/range {v0 .. v9}, Lcom/android/camera/one/OneCamera;->startPreview(Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V

    .line 168
    return-void
.end method

.method public triggerFocusAndMeterAtPoint(Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceOpenedCameraImpl;->mCamera:Lcom/android/camera/one/OneCamera;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-interface {v0, v1, v2}, Lcom/android/camera/one/OneCamera;->triggerFocusAndMeterAtPoint(FF)V

    .line 173
    return-void
.end method
