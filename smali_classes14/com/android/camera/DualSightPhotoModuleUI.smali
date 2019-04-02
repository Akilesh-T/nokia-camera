.class public Lcom/android/camera/DualSightPhotoModuleUI;
.super Ljava/lang/Object;
.source "DualSightPhotoModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/one/OneCamera$FaceDetectionListener;
.implements Lcom/android/camera/ui/Rotatable;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field final COVER_ALPHA:F

.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private mAnimImg:Landroid/widget/ImageView;

.field private final mAppController:Lcom/android/camera/app/AppController;

.field private mBeautyLevel:I

.field private mBottomEditModeMask:Landroid/view/View;

.field private mControlBar:Landroid/widget/LinearLayout;

.field private mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

.field private mControlSeekBar:Landroid/widget/SeekBar;

.field private mConverter:Lcom/android/camera/face/Camera2FaceConverter;

.field private mCountdownView:Lcom/android/camera/ui/CountDownView;

.field private mCoverContainer:Landroid/view/View;

.field private mDownCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

.field private mDownCoverRect:Landroid/graphics/RectF;

.field private mDownCoverView:Landroid/widget/ImageView;

.field private mDownRotateLayout:Lcom/android/camera/ui/RotateLayout;

.field private mDownRotateLayout1:Lcom/android/camera/ui/RotateLayout;

.field private mDualsightAnimContainer:Landroid/widget/FrameLayout;

.field private mEditModeContainer:Landroid/view/View;

.field private final mFaceView:Lcom/android/camera/ui/FaceView;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private mInitializeFirstTime:Z

.field private mIsBeautyShow:Z

.field private mIsCaptureUpFirst:Z

.field private mIsTwiceShotAnimating:Z

.field private mIsTwiceShotWaiting:Z

.field private mMaxZoom:F

.field private final mModuleRoot:Landroid/view/View;

.field private mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

.field private mOrientation:I

.field private mPreviewArea:Landroid/graphics/RectF;

.field private final mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private final mPreviewView:Landroid/view/TextureView;

.field private final mRootView:Landroid/view/View;

.field private mScale:F

.field private mTopEditModeMask:Landroid/view/View;

.field private mTxtDownCover1:Landroid/widget/TextView;

.field private mTxtDownCover2:Landroid/widget/TextView;

.field private mTxtUpCover1:Landroid/widget/TextView;

.field private mTxtUpCover2:Landroid/widget/TextView;

.field private mUpCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

.field private mUpCoverRect:Landroid/graphics/RectF;

.field private mUpCoverView:Landroid/widget/ImageView;

.field private mUpRotateLayout:Lcom/android/camera/ui/RotateLayout;

.field private mUpRotateLayout1:Lcom/android/camera/ui/RotateLayout;

.field private final mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "DSPhotoModuleUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/DualSightPhotoModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;Landroid/view/View;IZ)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "appController"    # Lcom/android/camera/app/AppController;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "level"    # I
    .param p5, "isBeautyShow"    # Z

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mMaxZoom:F

    .line 83
    iput v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mZoomValue:F

    .line 87
    iput-boolean v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mInitializeFirstTime:Z

    .line 99
    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->COVER_ALPHA:F

    .line 123
    iput-boolean v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsTwiceShotAnimating:Z

    .line 147
    new-instance v1, Lcom/android/camera/DualSightPhotoModuleUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightPhotoModuleUI$1;-><init>(Lcom/android/camera/DualSightPhotoModuleUI;)V

    iput-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 167
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 168
    iput-object p2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    .line 169
    iput-object p3, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    .line 170
    iput p4, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mBeautyLevel:I

    .line 171
    iput-boolean p5, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsBeautyShow:Z

    .line 172
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 173
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mModuleRoot:Landroid/view/View;

    .line 175
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mPreviewView:Landroid/view/TextureView;

    .line 177
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 179
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 181
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FaceView;

    iput-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/DualSightPhotoModuleUI;)Lcom/android/camera/ui/CountDownView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/DualSightPhotoModuleUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;
    .param p1, "x1"    # Lcom/android/camera/ui/CountDownView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/DualSightPhotoModuleUI;)Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/DualSightPhotoModuleUI;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/camera/DualSightPhotoModuleUI;->initBeautyControl(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/DualSightPhotoModuleUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsBeautyShow:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/DualSightPhotoModuleUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModuleUI;->initTwiceShot()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/DualSightPhotoModuleUI;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/DualSightPhotoModuleUI;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mScale:F

    return v0
.end method

.method static synthetic access$1402(Lcom/android/camera/DualSightPhotoModuleUI;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;
    .param p1, "x1"    # F

    .prologue
    .line 65
    iput p1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mScale:F

    return p1
.end method

.method static synthetic access$1500(Lcom/android/camera/DualSightPhotoModuleUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mAnimImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/camera/DualSightPhotoModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/DualSightPhotoModuleUI;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/DualSightPhotoModuleUI;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDualsightAnimContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/camera/DualSightPhotoModuleUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsTwiceShotAnimating:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/DualSightPhotoModuleUI;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/DualSightPhotoModuleUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/DualSightPhotoModuleUI;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/DualSightPhotoModuleUI;Lcom/android/camera/ui/RotateLayout;)Lcom/android/camera/ui/RotateLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;
    .param p1, "x1"    # Lcom/android/camera/ui/RotateLayout;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/camera/DualSightPhotoModuleUI;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;
    .param p1, "x1"    # Landroid/widget/SeekBar;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/DualSightPhotoModuleUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModuleUI;->initEditModeControls()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/DualSightPhotoModuleUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/DualSightPhotoModuleUI;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/DualSightPhotoModuleUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModuleUI;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mBeautyLevel:I

    return v0
.end method

.method private adjustMask(Landroid/view/View;I)V
    .locals 2
    .param p1, "maskView"    # Landroid/view/View;
    .param p2, "height"    # I

    .prologue
    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 378
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 379
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 380
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 382
    return-void
.end method

.method private calMaskLayout()V
    .locals 6

    .prologue
    .line 365
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mEditModeContainer:Landroid/view/View;

    if-nez v3, :cond_0

    .line 374
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 369
    .local v1, "previewRect":Landroid/graphics/RectF;
    :goto_1
    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 370
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getRealDeviceHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/CameraAppUI;->getBottomBarHeightByDUT()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/RectF;->top:F

    add-float v2, v3, v4

    .line 371
    .local v2, "topHeight":F
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getBottomBarHeightByDUT()I

    move-result v3

    int-to-float v0, v3

    .line 372
    .local v0, "bottomHeight":F
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mTopEditModeMask:Landroid/view/View;

    float-to-int v4, v2

    invoke-direct {p0, v3, v4}, Lcom/android/camera/DualSightPhotoModuleUI;->adjustMask(Landroid/view/View;I)V

    .line 373
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mBottomEditModeMask:Landroid/view/View;

    float-to-int v4, v0

    invoke-direct {p0, v3, v4}, Lcom/android/camera/DualSightPhotoModuleUI;->adjustMask(Landroid/view/View;I)V

    goto :goto_0

    .line 368
    .end local v0    # "bottomHeight":F
    .end local v1    # "previewRect":Landroid/graphics/RectF;
    .end local v2    # "topHeight":F
    :cond_1
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    goto :goto_1
.end method

.method private initBeautyControl(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 330
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->getBottomBarHeightByDUT()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 331
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    sget v2, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_LEVEL:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 334
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 335
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    const/4 v2, -0x1

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 336
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/camera/DualSightPhotoModuleUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/DualSightPhotoModuleUI$3;-><init>(Lcom/android/camera/DualSightPhotoModuleUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 354
    return-void
.end method

.method private initEditModeControls()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mEditModeContainer:Landroid/view/View;

    .line 359
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mTopEditModeMask:Landroid/view/View;

    .line 360
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f00f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mBottomEditModeMask:Landroid/view/View;

    .line 361
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModuleUI;->calMaskLayout()V

    .line 362
    return-void
.end method

.method private initTwiceShot()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 194
    sget-object v2, Lcom/android/camera/DualSightPhotoModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "[TWICE-SHOT] initTwiceShot"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0f00f2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mCoverContainer:Landroid/view/View;

    .line 197
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0f00f3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/DualSightCoverView;

    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    .line 198
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0f00f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/DualSightCoverView;

    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    .line 200
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0f00f7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateLayout;

    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpRotateLayout:Lcom/android/camera/ui/RotateLayout;

    .line 201
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0f00fd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateLayout;

    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownRotateLayout:Lcom/android/camera/ui/RotateLayout;

    .line 203
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0f00f5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateLayout;

    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpRotateLayout1:Lcom/android/camera/ui/RotateLayout;

    .line 204
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0f00fb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateLayout;

    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownRotateLayout1:Lcom/android/camera/ui/RotateLayout;

    .line 206
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0f00f6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mTxtUpCover1:Landroid/widget/TextView;

    .line 207
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0f00f8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mTxtUpCover2:Landroid/widget/TextView;

    .line 208
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0f00fe

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mTxtDownCover1:Landroid/widget/TextView;

    .line 209
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0f00fc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mTxtDownCover2:Landroid/widget/TextView;

    .line 211
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0f00f4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverView:Landroid/widget/ImageView;

    .line 212
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :cond_0
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0f00fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverView:Landroid/widget/ImageView;

    .line 217
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    :cond_1
    iput-boolean v4, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsCaptureUpFirst:Z

    .line 222
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0f00cc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDualsightAnimContainer:Landroid/widget/FrameLayout;

    .line 223
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDualsightAnimContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 224
    .local v0, "animCoverParam":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 225
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 226
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDualsightAnimContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mCoverContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 229
    .local v1, "coverContainerParam":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 230
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mCoverContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0f00cd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mAnimImg:Landroid/widget/ImageView;

    .line 233
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModuleUI;->isTSActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    invoke-virtual {p0, v4}, Lcom/android/camera/DualSightPhotoModuleUI;->setCoverContainerVisibility(I)V

    .line 239
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/DualSightPhotoModuleUI;->resetTwiceShotArea()V

    .line 240
    return-void

    .line 236
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/camera/DualSightPhotoModuleUI;->setCoverContainerVisibility(I)V

    goto :goto_0
.end method

.method private isDualSightHalfAndHalf()Z
    .locals 5

    .prologue
    .line 282
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 283
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_camera_screen_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 284
    .local v0, "currentValue":I
    const v2, 0x7f0803c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 285
    const/4 v2, 0x1

    .line 287
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isTSActive()Z
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModuleUI;->isTwiceShotON()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModuleUI;->isDualSightHalfAndHalf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTwiceShotON()Z
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_dual_twiceshot_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private startFinishAnim(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 740
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsTwiceShotAnimating:Z

    .line 741
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 742
    .local v0, "scaleAnim":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/camera/DualSightPhotoModuleUI$4;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightPhotoModuleUI$4;-><init>(Lcom/android/camera/DualSightPhotoModuleUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 752
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 753
    new-instance v1, Lcom/android/camera/DualSightPhotoModuleUI$5;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/DualSightPhotoModuleUI$5;-><init>(Lcom/android/camera/DualSightPhotoModuleUI;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 815
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 816
    return-void

    .line 741
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data
.end method


# virtual methods
.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 449
    :cond_0
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 496
    :cond_0
    return-void
.end method

.method public finishCaptureShow(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDualsightAnimContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 734
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mAnimImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 735
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mAnimImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 736
    invoke-direct {p0, p1}, Lcom/android/camera/DualSightPhotoModuleUI;->startFinishAnim(Landroid/graphics/Bitmap;)V

    .line 737
    return-void
.end method

.method public getBitMapFromPreview(I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 460
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 461
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0, v5}, Lcom/android/camera/DualSightPhotoModuleUI;->getPreviewTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 462
    int-to-float v2, p1

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 463
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 464
    .local v0, "src":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getFaceView()Lcom/android/camera/ui/FaceView;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getPreviewAreaHeight()I
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewAreaWidth()I
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public initializeZoom(FF)V
    .locals 3
    .param p1, "maxZoom"    # F
    .param p2, "currentZoom"    # F

    .prologue
    .line 474
    iput p1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mMaxZoom:F

    .line 475
    iput p2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mZoomValue:F

    .line 476
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/camera/face/Camera2FaceConverter;->setZoomValue(F)V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mMaxZoom:F

    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    .line 480
    return-void
.end method

.method public isCaptureUpFirst()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsCaptureUpFirst:Z

    return v0
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTwiceShotAnimating()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsTwiceShotAnimating:Z

    return v0
.end method

.method public isTwiceShotWaiting()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsTwiceShotWaiting:Z

    return v0
.end method

.method public loadModuleLayout()V
    .locals 4

    .prologue
    .line 292
    sget-object v1, Lcom/android/camera/DualSightPhotoModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TS] loadModuleLayout init first time :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mInitializeFirstTime:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 293
    iget-boolean v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mInitializeFirstTime:Z

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/camera/DualSightPhotoModuleUI;->resetTwiceShotArea()V

    .line 324
    :goto_0
    return-void

    .line 298
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mInitializeFirstTime:Z

    .line 299
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 300
    .local v0, "asyncLayoutInflater":Landroid/support/v4/view/AsyncLayoutInflater;
    const v2, 0x7f040038

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mModuleRoot:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/camera/DualSightPhotoModuleUI$2;

    invoke-direct {v3, p0}, Lcom/android/camera/DualSightPhotoModuleUI$2;-><init>(Lcom/android/camera/DualSightPhotoModuleUI;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsTwiceShotWaiting:Z

    if-eqz v0, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isShutterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 591
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsCaptureUpFirst:Z

    invoke-virtual {p0, v0}, Lcom/android/camera/DualSightPhotoModuleUI;->switchTSCoverViewToUpper(Z)V

    goto :goto_0

    .line 585
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsCaptureUpFirst:Z

    goto :goto_1

    .line 588
    :sswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsCaptureUpFirst:Z

    goto :goto_1

    .line 583
    :sswitch_data_0
    .sparse-switch
        0x7f0f00f4 -> :sswitch_0
        0x7f0f00fa -> :sswitch_1
    .end sparse-switch
.end method

.method public onFaceDetection([Landroid/hardware/camera2/params/Face;)V
    .locals 2
    .param p1, "faceList"    # [Landroid/hardware/camera2/params/Face;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-nez v0, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    invoke-virtual {v1, p1}, Lcom/android/camera/face/Camera2FaceConverter;->convertCamera2Face([Landroid/hardware/camera2/params/Face;)[Lcom/android/camera/face/FaceData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/face/FaceData;)V

    goto :goto_0
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    .line 541
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 547
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModuleUI;->calMaskLayout()V

    .line 548
    return-void
.end method

.method public onStartFaceDetection(IZLcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z
    .param p3, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "pictureSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 513
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 515
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 516
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 517
    new-instance v0, Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mZoomValue:F

    invoke-direct {v0, p3, p2, v1, p4}, Lcom/android/camera/face/Camera2FaceConverter;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;ZFLcom/android/camera/util/Size;)V

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 519
    :cond_0
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 524
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 528
    :cond_0
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 508
    :cond_0
    return-void
.end method

.method public refreshTwiceShot()V
    .locals 1

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsCaptureUpFirst:Z

    invoke-virtual {p0, v0}, Lcom/android/camera/DualSightPhotoModuleUI;->switchTSCoverViewToUpper(Z)V

    .line 596
    return-void
.end method

.method public resetTwiceShotArea()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 244
    sget-object v1, Lcom/android/camera/DualSightPhotoModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "[TS] resetTwiceShotArea"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mPreviewView:Landroid/view/TextureView;

    if-eqz v1, :cond_0

    .line 246
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 247
    .local v0, "initRect":Landroid/graphics/RectF;
    invoke-virtual {p0, v0}, Lcom/android/camera/DualSightPhotoModuleUI;->updateCoversArea(Landroid/graphics/RectF;)V

    .line 248
    iget-boolean v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsCaptureUpFirst:Z

    invoke-virtual {p0, v1}, Lcom/android/camera/DualSightPhotoModuleUI;->switchTSCoverViewToUpper(Z)V

    .line 250
    .end local v0    # "initRect":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 502
    :cond_0
    return-void
.end method

.method public setBeautyVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    :cond_0
    return-void
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .line 434
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 435
    :cond_0
    return-void
.end method

.method public setCoverContainerVisibile(Z)V
    .locals 3
    .param p1, "visibile"    # Z

    .prologue
    .line 254
    sget-object v0, Lcom/android/camera/DualSightPhotoModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TS] setCoverContainerVisibile :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mCoverContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 256
    if-eqz p1, :cond_1

    .line 257
    sget-object v0, Lcom/android/camera/DualSightPhotoModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[TS] setCoverContainerVisibile VISIBLE"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/DualSightPhotoModuleUI;->setCoverContainerVisibility(I)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    sget-object v0, Lcom/android/camera/DualSightPhotoModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[TS] setCoverContainerVisibile GONE"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 261
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/DualSightPhotoModuleUI;->setCoverContainerVisibility(I)V

    goto :goto_0
.end method

.method public setCoverContainerVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 268
    sget-object v0, Lcom/android/camera/DualSightPhotoModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TS] >>> setCoverContainerVisibility :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mCoverContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mCoverContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :cond_0
    return-void
.end method

.method public setDownCoverImg(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 721
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 723
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 725
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 727
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 728
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverRect:Landroid/graphics/RectF;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/DualSightCoverView;->setDrawRect(Landroid/graphics/RectF;Z)V

    .line 729
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ui/DualSightCoverView;->setDrawRect(Landroid/graphics/RectF;Z)V

    .line 730
    return-void
.end method

.method public setIsTwiceShotWaiting(Z)V
    .locals 0
    .param p1, "mIsTwiceShotWaiting"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsTwiceShotWaiting:Z

    .line 138
    return-void
.end method

.method public setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 490
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 552
    iput p1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mOrientation:I

    .line 553
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownRotateLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownRotateLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 559
    :cond_2
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownRotateLayout1:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownRotateLayout1:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 561
    :cond_3
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpRotateLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpRotateLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 562
    :cond_4
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpRotateLayout1:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpRotateLayout1:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 564
    :cond_5
    return-void
.end method

.method public setPictureTakingProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 457
    return-void
.end method

.method public setTwiceShotWaitMode(Z)V
    .locals 3
    .param p1, "isWaiting"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 680
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mTxtUpCover1:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mTxtUpCover2:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mTxtDownCover1:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mTxtDownCover2:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    if-eqz p1, :cond_2

    .line 685
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mTxtUpCover1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mTxtUpCover2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mTxtDownCover1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mTxtDownCover2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 691
    :cond_2
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mTxtUpCover1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mTxtUpCover2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mTxtDownCover1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mTxtDownCover2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 696
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsCaptureUpFirst:Z

    invoke-virtual {p0, v0}, Lcom/android/camera/DualSightPhotoModuleUI;->switchTSCoverViewToUpper(Z)V

    goto :goto_0
.end method

.method public setUpCoverImg(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 705
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 707
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 709
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 711
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 713
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ui/DualSightCoverView;->setDrawRect(Landroid/graphics/RectF;Z)V

    .line 714
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverRect:Landroid/graphics/RectF;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/DualSightCoverView;->setDrawRect(Landroid/graphics/RectF;Z)V

    .line 715
    return-void
.end method

.method public showDebugMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 414
    return-void
.end method

.method public showEditModeUI(Z)V
    .locals 2
    .param p1, "showed"    # Z

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mEditModeContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 386
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mEditModeContainer:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 388
    :cond_0
    return-void

    .line 386
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public startCountdown(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;->onCountDownFinished()V

    goto :goto_0
.end method

.method public switchFrontAndMain()V
    .locals 1

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsCaptureUpFirst:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsCaptureUpFirst:Z

    .line 600
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsCaptureUpFirst:Z

    invoke-virtual {p0, v0}, Lcom/android/camera/DualSightPhotoModuleUI;->switchTSCoverViewToUpper(Z)V

    .line 601
    return-void

    .line 599
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchTSCoverViewToUpper(Z)V
    .locals 8
    .param p1, "isCaptureUp"    # Z

    .prologue
    const/high16 v7, -0x1000000

    const v6, 0x3f19999a    # 0.6f

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 604
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    if-nez v0, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    sget-object v0, Lcom/android/camera/DualSightPhotoModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TS] switchTSCoverViewToUpper:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 610
    if-eqz p1, :cond_2

    .line 612
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 613
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpRotateLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpRotateLayout1:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 618
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 619
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 620
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 621
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 623
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownRotateLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownRotateLayout1:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverRect:Landroid/graphics/RectF;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/DualSightCoverView;->setDrawRect(Landroid/graphics/RectF;Z)V

    .line 627
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ui/DualSightCoverView;->setDrawRect(Landroid/graphics/RectF;Z)V

    .line 648
    :goto_1
    iput-boolean p1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsCaptureUpFirst:Z

    goto :goto_0

    .line 630
    :cond_2
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 631
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 632
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 633
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpRotateLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpRotateLayout1:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 639
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownRotateLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownRotateLayout1:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ui/DualSightCoverView;->setDrawRect(Landroid/graphics/RectF;Z)V

    .line 645
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverRect:Landroid/graphics/RectF;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/DualSightCoverView;->setDrawRect(Landroid/graphics/RectF;Z)V

    goto :goto_1
.end method

.method public updateCoversArea(Landroid/graphics/RectF;)V
    .locals 10
    .param p1, "rectF"    # Landroid/graphics/RectF;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 653
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    if-nez v2, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    invoke-virtual {v2}, Lcom/android/camera/ui/DualSightCoverView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 658
    .local v1, "upCoverContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 659
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/DualSightCoverView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 660
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->right:F

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverRect:Landroid/graphics/RectF;

    .line 662
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    invoke-virtual {v2}, Lcom/android/camera/ui/DualSightCoverView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 663
    .local v0, "downCoverContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 664
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/DualSightCoverView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-direct {v2, v7, v7, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverRect:Landroid/graphics/RectF;

    .line 667
    iget-boolean v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mIsCaptureUpFirst:Z

    if-eqz v2, :cond_2

    .line 668
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v9}, Lcom/android/camera/ui/DualSightCoverView;->setDrawRect(Landroid/graphics/RectF;Z)V

    .line 669
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v8}, Lcom/android/camera/ui/DualSightCoverView;->setDrawRect(Landroid/graphics/RectF;Z)V

    goto :goto_0

    .line 671
    :cond_2
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mUpCoverRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v8}, Lcom/android/camera/ui/DualSightCoverView;->setDrawRect(Landroid/graphics/RectF;Z)V

    .line 672
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverContainer:Lcom/android/camera/ui/DualSightCoverView;

    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModuleUI;->mDownCoverRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v9}, Lcom/android/camera/ui/DualSightCoverView;->setDrawRect(Landroid/graphics/RectF;Z)V

    goto :goto_0
.end method
