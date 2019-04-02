.class public Lcom/android/camera/PanoramaUIMTK;
.super Lcom/android/camera/PanoramaUI;
.source "PanoramaUIMTK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;
    }
.end annotation


# static fields
.field private static final ARROW_HORIZONTAL_AMEND:I = 0x2d

.field private static final ARROW_VERTICAL_AMEND:I = 0x23

.field public static final COLOR_TRANSLATE_MASK_50:I = 0x7fffffff

.field private static final DIRECTION_DOWN:I = 0x3

.field private static final DIRECTION_LEFT:I = 0x1

.field private static final DIRECTION_RIGHT:I = 0x0

.field private static final DIRECTION_UNKNOWN:I = 0x4

.field private static final DIRECTION_UP:I = 0x2

.field private static final INDICATOR_FLASH_INTERVAL_QUICK:I = 0x32

.field private static final INDICATOR_FLASH_INTERVAL_SLOW:I = 0xc8

.field public static final INFO_START_ANIMATION:I = 0x2

.field public static final INFO_UPDATE_MOVING:I = 0x1

.field public static final INFO_UPDATE_PROGRESS:I = 0x0

.field private static final MSG_INDICATOR_FLASH_HIDE:I = 0x2

.field private static final MSG_INDICATOR_FLASH_SHOW:I = 0x1

.field private static final MSG_INDICATOR_FLASH_STOP:I = 0x3

.field private static final MSG_SHOW_HINT:I = 0x4

.field public static final PANORAMA_VIEW:I = 0x0

.field private static final PANO_OFFSET_OUT:I = 0xa

.field public static final PREVIEW_BGLINE_FOLLOWARROW:Z = false

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final TARGET_DISTANCE_HORIZONTAL:I = 0xa0

.field private static final TARGET_DISTANCE_VERTICAL:I = 0x78


# instance fields
.field private final WARN_TRACE_QUICK:I

.field private final WARN_TRACE_SHAKE_BIF:I

.field private final WARN_TRACE_SHAKE_SMALL:I

.field private final WARN_TRACE_SLOPE:I

.field private mBackgroundLL:Landroid/widget/LinearLayout;

.field private mCaptureDirection:I

.field private mCurrentNum:I

.field private mCurrentThemeColor:I

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDistanceHorizontal:I

.field private mDistanceVertical:I

.field private mFrameWidthHorizontal:I

.field private mFrameWidthVertical:I

.field private mHalfArrowLength:I

.field private mHandler:Landroid/os/Handler;

.field private mHintArrow:Landroid/widget/ImageView;

.field private mHintArrowDown:Landroid/widget/ImageView;

.field private mHintArrowLeft:Landroid/widget/ImageView;

.field private mHintArrowRight:Landroid/widget/ImageView;

.field private mHintArrowUp:Landroid/widget/ImageView;

.field private mHintMessage:Landroid/widget/TextView;

.field private mHintMessageContainer:Lcom/android/camera/ui/PanoHintMessageContainer;

.field private mIndicatorFlashState:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

.field private mNavigationBarHeight:I

.field private mPanoArrowSize:I

.field private mPanoBackground:Landroid/widget/ImageView;

.field private mPanoBackgroundLine:Landroid/widget/ImageView;

.field private mPanoBackgroundLineId:I

.field private mPanoIndicator:Landroid/widget/ImageView;

.field private mPanoIndicatorDown:Landroid/widget/ImageView;

.field private mPanoIndicatorLeft:Landroid/widget/ImageView;

.field private mPanoIndicatorRight:Landroid/widget/ImageView;

.field private mPanoIndicatorUp:Landroid/widget/ImageView;

.field private mPanoStitchPreview:Landroid/widget/ImageView;

.field private mPreviewBGlineHeight:I

.field private mPreviewHeight:I

.field private mPreviewShortside:I

.field private mPreviewWidth:I

.field private mS3DMode:Z

.field private mScreentHeight:I

.field private mSensorMatrix:[Landroid/graphics/Matrix;

.field private mShutterSize:I

.field private mTopMargin:I

.field private mViewCategory:I

.field private moduleRoot:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PanoramaUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/PanoramaUIMTK;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PanoramaController;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/PanoramaController;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/PanoramaUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PanoramaController;Landroid/view/View;)V

    .line 33
    iput v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPreviewWidth:I

    .line 34
    iput v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPreviewHeight:I

    .line 36
    iput v1, p0, Lcom/android/camera/PanoramaUIMTK;->mNavigationBarHeight:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PanoramaUIMTK;->WARN_TRACE_SLOPE:I

    .line 41
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/camera/PanoramaUIMTK;->WARN_TRACE_SHAKE_SMALL:I

    .line 42
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/camera/PanoramaUIMTK;->WARN_TRACE_SHAKE_BIF:I

    .line 43
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/camera/PanoramaUIMTK;->WARN_TRACE_QUICK:I

    .line 66
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/PanoramaUIMTK;->mCaptureDirection:I

    .line 69
    iput v1, p0, Lcom/android/camera/PanoramaUIMTK;->mCurrentNum:I

    .line 73
    iput v1, p0, Lcom/android/camera/PanoramaUIMTK;->mFrameWidthVertical:I

    .line 76
    iput v1, p0, Lcom/android/camera/PanoramaUIMTK;->mFrameWidthHorizontal:I

    .line 79
    iput-boolean v1, p0, Lcom/android/camera/PanoramaUIMTK;->mS3DMode:Z

    .line 80
    iput v1, p0, Lcom/android/camera/PanoramaUIMTK;->mHalfArrowLength:I

    .line 85
    iput v1, p0, Lcom/android/camera/PanoramaUIMTK;->mDistanceVertical:I

    .line 86
    iput v1, p0, Lcom/android/camera/PanoramaUIMTK;->mDistanceHorizontal:I

    .line 88
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 100
    sget-object v0, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->ALWAYS:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mIndicatorFlashState:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    .line 870
    new-instance v0, Lcom/android/camera/PanoramaUIMTK$3;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaUIMTK$3;-><init>(Lcom/android/camera/PanoramaUIMTK;)V

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHandler:Landroid/os/Handler;

    .line 137
    invoke-virtual {p0}, Lcom/android/camera/PanoramaUIMTK;->initPanoramaUI()V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PanoramaUIMTK;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaUIMTK;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/PanoramaUIMTK;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaUIMTK;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/PanoramaUIMTK;)Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaUIMTK;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mIndicatorFlashState:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/PanoramaUIMTK;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaUIMTK;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/camera/PanoramaUIMTK;->showHint()V

    return-void
.end method

.method private filterViewCategory(I)Z
    .locals 1
    .param p1, "requestCategory"    # I

    .prologue
    .line 452
    iget v0, p0, Lcom/android/camera/PanoramaUIMTK;->mViewCategory:I

    if-eq v0, p1, :cond_0

    .line 453
    const/4 v0, 0x0

    .line 455
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCaptureDirection()V
    .locals 4

    .prologue
    .line 537
    iget v2, p0, Lcom/android/camera/PanoramaUIMTK;->mCaptureDirection:I

    invoke-virtual {p0, v2}, Lcom/android/camera/PanoramaUIMTK;->updatePanoIndicator(I)V

    .line 539
    iget-object v2, p0, Lcom/android/camera/PanoramaUIMTK;->mPreviewBufferSize:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v1

    .line 540
    .local v1, "previewFrameWidth":I
    iget-object v2, p0, Lcom/android/camera/PanoramaUIMTK;->mPreviewBufferSize:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 542
    .local v0, "previewFrameHeight":I
    iget v2, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoArrowSize:I

    sub-int v2, v0, v2

    add-int/lit8 v2, v2, 0x2d

    iget v3, p0, Lcom/android/camera/PanoramaUIMTK;->mShutterSize:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x9

    iput v2, p0, Lcom/android/camera/PanoramaUIMTK;->mFrameWidthHorizontal:I

    .line 543
    iget v2, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoArrowSize:I

    sub-int v2, v1, v2

    add-int/lit8 v2, v2, 0x23

    div-int/lit8 v2, v2, 0x9

    iput v2, p0, Lcom/android/camera/PanoramaUIMTK;->mFrameWidthVertical:I

    .line 544
    invoke-direct {p0}, Lcom/android/camera/PanoramaUIMTK;->showFrameStitchResult()V

    .line 545
    return-void
.end method

.method private hidePanoIndicator()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1026
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorUp:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorDown:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1028
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1029
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorRight:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1030
    :cond_3
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const v2, 0x7f0202aa

    .line 302
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mRootView:Landroid/view/View;

    const v1, 0x7f0f01c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorUp:Landroid/widget/ImageView;

    .line 303
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorUp:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 306
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mRootView:Landroid/view/View;

    const v1, 0x7f0f01c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorRight:Landroid/widget/ImageView;

    .line 307
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorRight:Landroid/widget/ImageView;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 310
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mRootView:Landroid/view/View;

    const v1, 0x7f0f01c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorDown:Landroid/widget/ImageView;

    .line 311
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorDown:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 314
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mRootView:Landroid/view/View;

    const v1, 0x7f0f01c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    .line 315
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 318
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mRootView:Landroid/view/View;

    const v1, 0x7f0f01ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowUp:Landroid/widget/ImageView;

    .line 319
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mRootView:Landroid/view/View;

    const v1, 0x7f0f01cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowDown:Landroid/widget/ImageView;

    .line 320
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mRootView:Landroid/view/View;

    const v1, 0x7f0f01cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowRight:Landroid/widget/ImageView;

    .line 321
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mRootView:Landroid/view/View;

    const v1, 0x7f0f01cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowLeft:Landroid/widget/ImageView;

    .line 322
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mRootView:Landroid/view/View;

    const v1, 0x7f0f01bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessage:Landroid/widget/TextView;

    .line 324
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mRootView:Landroid/view/View;

    const v1, 0x7f0f01ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PanoHintMessageContainer;

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessageContainer:Lcom/android/camera/ui/PanoHintMessageContainer;

    .line 326
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mRootView:Landroid/view/View;

    const v1, 0x7f0f01cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mBackgroundLL:Landroid/widget/LinearLayout;

    .line 328
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09024e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/PanoramaUIMTK;->mShutterSize:I

    .line 329
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09021b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoArrowSize:I

    .line 330
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090223

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPreviewShortside:I

    .line 331
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09023b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPreviewBGlineHeight:I

    .line 333
    invoke-direct {p0}, Lcom/android/camera/PanoramaUIMTK;->showPressStartHint()V

    .line 334
    return-void
.end method

.method private initializeViewManager()V
    .locals 1

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/android/camera/PanoramaUIMTK;->initView()V

    .line 292
    iget v0, p0, Lcom/android/camera/PanoramaUIMTK;->mCurrentThemeColor:I

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaUIMTK;->setTheme(I)V

    .line 293
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/camera/PanoramaUIMTK;->mDistanceHorizontal:I

    .line 294
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/camera/PanoramaUIMTK;->mDistanceVertical:I

    .line 296
    iget v0, p0, Lcom/android/camera/PanoramaUIMTK;->mViewCategory:I

    if-nez v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/android/camera/PanoramaUIMTK;->prepareSensorMatrix()V

    .line 299
    :cond_0
    return-void
.end method

.method private prepareSensorMatrix()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    .line 337
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mSensorMatrix:[Landroid/graphics/Matrix;

    .line 339
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mSensorMatrix:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, v0, v2

    .line 340
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 341
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v2

    iget v1, p0, Lcom/android/camera/PanoramaUIMTK;->mDistanceHorizontal:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/PanoramaUIMTK;->mDistanceVertical:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 343
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mSensorMatrix:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, v0, v4

    .line 344
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 345
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v4

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/PanoramaUIMTK;->mDistanceVertical:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 347
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mSensorMatrix:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, v0, v5

    .line 348
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v5

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 349
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v5

    iget v1, p0, Lcom/android/camera/PanoramaUIMTK;->mDistanceHorizontal:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 351
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mSensorMatrix:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, v0, v6

    .line 352
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v6

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 353
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v6

    iget v1, p0, Lcom/android/camera/PanoramaUIMTK;->mDistanceHorizontal:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/PanoramaUIMTK;->mDistanceVertical:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 354
    return-void
.end method

.method private prepareTransformMatrix()V
    .locals 7

    .prologue
    .line 658
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 659
    iget v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPreviewWidth:I

    shr-int/lit8 v1, v4, 0x1

    .line 660
    .local v1, "halfPrewWidth":I
    iget v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPreviewHeight:I

    shr-int/lit8 v0, v4, 0x1

    .line 662
    .local v0, "halfPrewHeight":I
    iget-boolean v4, p0, Lcom/android/camera/PanoramaUIMTK;->mS3DMode:Z

    if-eqz v4, :cond_0

    const/high16 v3, 0x43820000    # 260.0f

    .line 663
    .local v3, "halfViewWidth":F
    :goto_0
    int-to-float v4, v0

    iget v5, p0, Lcom/android/camera/PanoramaUIMTK;->mHalfArrowLength:I

    int-to-float v5, v5

    sub-float v2, v4, v5

    .line 665
    .local v2, "halfViewHeight":F
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/android/camera/PanoramaUIMTK;->mDistanceHorizontal:I

    int-to-float v5, v5

    div-float v5, v3, v5

    iget v6, p0, Lcom/android/camera/PanoramaUIMTK;->mDistanceVertical:I

    int-to-float v6, v6

    div-float v6, v2, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 667
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/android/camera/PanoramaUIMTK;->mHalfArrowLength:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/camera/PanoramaUIMTK;->mHalfArrowLength:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 668
    return-void

    .line 662
    .end local v2    # "halfViewHeight":F
    .end local v3    # "halfViewWidth":F
    :cond_0
    int-to-float v4, v1

    iget v5, p0, Lcom/android/camera/PanoramaUIMTK;->mHalfArrowLength:I

    int-to-float v5, v5

    sub-float v3, v4, v5

    goto :goto_0
.end method

.method private resetFrameStitchLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 972
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoStitchPreview:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 973
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 974
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoStitchPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 976
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private setBackgroundVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackground:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLine:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLine:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoStitchPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoStitchPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    :cond_3
    return-void
.end method

.method private setViewsForNext()V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaUIMTK;->filterViewCategory(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaUIMTK;->showFrameStitchResult()V

    goto :goto_0
.end method

.method private showBeforeMoveHint()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessage:Landroid/widget/TextView;

    const v1, 0x7f0800b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 440
    return-void
.end method

.method private showFrameStitchResult()V
    .locals 13

    .prologue
    const/16 v12, 0xf

    const/16 v11, 0xe

    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 571
    const/4 v4, 0x0

    .line 572
    .local v4, "stitchTo":I
    iget v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPreviewBGlineHeight:I

    .line 574
    .local v0, "backgroundLineW":I
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPreviewBufferSize:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v5, v6

    .line 575
    .local v5, "topOffset":I
    iget v6, p0, Lcom/android/camera/PanoramaUIMTK;->mScreentHeight:I

    iget-object v7, p0, Lcom/android/camera/PanoramaUIMTK;->mPreviewBufferSize:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mNavigationBarHeight:I

    add-int v1, v6, v7

    .line 577
    .local v1, "bottomOffset":I
    iget v6, p0, Lcom/android/camera/PanoramaUIMTK;->mCaptureDirection:I

    packed-switch v6, :pswitch_data_0

    .line 655
    :goto_0
    return-void

    .line 579
    :pswitch_0
    iget v6, p0, Lcom/android/camera/PanoramaUIMTK;->mFrameWidthHorizontal:I

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mCurrentNum:I

    add-int/lit8 v7, v7, 0x1

    mul-int v4, v6, v7

    .line 580
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPreviewShortside:I

    invoke-direct {v2, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 581
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 582
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 583
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 584
    invoke-virtual {v2, v8, v5, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 585
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoStitchPreview:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 589
    .local v3, "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 590
    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 591
    add-int v6, v5, v4

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mShutterSize:I

    add-int/2addr v7, v1

    invoke-virtual {v3, v8, v6, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 592
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLine:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 598
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_1
    iget v6, p0, Lcom/android/camera/PanoramaUIMTK;->mFrameWidthHorizontal:I

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mCurrentNum:I

    add-int/lit8 v7, v7, 0x1

    mul-int v4, v6, v7

    .line 599
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPreviewShortside:I

    invoke-direct {v2, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 600
    .restart local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 601
    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 602
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 603
    invoke-virtual {v2, v8, v5, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 604
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoStitchPreview:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 608
    .restart local v3    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 609
    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 610
    add-int v6, v4, v1

    invoke-virtual {v3, v8, v5, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 611
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLine:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 617
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_2
    iget v6, p0, Lcom/android/camera/PanoramaUIMTK;->mFrameWidthVertical:I

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mCurrentNum:I

    add-int/lit8 v7, v7, 0x1

    mul-int v4, v6, v7

    .line 619
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPreviewShortside:I

    invoke-direct {v2, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 620
    .restart local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 621
    const/16 v6, 0x9

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 622
    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 623
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 624
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoStitchPreview:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 628
    .restart local v3    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0x14

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 629
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 630
    const/4 v6, 0x1

    invoke-virtual {v3, v4, v8, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 631
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLine:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 637
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_3
    iget v6, p0, Lcom/android/camera/PanoramaUIMTK;->mFrameWidthVertical:I

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mCurrentNum:I

    add-int/lit8 v7, v7, 0x1

    mul-int v4, v6, v7

    .line 638
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPreviewShortside:I

    invoke-direct {v2, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 639
    .restart local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 640
    const/16 v6, 0xb

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 641
    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 642
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 643
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoStitchPreview:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 647
    .restart local v3    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0x14

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 648
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 649
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v8, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 650
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLine:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 577
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showHint()V
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 903
    return-void
.end method

.method private showHintPage(I)V
    .locals 12
    .param p1, "visibility"    # I

    .prologue
    const/16 v11, 0xe

    const v8, 0x7f0202ad

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 979
    iget-object v7, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowUp:Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowDown:Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowLeft:Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowRight:Landroid/widget/ImageView;

    if-nez v7, :cond_1

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    iget-object v7, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 986
    iget-object v7, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 987
    iget-object v7, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 988
    iget-object v7, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 990
    if-nez p1, :cond_0

    .line 991
    iget-object v7, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 992
    iget-object v7, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 993
    iget-object v7, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 994
    iget-object v7, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 996
    iget-object v7, p0, Lcom/android/camera/PanoramaUIMTK;->mPreviewBufferSize:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    float-to-int v5, v7

    .line 997
    .local v5, "topOffset":I
    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mScreentHeight:I

    iget-object v8, p0, Lcom/android/camera/PanoramaUIMTK;->mPreviewBufferSize:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/camera/PanoramaUIMTK;->mNavigationBarHeight:I

    add-int v1, v7, v8

    .line 998
    .local v1, "bottomOffset":I
    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoArrowSize:I

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v0, v7, -0xe

    .line 999
    .local v0, "backSizeChange":I
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1000
    .local v3, "left_lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, 0x6

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1001
    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1002
    sub-int v7, v5, v0

    invoke-virtual {v3, v9, v7, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1003
    iget-object v7, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1005
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1006
    .local v4, "right_lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xc

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1007
    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1008
    sub-int v7, v1, v0

    invoke-virtual {v4, v9, v9, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1009
    iget-object v7, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1011
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1012
    .local v6, "up_lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1013
    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mTopMargin:I

    neg-int v8, v0

    invoke-virtual {v6, v9, v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1014
    iget-object v7, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1016
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1017
    .local v2, "down_lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1018
    neg-int v7, v0

    iget v8, p0, Lcom/android/camera/PanoramaUIMTK;->mTopMargin:I

    invoke-virtual {v2, v7, v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1019
    iget-object v7, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1021
    invoke-direct {p0}, Lcom/android/camera/PanoramaUIMTK;->showBeforeMoveHint()V

    goto/16 :goto_0
.end method

.method private showMoveingHint()V
    .locals 2

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessage:Landroid/widget/TextView;

    const v1, 0x7f0800b3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 907
    return-void
.end method

.method private showPanoIndicatorByOri(I)V
    .locals 10
    .param p1, "captureOri"    # I

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xf

    const v7, 0x7f0202aa

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 672
    invoke-direct {p0}, Lcom/android/camera/PanoramaUIMTK;->hidePanoIndicator()V

    .line 674
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/android/camera/PanoramaUIMTK;->showHintPage(I)V

    .line 676
    packed-switch p1, :pswitch_data_0

    .line 745
    iput-object v9, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicator:Landroid/widget/ImageView;

    .line 746
    iput-object v9, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrow:Landroid/widget/ImageView;

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 678
    :pswitch_0
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorUp:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 679
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorUp:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 680
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorUp:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicator:Landroid/widget/ImageView;

    .line 683
    :cond_1
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowUp:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 684
    iget v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoArrowSize:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v1, v4, -0xe

    .line 685
    .local v1, "backSizeChangeUp":I
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 686
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 687
    .local v3, "up_lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 688
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 689
    neg-int v4, v1

    invoke-virtual {v3, v5, v5, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 690
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowUp:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrow:Landroid/widget/ImageView;

    .line 692
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrow:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 698
    .end local v1    # "backSizeChangeUp":I
    .end local v3    # "up_lp":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_1
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorDown:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 699
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorDown:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 700
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorDown:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicator:Landroid/widget/ImageView;

    .line 703
    :cond_2
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowDown:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 704
    iget v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoArrowSize:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v0, v4, -0xe

    .line 705
    .local v0, "backSizeChangeDown":I
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 706
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 707
    .local v2, "down_lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 708
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 709
    neg-int v4, v0

    invoke-virtual {v2, v4, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 710
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 711
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowDown:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrow:Landroid/widget/ImageView;

    .line 712
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrow:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 718
    .end local v0    # "backSizeChangeDown":I
    .end local v2    # "down_lp":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_2
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    .line 719
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 720
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicator:Landroid/widget/ImageView;

    .line 723
    :cond_3
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowLeft:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 724
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 725
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowLeft:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrow:Landroid/widget/ImageView;

    .line 726
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrow:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 732
    :pswitch_3
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorRight:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    .line 733
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorRight:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 734
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorRight:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicator:Landroid/widget/ImageView;

    .line 737
    :cond_4
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowRight:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 738
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 739
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowRight:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrow:Landroid/widget/ImageView;

    .line 740
    iget-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrow:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showPanoIndicatorByOri(III)V
    .locals 10
    .param p1, "captureOri"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 752
    move v0, p2

    .line 753
    .local v0, "arrowStartFrom":I
    iget v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoArrowSize:I

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mPreviewBGlineHeight:I

    add-int/2addr v6, v7

    div-int/lit8 v3, v6, 0x2

    .line 754
    .local v3, "panoArrowOffset":I
    sget-object v4, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->UNKNOWN:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    .line 756
    .local v4, "state":Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPreviewBufferSize:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v5, v6

    .line 757
    .local v5, "topOffset":I
    iget v6, p0, Lcom/android/camera/PanoramaUIMTK;->mScreentHeight:I

    iget-object v7, p0, Lcom/android/camera/PanoramaUIMTK;->mPreviewBufferSize:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mNavigationBarHeight:I

    add-int v1, v6, v7

    .line 759
    .local v1, "bottomOffset":I
    packed-switch p1, :pswitch_data_0

    .line 848
    :goto_0
    sget-object v6, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->FLASH_SLOW:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    if-ne v4, v6, :cond_0

    .line 849
    sget-object v4, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->ALWAYS:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    .line 852
    :cond_0
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mIndicatorFlashState:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    if-eq v6, v4, :cond_1

    .line 853
    iput-object v4, p0, Lcom/android/camera/PanoramaUIMTK;->mIndicatorFlashState:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    .line 854
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 855
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 856
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 858
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mIndicatorFlashState:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    sget-object v7, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->FLASH_QUICK:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    if-ne v6, v7, :cond_e

    .line 859
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    const-wide/16 v8, 0x32

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 867
    :cond_1
    :goto_1
    return-void

    .line 761
    :pswitch_0
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicator:Landroid/widget/ImageView;

    if-nez v6, :cond_2

    .line 762
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorRight:Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicator:Landroid/widget/ImageView;

    .line 764
    :cond_2
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 765
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 766
    const/4 v6, 0x1

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLineId:I

    invoke-virtual {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 767
    iget v6, p0, Lcom/android/camera/PanoramaUIMTK;->mFrameWidthHorizontal:I

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mCurrentNum:I

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mFrameWidthHorizontal:I

    mul-int/2addr v7, p2

    iget v8, p0, Lcom/android/camera/PanoramaUIMTK;->mDistanceHorizontal:I

    div-int/2addr v7, v8

    add-int v0, v6, v7

    .line 769
    neg-int v6, p3

    sub-int/2addr v6, v3

    add-int v7, v5, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 770
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 772
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_3

    .line 773
    sget-object v4, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->FLASH_QUICK:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    goto :goto_0

    .line 774
    :cond_3
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_4

    .line 775
    sget-object v4, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->FLASH_SLOW:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    goto :goto_0

    .line 777
    :cond_4
    sget-object v4, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->ALWAYS:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    goto :goto_0

    .line 783
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_1
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicator:Landroid/widget/ImageView;

    if-nez v6, :cond_5

    .line 784
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicator:Landroid/widget/ImageView;

    .line 786
    :cond_5
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 787
    .restart local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 788
    const/4 v6, 0x1

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLineId:I

    invoke-virtual {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 789
    iget v6, p0, Lcom/android/camera/PanoramaUIMTK;->mFrameWidthHorizontal:I

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mCurrentNum:I

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mFrameWidthHorizontal:I

    mul-int/2addr v7, p2

    iget v8, p0, Lcom/android/camera/PanoramaUIMTK;->mDistanceHorizontal:I

    div-int/2addr v7, v8

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mShutterSize:I

    add-int v0, v6, v7

    .line 790
    neg-int v6, p3

    sub-int/2addr v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    add-int v9, v0, v1

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 791
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_6

    .line 795
    sget-object v4, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->FLASH_QUICK:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    goto/16 :goto_0

    .line 796
    :cond_6
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_7

    .line 797
    sget-object v4, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->FLASH_SLOW:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    goto/16 :goto_0

    .line 799
    :cond_7
    sget-object v4, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->ALWAYS:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    goto/16 :goto_0

    .line 805
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_2
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicator:Landroid/widget/ImageView;

    if-nez v6, :cond_8

    .line 806
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorDown:Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicator:Landroid/widget/ImageView;

    .line 808
    :cond_8
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 809
    .restart local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xb

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 810
    const/4 v6, 0x3

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLineId:I

    invoke-virtual {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 811
    iget v6, p0, Lcom/android/camera/PanoramaUIMTK;->mFrameWidthVertical:I

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mCurrentNum:I

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mFrameWidthVertical:I

    mul-int/2addr v7, p3

    iget v8, p0, Lcom/android/camera/PanoramaUIMTK;->mDistanceVertical:I

    div-int/2addr v7, v8

    add-int v0, v6, v7

    .line 812
    const/4 v6, 0x0

    sub-int v7, p2, v3

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 813
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 815
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_9

    .line 816
    sget-object v4, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->FLASH_QUICK:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    goto/16 :goto_0

    .line 817
    :cond_9
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_a

    .line 818
    sget-object v4, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->FLASH_SLOW:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    goto/16 :goto_0

    .line 820
    :cond_a
    sget-object v4, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->ALWAYS:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    goto/16 :goto_0

    .line 826
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_3
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicator:Landroid/widget/ImageView;

    if-nez v6, :cond_b

    .line 827
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorUp:Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicator:Landroid/widget/ImageView;

    .line 830
    :cond_b
    iget v6, p0, Lcom/android/camera/PanoramaUIMTK;->mFrameWidthVertical:I

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mCurrentNum:I

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mFrameWidthVertical:I

    mul-int/2addr v7, p3

    iget v8, p0, Lcom/android/camera/PanoramaUIMTK;->mDistanceVertical:I

    div-int/2addr v7, v8

    sub-int v0, v6, v7

    .line 831
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 832
    .restart local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0x9

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 833
    const/4 v6, 0x3

    iget v7, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLineId:I

    invoke-virtual {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 834
    sub-int v6, p2, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v0, v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 835
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_c

    .line 838
    sget-object v4, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->FLASH_QUICK:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    goto/16 :goto_0

    .line 839
    :cond_c
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_d

    .line 840
    sget-object v4, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->FLASH_SLOW:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    goto/16 :goto_0

    .line 842
    :cond_d
    sget-object v4, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->ALWAYS:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    goto/16 :goto_0

    .line 860
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_e
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mIndicatorFlashState:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    sget-object v7, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->FLASH_SLOW:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    if-ne v6, v7, :cond_f

    .line 861
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 862
    :cond_f
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mIndicatorFlashState:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    sget-object v7, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->UNKNOWN:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    if-eq v6, v7, :cond_1

    .line 863
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 759
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private showPressStartHint()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessage:Landroid/widget/TextView;

    const v1, 0x7f0800b4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 482
    return-void
.end method

.method private updateDirection(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 562
    iget v0, p0, Lcom/android/camera/PanoramaUIMTK;->mCaptureDirection:I

    if-eq v0, p1, :cond_0

    .line 563
    iput p1, p0, Lcom/android/camera/PanoramaUIMTK;->mCaptureDirection:I

    .line 564
    iget v0, p0, Lcom/android/camera/PanoramaUIMTK;->mCaptureDirection:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 565
    invoke-direct {p0}, Lcom/android/camera/PanoramaUIMTK;->getCaptureDirection()V

    .line 568
    :cond_0
    return-void
.end method

.method private updateMovingUI(IIZ)V
    .locals 4
    .param p1, "xy"    # I
    .param p2, "direction"    # I
    .param p3, "shown"    # Z

    .prologue
    const/4 v3, 0x4

    .line 460
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/PanoramaUIMTK;->filterViewCategory(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    if-eq p2, v3, :cond_0

    .line 468
    const/4 v2, -0x1

    if-le p2, v2, :cond_2

    if-ge p2, v3, :cond_2

    .line 469
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/PanoramaUIMTK;->showShutterButton(Z)V

    .line 472
    :cond_2
    const/high16 v2, -0x10000

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x10

    int-to-short v0, v2

    .line 473
    .local v0, "x":S
    const v2, 0xffff

    and-int/2addr v2, p1

    int-to-short v1, v2

    .line 475
    .local v1, "y":S
    invoke-direct {p0, v0, v1, p2}, Lcom/android/camera/PanoramaUIMTK;->updateUIShowingMatrix(III)V

    goto :goto_0
.end method

.method private updateUIShowingMatrix(III)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "direction"    # I

    .prologue
    .line 525
    const/4 v1, 0x2

    new-array v0, v1, [F

    const/4 v1, 0x0

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x1

    int-to-float v2, p2

    aput v2, v0, v1

    .line 526
    .local v0, "pts":[F
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v1, v1, p3

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 528
    invoke-direct {p0}, Lcom/android/camera/PanoramaUIMTK;->prepareTransformMatrix()V

    .line 529
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 531
    invoke-direct {p0, p3}, Lcom/android/camera/PanoramaUIMTK;->updateDirection(I)V

    .line 532
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/camera/PanoramaUIMTK;->updatePanoIndicator(III)V

    .line 533
    return-void
.end method


# virtual methods
.method public frameUpdate(Landroid/graphics/Bitmap;[II[II)V
    .locals 5
    .param p1, "preview"    # Landroid/graphics/Bitmap;
    .param p2, "imageAttrib"    # [I
    .param p3, "direction"    # I
    .param p4, "offset"    # [I
    .param p5, "maxResultLength"    # I

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 400
    if-nez p4, :cond_1

    .line 401
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v3, v0}, Lcom/android/camera/PanoramaUIMTK;->frameUpdate_MTK(I[Ljava/lang/Object;)V

    .line 403
    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    .line 404
    invoke-virtual {p0, v2}, Lcom/android/camera/PanoramaUIMTK;->pregressControl(Z)V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    aget v1, p4, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/PanoramaUIMTK;->frameUpdate_MTK(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs frameUpdate_MTK(I[Ljava/lang/Object;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 412
    packed-switch p1, :pswitch_data_0

    .line 436
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 414
    :pswitch_1
    aget-object v3, p2, v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/camera/PanoramaUIMTK;->mCurrentNum:I

    .line 415
    iget v3, p0, Lcom/android/camera/PanoramaUIMTK;->mCurrentNum:I

    if-lez v3, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/android/camera/PanoramaUIMTK;->setViewsForNext()V

    goto :goto_0

    .line 421
    :pswitch_2
    aget-object v3, p2, v5

    if-eqz v3, :cond_0

    aget-object v3, p2, v4

    if-eqz v3, :cond_0

    aget-object v3, p2, v6

    if-eqz v3, :cond_0

    .line 422
    aget-object v3, p2, v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 423
    .local v2, "xy":I
    aget-object v3, p2, v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 424
    .local v0, "direction":I
    aget-object v3, p2, v6

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 425
    .local v1, "show":Z
    invoke-direct {p0, v2, v0, v1}, Lcom/android/camera/PanoramaUIMTK;->updateMovingUI(IIZ)V

    goto :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideUIWhenPanoStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/camera/PanoramaUIMTK;->mScreentHeight:I

    .line 183
    invoke-direct {p0, v2}, Lcom/android/camera/PanoramaUIMTK;->showHintPage(I)V

    .line 184
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const v1, 0x7f0202ae

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/app/CameraAppUI;->animateBottomBarToPanoStop(IZ)V

    .line 187
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 188
    return-void
.end method

.method public initMTKUI()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaUIMTK;->mViewCategory:I

    .line 284
    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoramaUIMTK;->mCurrentThemeColor:I

    .line 286
    invoke-direct {p0}, Lcom/android/camera/PanoramaUIMTK;->initializeViewManager()V

    .line 287
    return-void
.end method

.method public initPanoramaUI()V
    .locals 5

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->moduleRoot:Landroid/view/ViewGroup;

    .line 143
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040075

    iget-object v3, p0, Lcom/android/camera/PanoramaUIMTK;->moduleRoot:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 145
    .local v0, "panoView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->moduleRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 148
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PanoramaUIMTK;->mNavigationBarHeight:I

    .line 149
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/camera/PanoramaUIMTK;->mNavigationBarHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/PanoramaUIMTK;->mTopMargin:I

    .line 150
    invoke-virtual {p0}, Lcom/android/camera/PanoramaUIMTK;->initMTKUI()V

    .line 151
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaUIMTK;->mAspectRatio:F

    .line 157
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->moduleRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 158
    invoke-virtual {p0}, Lcom/android/camera/PanoramaUIMTK;->releasePanoView()V

    .line 159
    return-void
.end method

.method public pregressControl(Z)V
    .locals 2
    .param p1, "tShow"    # Z

    .prologue
    .line 1034
    if-eqz p1, :cond_1

    .line 1035
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mBackgroundLL:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mBackgroundLL:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mBackgroundLL:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mBackgroundLL:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public releasePanoView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 911
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorUp:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 912
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorUp:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 914
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorDown:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 915
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 917
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 918
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 920
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorRight:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 921
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 923
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicator:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 924
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 928
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoStitchPreview:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    .line 929
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoStitchPreview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_5

    .line 930
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoStitchPreview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 931
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 932
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 935
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoStitchPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 936
    invoke-direct {p0, v2}, Lcom/android/camera/PanoramaUIMTK;->setBackgroundVisibility(I)V

    .line 937
    iput-object v3, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoStitchPreview:Landroid/widget/ImageView;

    .line 940
    :cond_6
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackground:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    .line 941
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_7

    .line 942
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 943
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 944
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 947
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_7
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 948
    iput-object v3, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackground:Landroid/widget/ImageView;

    .line 951
    :cond_8
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLine:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    .line 952
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLine:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_9

    .line 953
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLine:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 954
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_9

    .line 955
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 958
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_9
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 959
    iput-object v3, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLine:Landroid/widget/ImageView;

    .line 962
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/PanoramaUIMTK;->resetFrameStitchLayout()V

    .line 964
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/camera/PanoramaUIMTK;->mCaptureDirection:I

    .line 965
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/PanoramaUIMTK;->mCurrentNum:I

    .line 966
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 967
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 968
    iget-object v1, p0, Lcom/android/camera/PanoramaUIMTK;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 969
    return-void
.end method

.method public setErrorCode(IZ)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "isFail"    # Z

    .prologue
    .line 191
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessageContainer:Lcom/android/camera/ui/PanoHintMessageContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessageContainer:Lcom/android/camera/ui/PanoHintMessageContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/PanoHintMessageContainer;->setOrientation(IZ)V

    .line 396
    :cond_0
    return-void
.end method

.method public setTheme(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 485
    iput p1, p0, Lcom/android/camera/PanoramaUIMTK;->mCurrentThemeColor:I

    .line 486
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorUp:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorUp:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorDown:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorRight:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 496
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoIndicatorRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 498
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoStitchPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 499
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoStitchPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7fffffff

    iget v2, p0, Lcom/android/camera/PanoramaUIMTK;->mCurrentThemeColor:I

    and-int/2addr v1, v2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 502
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowUp:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 503
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 505
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowDown:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 506
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 508
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowLeft:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 509
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 511
    :cond_7
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowRight:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 512
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 514
    :cond_8
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 515
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 517
    :cond_9
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLine:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLine:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 518
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLine:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 521
    :cond_a
    return-void
.end method

.method public showButtonWhenPanoStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 259
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const v1, 0x7f020160

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->animateBottomBarToFullSize(I)V

    .line 260
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 261
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 262
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->changePanoModeOptions(Z)V

    .line 264
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraActivity;->setSwitchButtonEnabled(Z)V

    .line 266
    return-void
.end method

.method public showFailMessage(II)V
    .locals 10
    .param p1, "error"    # I
    .param p2, "mDeviceOrientation"    # I

    .prologue
    .line 196
    const v0, 0x7f080219

    .line 197
    .local v0, "error_msg_id":I
    packed-switch p1, :pswitch_data_0

    .line 219
    :goto_0
    const v6, 0x8000

    if-le p1, v6, :cond_0

    .line 220
    add-int/lit16 v5, p1, -0x8000

    .line 222
    .local v5, "warnCode":I
    and-int/lit8 v1, v5, 0x1

    .line 223
    .local v1, "ifWarn1":I
    and-int/lit8 v2, v5, 0x10

    .line 224
    .local v2, "ifWarn4":I
    and-int/lit8 v3, v5, 0x20

    .line 225
    .local v3, "ifWarn5":I
    and-int/lit16 v4, v5, 0x80

    .line 226
    .local v4, "ifWarn7":I
    if-lez v4, :cond_3

    .line 227
    const v0, 0x7f080297

    .line 237
    .end local v1    # "ifWarn1":I
    .end local v2    # "ifWarn4":I
    .end local v3    # "ifWarn5":I
    .end local v4    # "ifWarn7":I
    .end local v5    # "warnCode":I
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessageContainer:Lcom/android/camera/ui/PanoHintMessageContainer;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessageContainer:Lcom/android/camera/ui/PanoHintMessageContainer;

    const/4 v7, 0x1

    invoke-virtual {v6, p2, v7}, Lcom/android/camera/ui/PanoHintMessageContainer;->setOrientation(IZ)V

    .line 239
    :cond_1
    const v6, 0x7f080219

    if-ne v0, v6, :cond_6

    if-lez p1, :cond_6

    .line 255
    :cond_2
    :goto_2
    return-void

    .line 199
    :pswitch_0
    const v0, 0x7f08001f

    .line 200
    goto :goto_0

    .line 203
    :pswitch_1
    const v0, 0x7f080021

    .line 204
    goto :goto_0

    .line 206
    :pswitch_2
    const v0, 0x7f08001d

    .line 207
    goto :goto_0

    .line 209
    :pswitch_3
    const v0, 0x7f080088

    .line 210
    goto :goto_0

    .line 212
    :pswitch_4
    const v0, 0x7f080089

    .line 213
    goto :goto_0

    .line 215
    :pswitch_5
    const v0, 0x7f080087

    goto :goto_0

    .line 228
    .restart local v1    # "ifWarn1":I
    .restart local v2    # "ifWarn4":I
    .restart local v3    # "ifWarn5":I
    .restart local v4    # "ifWarn7":I
    .restart local v5    # "warnCode":I
    :cond_3
    if-lez v3, :cond_4

    .line 229
    const v0, 0x7f080295

    goto :goto_1

    .line 230
    :cond_4
    if-lez v2, :cond_5

    .line 231
    const v0, 0x7f080296

    goto :goto_1

    .line 232
    :cond_5
    if-lez v1, :cond_0

    .line 233
    const v0, 0x7f080294

    goto :goto_1

    .line 243
    .end local v1    # "ifWarn1":I
    .end local v2    # "ifWarn4":I
    .end local v3    # "ifWarn5":I
    .end local v4    # "ifWarn7":I
    .end local v5    # "warnCode":I
    :cond_6
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessage:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_7

    .line 244
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessage:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    :cond_7
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    .line 248
    if-gez p1, :cond_2

    .line 249
    iget-object v6, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessage:Landroid/widget/TextView;

    new-instance v7, Lcom/android/camera/PanoramaUIMTK$1;

    invoke-direct {v7, p0}, Lcom/android/camera/PanoramaUIMTK$1;-><init>(Lcom/android/camera/PanoramaUIMTK;)V

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 197
    :pswitch_data_0
    .packed-switch 0x7001
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public showPanoPreviewByOri(I)V
    .locals 6
    .param p1, "captureOri"    # I

    .prologue
    const v5, 0x7f0f01bf

    const v4, 0x7f0f01bd

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 357
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mRootView:Landroid/view/View;

    const v1, 0x7f0f01c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoStitchPreview:Landroid/widget/ImageView;

    .line 359
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mRootView:Landroid/view/View;

    const v1, 0x7f0f01bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackground:Landroid/widget/ImageView;

    .line 360
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLine:Landroid/widget/ImageView;

    .line 361
    iput v5, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLineId:I

    .line 362
    invoke-direct {p0, v2}, Lcom/android/camera/PanoramaUIMTK;->setBackgroundVisibility(I)V

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLine:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PanoramaUIMTK;->mCurrentThemeColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 371
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoStitchPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7fffffff

    iget v2, p0, Lcom/android/camera/PanoramaUIMTK;->mCurrentThemeColor:I

    and-int/2addr v1, v2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 372
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaUIMTK;->showHintPage(I)V

    .line 373
    invoke-direct {p0}, Lcom/android/camera/PanoramaUIMTK;->showMoveingHint()V

    .line 374
    invoke-direct {p0, v3}, Lcom/android/camera/PanoramaUIMTK;->setBackgroundVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessage:Landroid/widget/TextView;

    const v1, 0x7f0800b3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 377
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    return-void

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mRootView:Landroid/view/View;

    const v1, 0x7f0f01c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoStitchPreview:Landroid/widget/ImageView;

    .line 365
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mRootView:Landroid/view/View;

    const v1, 0x7f0f01be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackground:Landroid/widget/ImageView;

    .line 366
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLine:Landroid/widget/ImageView;

    .line 367
    iput v4, p0, Lcom/android/camera/PanoramaUIMTK;->mPanoBackgroundLineId:I

    .line 368
    invoke-direct {p0, v2}, Lcom/android/camera/PanoramaUIMTK;->setBackgroundVisibility(I)V

    goto :goto_0
.end method

.method public showUIWhenPanoStop()V
    .locals 4

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/camera/PanoramaUIMTK;->showButtonWhenPanoStop()V

    .line 271
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaUIMTK;->showHintPage(I)V

    .line 272
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK;->mHintMessage:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/PanoramaUIMTK$2;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaUIMTK$2;-><init>(Lcom/android/camera/PanoramaUIMTK;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    return-void
.end method

.method public updatePanoIndicator(I)V
    .locals 1
    .param p1, "captureOri"    # I

    .prologue
    .line 548
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 549
    invoke-virtual {p0, p1}, Lcom/android/camera/PanoramaUIMTK;->showPanoPreviewByOri(I)V

    .line 550
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaUIMTK;->showPanoIndicatorByOri(I)V

    .line 552
    :cond_0
    return-void
.end method

.method public updatePanoIndicator(III)V
    .locals 1
    .param p1, "captureOri"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 555
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 556
    invoke-virtual {p0, p1}, Lcom/android/camera/PanoramaUIMTK;->showPanoPreviewByOri(I)V

    .line 557
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/PanoramaUIMTK;->showPanoIndicatorByOri(III)V

    .line 559
    :cond_0
    return-void
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method
