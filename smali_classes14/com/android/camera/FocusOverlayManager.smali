.class public Lcom/android/camera/FocusOverlayManager;
.super Ljava/lang/Object;
.source "FocusOverlayManager.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/app/MotionManager$MotionListener;
.implements Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;
.implements Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;
.implements Lcom/android/camera/ui/FaceView$OnFaceChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FocusOverlayManager$MainHandler;,
        Lcom/android/camera/FocusOverlayManager$Listener;
    }
.end annotation


# static fields
.field public static final AE_REGION_BOX:F

.field public static final AF_REGION_BOX:F

.field private static final RESET_TOUCH_AFAE_DELAY_MILLIS:I = 0x1388

.field private static final RESET_TOUCH_FOCUS:I

.field private static final RESET_TOUCH_FOCUS_DELAY_MILLIS:I

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mAeAwbLock:Z

.field private final mAppController:Lcom/android/camera/app/AppController;

.field private mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

.field private mCoordinateTransformer:Lcom/android/camera/ui/focus/CameraCoordinateTransformer;

.field private final mDefaultFocusModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayOrientation:I

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusLocked:Z

.field private mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mIsFirstPreview:Z

.field private mIsUseZSL:Z

.field private final mListener:Lcom/android/camera/FocusOverlayManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field private mMirror:Z

.field private mOverrideFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

.field private final mPreviewRect:Landroid/graphics/Rect;

.field private mPreviousMoving:Z

.field private final mSettingsManager:Lcom/android/camera/settings/SettingsManager;

.field private mState:I

.field private mTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

.field private mTouchExposureValue:I

.field private mTouchTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "FocusOverlayMgr"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/FocusOverlayManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 75
    invoke-static {}, Lcom/android/camera/one/Settings3A;->getFocusHoldMillis()I

    move-result v0

    sput v0, Lcom/android/camera/FocusOverlayManager;->RESET_TOUCH_FOCUS_DELAY_MILLIS:I

    .line 79
    invoke-static {}, Lcom/android/camera/one/Settings3A;->getAutoFocusRegionWidth()F

    move-result v0

    sput v0, Lcom/android/camera/FocusOverlayManager;->AF_REGION_BOX:F

    .line 80
    invoke-static {}, Lcom/android/camera/one/Settings3A;->getMeteringRegionWidth()F

    move-result v0

    sput v0, Lcom/android/camera/FocusOverlayManager;->AE_REGION_BOX:F

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Ljava/util/List;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/camera/ui/focus/FocusRing;)V
    .locals 2
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p3, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p4, "listener"    # Lcom/android/camera/FocusOverlayManager$Listener;
    .param p5, "mirror"    # Z
    .param p6, "looper"    # Landroid/os/Looper;
    .param p7, "focusRing"    # Lcom/android/camera/ui/focus/FocusRing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/app/AppController;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;",
            ">;",
            "Lcom/android/ex/camera2/portability/CameraCapabilities;",
            "Lcom/android/camera/FocusOverlayManager$Listener;",
            "Z",
            "Landroid/os/Looper;",
            "Lcom/android/camera/ui/focus/FocusRing;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "defaultFocusModes":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;>;"
    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 95
    iput v1, p0, Lcom/android/camera/FocusOverlayManager;->mTouchExposureValue:I

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    .line 114
    iput-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mIsUseZSL:Z

    .line 209
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mAppController:Lcom/android/camera/app/AppController;

    .line 210
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 211
    new-instance v0, Lcom/android/camera/FocusOverlayManager$MainHandler;

    invoke-direct {v0, p0, p6}, Lcom/android/camera/FocusOverlayManager$MainHandler;-><init>(Lcom/android/camera/FocusOverlayManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mDefaultFocusModes:Ljava/util/List;

    .line 213
    iput-object p4, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    .line 214
    iput-object p7, p0, Lcom/android/camera/FocusOverlayManager;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 215
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0, p0}, Lcom/android/camera/ui/focus/FocusRing;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 218
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/camera/FocusOverlayManager;->updateCapabilities(Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 219
    invoke-virtual {p0, p5}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 221
    iput-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusLocked:Z

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mIsFirstPreview:Z

    .line 223
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/FocusOverlayManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/FocusOverlayManager;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/FocusOverlayManager;)Lcom/android/camera/FocusOverlayManager$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/FocusOverlayManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    return-object v0
.end method

.method private autoFocus()V
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/FocusOverlayManager;->autoFocus(I)V

    .line 537
    return-void
.end method

.method private autoFocus(I)V
    .locals 2
    .param p1, "focusingState"    # I

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->autoFocus()V

    .line 527
    iput p1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 528
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 529
    return-void
.end method

.method private autoFocusAndCapture()V
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/FocusOverlayManager;->autoFocus(I)V

    .line 545
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 548
    sget-object v0, Lcom/android/camera/FocusOverlayManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 549
    iput v2, p0, Lcom/android/camera/FocusOverlayManager;->mTouchExposureValue:I

    .line 553
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 554
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 555
    iput v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 556
    iput-boolean v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusLocked:Z

    .line 557
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 558
    return-void
.end method

.method private capture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 561
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iput v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 563
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 565
    :cond_0
    return-void
.end method

.method private computeCameraRectFromPreviewCoordinates(III)Landroid/graphics/Rect;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "size"    # I

    .prologue
    .line 650
    div-int/lit8 v3, p3, 0x2

    sub-int v3, p1, v3

    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, p3

    invoke-static {v3, v4, v5}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v0

    .line 652
    .local v0, "left":I
    div-int/lit8 v3, p3, 0x2

    sub-int v3, p2, v3

    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, p3

    invoke-static {v3, v4, v5}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v2

    .line 655
    .local v2, "top":I
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v2

    add-int v5, v0, p3

    int-to-float v5, v5

    add-int v6, v2, p3

    int-to-float v6, v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 656
    .local v1, "rectF":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mCoordinateTransformer:Lcom/android/camera/ui/focus/CameraCoordinateTransformer;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;->toCameraSpace(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v3

    return-object v3
.end method

.method private getAERegionSizePx()I
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/android/camera/FocusOverlayManager;->AE_REGION_BOX:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getAFRegionSizePx()I
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/android/camera/FocusOverlayManager;->AF_REGION_BOX:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initializeFocusAreas(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    .line 425
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->getAFRegionSizePx()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/FocusOverlayManager;->computeCameraRectFromPreviewCoordinates(III)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 430
    return-void
.end method

.method private initializeMeteringAreas(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    .line 435
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->getAERegionSizePx()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/FocusOverlayManager;->computeCameraRectFromPreviewCoordinates(III)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 440
    return-void
.end method

.method private lockAeAwbIfNeeded()V
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    if-nez v0, :cond_0

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    .line 293
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 295
    :cond_0
    return-void
.end method

.method private needAutoFocusCall(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z
    .locals 1
    .param p1, "focusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .prologue
    .line 688
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->INFINITY:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->EXTENDED_DOF:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetCoordinateTransformer()V
    .locals 4

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    .line 281
    new-instance v0, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;

    iget-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mMirror:Z

    iget v2, p0, Lcom/android/camera/FocusOverlayManager;->mDisplayOrientation:I

    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    .line 282
    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;-><init>(ZILandroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mCoordinateTransformer:Lcom/android/camera/ui/focus/CameraCoordinateTransformer;

    .line 287
    :goto_0
    return-void

    .line 284
    :cond_0
    sget-object v0, Lcom/android/camera/FocusOverlayManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "The coordinate transformer could not be built because the preview rectdid not have a width and height"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unlockAeAwbIfNeeded()V
    .locals 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    .line 300
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 302
    :cond_0
    return-void
.end method


# virtual methods
.method public OnFaceChanged(Z)V
    .locals 1
    .param p1, "hasFace"    # Z

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_0

    .line 132
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviousMoving:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->isPassiveFocusRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->stopFocusAnimations()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviousMoving:Z

    goto :goto_0
.end method

.method public focusAndCapture(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V
    .locals 2
    .param p1, "currentFocusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/FocusOverlayManager;->needAutoFocusCall(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 333
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    goto :goto_0

    .line 334
    :cond_2
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 336
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    goto :goto_0

    .line 337
    :cond_4
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 339
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    goto :goto_0

    .line 340
    :cond_5
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_0

    .line 341
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mIsUseZSL:Z

    if-eqz v0, :cond_6

    .line 342
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    goto :goto_0

    .line 344
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->autoFocusAndCapture()V

    goto :goto_0
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    return v0
.end method

.method public getExposureValue()I
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mTouchExposureValue:I

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .locals 5
    .param p1, "currentFocusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .prologue
    .line 569
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mOverrideFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-eqz v2, :cond_0

    .line 570
    sget-object v2, Lcom/android/camera/FocusOverlayManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returning override focus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mOverrideFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 571
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mOverrideFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 615
    :goto_0
    return-object v2

    .line 573
    :cond_0
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    if-nez v2, :cond_1

    .line 574
    sget-object v2, Lcom/android/camera/FocusOverlayManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "no capabilities, returning default AUTO focus mode"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 575
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    goto :goto_0

    .line 578
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 579
    sget-object v2, Lcom/android/camera/FocusOverlayManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "in tap to focus, returning AUTO focus mode"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 581
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    iput-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 600
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 603
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 604
    sget-object v2, Lcom/android/camera/FocusOverlayManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "no supported focus mode, falling back to AUTO"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 605
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    iput-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 614
    :cond_3
    :goto_2
    sget-object v2, Lcom/android/camera/FocusOverlayManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFocusMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 615
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    goto :goto_0

    .line 583
    :cond_4
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_focusmode_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "focusSetting":Ljava/lang/String;
    sget-object v2, Lcom/android/camera/FocusOverlayManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stored focus setting for camera: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 587
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 588
    sget-object v2, Lcom/android/camera/FocusOverlayManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "focus mode resolved from setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 590
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-nez v2, :cond_2

    .line 591
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mDefaultFocusModes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 592
    .local v1, "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 593
    iput-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 594
    sget-object v2, Lcom/android/camera/FocusOverlayManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selected supported focus mode from default list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 606
    .end local v0    # "focusSetting":Ljava/lang/String;
    .end local v1    # "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    :cond_6
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 607
    sget-object v2, Lcom/android/camera/FocusOverlayManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "no supported focus mode, falling back to FIXED"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 608
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    iput-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    goto/16 :goto_2

    .line 610
    :cond_7
    sget-object v2, Lcom/android/camera/FocusOverlayManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no supported focus mode, falling back to current: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 611
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    goto/16 :goto_2
.end method

.method public getFocusState()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    return v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 664
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .prologue
    .line 668
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    return v0
.end method

.method public onAutoFocus(ZZ)V
    .locals 5
    .param p1, "focused"    # Z
    .param p2, "shutterButtonPressed"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 350
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 354
    if-eqz p1, :cond_1

    .line 355
    iput v3, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 359
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    .line 383
    :cond_0
    :goto_1
    return-void

    .line 357
    :cond_1
    iput v4, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    goto :goto_0

    .line 360
    :cond_2
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-ne v0, v2, :cond_5

    .line 364
    if-eqz p1, :cond_4

    .line 365
    iput v3, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 371
    :goto_2
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 372
    iput-boolean v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusLocked:Z

    .line 373
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/FocusOverlayManager;->RESET_TOUCH_FOCUS_DELAY_MILLIS:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 375
    :cond_3
    if-eqz p2, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->lockAeAwbIfNeeded()V

    goto :goto_1

    .line 367
    :cond_4
    iput v4, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    goto :goto_2

    .line 379
    :cond_5
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public onAutoFocusMoving(Z)V
    .locals 1
    .param p1, "moving"    # Z

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_2

    .line 399
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x1

    .line 401
    :cond_2
    :goto_1
    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviousMoving:Z

    if-nez v0, :cond_5

    .line 403
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->startPassiveFocus()V

    .line 404
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->centerFocusLocation()V

    .line 409
    :cond_3
    :goto_2
    iput-boolean p1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviousMoving:Z

    goto :goto_0

    .line 399
    :cond_4
    const/4 p1, 0x0

    goto :goto_1

    .line 405
    :cond_5
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->isPassiveFocusRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 406
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->stopFocusAnimations()V

    goto :goto_2
.end method

.method public onCameraReleased()V
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mIsFirstPreview:Z

    .line 510
    return-void
.end method

.method public onMoving()V
    .locals 2

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusLocked:Z

    if-eqz v0, :cond_0

    .line 515
    sget-object v0, Lcom/android/camera/FocusOverlayManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onMoving: Early focus unlock."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 516
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 518
    :cond_0
    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 266
    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/FocusOverlayManager;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 267
    return-void
.end method

.method public onPreviewStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 487
    iput v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 489
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    if-nez v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 492
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mIsFirstPreview:Z

    if-eqz v0, :cond_1

    .line 493
    iput-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mIsFirstPreview:Z

    .line 499
    :cond_1
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 503
    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 504
    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mTouchExposureValue:I

    .line 505
    return-void
.end method

.method public onShutterUp(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V
    .locals 2
    .param p1, "currentFocusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/FocusOverlayManager;->needAutoFocusCall(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 313
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 319
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->unlockAeAwbIfNeeded()V

    goto :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x0

    .line 443
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 450
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 452
    :cond_3
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_4

    .line 458
    invoke-direct {p0, p1, p2}, Lcom/android/camera/FocusOverlayManager;->initializeFocusAreas(II)V

    .line 461
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_5

    .line 462
    invoke-direct {p0, p1, p2}, Lcom/android/camera/FocusOverlayManager;->initializeMeteringAreas(II)V

    .line 465
    :cond_5
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->startActiveFocus()V

    .line 466
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/focus/FocusRing;->setFocusLocation(FF)V

    .line 469
    new-instance v0, Lcom/android/camera/ui/TouchCoordinate;

    int-to-float v1, p1

    int-to-float v2, p2

    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/TouchCoordinate;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/FocusOverlayManager;->mTouchTime:J

    .line 473
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->stopFaceDetection()V

    .line 476
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 477
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_6

    .line 478
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->autoFocus()V

    goto :goto_0

    .line 481
    :cond_6
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/android/camera/FocusOverlayManager;->RESET_TOUCH_FOCUS_DELAY_MILLIS:I

    int-to-long v2, v1

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onTouchExposureChange(F)V
    .locals 4
    .param p1, "offsetRatio"    # F

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    if-nez v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 149
    .local v0, "value":I
    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mTouchExposureValue:I

    if-eq v1, v0, :cond_0

    .line 150
    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mTouchExposureValue:I

    .line 151
    sget-object v1, Lcom/android/camera/FocusOverlayManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchExposureChange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/FocusOverlayManager;->mTouchExposureValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v1}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    goto :goto_0
.end method

.method public onTouchExposureEnd()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 158
    sget-object v0, Lcom/android/camera/FocusOverlayManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onTouchExposureEnd"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 161
    return-void
.end method

.method public onTouchExposureStart()V
    .locals 2

    .prologue
    .line 141
    sget-object v0, Lcom/android/camera/FocusOverlayManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onTouchExposureStart"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 143
    return-void
.end method

.method public overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V
    .locals 0
    .param p1, "focusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mOverrideFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 677
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 673
    return-void
.end method

.method public resetTouchFocus()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 631
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mTouchExposureValue:I

    .line 636
    iput-object v8, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    .line 637
    iput-object v8, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    .line 640
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 642
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    if-eqz v0, :cond_0

    .line 643
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    const v2, 0x3a83126f    # 0.001f

    .line 644
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/FocusOverlayManager;->mTouchTime:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 643
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/stats/UsageStatistics;->tapToFocus(Lcom/android/camera/ui/TouchCoordinate;Ljava/lang/Float;)V

    .line 645
    iput-object v8, p0, Lcom/android/camera/FocusOverlayManager;->mTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    goto :goto_0
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    .line 680
    iput-boolean p1, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    .line 681
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .param p1, "displayOrientation"    # I

    .prologue
    .line 275
    iput p1, p0, Lcom/android/camera/FocusOverlayManager;->mDisplayOrientation:I

    .line 276
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->resetCoordinateTransformer()V

    .line 277
    return-void
.end method

.method public setFaceView(Lcom/android/camera/ui/FaceView;)V
    .locals 0
    .param p1, "faceView"    # Lcom/android/camera/ui/FaceView;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 227
    return-void
.end method

.method public setIsUseZSL(Z)V
    .locals 0
    .param p1, "useZSL"    # Z

    .prologue
    .line 694
    iput-boolean p1, p0, Lcom/android/camera/FocusOverlayManager;->mIsUseZSL:Z

    .line 695
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/android/camera/FocusOverlayManager;->mMirror:Z

    .line 271
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->resetCoordinateTransformer()V

    .line 272
    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "previewRect"    # Landroid/graphics/Rect;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 258
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/focus/FocusRing;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 259
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->resetCoordinateTransformer()V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    .line 262
    :cond_0
    return-void
.end method

.method public updateCapabilities(Lcom/android/ex/camera2/portability/CameraCapabilities;)V
    .locals 4
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 234
    if-nez p1, :cond_1

    .line 252
    .end local p0    # "this":Lcom/android/camera/FocusOverlayManager;
    :cond_0
    :goto_0
    return-void

    .line 237
    .restart local p0    # "this":Lcom/android/camera/FocusOverlayManager;
    :cond_1
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 238
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    .line 239
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringAreaSupported:Z

    .line 240
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 241
    invoke-virtual {v0, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    .line 243
    iput v1, p0, Lcom/android/camera/FocusOverlayManager;->mTouchExposureValue:I

    .line 245
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    if-nez v0, :cond_4

    .line 247
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0, v2}, Lcom/android/camera/ui/focus/FocusRing;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 241
    goto :goto_1

    .line 249
    :cond_4
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v1}, Lcom/android/camera/FocusOverlayManager$Listener;->allowTouchExposure()Z

    move-result v1

    if-eqz v1, :cond_5

    .end local p0    # "this":Lcom/android/camera/FocusOverlayManager;
    :goto_2
    invoke-interface {v0, p0}, Lcom/android/camera/ui/focus/FocusRing;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    goto :goto_0

    .restart local p0    # "this":Lcom/android/camera/FocusOverlayManager;
    :cond_5
    move-object p0, v2

    goto :goto_2
.end method
