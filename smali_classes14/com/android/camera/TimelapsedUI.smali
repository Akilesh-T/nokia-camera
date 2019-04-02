.class public Lcom/android/camera/TimelapsedUI;
.super Ljava/lang/Object;
.source "TimelapsedUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/TimelapsedUI$ZoomChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final UNSET:F


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private final mAnimationManager:Lcom/android/camera/AnimationManager;

.field private mAspectRatio:F

.field private final mController:Lcom/android/camera/TimelapsedController;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private mLabelsLinearLayout:Landroid/widget/LinearLayout;

.field private final mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private final mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private mRecordingStarted:Z

.field private mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private final mRootView:Landroid/view/View;

.field private mZoomMax:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "TimelapsedUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/TimelapsedUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/TimelapsedController;Landroid/view/View;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/TimelapsedController;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/TimelapsedUI;->mRecordingStarted:Z

    .line 60
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/TimelapsedUI;->mAspectRatio:F

    .line 83
    new-instance v1, Lcom/android/camera/TimelapsedUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/TimelapsedUI$1;-><init>(Lcom/android/camera/TimelapsedUI;)V

    iput-object v1, p0, Lcom/android/camera/TimelapsedUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 93
    iput-object p1, p0, Lcom/android/camera/TimelapsedUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 94
    iput-object p2, p0, Lcom/android/camera/TimelapsedUI;->mController:Lcom/android/camera/TimelapsedController;

    .line 95
    iput-object p3, p0, Lcom/android/camera/TimelapsedUI;->mRootView:Landroid/view/View;

    .line 96
    iget-object v1, p0, Lcom/android/camera/TimelapsedUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 97
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/camera/TimelapsedUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040094

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 100
    iget-object v1, p0, Lcom/android/camera/TimelapsedUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/TimelapsedUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 102
    invoke-direct {p0}, Lcom/android/camera/TimelapsedUI;->initializeMiscControls()V

    .line 103
    new-instance v1, Lcom/android/camera/AnimationManager;

    invoke-direct {v1}, Lcom/android/camera/AnimationManager;-><init>()V

    iput-object v1, p0, Lcom/android/camera/TimelapsedUI;->mAnimationManager:Lcom/android/camera/AnimationManager;

    .line 104
    iget-object v1, p0, Lcom/android/camera/TimelapsedUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/TimelapsedUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/TimelapsedUI;)Lcom/android/camera/TimelapsedController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapsedUI;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mController:Lcom/android/camera/TimelapsedController;

    return-object v0
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/TimelapsedUI;->mRecordingTimeView:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/TimelapsedUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    .line 156
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/TimelapsedUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    .line 157
    return-void
.end method


# virtual methods
.method public cancelAnimations()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mAnimationManager:Lcom/android/camera/AnimationManager;

    invoke-virtual {v0}, Lcom/android/camera/AnimationManager;->cancelAnimations()V

    .line 136
    return-void
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method public getPreviewScreenSize()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 263
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/TimelapsedUI;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/TimelapsedUI;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method public hidePassiveFocusIndicator()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lcom/android/camera/TimelapsedUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "mFocusRing.stopFocusAnimations()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->stopFocusAnimations()V

    .line 247
    :cond_0
    return-void
.end method

.method public hideReviewControls()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToIntentCaptureLayout()V

    .line 201
    return-void
.end method

.method public initializeZoom(Lcom/android/ex/camera2/portability/CameraSettings;Lcom/android/ex/camera2/portability/CameraCapabilities;)V
    .locals 5
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;
    .param p2, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;

    .prologue
    .line 204
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    iput v0, p0, Lcom/android/camera/TimelapsedUI;->mZoomMax:F

    .line 208
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget v1, p0, Lcom/android/camera/TimelapsedUI;->mZoomMax:F

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v2

    new-instance v3, Lcom/android/camera/TimelapsedUI$ZoomChangeListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/camera/TimelapsedUI$ZoomChangeListener;-><init>(Lcom/android/camera/TimelapsedUI;Lcom/android/camera/TimelapsedUI$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    .line 210
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V
    .locals 0
    .param p1, "orientationManager"    # Lcom/android/camera/app/OrientationManager;
    .param p2, "deviceOrientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .prologue
    .line 272
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/TimelapsedUI;->mAspectRatio:F

    .line 323
    return-void
.end method

.method public onPreviewFlipped()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mController:Lcom/android/camera/TimelapsedController;

    invoke-interface {v0}, Lcom/android/camera/TimelapsedController;->updateCameraOrientation()V

    .line 81
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
    .line 66
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mController:Lcom/android/camera/TimelapsedController;

    invoke-interface {v0}, Lcom/android/camera/TimelapsedController;->onPreviewUIReady()V

    .line 303
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mController:Lcom/android/camera/TimelapsedController;

    invoke-interface {v0}, Lcom/android/camera/TimelapsedController;->onPreviewUIDestroyed()V

    .line 308
    sget-object v0, Lcom/android/camera/TimelapsedUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "surfaceTexture is destroyed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 314
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 318
    return-void
.end method

.method public resetPreviewOverlay()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->reset()V

    .line 111
    :cond_0
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 3
    .param p1, "ratio"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 163
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    move v0, p1

    .line 167
    .local v0, "aspectRatio":F
    :goto_1
    iget v1, p0, Lcom/android/camera/TimelapsedUI;->mAspectRatio:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 168
    iput v0, p0, Lcom/android/camera/TimelapsedUI;->mAspectRatio:F

    .line 169
    iget-object v1, p0, Lcom/android/camera/TimelapsedUI;->mController:Lcom/android/camera/TimelapsedController;

    iget v2, p0, Lcom/android/camera/TimelapsedUI;->mAspectRatio:F

    invoke-interface {v1, v2}, Lcom/android/camera/TimelapsedController;->updatePreviewAspectRatio(F)V

    goto :goto_0

    .line 166
    .end local v0    # "aspectRatio":F
    :cond_2
    div-float v0, v2, p1

    goto :goto_1
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/16 v0, 0xb4

    .line 276
    iget-object v1, p0, Lcom/android/camera/TimelapsedUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/TimelapsedUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 277
    :cond_0
    return-void

    .line 276
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOrientationIndicator(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 142
    div-int/lit8 v0, p1, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method public setPreviewSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 114
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 115
    :cond_0
    sget-object v1, Lcom/android/camera/TimelapsedUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Preview size should not be 0."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 119
    :cond_1
    if-le p1, p2, :cond_2

    .line 120
    int-to-float v1, p1

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 124
    .local v0, "aspectRatio":F
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/TimelapsedUI;->setAspectRatio(F)V

    goto :goto_0

    .line 122
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
    .line 213
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    return-void
.end method

.method public setRecordingTimeTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 175
    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public showPassiveFocusIndicator()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->startPassiveFocus()V

    .line 256
    :cond_0
    return-void
.end method

.method public showPreviewBorder(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 179
    return-void
.end method

.method public showRecordingUI(Z)V
    .locals 3
    .param p1, "recording"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/android/camera/TimelapsedUI;->mRecordingStarted:Z

    .line 183
    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mRecordingTimeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/TimelapsedUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 187
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08028f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 193
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/TimelapsedUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 190
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080290

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mRecordingTimeView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showReviewControls()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/camera/TimelapsedUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToIntentReviewLayout()V

    .line 197
    return-void
.end method

.method public updateOnScreenIndicators(Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 0
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 160
    return-void
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method
