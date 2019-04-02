.class public Lcom/android/camera/ui/AdvancedBottomBar;
.super Lcom/android/camera/ui/operation/BottomBarOperation;
.source "AdvancedBottomBar.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mBlockTouch:Z

.field private mBottomBarSpec:Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

.field private mCancelButton:Landroid/widget/ImageButton;

.field private mCancelLayout:Landroid/widget/FrameLayout;

.field private mCaptureLayout:Lcom/android/camera/ui/RotateLayout;

.field private mIntentReviewLayout:Landroid/widget/FrameLayout;

.field private mModePicker:Lcom/android/camera/ui/ModePicker;

.field private mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSwtichCameraView:Landroid/view/View;

.field private mThumbnailContainerLayout:Lcom/android/camera/ui/RotateLayout;

.field private mThumbnailView:Landroid/view/View;

.field private mVideoSnapShotButton:Lcom/android/camera/VideoSnapShotButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "AdvBottomBar"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/AdvancedBottomBar;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/operation/BottomBarOperation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mBlockTouch:Z

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/AdvancedBottomBar;)Lcom/android/camera/ShutterButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedBottomBar;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/AdvancedBottomBar;)Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedBottomBar;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mBottomBarSpec:Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/AdvancedBottomBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedBottomBar;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mSwtichCameraView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/AdvancedBottomBar;)Lcom/android/camera/VideoSnapShotButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedBottomBar;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mVideoSnapShotButton:Lcom/android/camera/VideoSnapShotButton;

    return-object v0
.end method

.method private crossfadeDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/TransitionDrawable;
    .locals 4
    .param p1, "from"    # Landroid/graphics/drawable/Drawable;
    .param p2, "to"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x1

    .line 435
    const/4 v2, 0x2

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    .line 436
    .local v0, "arrayDrawable":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 437
    aput-object p2, v0, v3

    .line 438
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 439
    .local v1, "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 440
    return-object v1
.end method

.method private extendTouchAreaToMatchParent(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/AdvancedBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 174
    .local v1, "parent":Landroid/view/View;
    new-instance v2, Lcom/android/camera/ui/AdvancedBottomBar$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/camera/ui/AdvancedBottomBar$1;-><init>(Lcom/android/camera/ui/AdvancedBottomBar;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method

.method private setButtonImageLevels(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 270
    const v0, 0x7f0f00db

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageLevel(I)V

    .line 271
    const v0, 0x7f0f01e7

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageLevel(I)V

    .line 272
    const v0, 0x7f0f01e6

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageLevel(I)V

    .line 273
    return-void
.end method

.method private setOverlayBottomBar(Z)V
    .locals 3
    .param p1, "overlay"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 287
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mBlockTouch:Z

    .line 288
    if-eqz p1, :cond_1

    .line 289
    invoke-direct {p0, v1}, Lcom/android/camera/ui/AdvancedBottomBar;->setButtonImageLevels(I)V

    .line 293
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 287
    goto :goto_0

    .line 291
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/ui/AdvancedBottomBar;->setButtonImageLevels(I)V

    goto :goto_1
.end method


# virtual methods
.method public addVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mVideoSnapShotButton:Lcom/android/camera/VideoSnapShotButton;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mVideoSnapShotButton:Lcom/android/camera/VideoSnapShotButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoSnapShotButton;->addVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V

    .line 556
    :cond_0
    return-void
.end method

.method public animateToFullSize(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 476
    return-void
.end method

.method public animateToPanoStop(IZ)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 488
    .local v0, "toDraw":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 489
    if-eqz p2, :cond_1

    .line 490
    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 495
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 497
    :cond_0
    return-void

    .line 492
    :cond_1
    const v1, -0x777778

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public animateToVideoStop(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 464
    return-void
.end method

.method public buildModeList(Ljava/util/List;ZIZ)V
    .locals 1
    .param p2, "isSecureCamera"    # Z
    .param p3, "current"    # I
    .param p4, "isCaptureIntent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;ZIZ)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "modeIndexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/ui/BottomTextContainer;->buildModeList(Ljava/util/List;ZIZ)Z

    .line 115
    return-void
.end method

.method public disableSwitchMode()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomTextContainer;->disableSwitchMode()V

    .line 119
    return-void
.end method

.method public enableSwitchMode()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomTextContainer;->enableSwitchMode()V

    .line 123
    return-void
.end method

.method public hideVideoSnapShotButton()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mVideoSnapShotButton:Lcom/android/camera/VideoSnapShotButton;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mVideoSnapShotButton:Lcom/android/camera/VideoSnapShotButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoSnapShotButton;->setVisibility(I)V

    .line 568
    :cond_0
    return-void
.end method

.method public isShutterButtonAnimating()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isShuttonBtnAnimating()Z

    move-result v0

    return v0
.end method

.method public isShutterButtonEnabled()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutterButtonPressed()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isPressed()Z

    move-result v0

    return v0
.end method

.method public isSwitchButtonEnabled()Z
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mSwtichCameraView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isTouchShutterButton(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-nez v5, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v3

    .line 154
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 155
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 156
    .local v2, "y":I
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 157
    .local v0, "location":[I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_2

    .line 158
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v5, v0}, Lcom/android/camera/ShutterButton;->getLocationOnScreen([I)V

    .line 162
    :goto_1
    aget v5, v0, v3

    if-lt v1, v5, :cond_0

    aget v5, v0, v3

    iget-object v6, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v6}, Lcom/android/camera/ShutterButton;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    if-gt v1, v5, :cond_0

    .line 165
    aget v5, v0, v4

    if-lt v2, v5, :cond_0

    aget v5, v0, v4

    iget-object v6, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v6}, Lcom/android/camera/ShutterButton;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-gt v2, v5, :cond_0

    move v3, v4

    .line 168
    goto :goto_0

    .line 160
    :cond_2
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v5, v0}, Lcom/android/camera/ShutterButton;->getLocationInWindow([I)V

    goto :goto_1
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/camera/ui/operation/BottomBarOperation;->onFinishInflate()V

    .line 81
    const v0, 0x7f0f00b3

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mCaptureLayout:Lcom/android/camera/ui/RotateLayout;

    .line 83
    const v0, 0x7f0f00b9

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mCancelLayout:Landroid/widget/FrameLayout;

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mCancelLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 87
    const v0, 0x7f0f01e5

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mIntentReviewLayout:Landroid/widget/FrameLayout;

    .line 90
    const v0, 0x7f0f00b4

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 93
    const v0, 0x7f0f00ba

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mCancelButton:Landroid/widget/ImageButton;

    .line 96
    const v0, 0x7f0f01e8

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mThumbnailContainerLayout:Lcom/android/camera/ui/RotateLayout;

    .line 98
    const v0, 0x7f0f01ea

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mThumbnailView:Landroid/view/View;

    .line 99
    const v0, 0x7f0f020f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mSwtichCameraView:Landroid/view/View;

    .line 104
    const v0, 0x7f0f00b6

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BottomTextContainer;

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    .line 105
    const v0, 0x7f0f00d5

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/VideoSnapShotButton;

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mVideoSnapShotButton:Lcom/android/camera/VideoSnapShotButton;

    .line 106
    return-void
.end method

.method public onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 297
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 298
    .local v2, "measureWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 299
    .local v1, "measureHeight":I
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 301
    :cond_0
    sget-object v4, Lcom/android/camera/ui/AdvancedBottomBar;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMeasure() can\'t be 0. width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 304
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    if-nez v4, :cond_2

    .line 305
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/operation/BottomBarOperation;->onMeasure(II)V

    .line 306
    sget-object v4, Lcom/android/camera/ui/AdvancedBottomBar;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Capture layout helper needs to be set first."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 316
    :goto_0
    return-void

    .line 308
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v4}, Lcom/android/camera/CaptureLayoutHelper;->getBottomBarRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 310
    .local v0, "bottomBarRect":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    .line 309
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 311
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 309
    invoke-super {p0, v4, v5}, Lcom/android/camera/ui/operation/BottomBarOperation;->onMeasure(II)V

    .line 313
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v4}, Lcom/android/camera/CaptureLayoutHelper;->shouldOverlayBottomBar()Z

    move-result v3

    .line 314
    .local v3, "shouldOverlayBottomBar":Z
    invoke-direct {p0, v3}, Lcom/android/camera/ui/AdvancedBottomBar;->setOverlayBottomBar(Z)V

    goto :goto_0
.end method

.method public onModeSelected(I)V
    .locals 1
    .param p1, "modeIndex"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BottomTextContainer;->onModeSelected(I)V

    .line 149
    return-void
.end method

.method public onSwipeDetected(I)V
    .locals 1
    .param p1, "swipeState"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomTextContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BottomTextContainer;->onSwipeDetected(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mBlockTouch:Z

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mVideoSnapShotButton:Lcom/android/camera/VideoSnapShotButton;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mVideoSnapShotButton:Lcom/android/camera/VideoSnapShotButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoSnapShotButton;->removeVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V

    .line 562
    :cond_0
    return-void
.end method

.method public requireBlockTouch(Z)V
    .locals 0
    .param p1, "block"    # Z

    .prologue
    .line 591
    iput-boolean p1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mBlockTouch:Z

    .line 592
    return-void
.end method

.method public resetVideoBtnSrc(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 480
    invoke-super {p0, p1}, Lcom/android/camera/ui/operation/BottomBarOperation;->resetVideoBtnSrc(I)V

    .line 481
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->stopVideoBtnAnim(I)V

    .line 483
    return-void
.end method

.method public setBackgroundAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 334
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 330
    return-void
.end method

.method public setBottomBarUISpec(Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V
    .locals 0
    .param p1, "bottomBarSpec"    # Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mBottomBarSpec:Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    .line 597
    return-void
.end method

.method public setColorsForModeIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 332
    return-void
.end method

.method public setDisableAllUserInteractions(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BottomTextContainer;->setDisableAllUserInteractions(Z)V

    .line 127
    return-void
.end method

.method public setFakeShutterButtonEnabled()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 362
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setClickable(Z)V

    .line 363
    return-void
.end method

.method public setFakeSwitchButtonEnabled()V
    .locals 3

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mBottomBarSpec:Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mBottomBarSpec:Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    iget-boolean v0, v1, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 368
    .local v0, "enableCamera":Z
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mSwtichCameraView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 369
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mSwtichCameraView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 370
    return-void

    .line 367
    .end local v0    # "enableCamera":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setModeSwitchListener(Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeSwitchListener:Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BottomTextContainer;->setModeSwitchListener(Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;)V

    .line 111
    return-void
.end method

.method public setModeTextVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BottomTextContainer;->setVisibility(I)V

    .line 145
    return-void
.end method

.method public setOperationVisible(I)V
    .locals 3
    .param p1, "visible"    # I

    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mThumbnailView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mThumbnailView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mSwtichCameraView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mBottomBarSpec:Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mBottomBarSpec:Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    iget-boolean v0, v1, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideCamera:Z

    .line 516
    .local v0, "hideCamera":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 517
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mSwtichCameraView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 523
    .end local v0    # "hideCamera":Z
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedBottomBar;->isInRecord()Z

    move-result v1

    if-nez v1, :cond_2

    .line 524
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/BottomTextContainer;->setVisibility(I)V

    .line 526
    :cond_2
    return-void

    .line 515
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 519
    .restart local v0    # "hideCamera":Z
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mSwtichCameraView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setOperationVisible(III)V
    .locals 3
    .param p1, "thumbVisible"    # I
    .param p2, "switchVisible"    # I
    .param p3, "modeVisible"    # I

    .prologue
    .line 500
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mThumbnailView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mThumbnailView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mSwtichCameraView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 502
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mBottomBarSpec:Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mBottomBarSpec:Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    iget-boolean v0, v1, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideCamera:Z

    .line 503
    .local v0, "hideCamera":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 504
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mSwtichCameraView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 509
    .end local v0    # "hideCamera":Z
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v1, p3}, Lcom/android/camera/ui/BottomTextContainer;->setVisibility(I)V

    .line 510
    :cond_2
    return-void

    .line 502
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 506
    .restart local v0    # "hideCamera":Z
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mSwtichCameraView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mCaptureLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mCaptureLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mThumbnailContainerLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mThumbnailContainerLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 538
    :cond_1
    return-void
.end method

.method public setShutterButtonEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    new-instance v1, Lcom/android/camera/ui/AdvancedBottomBar$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/AdvancedBottomBar$2;-><init>(Lcom/android/camera/ui/AdvancedBottomBar;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 351
    return-void
.end method

.method public setShutterButtonEnabledImmediately(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setClickable(Z)V

    .line 355
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/AdvancedBottomBar;->setShutterButtonImportantToA11y(Z)V

    .line 357
    return-void
.end method

.method public setShutterButtonIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 453
    .local v0, "iconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 457
    return-void
.end method

.method public setShutterButtonImportantToA11y(Z)V
    .locals 2
    .param p1, "important"    # Z

    .prologue
    .line 384
    if-eqz p1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImportantForAccessibility(I)V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method public setSwipeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BottomTextContainer;->setSwipeEnabled(Z)V

    .line 131
    return-void
.end method

.method public setSwitchButtonEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 413
    new-instance v0, Lcom/android/camera/ui/AdvancedBottomBar$3;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/AdvancedBottomBar$3;-><init>(Lcom/android/camera/ui/AdvancedBottomBar;Z)V

    .line 422
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mSwtichCameraView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setSwitchButtonVisible(I)V
    .locals 3
    .param p1, "visible"    # I

    .prologue
    .line 542
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mSwtichCameraView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mBottomBarSpec:Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mBottomBarSpec:Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    iget-boolean v0, v1, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideCamera:Z

    .line 544
    .local v0, "hideCamera":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 545
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mSwtichCameraView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 550
    .end local v0    # "hideCamera":Z
    :cond_0
    :goto_1
    return-void

    .line 543
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 547
    .restart local v0    # "hideCamera":Z
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mSwtichCameraView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setVideoShutterButtonEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mVideoSnapShotButton:Lcom/android/camera/VideoSnapShotButton;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mVideoSnapShotButton:Lcom/android/camera/VideoSnapShotButton;

    new-instance v1, Lcom/android/camera/ui/AdvancedBottomBar$4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/AdvancedBottomBar$4;-><init>(Lcom/android/camera/ui/AdvancedBottomBar;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoSnapShotButton;->post(Ljava/lang/Runnable;)Z

    .line 587
    :cond_0
    return-void
.end method

.method public showVideoSnapShotButton()V
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mVideoSnapShotButton:Lcom/android/camera/VideoSnapShotButton;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mVideoSnapShotButton:Lcom/android/camera/VideoSnapShotButton;

    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedBottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02030e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoSnapShotButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 573
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mVideoSnapShotButton:Lcom/android/camera/VideoSnapShotButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoSnapShotButton;->setVisibility(I)V

    .line 575
    :cond_0
    return-void
.end method

.method public startVideoBtnWithAnim(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->playVideoBtnAnim(I)V

    .line 469
    return-void
.end method

.method public switchModeDone()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomTextContainer;->switchModeDone()V

    .line 135
    return-void
.end method

.method public transitionToCancel()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 218
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mCaptureLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mIntentReviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mCancelLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/BottomTextContainer;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mSwtichCameraView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 224
    invoke-super {p0}, Lcom/android/camera/ui/operation/BottomBarOperation;->transitionToCancel()V

    .line 225
    return-void
.end method

.method public transitionToCapture()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mCaptureLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mCancelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mIntentReviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomTextContainer;->setVisibility(I)V

    .line 205
    invoke-super {p0}, Lcom/android/camera/ui/operation/BottomBarOperation;->transitionToCapture()V

    .line 206
    return-void
.end method

.method public transitionToHide()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 232
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mCaptureLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mIntentReviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mCancelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomTextContainer;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mSwtichCameraView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    invoke-super {p0}, Lcom/android/camera/ui/operation/BottomBarOperation;->transitionToHide()V

    .line 239
    return-void
.end method

.method public transitionToIntentCaptureLayout()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mIntentReviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mCaptureLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mCancelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomTextContainer;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mSwtichCameraView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    invoke-super {p0}, Lcom/android/camera/ui/operation/BottomBarOperation;->transitionToIntentCaptureLayout()V

    .line 253
    return-void
.end method

.method public transitionToIntentReviewLayout()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 260
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mCaptureLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mIntentReviewLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mCancelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/BottomTextContainer;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mSwtichCameraView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    invoke-super {p0}, Lcom/android/camera/ui/operation/BottomBarOperation;->transitionToIntentReviewLayout()V

    .line 267
    return-void
.end method

.method public transitionToRecord()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar;->mModeTextContainerLayout:Lcom/android/camera/ui/BottomTextContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomTextContainer;->setVisibility(I)V

    .line 210
    invoke-super {p0}, Lcom/android/camera/ui/operation/BottomBarOperation;->transitionToRecord()V

    .line 211
    return-void
.end method
