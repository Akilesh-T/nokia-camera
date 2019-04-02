.class public Lcom/android/camera/VideoUI;
.super Ljava/lang/Object;
.source "VideoUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoUI$ZoomChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final UNSET:F


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private final mAnimationManager:Lcom/android/camera/AnimationManager;

.field private mAspectRatio:F

.field private mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final mController:Lcom/android/camera/VideoController;

.field private mCountdownView:Lcom/android/camera/ui/CountDownView;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private mLabelsLinearLayout:Landroid/widget/LinearLayout;

.field private mLiveBroadcastCount:Landroid/widget/TextView;

.field private mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

.field private mLiveBroadcastImageView:Lcom/android/camera/ui/RotateLayout;

.field private mLiveBroadcastOrientation:I

.field private mLiveBroadcastParent:Landroid/widget/FrameLayout;

.field private mLiveBroadcastReactions:Landroid/widget/RelativeLayout;

.field private final mModuleRoot:Landroid/view/View;

.field private final mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private final mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private mRecordingStarted:Z

.field private mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mReviewButton:Landroid/widget/ImageButton;

.field private mReviewButtonContainer:Lcom/android/camera/ui/RotateLayout;

.field private mReviewImage:Landroid/widget/ImageView;

.field private final mRootView:Landroid/view/View;

.field private mZoomMax:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "VideoUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/VideoUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoController;Landroid/view/View;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/VideoController;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/VideoUI;->mRecordingStarted:Z

    .line 78
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    .line 110
    new-instance v1, Lcom/android/camera/VideoUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoUI$1;-><init>(Lcom/android/camera/VideoUI;)V

    iput-object v1, p0, Lcom/android/camera/VideoUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 120
    iput-object p1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 121
    iput-object p2, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    .line 122
    iput-object p3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    .line 123
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 124
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iput-object v0, p0, Lcom/android/camera/VideoUI;->mModuleRoot:Landroid/view/View;

    .line 125
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04009c

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 128
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/VideoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 130
    invoke-direct {p0}, Lcom/android/camera/VideoUI;->initializeMiscControls()V

    .line 131
    invoke-direct {p0}, Lcom/android/camera/VideoUI;->initLiveBroadcast()V

    .line 132
    new-instance v1, Lcom/android/camera/AnimationManager;

    invoke-direct {v1}, Lcom/android/camera/AnimationManager;-><init>()V

    iput-object v1, p0, Lcom/android/camera/VideoUI;->mAnimationManager:Lcom/android/camera/AnimationManager;

    .line 133
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/VideoUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/VideoUI;)Lcom/android/camera/VideoController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/VideoUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mModuleRoot:Landroid/view/View;

    return-object v0
.end method

.method private initLiveBroadcast()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mLiveBroadcastParent:Landroid/widget/FrameLayout;

    .line 199
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

    .line 200
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mLiveBroadcastImageView:Lcom/android/camera/ui/RotateLayout;

    .line 201
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mLiveBroadcastCount:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 203
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 204
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mLiveBroadcastReactions:Landroid/widget/RelativeLayout;

    .line 206
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f01d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CountDownView;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    .line 207
    return-void
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0220

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mReviewImage:Landroid/widget/ImageView;

    .line 182
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0221

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mReviewButtonContainer:Lcom/android/camera/ui/RotateLayout;

    .line 183
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mReviewButton:Landroid/widget/ImageButton;

    .line 184
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/camera/VideoUI$2;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoUI$2;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    .line 194
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    .line 195
    return-void
.end method


# virtual methods
.method public cancelAnimations()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mAnimationManager:Lcom/android/camera/AnimationManager;

    invoke-virtual {v0}, Lcom/android/camera/AnimationManager;->cancelAnimations()V

    .line 165
    return-void
.end method

.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 490
    :cond_0
    return-void
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method public getPreviewScreenSize()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 386
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    return-object v0
.end method

.method public hidePassiveFocusIndicator()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    if-eqz v0, :cond_0

    .line 367
    sget-object v0, Lcom/android/camera/VideoUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "mFocusRing.stopFocusAnimations()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->stopFocusAnimations()V

    .line 370
    :cond_0
    return-void
.end method

.method public hideReviewControls()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToIntentCaptureLayout()V

    .line 316
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewButtonContainer:Lcom/android/camera/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 317
    return-void
.end method

.method public hideReviewImage()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 305
    return-void
.end method

.method public initializeZoom(Lcom/android/ex/camera2/portability/CameraSettings;Lcom/android/ex/camera2/portability/CameraCapabilities;Z)V
    .locals 9
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;
    .param p2, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p3, "useDualCam"    # Z

    .prologue
    const/4 v3, 0x0

    .line 320
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoUI;->mZoomMax:F

    .line 324
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget v1, p0, Lcom/android/camera/VideoUI;->mZoomMax:F

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v2

    new-instance v8, Lcom/android/camera/VideoUI$ZoomChangeListener;

    const/4 v4, 0x0

    invoke-direct {v8, p0, v4}, Lcom/android/camera/VideoUI$ZoomChangeListener;-><init>(Lcom/android/camera/VideoUI;Lcom/android/camera/VideoUI$1;)V

    move v4, p3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFIZZZZLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    .line 327
    return-void
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-nez v0, :cond_0

    .line 479
    const/4 v0, 0x0

    .line 481
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V
    .locals 0
    .param p1, "orientationManager"    # Lcom/android/camera/app/OrientationManager;
    .param p2, "deviceOrientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .prologue
    .line 395
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    .line 454
    return-void
.end method

.method public onPreviewFlipped()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->updateCameraOrientation()V

    .line 108
    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/view/View;IIIIIIII)V
    .locals 0
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
    .line 93
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->onPreviewUIReady()V

    .line 434
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->onPreviewUIDestroyed()V

    .line 439
    sget-object v0, Lcom/android/camera/VideoUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "surfaceTexture is destroyed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 440
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 445
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 449
    return-void
.end method

.method public resetPreviewOverlay()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->reset()V

    .line 140
    :cond_0
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 3
    .param p1, "ratio"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 213
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    move v0, p1

    .line 217
    .local v0, "aspectRatio":F
    :goto_1
    iget v1, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 218
    iput v0, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    .line 219
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    iget v2, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    invoke-interface {v1, v2}, Lcom/android/camera/VideoController;->updatePreviewAspectRatio(F)V

    goto :goto_0

    .line 216
    .end local v0    # "aspectRatio":F
    :cond_2
    div-float v0, v2, p1

    goto :goto_1
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 472
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/16 v0, 0xb4

    .line 399
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    if-ne p1, v0, :cond_3

    :goto_0
    invoke-virtual {v1, v0, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewButtonContainer:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewButtonContainer:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 402
    :cond_2
    return-void

    .line 399
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOrientationIndicator(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 171
    div-int/lit8 v0, p1, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method public setPreviewSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 143
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 144
    :cond_0
    sget-object v1, Lcom/android/camera/VideoUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Preview size should not be 0."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 148
    :cond_1
    if-le p1, p2, :cond_2

    .line 149
    int-to-float v1, p1

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 153
    .local v0, "aspectRatio":F
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoUI;->setAspectRatio(F)V

    goto :goto_0

    .line 151
    .end local v0    # "aspectRatio":F
    :cond_2
    int-to-float v1, p2

    int-to-float v2, p1

    div-float v0, v1, v2

    .restart local v0    # "aspectRatio":F
    goto :goto_1
.end method

.method public setRecordingTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    return-void
.end method

.method public setRecordingTimeTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 225
    return-void
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "zoomValue"    # F

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PreviewOverlay;->setZoom(F)V

    .line 333
    :cond_0
    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public showLiveBroadcastUI(Lcom/android/camera/livebroadcast/status/CommentsAdapter;ZI)V
    .locals 3
    .param p1, "adapter"    # Lcom/android/camera/livebroadcast/status/CommentsAdapter;
    .param p2, "broadcasting"    # Z
    .param p3, "orientation"    # I

    .prologue
    const/4 v2, 0x0

    .line 246
    iput p3, p0, Lcom/android/camera/VideoUI;->mLiveBroadcastOrientation:I

    .line 247
    if-eqz p2, :cond_5

    .line 248
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLiveBroadcastParent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLiveBroadcastParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLiveBroadcastImageView:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLiveBroadcastImageView:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p3, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p3, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 260
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_4

    .line 264
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewOverlay;->setForceToHide(Z)V

    .line 275
    :cond_4
    :goto_0
    return-void

    .line 267
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLiveBroadcastParent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    .line 268
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLiveBroadcastParent:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 269
    :cond_6
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_7

    .line 270
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 271
    :cond_7
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_4

    .line 272
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PreviewOverlay;->setForceToHide(Z)V

    goto :goto_0
.end method

.method public showPassiveFocusIndicator()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->startPassiveFocus()V

    .line 379
    :cond_0
    return-void
.end method

.method public showPreviewBorder(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 229
    return-void
.end method

.method public showRecordingUI(Z)V
    .locals 3
    .param p1, "recording"    # Z

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/android/camera/VideoUI;->mRecordingStarted:Z

    .line 233
    if-eqz p1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 237
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08028f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 243
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 240
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080290

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showReviewControls()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToIntentReviewLayout()V

    .line 310
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewButtonContainer:Lcom/android/camera/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 311
    return-void
.end method

.method public showReviewImage(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 294
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 295
    .local v0, "previewRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mReviewImage:Landroid/widget/ImageView;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 299
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    return-void
.end method

.method public startCountdown(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    .line 464
    :cond_0
    return-void
.end method

.method public updateLiveBroadcastStatus(ILjava/util/List;Ljava/util/List;I)V
    .locals 9
    .param p1, "viewCount"    # I
    .param p4, "totalComments"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/livebroadcast/status/Reactions;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/livebroadcast/status/Comment;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p2, "reactions":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/livebroadcast/status/Reactions;>;"
    .local p3, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/livebroadcast/status/Comment;>;"
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLiveBroadcastCount:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLiveBroadcastCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p4}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLiveBroadcastReactions:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 284
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/android/camera/livebroadcast/status/ReactionView;->LIMIT_NUMBER:I

    if-le v0, v1, :cond_2

    sget v8, Lcom/android/camera/livebroadcast/status/ReactionView;->LIMIT_NUMBER:I

    .line 285
    .local v8, "size":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_3

    .line 286
    new-instance v0, Lcom/android/camera/livebroadcast/status/ReactionView;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoUI;->mLiveBroadcastReactions:Landroid/widget/RelativeLayout;

    .line 287
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/livebroadcast/status/Reactions;

    invoke-virtual {v3}, Lcom/android/camera/livebroadcast/status/Reactions;->getThumbnailURL()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/livebroadcast/status/Reactions;

    invoke-virtual {v4}, Lcom/android/camera/livebroadcast/status/Reactions;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 288
    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/VideoUI;->mLiveBroadcastOrientation:I

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/livebroadcast/status/ReactionView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Landroid/os/Looper;I)V

    .line 285
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 284
    .end local v7    # "i":I
    .end local v8    # "size":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_0

    .line 291
    :cond_3
    return-void
.end method

.method public updateOnScreenIndicators(Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 0
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 210
    return-void
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method
