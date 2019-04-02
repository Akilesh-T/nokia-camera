.class public Lcom/android/camera/BeautyUI;
.super Ljava/lang/Object;
.source "BeautyUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener;
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/BeautyUI$ZoomChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final UNSET:F


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private mAspectRatio:F

.field private final mControlBar:Landroid/widget/LinearLayout;

.field private final mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

.field private final mControlSeekBar:Landroid/widget/SeekBar;

.field private final mController:Lcom/android/camera/BeautyController;

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
    .line 53
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BeautyUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/BeautyUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/BeautyController;Landroid/view/View;I)V
    .locals 4
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/BeautyController;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "level"    # I

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v1, p0, Lcom/android/camera/BeautyUI;->mPreviewWidth:I

    .line 71
    iput v1, p0, Lcom/android/camera/BeautyUI;->mPreviewHeight:I

    .line 72
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/BeautyUI;->mAspectRatio:F

    .line 74
    new-instance v1, Lcom/android/camera/BeautyUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/BeautyUI$1;-><init>(Lcom/android/camera/BeautyUI;)V

    iput-object v1, p0, Lcom/android/camera/BeautyUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 167
    iput-object p1, p0, Lcom/android/camera/BeautyUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 168
    iput-object p2, p0, Lcom/android/camera/BeautyUI;->mController:Lcom/android/camera/BeautyController;

    .line 169
    iput-object p3, p0, Lcom/android/camera/BeautyUI;->mRootView:Landroid/view/View;

    .line 171
    iget-object v1, p0, Lcom/android/camera/BeautyUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 172
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/camera/BeautyUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040022

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 174
    iput-object v0, p0, Lcom/android/camera/BeautyUI;->mModuleRoot:Landroid/view/View;

    .line 175
    invoke-direct {p0}, Lcom/android/camera/BeautyUI;->initIndicators()V

    .line 176
    iget-object v1, p0, Lcom/android/camera/BeautyUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/BeautyUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 177
    iget-object v1, p0, Lcom/android/camera/BeautyUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/BeautyUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 178
    iget-object v1, p0, Lcom/android/camera/BeautyUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/CountDownView;

    iput-object v1, p0, Lcom/android/camera/BeautyUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    .line 179
    iget-object v1, p0, Lcom/android/camera/BeautyUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/camera/BeautyUI;->mControlBar:Landroid/widget/LinearLayout;

    .line 180
    iget-object v1, p0, Lcom/android/camera/BeautyUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/android/camera/BeautyUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    .line 181
    iget-object v1, p0, Lcom/android/camera/BeautyUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/camera/BeautyUI;->mControlSeekBar:Landroid/widget/SeekBar;

    .line 182
    invoke-direct {p0, p4}, Lcom/android/camera/BeautyUI;->initBeautyControl(I)V

    .line 184
    invoke-static {}, Lcom/android/camera/debug/DebugPropertyHelper;->showCaptureDebugUI()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BeautyUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FaceView;

    iput-object v1, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/BeautyUI;)Lcom/android/camera/BeautyController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyUI;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mController:Lcom/android/camera/BeautyController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/BeautyUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyUI;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mModuleRoot:Landroid/view/View;

    return-object v0
.end method

.method private initBeautyControl(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/camera/BeautyUI;->mControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 255
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/BeautyUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->getBottomBarHeightByDUT()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 256
    iget-object v1, p0, Lcom/android/camera/BeautyUI;->mControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    iget-object v1, p0, Lcom/android/camera/BeautyUI;->mControlSeekBar:Landroid/widget/SeekBar;

    sget v2, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_LEVEL:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 259
    iget-object v1, p0, Lcom/android/camera/BeautyUI;->mControlSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 260
    iget-object v1, p0, Lcom/android/camera/BeautyUI;->mControlSeekBar:Landroid/widget/SeekBar;

    const/4 v2, -0x1

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 261
    iget-object v1, p0, Lcom/android/camera/BeautyUI;->mControlSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/camera/BeautyUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/BeautyUI$2;-><init>(Lcom/android/camera/BeautyUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 278
    return-void
.end method

.method private initIndicators()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method


# virtual methods
.method public animateFlash()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mController:Lcom/android/camera/BeautyController;

    invoke-interface {v0}, Lcom/android/camera/BeautyController;->startPreCaptureAnimation()V

    .line 311
    return-void
.end method

.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 156
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 376
    :cond_0
    return-void
.end method

.method public getFaceView()Lcom/android/camera/ui/FaceView;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public initializeFirstTime()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public initializeSecondTime(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 0
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/BeautyUI;->initializeZoom(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 293
    return-void
.end method

.method public initializeZoom(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 9
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    const/4 v4, 0x0

    .line 296
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 297
    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    iput v0, p0, Lcom/android/camera/BeautyUI;->mZoomMax:F

    .line 304
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget v1, p0, Lcom/android/camera/BeautyUI;->mZoomMax:F

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/BeautyUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 305
    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0900bc

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v8, Lcom/android/camera/BeautyUI$ZoomChangeListener;

    const/4 v5, 0x0

    invoke-direct {v8, p0, v5}, Lcom/android/camera/BeautyUI$ZoomChangeListener;-><init>(Lcom/android/camera/BeautyUI;Lcom/android/camera/BeautyUI$1;)V

    move v5, v4

    move v6, v4

    move v7, v4

    .line 304
    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFIZZZZLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mController:Lcom/android/camera/BeautyController;

    invoke-interface {v0}, Lcom/android/camera/BeautyController;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x1

    .line 318
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraOpened(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 1
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/BeautyUI;->initializeZoom(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/BeautyUI;->setViewVisible(I)V

    .line 283
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-static {p1}, Lcom/android/camera/face/FaceDataCreator;->create([Landroid/hardware/Camera$Face;)[Lcom/android/camera/face/FaceData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/face/FaceData;)V

    .line 413
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 369
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/BeautyUI;->mAspectRatio:F

    .line 370
    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 164
    return-void
.end method

.method public onPreviewFlipped()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mController:Lcom/android/camera/BeautyController;

    invoke-interface {v0}, Lcom/android/camera/BeautyController;->updateCameraOrientation()V

    .line 126
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
    .line 105
    sub-int v1, p4, p2

    .line 106
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 107
    .local v0, "height":I
    iget v2, p0, Lcom/android/camera/BeautyUI;->mPreviewWidth:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/camera/BeautyUI;->mPreviewHeight:I

    if-eq v2, v0, :cond_1

    .line 108
    :cond_0
    iput v1, p0, Lcom/android/camera/BeautyUI;->mPreviewWidth:I

    .line 109
    iput v0, p0, Lcom/android/camera/BeautyUI;->mPreviewHeight:I

    .line 111
    :cond_1
    return-void
.end method

.method public onStartFaceDetection(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 393
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 395
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 396
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 398
    :cond_0
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 403
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 406
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mController:Lcom/android/camera/BeautyController;

    invoke-interface {v0}, Lcom/android/camera/BeautyController;->onPreviewUIReady()V

    .line 230
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mController:Lcom/android/camera/BeautyController;

    invoke-interface {v0}, Lcom/android/camera/BeautyController;->onPreviewUIDestroyed()V

    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 235
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 245
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 382
    :cond_0
    return-void
.end method

.method public resetPreviewOverlay()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->reset()V

    .line 195
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 388
    :cond_0
    return-void
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 142
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 326
    :cond_0
    return-void
.end method

.method public setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 209
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 332
    :cond_1
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 362
    return-void
.end method

.method public setViewVisible(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mControlBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 417
    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_BEAUTY_LEVEL_MODE:Ljava/lang/String;

    sget-object v1, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_BEAUTY_LEVEL_MODE:Ljava/lang/String;

    .line 419
    invoke-static {v1}, Lcom/android/camera/util/ProductConfigUtil;->getConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mControlBar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public startCountdown(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    .line 135
    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 3
    .param p1, "aspectRatio"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 212
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 213
    sget-object v0, Lcom/android/camera/BeautyUI;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    .line 217
    div-float p1, v1, p1

    .line 220
    :cond_2
    iget v0, p0, Lcom/android/camera/BeautyUI;->mAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 221
    iput p1, p0, Lcom/android/camera/BeautyUI;->mAspectRatio:F

    .line 223
    iget-object v0, p0, Lcom/android/camera/BeautyUI;->mController:Lcom/android/camera/BeautyController;

    iget v1, p0, Lcom/android/camera/BeautyUI;->mAspectRatio:F

    invoke-interface {v0, v1}, Lcom/android/camera/BeautyController;->updatePreviewAspectRatio(F)V

    goto :goto_0
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method
