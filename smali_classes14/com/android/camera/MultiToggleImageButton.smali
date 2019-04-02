.class public Lcom/android/camera/MultiToggleImageButton;
.super Lcom/android/camera/ui/RotateImageView;
.source "MultiToggleImageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;,
        Lcom/android/camera/MultiToggleImageButton$OnButtonClickListener;,
        Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;
    }
.end annotation


# static fields
.field public static final ANIM_DIRECTION_HORIZONTAL:I = 0x1

.field public static final ANIM_DIRECTION_UNKNOWN:I = -0x1

.field public static final ANIM_DIRECTION_VERTICAL:I = 0x0

.field private static final ANIM_DURATION_MS:I = 0xfa

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final UNSET:I = -0x1


# instance fields
.field private mAnimDirection:I

.field private mAnimator:Landroid/animation/ValueAnimator;

.field protected mClickEnabled:Z

.field private mDescIds:[I

.field protected mImageIds:[I

.field private mLevel:I

.field private final mLock:Ljava/lang/Object;

.field private mMatrix:Landroid/graphics/Matrix;

.field protected mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

.field private mNeedReset:Z

.field protected mOnClickListener:Lcom/android/camera/MultiToggleImageButton$OnButtonClickListener;

.field private mOnStateChangeListener:Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;

.field private mOnStatePreChangeListener:Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;

.field private mParentSize:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "MultiToggleImageButton"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/MultiToggleImageButton;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    .line 90
    iput-boolean v1, p0, Lcom/android/camera/MultiToggleImageButton;->mClickEnabled:Z

    .line 93
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MultiToggleImageButton;->mMatrix:Landroid/graphics/Matrix;

    .line 95
    iput-boolean v1, p0, Lcom/android/camera/MultiToggleImageButton;->mNeedReset:Z

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MultiToggleImageButton;->mLock:Ljava/lang/Object;

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/camera/MultiToggleImageButton;->init(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    iput v2, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    .line 90
    iput-boolean v1, p0, Lcom/android/camera/MultiToggleImageButton;->mClickEnabled:Z

    .line 93
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MultiToggleImageButton;->mMatrix:Landroid/graphics/Matrix;

    .line 95
    iput-boolean v1, p0, Lcom/android/camera/MultiToggleImageButton;->mNeedReset:Z

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MultiToggleImageButton;->mLock:Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Lcom/android/camera/MultiToggleImageButton;->getId()I

    move-result v0

    const v1, 0x7f0f020f

    if-ne v0, v1, :cond_0

    .line 122
    invoke-virtual {p0, v2}, Lcom/android/camera/MultiToggleImageButton;->setAnimDirection(I)V

    .line 123
    new-instance v0, Lcom/android/camera/MultiToggleImageButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/MultiToggleImageButton$1;-><init>(Lcom/android/camera/MultiToggleImageButton;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/MultiToggleImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/MultiToggleImageButton;->init(Landroid/content/Context;)V

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;->parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    iput v2, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    .line 90
    iput-boolean v1, p0, Lcom/android/camera/MultiToggleImageButton;->mClickEnabled:Z

    .line 93
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MultiToggleImageButton;->mMatrix:Landroid/graphics/Matrix;

    .line 95
    iput-boolean v1, p0, Lcom/android/camera/MultiToggleImageButton;->mNeedReset:Z

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MultiToggleImageButton;->mLock:Ljava/lang/Object;

    .line 139
    invoke-virtual {p0}, Lcom/android/camera/MultiToggleImageButton;->getId()I

    move-result v0

    const v1, 0x7f0f020f

    if-ne v0, v1, :cond_0

    .line 140
    invoke-virtual {p0, v2}, Lcom/android/camera/MultiToggleImageButton;->setAnimDirection(I)V

    .line 141
    new-instance v0, Lcom/android/camera/MultiToggleImageButton$2;

    invoke-direct {v0, p0}, Lcom/android/camera/MultiToggleImageButton$2;-><init>(Lcom/android/camera/MultiToggleImageButton;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/MultiToggleImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/MultiToggleImageButton;->init(Landroid/content/Context;)V

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;->parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/MultiToggleImageButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MultiToggleImageButton;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/camera/MultiToggleImageButton;->nextState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/MultiToggleImageButton;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiToggleImageButton;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/MultiToggleImageButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MultiToggleImageButton;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/camera/MultiToggleImageButton;->mAnimDirection:I

    return v0
.end method

.method private combine(II)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 534
    const/4 v7, 0x0

    .line 536
    .local v7, "items":[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/MultiToggleImageButton;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 537
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/MultiToggleImageButton;->mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    array-length v12, v12

    move/from16 v0, p1

    if-ge v0, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/MultiToggleImageButton;->mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    array-length v12, v12

    move/from16 v0, p2

    if-lt v0, v12, :cond_2

    .line 538
    :cond_0
    const/4 v1, 0x0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    :cond_1
    :goto_0
    return-object v1

    .line 541
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/MultiToggleImageButton;->mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    invoke-virtual {v12}, [Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;->clone()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, [Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    move-object v7, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    :goto_1
    :try_start_2
    monitor-exit v13

    .line 546
    if-nez v7, :cond_3

    .line 547
    const/4 v1, 0x0

    goto :goto_0

    .line 544
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 550
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MultiToggleImageButton;->getWidth()I

    move-result v11

    .line 551
    .local v11, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MultiToggleImageButton;->getHeight()I

    move-result v6

    .line 553
    .local v6, "height":I
    if-lez v11, :cond_4

    if-gtz v6, :cond_5

    .line 554
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 557
    :cond_5
    const/4 v12, 0x1

    new-array v5, v12, [I

    const/4 v12, 0x0

    const v13, 0x101009e

    aput v13, v5, v12

    .line 560
    .local v5, "enabledState":[I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MultiToggleImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    aget-object v13, v7, p2

    invoke-virtual {v13}, Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;->getImageId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 561
    .local v8, "newDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MultiToggleImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    aget-object v13, v7, p1

    invoke-virtual {v13}, Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;->getImageId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 565
    .local v10, "oldDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 568
    const/4 v1, 0x0

    .line 569
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/MultiToggleImageButton;->mAnimDirection:I

    if-nez v12, :cond_6

    .line 570
    mul-int/lit8 v12, v6, 0x2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/MultiToggleImageButton;->mParentSize:I

    sub-int/2addr v13, v6

    div-int/lit8 v13, v13, 0x2

    add-int v2, v12, v13

    .line 571
    .local v2, "bitmapHeight":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/MultiToggleImageButton;->mParentSize:I

    sub-int/2addr v12, v6

    div-int/lit8 v12, v12, 0x2

    add-int v9, v6, v12

    .line 572
    .local v9, "oldBitmapOffset":I
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v2, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 573
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 574
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 575
    const/4 v12, 0x0

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    add-int/2addr v14, v9

    invoke-virtual {v10, v12, v9, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 576
    invoke-virtual {v8, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 577
    invoke-virtual {v10, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 578
    .end local v2    # "bitmapHeight":I
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "oldBitmapOffset":I
    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/MultiToggleImageButton;->mAnimDirection:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 579
    mul-int/lit8 v12, v11, 0x2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/MultiToggleImageButton;->mParentSize:I

    sub-int/2addr v13, v11

    div-int/lit8 v13, v13, 0x2

    add-int v3, v12, v13

    .line 580
    .local v3, "bitmapWidth":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/MultiToggleImageButton;->mParentSize:I

    sub-int/2addr v12, v11

    div-int/lit8 v12, v12, 0x2

    add-int v9, v11, v12

    .line 581
    .restart local v9    # "oldBitmapOffset":I
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v6, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 582
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 583
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 584
    const/4 v12, 0x0

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    add-int/2addr v13, v9

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    invoke-virtual {v10, v9, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 585
    invoke-virtual {v8, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 586
    invoke-virtual {v10, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 542
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "bitmapWidth":I
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "enabledState":[I
    .end local v6    # "height":I
    .end local v8    # "newDrawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "oldBitmapOffset":I
    .end local v10    # "oldDrawable":Landroid/graphics/drawable/Drawable;
    .end local v11    # "width":I
    :catch_0
    move-exception v12

    goto/16 :goto_1
.end method

.method private nextState()V
    .locals 2

    .prologue
    .line 334
    iget v1, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    add-int/lit8 v0, v1, 0x1

    .line 335
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/camera/MultiToggleImageButton;->mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/MultiToggleImageButton;->mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 336
    const/4 v0, 0x0

    .line 338
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/MultiToggleImageButton;->setState(I)V

    .line 339
    return-void
.end method

.method private setImageByState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton;->mImageIds:[I

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton;->mImageIds:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/camera/MultiToggleImageButton;->setImageResource(I)V

    .line 527
    :cond_0
    iget v0, p0, Lcom/android/camera/MultiToggleImageButton;->mLevel:I

    invoke-super {p0, v0}, Lcom/android/camera/ui/RotateImageView;->setImageLevel(I)V

    .line 528
    return-void
.end method

.method private setModeItemByState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton;->mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton;->mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;->getImageId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/MultiToggleImageButton;->setImageResource(I)V

    .line 518
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/MultiToggleImageButton;->setActivated(Z)V

    .line 520
    :cond_0
    iget v0, p0, Lcom/android/camera/MultiToggleImageButton;->mLevel:I

    invoke-super {p0, v0}, Lcom/android/camera/ui/RotateImageView;->setImageLevel(I)V

    .line 521
    return-void
.end method

.method private setStateAnimatedInternal(IZ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "callListener"    # Z

    .prologue
    .line 234
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton;->mOnStatePreChangeListener:Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton;->mOnStatePreChangeListener:Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;

    iget v1, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    invoke-interface {v0, p0, v1}, Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;->stateChanged(Landroid/view/View;I)V

    .line 238
    :cond_0
    iget v0, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 239
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;->setStateInternal(IZ)V

    .line 291
    :cond_2
    :goto_0
    return-void

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton;->mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    if-eqz v0, :cond_2

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;->setStateInternal(IZ)V

    goto :goto_0
.end method

.method private setStateInternal(IZ)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "callListener"    # Z

    .prologue
    const/4 v6, 0x0

    .line 304
    iput p1, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    .line 305
    iget-object v3, p0, Lcom/android/camera/MultiToggleImageButton;->mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    if-eqz v3, :cond_0

    .line 306
    iget v3, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    if-ltz v3, :cond_3

    iget v3, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    iget-object v4, p0, Lcom/android/camera/MultiToggleImageButton;->mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 313
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/android/camera/MultiToggleImageButton;->mOnStateChangeListener:Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;

    if-eqz v3, :cond_1

    .line 314
    iget-object v3, p0, Lcom/android/camera/MultiToggleImageButton;->mOnStateChangeListener:Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;

    iget v4, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    invoke-interface {v3, p0, v4}, Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;->stateChanged(Landroid/view/View;I)V

    .line 317
    :cond_1
    iget v3, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    invoke-direct {p0, v3}, Lcom/android/camera/MultiToggleImageButton;->setModeItemByState(I)V

    .line 319
    iget-object v3, p0, Lcom/android/camera/MultiToggleImageButton;->mDescIds:[I

    if-eqz v3, :cond_2

    .line 320
    invoke-virtual {p0}, Lcom/android/camera/MultiToggleImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "oldContentDescription":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/MultiToggleImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/MultiToggleImageButton;->mDescIds:[I

    iget v5, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "newContentDescription":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 323
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 324
    invoke-virtual {p0, v1}, Lcom/android/camera/MultiToggleImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 325
    invoke-virtual {p0}, Lcom/android/camera/MultiToggleImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08003d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "announceChange":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/MultiToggleImageButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 330
    .end local v0    # "announceChange":Ljava/lang/String;
    .end local v1    # "newContentDescription":Ljava/lang/String;
    .end local v2    # "oldContentDescription":Ljava/lang/String;
    :cond_2
    iget v3, p0, Lcom/android/camera/MultiToggleImageButton;->mLevel:I

    invoke-super {p0, v3}, Lcom/android/camera/ui/RotateImageView;->setImageLevel(I)V

    .line 331
    return-void

    .line 308
    :cond_3
    sget-object v3, Lcom/android/camera/MultiToggleImageButton;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "out of index, reset to 0 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/MultiToggleImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 309
    iput v6, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    goto :goto_0
.end method

.method private showIconAlphaAnim()V
    .locals 4

    .prologue
    .line 596
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 597
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 598
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 599
    return-void

    .line 596
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 342
    new-instance v0, Lcom/android/camera/MultiToggleImageButton$3;

    invoke-direct {v0, p0}, Lcom/android/camera/MultiToggleImageButton$3;-><init>(Lcom/android/camera/MultiToggleImageButton;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/MultiToggleImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/camera/MultiToggleImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 352
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MultiToggleImageButton;->mAnimator:Landroid/animation/ValueAnimator;

    .line 353
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 354
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton;->mAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 355
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/MultiToggleImageButton$4;

    invoke-direct {v1, p0}, Lcom/android/camera/MultiToggleImageButton$4;-><init>(Lcom/android/camera/MultiToggleImageButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 369
    return-void

    .line 352
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public modeOverlayVisiblity(Z)V
    .locals 1
    .param p1, "modeOverlayShow"    # Z

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton;->mOnStateChangeListener:Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/camera/MultiToggleImageButton;->mOnStateChangeListener:Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;

    invoke-interface {v0, p1}, Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;->expandBarOverlay(Z)V

    .line 225
    :cond_0
    return-void
.end method

.method public overrideContentDescriptions(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 471
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/MultiToggleImageButton;->overrideContentDescriptions(IZ)V

    .line 472
    return-void
.end method

.method public overrideContentDescriptions(IZ)V
    .locals 4
    .param p1, "resId"    # I
    .param p2, "fromButtonManager"    # Z

    .prologue
    .line 475
    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/android/camera/MultiToggleImageButton;->mDescIds:[I

    if-eqz v2, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    const/4 v1, 0x0

    .line 480
    .local v1, "ids":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/MultiToggleImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 481
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/camera/MultiToggleImageButton;->mDescIds:[I

    .line 482
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 483
    iget-object v2, p0, Lcom/android/camera/MultiToggleImageButton;->mDescIds:[I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 486
    :cond_2
    if-eqz v1, :cond_0

    .line 487
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 486
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 487
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    throw v2
.end method

.method public overrideImageIds(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 438
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/MultiToggleImageButton;->overrideImageIds(IZ)V

    .line 439
    return-void
.end method

.method public overrideImageIds(IZ)V
    .locals 5
    .param p1, "resId"    # I
    .param p2, "fromButtonManager"    # Z

    .prologue
    .line 442
    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/android/camera/MultiToggleImageButton;->mImageIds:[I

    if-eqz v2, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    const/4 v1, 0x0

    .line 448
    .local v1, "ids":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/MultiToggleImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 449
    iget-object v3, p0, Lcom/android/camera/MultiToggleImageButton;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 450
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/camera/MultiToggleImageButton;->mImageIds:[I

    .line 451
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 452
    iget-object v2, p0, Lcom/android/camera/MultiToggleImageButton;->mImageIds:[I

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v0

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 454
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    if-eqz v1, :cond_3

    .line 457
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 461
    :cond_3
    iget v2, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    iget-object v3, p0, Lcom/android/camera/MultiToggleImageButton;->mImageIds:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 463
    iget v2, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    invoke-direct {p0, v2}, Lcom/android/camera/MultiToggleImageButton;->setImageByState(I)V

    goto :goto_0

    .line 454
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 456
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_4

    .line 457
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    throw v2
.end method

.method public overrideModeOptionItems(II)V
    .locals 1
    .param p1, "imageIds"    # I
    .param p2, "textIds"    # I

    .prologue
    .line 404
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItems(IIZ)V

    .line 405
    return-void
.end method

.method public overrideModeOptionItems(IIZ)V
    .locals 8
    .param p1, "iIds"    # I
    .param p2, "tIds"    # I
    .param p3, "fromButtonManager"    # Z

    .prologue
    .line 408
    if-nez p3, :cond_1

    iget-object v3, p0, Lcom/android/camera/MultiToggleImageButton;->mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    if-eqz v3, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    const/4 v1, 0x0

    .line 413
    .local v1, "imageIds":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .line 415
    .local v2, "textIds":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/MultiToggleImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 416
    invoke-virtual {p0}, Lcom/android/camera/MultiToggleImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 417
    iget-object v4, p0, Lcom/android/camera/MultiToggleImageButton;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 418
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v3, v3, [Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    iput-object v3, p0, Lcom/android/camera/MultiToggleImageButton;->mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    .line 419
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 420
    iget-object v3, p0, Lcom/android/camera/MultiToggleImageButton;->mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    new-instance v5, Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;-><init>(II)V

    aput-object v5, v3, v0

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 422
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    if-eqz v1, :cond_3

    .line 425
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 427
    :cond_3
    if-eqz v2, :cond_4

    .line 428
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 432
    :cond_4
    iget v3, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    iget-object v4, p0, Lcom/android/camera/MultiToggleImageButton;->mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 433
    iget v3, p0, Lcom/android/camera/MultiToggleImageButton;->mState:I

    invoke-direct {p0, v3}, Lcom/android/camera/MultiToggleImageButton;->setModeItemByState(I)V

    goto :goto_0

    .line 422
    .end local v0    # "i":I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 424
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_5

    .line 425
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 427
    :cond_5
    if-eqz v2, :cond_6

    .line 428
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6
    throw v3
.end method

.method public overrideModeOptionItemsWithAnim(II)V
    .locals 0
    .param p1, "imageIds"    # I
    .param p2, "textIds"    # I

    .prologue
    .line 396
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItems(II)V

    .line 398
    return-void
.end method

.method protected parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 372
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/camera2/R$styleable;->MultiToggleImageButton:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 376
    .local v0, "a":Landroid/content/res/TypedArray;
    new-instance v1, Lcom/android/camera/MultiToggleImageButton$5;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/MultiToggleImageButton$5;-><init>(Lcom/android/camera/MultiToggleImageButton;Landroid/content/res/TypedArray;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/MultiToggleImageButton;->post(Ljava/lang/Runnable;)Z

    .line 394
    return-void
.end method

.method public setAnimDirection(I)V
    .locals 0
    .param p1, "d"    # I

    .prologue
    .line 506
    iput p1, p0, Lcom/android/camera/MultiToggleImageButton;->mAnimDirection:I

    .line 507
    return-void
.end method

.method public setClickEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 300
    iput-boolean p1, p0, Lcom/android/camera/MultiToggleImageButton;->mClickEnabled:Z

    .line 301
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 161
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/MultiToggleImageButton;->mNeedReset:Z

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/MultiToggleImageButton;->setModeItemByState(I)V

    .line 165
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 166
    return-void
.end method

.method public setExpandView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 594
    return-void
.end method

.method public setImageLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 511
    invoke-super {p0, p1}, Lcom/android/camera/ui/RotateImageView;->setImageLevel(I)V

    .line 512
    iput p1, p0, Lcom/android/camera/MultiToggleImageButton;->mLevel:I

    .line 513
    return-void
.end method

.method public setNeedReset(Z)V
    .locals 0
    .param p1, "needReset"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/camera/MultiToggleImageButton;->mNeedReset:Z

    .line 157
    return-void
.end method

.method public setOnClickListener(Lcom/android/camera/MultiToggleImageButton$OnButtonClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Lcom/android/camera/MultiToggleImageButton$OnButtonClickListener;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/camera/MultiToggleImageButton;->mOnClickListener:Lcom/android/camera/MultiToggleImageButton$OnButtonClickListener;

    .line 179
    return-void
.end method

.method public setOnPreChangeListener(Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;)V
    .locals 0
    .param p1, "onStatePreChangeListener"    # Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/camera/MultiToggleImageButton;->mOnStatePreChangeListener:Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;

    .line 191
    return-void
.end method

.method public setOnStateChangeListener(Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;)V
    .locals 0
    .param p1, "onStateChangeListener"    # Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/camera/MultiToggleImageButton;->mOnStateChangeListener:Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;

    .line 175
    return-void
.end method

.method public setParentSize(I)V
    .locals 0
    .param p1, "s"    # I

    .prologue
    .line 498
    iput p1, p0, Lcom/android/camera/MultiToggleImageButton;->mParentSize:I

    .line 499
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/MultiToggleImageButton;->setState(IZ)V

    .line 209
    return-void
.end method

.method public setState(IZ)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "callListener"    # Z

    .prologue
    .line 218
    invoke-direct {p0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;->setStateAnimatedInternal(IZ)V

    .line 219
    return-void
.end method
