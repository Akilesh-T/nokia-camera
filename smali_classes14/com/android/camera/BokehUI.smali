.class public Lcom/android/camera/BokehUI;
.super Ljava/lang/Object;
.source "BokehUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener;
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/BokehUI$ZoomChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final UNSET:F


# instance fields
.field private final ENABLE_ZOOM:Z

.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private mAspectRatio:F

.field private final mControlBar:Landroid/widget/LinearLayout;

.field private final mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

.field private final mControlSeekBar:Landroid/widget/SeekBar;

.field private final mController:Lcom/android/camera/BokehController;

.field private final mCountdownView:Lcom/android/camera/ui/CountDownView;

.field private final mFaceView:Lcom/android/camera/ui/FaceView;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private mHintToast:Lcom/android/camera/ui/RotateTextToast;

.field private final mModuleRoot:Landroid/view/View;

.field private mOrientation:I

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

    const-string v1, "BokehUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/BokehUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/BokehController;Landroid/view/View;I)V
    .locals 4
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/BokehController;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "level"    # I

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v1, p0, Lcom/android/camera/BokehUI;->ENABLE_ZOOM:Z

    .line 71
    iput v1, p0, Lcom/android/camera/BokehUI;->mPreviewWidth:I

    .line 72
    iput v1, p0, Lcom/android/camera/BokehUI;->mPreviewHeight:I

    .line 73
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/BokehUI;->mAspectRatio:F

    .line 75
    new-instance v1, Lcom/android/camera/BokehUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/BokehUI$1;-><init>(Lcom/android/camera/BokehUI;)V

    iput-object v1, p0, Lcom/android/camera/BokehUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 170
    iput-object p1, p0, Lcom/android/camera/BokehUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 171
    iput-object p2, p0, Lcom/android/camera/BokehUI;->mController:Lcom/android/camera/BokehController;

    .line 172
    iput-object p3, p0, Lcom/android/camera/BokehUI;->mRootView:Landroid/view/View;

    .line 174
    iget-object v1, p0, Lcom/android/camera/BokehUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 175
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/camera/BokehUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040024

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 177
    iput-object v0, p0, Lcom/android/camera/BokehUI;->mModuleRoot:Landroid/view/View;

    .line 178
    invoke-direct {p0}, Lcom/android/camera/BokehUI;->initIndicators()V

    .line 179
    iget-object v1, p0, Lcom/android/camera/BokehUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/BokehUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 180
    iget-object v1, p0, Lcom/android/camera/BokehUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/BokehUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 181
    iget-object v1, p0, Lcom/android/camera/BokehUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/CountDownView;

    iput-object v1, p0, Lcom/android/camera/BokehUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    .line 182
    iget-object v1, p0, Lcom/android/camera/BokehUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/camera/BokehUI;->mControlBar:Landroid/widget/LinearLayout;

    .line 183
    iget-object v1, p0, Lcom/android/camera/BokehUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/android/camera/BokehUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    .line 184
    iget-object v1, p0, Lcom/android/camera/BokehUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/camera/BokehUI;->mControlSeekBar:Landroid/widget/SeekBar;

    .line 185
    invoke-direct {p0, p4}, Lcom/android/camera/BokehUI;->initBokehControl(I)V

    .line 187
    invoke-static {}, Lcom/android/camera/debug/DebugPropertyHelper;->showCaptureDebugUI()Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BokehUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FaceView;

    iput-object v1, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/BokehUI;)Lcom/android/camera/BokehController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehUI;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mController:Lcom/android/camera/BokehController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/BokehUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehUI;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mModuleRoot:Landroid/view/View;

    return-object v0
.end method

.method private initBokehControl(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/camera/BokehUI;->mControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 258
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/BokehUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->getBottomBarHeightByDUT()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 259
    iget-object v1, p0, Lcom/android/camera/BokehUI;->mControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object v1, p0, Lcom/android/camera/BokehUI;->mControlSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 262
    iget-object v1, p0, Lcom/android/camera/BokehUI;->mControlSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 263
    iget-object v1, p0, Lcom/android/camera/BokehUI;->mControlSeekBar:Landroid/widget/SeekBar;

    const/4 v2, -0x1

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 264
    iget-object v1, p0, Lcom/android/camera/BokehUI;->mControlSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/camera/BokehUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/BokehUI$2;-><init>(Lcom/android/camera/BokehUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 281
    return-void
.end method

.method private initIndicators()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method private showBokehHintToast()V
    .locals 4

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->removeExistToast()V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/BokehUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    .line 438
    :cond_0
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/BokehUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/BokehUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f080149

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/BokehUI;->mOrientation:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/camera/BokehUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    .line 439
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 440
    return-void
.end method


# virtual methods
.method public animateFlash()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mController:Lcom/android/camera/BokehController;

    invoke-interface {v0}, Lcom/android/camera/BokehController;->startPreCaptureAnimation()V

    .line 317
    return-void
.end method

.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 159
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 388
    :cond_0
    return-void
.end method

.method public getFaceView()Lcom/android/camera/ui/FaceView;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public initializeFirstTime()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/camera/BokehUI;->showBokehHintToast()V

    .line 290
    return-void
.end method

.method public initializeSecondTime(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 0
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 294
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/BokehUI;->initializeZoom(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 295
    invoke-direct {p0}, Lcom/android/camera/BokehUI;->showBokehHintToast()V

    .line 296
    return-void
.end method

.method public initializeZoom(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 0
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 300
    return-void
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mController:Lcom/android/camera/BokehController;

    invoke-interface {v0}, Lcom/android/camera/BokehController;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    const/4 v0, 0x1

    .line 324
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
    .line 284
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/BokehUI;->initializeZoom(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 285
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-static {p1}, Lcom/android/camera/face/FaceDataCreator;->create([Landroid/hardware/Camera$Face;)[Lcom/android/camera/face/FaceData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/face/FaceData;)V

    .line 425
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->removeExistToast()V

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/BokehUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    .line 381
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/BokehUI;->mAspectRatio:F

    .line 382
    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 167
    return-void
.end method

.method public onPreviewFlipped()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mController:Lcom/android/camera/BokehController;

    invoke-interface {v0}, Lcom/android/camera/BokehController;->updateCameraOrientation()V

    .line 129
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
    .line 108
    sub-int v1, p4, p2

    .line 109
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 110
    .local v0, "height":I
    iget v2, p0, Lcom/android/camera/BokehUI;->mPreviewWidth:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/camera/BokehUI;->mPreviewHeight:I

    if-eq v2, v0, :cond_1

    .line 111
    :cond_0
    iput v1, p0, Lcom/android/camera/BokehUI;->mPreviewWidth:I

    .line 112
    iput v0, p0, Lcom/android/camera/BokehUI;->mPreviewHeight:I

    .line 114
    :cond_1
    return-void
.end method

.method public onStartFaceDetection(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 405
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 407
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 408
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 410
    :cond_0
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 415
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 418
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mController:Lcom/android/camera/BokehController;

    invoke-interface {v0}, Lcom/android/camera/BokehController;->onPreviewUIReady()V

    .line 233
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mController:Lcom/android/camera/BokehController;

    invoke-interface {v0}, Lcom/android/camera/BokehController;->onPreviewUIDestroyed()V

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 238
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 248
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 394
    :cond_0
    return-void
.end method

.method public resetPreviewOverlay()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->reset()V

    .line 198
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 400
    :cond_0
    return-void
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 145
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 332
    :cond_0
    return-void
.end method

.method public setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 212
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 336
    iput p1, p0, Lcom/android/camera/BokehUI;->mOrientation:I

    .line 337
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/BokehUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/BokehUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateTextToast;->setOrientation(I)V

    .line 340
    :cond_2
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 370
    return-void
.end method

.method public setViewVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mControlBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 431
    :cond_0
    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->removeExistToast()V

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/BokehUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    .line 448
    :cond_0
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/BokehUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/BokehUI;->mOrientation:I

    invoke-direct {v0, v1, p1, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 449
    return-void
.end method

.method public startCountdown(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    .line 138
    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 3
    .param p1, "aspectRatio"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 215
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 216
    sget-object v0, Lcom/android/camera/BokehUI;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    .line 220
    div-float p1, v1, p1

    .line 223
    :cond_2
    iget v0, p0, Lcom/android/camera/BokehUI;->mAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 224
    iput p1, p0, Lcom/android/camera/BokehUI;->mAspectRatio:F

    .line 226
    iget-object v0, p0, Lcom/android/camera/BokehUI;->mController:Lcom/android/camera/BokehController;

    iget v1, p0, Lcom/android/camera/BokehUI;->mAspectRatio:F

    invoke-interface {v0, v1}, Lcom/android/camera/BokehController;->updatePreviewAspectRatio(F)V

    goto :goto_0
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method
