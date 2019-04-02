.class public Lcom/android/camera/PIPVideoUI;
.super Ljava/lang/Object;
.source "PIPVideoUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener;
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PIPVideoUI$ZoomChangeListener;
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

.field private final mController:Lcom/android/camera/PIPVideoController;

.field private mCountdownView:Lcom/android/camera/ui/CountDownView;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private mLabelsLinearLayout:Landroid/widget/LinearLayout;

.field private mLiveBroadcastCount:Landroid/widget/TextView;

.field private mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

.field private mLiveBroadcastImageView:Lcom/android/camera/ui/RotateLayout;

.field private mLiveBroadcastOrientation:I

.field private mLiveBroadcastParent:Landroid/widget/FrameLayout;

.field private mLiveBroadcastReactions:Landroid/widget/RelativeLayout;

.field private mOrientation:I

.field private final mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private final mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private final mPreviewTouchListener:Landroid/view/View$OnTouchListener;

.field private mRecordingStarted:Z

.field private mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mReviewImage:Landroid/widget/ImageView;

.field private final mRootView:Landroid/view/View;

.field private mZoomMax:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PIPVideoUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/PIPVideoUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PIPVideoController;Landroid/view/View;I)V
    .locals 4
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/PIPVideoController;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "orientation"    # I

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/PIPVideoUI;->mRecordingStarted:Z

    .line 75
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/PIPVideoUI;->mAspectRatio:F

    .line 109
    new-instance v1, Lcom/android/camera/PIPVideoUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/PIPVideoUI$1;-><init>(Lcom/android/camera/PIPVideoUI;)V

    iput-object v1, p0, Lcom/android/camera/PIPVideoUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 128
    new-instance v1, Lcom/android/camera/PIPVideoUI$2;

    invoke-direct {v1, p0}, Lcom/android/camera/PIPVideoUI$2;-><init>(Lcom/android/camera/PIPVideoUI;)V

    iput-object v1, p0, Lcom/android/camera/PIPVideoUI;->mPreviewTouchListener:Landroid/view/View$OnTouchListener;

    .line 142
    iput-object p1, p0, Lcom/android/camera/PIPVideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 143
    iput-object p2, p0, Lcom/android/camera/PIPVideoUI;->mController:Lcom/android/camera/PIPVideoController;

    .line 144
    iput-object p3, p0, Lcom/android/camera/PIPVideoUI;->mRootView:Landroid/view/View;

    .line 145
    iget-object v1, p0, Lcom/android/camera/PIPVideoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 146
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/camera/PIPVideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04007a

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 149
    iget-object v1, p0, Lcom/android/camera/PIPVideoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/PIPVideoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 151
    invoke-direct {p0}, Lcom/android/camera/PIPVideoUI;->initializeMiscControls()V

    .line 152
    invoke-direct {p0}, Lcom/android/camera/PIPVideoUI;->initLiveBroadcast()V

    .line 153
    new-instance v1, Lcom/android/camera/AnimationManager;

    invoke-direct {v1}, Lcom/android/camera/AnimationManager;-><init>()V

    iput-object v1, p0, Lcom/android/camera/PIPVideoUI;->mAnimationManager:Lcom/android/camera/AnimationManager;

    .line 154
    iget-object v1, p0, Lcom/android/camera/PIPVideoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/PIPVideoUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 155
    iput p4, p0, Lcom/android/camera/PIPVideoUI;->mOrientation:I

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PIPVideoUI;)Lcom/android/camera/PIPVideoController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPVideoUI;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mController:Lcom/android/camera/PIPVideoController;

    return-object v0
.end method

.method private initLiveBroadcast()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/PIPVideoUI;->mLiveBroadcastParent:Landroid/widget/FrameLayout;

    .line 207
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/PIPVideoUI;->mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

    .line 208
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/PIPVideoUI;->mLiveBroadcastImageView:Lcom/android/camera/ui/RotateLayout;

    .line 209
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/PIPVideoUI;->mLiveBroadcastCount:Landroid/widget/TextView;

    .line 210
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/PIPVideoUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 211
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/android/camera/PIPVideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 212
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/PIPVideoUI;->mLiveBroadcastReactions:Landroid/widget/RelativeLayout;

    .line 214
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f01d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CountDownView;

    iput-object v0, p0, Lcom/android/camera/PIPVideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    .line 215
    return-void
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f01d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PIPVideoUI;->mReviewImage:Landroid/widget/ImageView;

    .line 198
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    .line 202
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/PIPVideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    .line 203
    return-void
.end method


# virtual methods
.method public cancelAnimations()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mAnimationManager:Lcom/android/camera/AnimationManager;

    invoke-virtual {v0}, Lcom/android/camera/AnimationManager;->cancelAnimations()V

    .line 181
    return-void
.end method

.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 527
    :cond_0
    return-void
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method public getPreviewScreenSize()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 372
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/PIPVideoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/PIPVideoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mPreviewTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public hidePassiveFocusIndicator()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    if-eqz v0, :cond_0

    .line 353
    sget-object v0, Lcom/android/camera/PIPVideoUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "mFocusRing.stopFocusAnimations()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->stopFocusAnimations()V

    .line 356
    :cond_0
    return-void
.end method

.method public hideReviewControls()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToIntentCaptureLayout()V

    .line 310
    return-void
.end method

.method public hideReviewImage()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mReviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mReviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 302
    return-void
.end method

.method public initializeZoom(Lcom/android/ex/camera2/portability/CameraSettings;Lcom/android/ex/camera2/portability/CameraCapabilities;)V
    .locals 5
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;
    .param p2, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;

    .prologue
    .line 313
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    iput v0, p0, Lcom/android/camera/PIPVideoUI;->mZoomMax:F

    .line 317
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget v1, p0, Lcom/android/camera/PIPVideoUI;->mZoomMax:F

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v2

    new-instance v3, Lcom/android/camera/PIPVideoUI$ZoomChangeListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/camera/PIPVideoUI$ZoomChangeListener;-><init>(Lcom/android/camera/PIPVideoUI;Lcom/android/camera/PIPVideoUI$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    .line 319
    return-void
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-nez v0, :cond_0

    .line 516
    const/4 v0, 0x0

    .line 518
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public lockZoom()V
    .locals 4

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    .line 471
    :cond_0
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 386
    return-void
.end method

.method public onOrientationChanged(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V
    .locals 0
    .param p1, "orientationManager"    # Lcom/android/camera/app/OrientationManager;
    .param p2, "deviceOrientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .prologue
    .line 381
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PIPVideoUI;->mAspectRatio:F

    .line 432
    return-void
.end method

.method public onPreviewFlipped()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mController:Lcom/android/camera/PIPVideoController;

    invoke-interface {v0}, Lcom/android/camera/PIPVideoController;->updateCameraOrientation()V

    .line 107
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
    .line 92
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mController:Lcom/android/camera/PIPVideoController;

    invoke-interface {v0}, Lcom/android/camera/PIPVideoController;->onPreviewUIReady()V

    .line 412
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mController:Lcom/android/camera/PIPVideoController;

    invoke-interface {v0}, Lcom/android/camera/PIPVideoController;->onPreviewUIDestroyed()V

    .line 417
    sget-object v0, Lcom/android/camera/PIPVideoUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "surfaceTexture is destroyed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 423
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 427
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 3
    .param p1, "ratio"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 221
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    move v0, p1

    .line 225
    .local v0, "aspectRatio":F
    :goto_1
    iget v1, p0, Lcom/android/camera/PIPVideoUI;->mAspectRatio:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 226
    iput v0, p0, Lcom/android/camera/PIPVideoUI;->mAspectRatio:F

    .line 227
    iget-object v1, p0, Lcom/android/camera/PIPVideoUI;->mController:Lcom/android/camera/PIPVideoController;

    iget v2, p0, Lcom/android/camera/PIPVideoUI;->mAspectRatio:F

    invoke-interface {v1, v2}, Lcom/android/camera/PIPVideoController;->updatePreviewAspectRatio(F)V

    goto :goto_0

    .line 224
    .end local v0    # "aspectRatio":F
    :cond_2
    div-float v0, v2, p1

    goto :goto_1
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 509
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/16 v0, 0xb4

    .line 462
    iput p1, p0, Lcom/android/camera/PIPVideoUI;->mOrientation:I

    .line 463
    iget-object v1, p0, Lcom/android/camera/PIPVideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PIPVideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    if-ne p1, v0, :cond_2

    :goto_0
    invoke-virtual {v1, v0, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 465
    :cond_1
    return-void

    .line 463
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOrientationIndicator(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 187
    div-int/lit8 v0, p1, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method public setPreviewSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 159
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 160
    :cond_0
    sget-object v1, Lcom/android/camera/PIPVideoUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Preview size should not be 0."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    :goto_0
    return-void

    .line 164
    :cond_1
    if-le p1, p2, :cond_2

    .line 165
    int-to-float v1, p1

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 169
    .local v0, "aspectRatio":F
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/PIPVideoUI;->setAspectRatio(F)V

    goto :goto_0

    .line 167
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
    .line 322
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    return-void
.end method

.method public setRecordingTimeTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 233
    return-void
.end method

.method public setViewVisible(I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    .line 475
    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public showLiveBroadcastUI(Lcom/android/camera/livebroadcast/status/CommentsAdapter;ZI)V
    .locals 2
    .param p1, "adapter"    # Lcom/android/camera/livebroadcast/status/CommentsAdapter;
    .param p2, "broadcasting"    # Z
    .param p3, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 254
    iput p3, p0, Lcom/android/camera/PIPVideoUI;->mLiveBroadcastOrientation:I

    .line 255
    if-eqz p2, :cond_4

    .line 256
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mLiveBroadcastParent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mLiveBroadcastParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mLiveBroadcastImageView:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mLiveBroadcastImageView:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p3, v1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mLiveBroadcastIcon:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p3, v1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 268
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 276
    :cond_3
    :goto_0
    return-void

    .line 271
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mLiveBroadcastParent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    .line 272
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mLiveBroadcastParent:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 273
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0
.end method

.method public showPassiveFocusIndicator()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->startPassiveFocus()V

    .line 365
    :cond_0
    return-void
.end method

.method public showPreviewBorder(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 237
    return-void
.end method

.method public showRecordingUI(Z)V
    .locals 3
    .param p1, "recording"    # Z

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/android/camera/PIPVideoUI;->mRecordingStarted:Z

    .line 241
    if-eqz p1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/PIPVideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 245
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08028f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 251
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/PIPVideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 248
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080290

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showRecordingUI(ZZI)V
    .locals 3
    .param p1, "recording"    # Z
    .param p2, "broadcasting"    # Z
    .param p3, "orientation"    # I

    .prologue
    .line 435
    iput-boolean p1, p0, Lcom/android/camera/PIPVideoUI;->mRecordingStarted:Z

    .line 436
    if-eqz p1, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/PIPVideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 440
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08028f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 459
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/PIPVideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 451
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080290

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 450
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showReviewControls()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToIntentReviewLayout()V

    .line 306
    return-void
.end method

.method public showReviewImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 296
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mReviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    return-void
.end method

.method public startCountdown(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    .line 501
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
    .line 279
    .local p2, "reactions":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/livebroadcast/status/Reactions;>;"
    .local p3, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/livebroadcast/status/Comment;>;"
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mLiveBroadcastCount:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mLiveBroadcastCount:Landroid/widget/TextView;

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

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mCommentsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p4}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mLiveBroadcastReactions:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 285
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/android/camera/livebroadcast/status/ReactionView;->LIMIT_NUMBER:I

    if-le v0, v1, :cond_2

    sget v8, Lcom/android/camera/livebroadcast/status/ReactionView;->LIMIT_NUMBER:I

    .line 286
    .local v8, "size":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_3

    .line 287
    new-instance v0, Lcom/android/camera/livebroadcast/status/ReactionView;

    iget-object v1, p0, Lcom/android/camera/PIPVideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PIPVideoUI;->mLiveBroadcastReactions:Landroid/widget/RelativeLayout;

    .line 288
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

    iget-object v5, p0, Lcom/android/camera/PIPVideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 289
    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/PIPVideoUI;->mLiveBroadcastOrientation:I

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/livebroadcast/status/ReactionView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Landroid/os/Looper;I)V

    .line 286
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 285
    .end local v7    # "i":I
    .end local v8    # "size":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_0

    .line 292
    :cond_3
    return-void
.end method

.method public updateOnScreenIndicators(Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 0
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 218
    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 3
    .param p1, "aspectRatio"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 478
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 479
    sget-object v0, Lcom/android/camera/PIPVideoUI;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    .line 483
    div-float p1, v1, p1

    .line 486
    :cond_2
    iget v0, p0, Lcom/android/camera/PIPVideoUI;->mAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 487
    iput p1, p0, Lcom/android/camera/PIPVideoUI;->mAspectRatio:F

    .line 489
    iget-object v0, p0, Lcom/android/camera/PIPVideoUI;->mController:Lcom/android/camera/PIPVideoController;

    iget v1, p0, Lcom/android/camera/PIPVideoUI;->mAspectRatio:F

    invoke-interface {v0, v1}, Lcom/android/camera/PIPVideoController;->updatePreviewAspectRatio(F)V

    goto :goto_0
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method
