.class public Lcom/android/camera/PhotoUI;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener;
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PhotoUI$ZoomChangeListener;,
        Lcom/android/camera/PhotoUI$DecodeImageForReview;,
        Lcom/android/camera/PhotoUI$DecodeTask;
    }
.end annotation


# static fields
.field private static final DOWN_SAMPLE_FACTOR:I = 0x4

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final UNSET:F


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private mAspectRatio:F

.field private final mController:Lcom/android/camera/PhotoController;

.field private mCountdownView:Lcom/android/camera/ui/CountDownView;

.field private mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

.field private mDialog:Landroid/app/Dialog;

.field private final mFaceView:Lcom/android/camera/ui/FaceView;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private mInitializeFirstTime:Z

.field private mIntentReviewImageView:Landroid/widget/ImageView;

.field private final mModuleRoot:Landroid/view/View;

.field private final mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOrientation:I

.field private mPreviewArea:Landroid/graphics/RectF;

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

    const-string v1, "PhotoUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/PhotoUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoController;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/PhotoController;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v2, p0, Lcom/android/camera/PhotoUI;->mDialog:Landroid/app/Dialog;

    .line 68
    iput-boolean v1, p0, Lcom/android/camera/PhotoUI;->mInitializeFirstTime:Z

    .line 72
    iput-object v2, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    .line 76
    iput v1, p0, Lcom/android/camera/PhotoUI;->mPreviewWidth:I

    .line 77
    iput v1, p0, Lcom/android/camera/PhotoUI;->mPreviewHeight:I

    .line 78
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    .line 82
    new-instance v1, Lcom/android/camera/PhotoUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoUI$1;-><init>(Lcom/android/camera/PhotoUI;)V

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 90
    new-instance v1, Lcom/android/camera/PhotoUI$2;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoUI$2;-><init>(Lcom/android/camera/PhotoUI;)V

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 228
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 229
    iput-object p2, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    .line 230
    iput-object p3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    .line 232
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 233
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mModuleRoot:Landroid/view/View;

    .line 234
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 235
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 236
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->initIndicators()V

    .line 240
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FaceView;

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 244
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PhotoUI;)Lcom/android/camera/PhotoController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/PhotoUI;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/PhotoUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mIntentReviewImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/PhotoUI;Lcom/android/camera/PhotoUI$DecodeImageForReview;)Lcom/android/camera/PhotoUI$DecodeImageForReview;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # Lcom/android/camera/PhotoUI$DecodeImageForReview;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/CountDownView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/PhotoUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # Lcom/android/camera/ui/CountDownView;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/PhotoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/PhotoUI;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/PhotoUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->initIntentReviewImageView()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/PhotoUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mModuleRoot:Landroid/view/View;

    return-object v0
.end method

.method private initIndicators()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method private initIntentReviewImageView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 253
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mIntentReviewImageView:Landroid/widget/ImageView;

    .line 254
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mIntentReviewImageView:Landroid/widget/ImageView;

    .line 256
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 257
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 258
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 259
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPreviewArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mPreviewArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 260
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mIntentReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    new-instance v2, Lcom/android/camera/PhotoUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$3;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->addPreviewAreaChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 274
    return-void
.end method


# virtual methods
.method public animateCapture([BIZ)V
    .locals 0
    .param p1, "jpegData"    # [B
    .param p2, "orientation"    # I
    .param p3, "mirror"    # Z

    .prologue
    .line 362
    return-void
.end method

.method public animateFlash()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->startPreCaptureAnimation()V

    .line 426
    return-void
.end method

.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 172
    :cond_0
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 517
    :cond_0
    return-void
.end method

.method public getFaceView()Lcom/android/camera/ui/FaceView;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideIntentReviewImageView()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mIntentReviewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mIntentReviewImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mIntentReviewImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 297
    :cond_0
    return-void
.end method

.method protected hidePostCaptureAlert()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI$DecodeImageForReview;->cancel(Z)Z

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->resumeFaceDetection()V

    .line 456
    return-void
.end method

.method public initializeFirstTime()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public initializeSecondTime(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;Z)V
    .locals 0
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;
    .param p3, "useDualCam"    # Z

    .prologue
    .line 394
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/PhotoUI;->initializeZoom(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;Z)V

    .line 398
    return-void
.end method

.method public initializeZoom(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;Z)V
    .locals 9
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;
    .param p3, "useDualCam"    # Z

    .prologue
    const/4 v3, 0x0

    .line 405
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 406
    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoUI;->mZoomMax:F

    .line 413
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget v1, p0, Lcom/android/camera/PhotoUI;->mZoomMax:F

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v2

    new-instance v8, Lcom/android/camera/PhotoUI$ZoomChangeListener;

    const/4 v4, 0x0

    invoke-direct {v8, p0, v4}, Lcom/android/camera/PhotoUI$ZoomChangeListener;-><init>(Lcom/android/camera/PhotoUI;Lcom/android/camera/PhotoUI$1;)V

    move v4, p3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFIZZZZLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method public isCountdownViewAvailable()Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIntentReviewImageViewReady()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mIntentReviewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadModuleLayout()V
    .locals 4

    .prologue
    .line 369
    iget-boolean v1, p0, Lcom/android/camera/PhotoUI;->mInitializeFirstTime:Z

    if-eqz v1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 370
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PhotoUI;->mInitializeFirstTime:Z

    .line 371
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 372
    .local v0, "asyncLayoutInflater":Landroid/support/v4/view/AsyncLayoutInflater;
    const v2, 0x7f040078

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mModuleRoot:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/camera/PhotoUI$4;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoUI$4;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 432
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v1}, Lcom/android/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v1}, Lcom/android/camera/PhotoController;->onCaptureCancelled()V

    .line 439
    :cond_0
    :goto_0
    return v0

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v1}, Lcom/android/camera/PhotoController;->isCameraIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraOpened(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;Z)V
    .locals 0
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;
    .param p3, "useDualCam"    # Z

    .prologue
    .line 355
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/PhotoUI;->initializeZoom(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;Z)V

    .line 356
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hidePostCaptureAlert()V

    .line 509
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hideIntentReviewImageView()V

    .line 511
    :cond_0
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-static {p1}, Lcom/android/camera/face/FaceDataCreator;->create([Landroid/hardware/Camera$Face;)[Lcom/android/camera/face/FaceData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/face/FaceData;)V

    .line 554
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 503
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    .line 504
    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mPreviewArea:Landroid/graphics/RectF;

    .line 177
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 183
    :cond_1
    return-void
.end method

.method public onPreviewFlipped()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->updateCameraOrientation()V

    .line 138
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
    .line 117
    sub-int v1, p4, p2

    .line 118
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 119
    .local v0, "height":I
    iget v2, p0, Lcom/android/camera/PhotoUI;->mPreviewWidth:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/camera/PhotoUI;->mPreviewHeight:I

    if-eq v2, v0, :cond_1

    .line 120
    :cond_0
    iput v1, p0, Lcom/android/camera/PhotoUI;->mPreviewWidth:I

    .line 121
    iput v0, p0, Lcom/android/camera/PhotoUI;->mPreviewHeight:I

    .line 123
    :cond_1
    return-void
.end method

.method public onStartFaceDetection(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 534
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 536
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 537
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 539
    :cond_0
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 544
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 547
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->onPreviewUIReady()V

    .line 333
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->onPreviewUIDestroyed()V

    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 338
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 348
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 523
    :cond_0
    return-void
.end method

.method public resetPreviewOverlay()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->reset()V

    .line 250
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 529
    :cond_0
    return-void
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    goto :goto_0
.end method

.method public setDisplayOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 462
    :cond_0
    return-void
.end method

.method public setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 312
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 187
    iput p1, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    .line 188
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 189
    :cond_0
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 493
    return-void
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "zoomValue"    # F

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PreviewOverlay;->setZoom(F)V

    .line 422
    :cond_0
    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method protected showCapturedImageForReview([BIZ)V
    .locals 2
    .param p1, "jpegData"    # [B
    .param p2, "orientation"    # I
    .param p3, "mirror"    # Z

    .prologue
    .line 444
    new-instance v0, Lcom/android/camera/PhotoUI$DecodeImageForReview;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/PhotoUI$DecodeImageForReview;-><init>(Lcom/android/camera/PhotoUI;[BIZ)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    .line 445
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI$DecodeImageForReview;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 447
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToIntentReviewLayout()V

    .line 448
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->pauseFaceDetection()V

    .line 449
    return-void
.end method

.method public showIntentReviewImageView()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mIntentReviewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mIntentReviewImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    :cond_0
    return-void
.end method

.method public startCountdown(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    goto :goto_0
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 3
    .param p1, "aspectRatio"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 315
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 316
    sget-object v0, Lcom/android/camera/PhotoUI;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    .line 320
    div-float p1, v1, p1

    .line 323
    :cond_2
    iget v0, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 324
    iput p1, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    .line 326
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    iget v1, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    invoke-interface {v0, v1}, Lcom/android/camera/PhotoController;->updatePreviewAspectRatio(F)V

    goto :goto_0
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method
