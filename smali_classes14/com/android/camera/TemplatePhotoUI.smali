.class public Lcom/android/camera/TemplatePhotoUI;
.super Ljava/lang/Object;
.source "TemplatePhotoUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener;
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/TemplatePhotoUI$ZoomChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final UNSET:F


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private mAspectRatio:F

.field private final mController:Lcom/android/camera/TemplatePhotoController;

.field private final mCountdownView:Lcom/android/camera/ui/CountDownView;

.field private final mFaceView:Lcom/android/camera/ui/FaceView;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private final mModuleRoot:Landroid/view/View;

.field private final mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mPreviewHeight:I

.field private final mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private mPreviewWidth:I

.field private final mRootView:Landroid/view/View;

.field private mZoomMax:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "TemplatePhotoUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/TemplatePhotoUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/TemplatePhotoController;Landroid/view/View;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/TemplatePhotoController;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v1, p0, Lcom/android/camera/TemplatePhotoUI;->mPreviewWidth:I

    .line 69
    iput v1, p0, Lcom/android/camera/TemplatePhotoUI;->mPreviewHeight:I

    .line 70
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/TemplatePhotoUI;->mAspectRatio:F

    .line 72
    new-instance v1, Lcom/android/camera/TemplatePhotoUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/TemplatePhotoUI$1;-><init>(Lcom/android/camera/TemplatePhotoUI;)V

    iput-object v1, p0, Lcom/android/camera/TemplatePhotoUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 162
    iput-object p1, p0, Lcom/android/camera/TemplatePhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 163
    iput-object p2, p0, Lcom/android/camera/TemplatePhotoUI;->mController:Lcom/android/camera/TemplatePhotoController;

    .line 164
    iput-object p3, p0, Lcom/android/camera/TemplatePhotoUI;->mRootView:Landroid/view/View;

    .line 166
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 167
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040092

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 169
    iput-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mModuleRoot:Landroid/view/View;

    .line 170
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoUI;->initIndicators()V

    .line 171
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/TemplatePhotoUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 172
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/TemplatePhotoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 173
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/CountDownView;

    iput-object v1, p0, Lcom/android/camera/TemplatePhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    .line 175
    invoke-static {}, Lcom/android/camera/debug/DebugPropertyHelper;->showCaptureDebugUI()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FaceView;

    iput-object v1, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/TemplatePhotoUI;)Lcom/android/camera/TemplatePhotoController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoUI;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mController:Lcom/android/camera/TemplatePhotoController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/TemplatePhotoUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoUI;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mModuleRoot:Landroid/view/View;

    return-object v0
.end method

.method private initIndicators()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method


# virtual methods
.method public animateFlash()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mController:Lcom/android/camera/TemplatePhotoController;

    invoke-interface {v0}, Lcom/android/camera/TemplatePhotoController;->startPreCaptureAnimation()V

    .line 271
    return-void
.end method

.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 151
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 335
    :cond_0
    return-void
.end method

.method public getFaceView()Lcom/android/camera/ui/FaceView;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public initializeFirstTime()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public initializeSecondTime(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 0
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/TemplatePhotoUI;->initializeZoom(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 254
    return-void
.end method

.method public initializeZoom(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 5
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 257
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 258
    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    iput v0, p0, Lcom/android/camera/TemplatePhotoUI;->mZoomMax:F

    .line 265
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget v1, p0, Lcom/android/camera/TemplatePhotoUI;->mZoomMax:F

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v2

    new-instance v3, Lcom/android/camera/TemplatePhotoUI$ZoomChangeListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/camera/TemplatePhotoUI$ZoomChangeListener;-><init>(Lcom/android/camera/TemplatePhotoUI;Lcom/android/camera/TemplatePhotoUI$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mController:Lcom/android/camera/TemplatePhotoController;

    invoke-interface {v0}, Lcom/android/camera/TemplatePhotoController;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraOpened(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 0
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 243
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/TemplatePhotoUI;->initializeZoom(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 244
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-static {p1}, Lcom/android/camera/face/FaceDataCreator;->create([Landroid/hardware/Camera$Face;)[Lcom/android/camera/face/FaceData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/face/FaceData;)V

    .line 372
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 328
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/TemplatePhotoUI;->mAspectRatio:F

    .line 329
    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 159
    return-void
.end method

.method public onPreviewFlipped()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mController:Lcom/android/camera/TemplatePhotoController;

    invoke-interface {v0}, Lcom/android/camera/TemplatePhotoController;->updateCameraOrientation()V

    .line 121
    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 100
    sub-int v1, p4, p2

    .line 101
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 102
    .local v0, "height":I
    iget v2, p0, Lcom/android/camera/TemplatePhotoUI;->mPreviewWidth:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/camera/TemplatePhotoUI;->mPreviewHeight:I

    if-eq v2, v0, :cond_1

    .line 103
    :cond_0
    iput v1, p0, Lcom/android/camera/TemplatePhotoUI;->mPreviewWidth:I

    .line 104
    iput v0, p0, Lcom/android/camera/TemplatePhotoUI;->mPreviewHeight:I

    .line 106
    :cond_1
    return-void
.end method

.method public onStartFaceDetection(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 352
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 354
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 355
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 357
    :cond_0
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 362
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 365
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mController:Lcom/android/camera/TemplatePhotoController;

    invoke-interface {v0}, Lcom/android/camera/TemplatePhotoController;->onPreviewUIReady()V

    .line 221
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mController:Lcom/android/camera/TemplatePhotoController;

    invoke-interface {v0}, Lcom/android/camera/TemplatePhotoController;->onPreviewUIDestroyed()V

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 226
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 236
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 341
    :cond_0
    return-void
.end method

.method public resetPreviewOverlay()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->reset()V

    .line 186
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 347
    :cond_0
    return-void
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 137
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 286
    :cond_0
    return-void
.end method

.method public setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 200
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 291
    :cond_0
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 321
    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public startCountdown(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    .line 130
    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 3
    .param p1, "aspectRatio"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 203
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 204
    sget-object v0, Lcom/android/camera/TemplatePhotoUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid aspect ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    .line 208
    div-float p1, v1, p1

    .line 211
    :cond_2
    iget v0, p0, Lcom/android/camera/TemplatePhotoUI;->mAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 212
    iput p1, p0, Lcom/android/camera/TemplatePhotoUI;->mAspectRatio:F

    .line 214
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI;->mController:Lcom/android/camera/TemplatePhotoController;

    iget v1, p0, Lcom/android/camera/TemplatePhotoUI;->mAspectRatio:F

    invoke-interface {v0, v1}, Lcom/android/camera/TemplatePhotoController;->updatePreviewAspectRatio(F)V

    goto :goto_0
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method
