.class public Lcom/android/camera/ui/ProModeSeekBar;
.super Landroid/view/View;
.source "ProModeSeekBar.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;,
        Lcom/android/camera/ui/ProModeSeekBar$Item;
    }
.end annotation


# static fields
.field public static final DEFAULT_ANGLE:F = 45.0f

.field public static final INVALID_ANGLE:F = -1.0f

.field private static final POINTER_RADIUS:F = 30.0f

.field private static final SAMPLE_POINT:I = 0xa

.field private static final SCALE_SIZE:I = 0xa


# instance fields
.field protected ccwDistanceFromEnd:F

.field protected ccwDistanceFromPointer:F

.field protected ccwDistanceFromStart:F

.field protected cwDistanceFromEnd:F

.field protected cwDistanceFromPointer:F

.field protected cwDistanceFromStart:F

.field protected lastCWDistanceFromStart:F

.field protected lockAtEnd:Z

.field protected lockAtStart:Z

.field protected lockEnabled:Z

.field private mBGRestrictAngle:F

.field private mBandWidth:F

.field private mClipPaddingSize:I

.field private mContext:Landroid/content/Context;

.field private mDeviceHeight:F

.field private mDisableColor:I

.field private mDisablePaint:Landroid/graphics/Paint;

.field private mEndAngle:F

.field private mEndBGAngle:F

.field private mHalfBandWidth:F

.field private mIndicatorBackground:Landroid/graphics/Bitmap;

.field private mIndicatorDisableBackground:Landroid/graphics/Bitmap;

.field private mIsMovable:Z

.field protected mIsMovingCW:Z

.field private mIsRestrictMode:Z

.field private mIsScaled:Z

.field private mIsTouchEnabled:Z

.field private mItemLock:Ljava/lang/Object;

.field private mLabelItems:[Lcom/android/camera/ui/ProModeSeekBar$Item;

.field private mLastMovePos:F

.field private mLineColor:I

.field private mListener:Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;

.field private mMax:I

.field private mMoveDiff:F

.field protected mMoveOutsideCircle:Z

.field private mMoveThreshold:F

.field private mOrientation:I

.field private mPointRadius:I

.field private mPointerPosition:F

.field private mPointerPositionXY:[F

.field private mProgress:I

.field private mProgressDegree:F

.field private mProgressDisableLargePaint:Landroid/graphics/Paint;

.field private mProgressDisablePaint:Landroid/graphics/Paint;

.field private mProgressLargePaint:Landroid/graphics/Paint;

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressPath:Landroid/graphics/Path;

.field private mQuarterBandWidth:F

.field private mRadius:F

.field private mRestrictAngle:F

.field private mScaleSize:I

.field private mSectorBGPaint:Landroid/graphics/Paint;

.field private mSectorBGPath:Landroid/graphics/Path;

.field private mSectorBGRectF:Landroid/graphics/RectF;

.field private mSectorBGStrokePaint:Landroid/graphics/Paint;

.field private mSectorBGStrokePath:Landroid/graphics/Path;

.field private mSectorPaint:Landroid/graphics/Paint;

.field private mSectorPath:Landroid/graphics/Path;

.field private mSectorRectF:Landroid/graphics/RectF;

.field private mStartAngle:F

.field private mStartBGAngle:F

.field private mTotalBGDegree:F

.field private mTotalDegree:F

.field private mUnscaluedDefaultIndex:I

.field protected mUserIsMovingPointer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 352
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorRectF:Landroid/graphics/RectF;

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGRectF:Landroid/graphics/RectF;

    .line 89
    iput v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mMax:I

    iput v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgress:I

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mItemLock:Ljava/lang/Object;

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mPointerPositionXY:[F

    .line 95
    iput v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mUnscaluedDefaultIndex:I

    .line 97
    iput v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mScaleSize:I

    .line 98
    iput-boolean v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mIsScaled:Z

    .line 251
    iput-boolean v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mIsTouchEnabled:Z

    .line 262
    iput-boolean v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->lockEnabled:Z

    .line 268
    iput-boolean v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtStart:Z

    .line 274
    iput-boolean v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtEnd:Z

    .line 280
    iput-boolean v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mUserIsMovingPointer:Z

    .line 353
    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/ui/ProModeSeekBar;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 354
    invoke-direct {p0}, Lcom/android/camera/ui/ProModeSeekBar;->initVars()V

    .line 355
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 358
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorRectF:Landroid/graphics/RectF;

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGRectF:Landroid/graphics/RectF;

    .line 89
    iput v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mMax:I

    iput v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgress:I

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mItemLock:Ljava/lang/Object;

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mPointerPositionXY:[F

    .line 95
    iput v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mUnscaluedDefaultIndex:I

    .line 97
    iput v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mScaleSize:I

    .line 98
    iput-boolean v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mIsScaled:Z

    .line 251
    iput-boolean v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mIsTouchEnabled:Z

    .line 262
    iput-boolean v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->lockEnabled:Z

    .line 268
    iput-boolean v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtStart:Z

    .line 274
    iput-boolean v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtEnd:Z

    .line 280
    iput-boolean v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mUserIsMovingPointer:Z

    .line 359
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/ProModeSeekBar;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 360
    invoke-direct {p0}, Lcom/android/camera/ui/ProModeSeekBar;->initVars()V

    .line 361
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/ProModeSeekBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ProModeSeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mPointRadius:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ProModeSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ProModeSeekBar;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mMax:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ProModeSeekBar;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressDisableLargePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ProModeSeekBar;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ProModeSeekBar;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressDisablePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/ProModeSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ProModeSeekBar;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mClipPaddingSize:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ProModeSeekBar;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/ProModeSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ProModeSeekBar;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mLineColor:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ProModeSeekBar;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGStrokePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ProModeSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ProModeSeekBar;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mTotalDegree:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/ProModeSeekBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ProModeSeekBar;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mIsTouchEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ProModeSeekBar;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mDisablePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ProModeSeekBar;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mIndicatorBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/ProModeSeekBar;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ProModeSeekBar;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mPointerPositionXY:[F

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ProModeSeekBar;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGRectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/ProModeSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ProModeSeekBar;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mHalfBandWidth:F

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/ProModeSeekBar;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ProModeSeekBar;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressLargePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private calculateMovePos(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 927
    iget-boolean v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mIsMovable:Z

    if-nez v2, :cond_0

    .line 940
    :goto_0
    return-void

    .line 931
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/ProModeSeekBar;->mMoveDiff:F

    add-float v0, v2, v3

    .line 933
    .local v0, "lastMovePos":F
    iget v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mLastMovePos:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    .line 934
    iget v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mLastMovePos:F

    .line 936
    :cond_1
    iget v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mLastMovePos:F

    iget v3, p0, Lcom/android/camera/ui/ProModeSeekBar;->mMoveThreshold:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    iget v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mLastMovePos:F

    .line 937
    .local v1, "upper":F
    :goto_1
    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    .line 938
    move v0, v1

    .line 939
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 936
    .end local v1    # "upper":F
    :cond_3
    iget v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mMoveThreshold:F

    goto :goto_1
.end method

.method private getUnScaleProgress()I
    .locals 3

    .prologue
    .line 482
    iget v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgress:I

    iget v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mScaleSize:I

    div-int v0, v1, v2

    .line 483
    .local v0, "unScaleProgress":I
    iget v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgress:I

    iget v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mMax:I

    if-ne v1, v2, :cond_0

    .line 484
    add-int/lit8 v0, v0, -0x1

    .line 486
    :cond_0
    return v0
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 364
    iput-object p1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mContext:Landroid/content/Context;

    .line 365
    sget-object v1, Lcom/android/camera2/R$styleable;->ProMode:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 366
    .local v0, "attrArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mBandWidth:F

    .line 367
    iget v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mBandWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mHalfBandWidth:F

    .line 368
    iget v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mBandWidth:F

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mQuarterBandWidth:F

    .line 369
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mRestrictAngle:F

    .line 370
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mBGRestrictAngle:F

    .line 371
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 373
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->recalculateAngle()V

    .line 374
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->recalculateAll()V

    .line 375
    return-void
.end method

.method private initData(Ljava/util/ArrayList;Ljava/lang/String;Z)V
    .locals 23
    .param p2, "currentValue"    # Ljava/lang/String;
    .param p3, "useSameIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 821
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/ProModeSeekBar;->mLabelItems:[Lcom/android/camera/ui/ProModeSeekBar$Item;

    if-eqz v2, :cond_0

    .line 822
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/ProModeSeekBar;->mLabelItems:[Lcom/android/camera/ui/ProModeSeekBar$Item;

    array-length v2, v2

    if-ge v12, v2, :cond_0

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/ProModeSeekBar;->mLabelItems:[Lcom/android/camera/ui/ProModeSeekBar$Item;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Lcom/android/camera/ui/ProModeSeekBar$Item;->recycle()V

    .line 824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/ProModeSeekBar;->mLabelItems:[Lcom/android/camera/ui/ProModeSeekBar$Item;

    const/4 v3, 0x0

    aput-object v3, v2, v12

    .line 822
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 828
    .end local v12    # "i":I
    :cond_0
    const/16 v20, 0x0

    .line 829
    .local v20, "unscaledCurrentIndex":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_2

    .line 830
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v2}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 831
    move/from16 v20, v12

    .line 829
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 835
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/ProModeSeekBar;->mScaleSize:I

    mul-int v2, v2, v20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/ProModeSeekBar;->mProgress:I

    .line 836
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/ProModeSeekBar;->mScaleSize:I

    mul-int/2addr v2, v3

    add-int/lit8 v19, v2, 0x1

    .line 837
    .local v19, "scaledItemSize":I
    move/from16 v0, v19

    new-array v2, v0, [Lcom/android/camera/ui/ProModeSeekBar$Item;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/ui/ProModeSeekBar;->mLabelItems:[Lcom/android/camera/ui/ProModeSeekBar$Item;

    .line 838
    const/4 v10, 0x0

    .local v10, "bLabel":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .local v7, "bIndicator":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .local v8, "bPIndicator":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 842
    .local v9, "bHintIcon":Landroid/graphics/Bitmap;
    const/16 v16, 0x0

    .line 843
    .local v16, "lastIndicator":I
    const/16 v17, 0x0

    .line 844
    .local v17, "lastPIndicator":I
    const/4 v15, 0x0

    .line 846
    .local v15, "lastHintIcon":I
    const/4 v12, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_8

    .line 850
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    sget-object v3, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->INDICATOR:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    invoke-virtual {v2, v3}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getIcon(Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;)I

    move-result v13

    .line 851
    .local v13, "indicator":I
    if-eqz v13, :cond_3

    move/from16 v0, v16

    if-eq v13, v0, :cond_3

    .line 852
    move/from16 v16, v13

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 855
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    sget-object v3, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->INDICATOR_PRESSED:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    invoke-virtual {v2, v3}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getIcon(Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;)I

    move-result v18

    .line 856
    .local v18, "pIndicator":I
    if-eqz v18, :cond_4

    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 857
    move/from16 v17, v18

    .line 858
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, v18

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 860
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    sget-object v3, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->NORMAL:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    invoke-virtual {v2, v3}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getIcon(Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;)I

    move-result v11

    .line 861
    .local v11, "hintIcon":I
    if-eqz v11, :cond_5

    if-eq v11, v15, :cond_5

    .line 862
    move v15, v11

    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 865
    :cond_5
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/ProModeSeekBar;->mScaleSize:I

    if-ge v14, v2, :cond_6

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/ProModeSeekBar;->mLabelItems:[Lcom/android/camera/ui/ProModeSeekBar$Item;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/ProModeSeekBar;->mScaleSize:I

    mul-int/2addr v2, v12

    add-int v22, v2, v14

    new-instance v2, Lcom/android/camera/ui/ProModeSeekBar$Item;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/ProModeSeekBar;->mScaleSize:I

    mul-int/2addr v3, v12

    add-int v4, v3, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ui/ProModeSeekBar$Item;-><init>(Lcom/android/camera/ui/ProModeSeekBar;ILcom/android/camera/ManualDataUtil$ManualModeItemData;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    aput-object v2, v21, v22

    .line 865
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 870
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v12, v2, :cond_7

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/ProModeSeekBar;->mLabelItems:[Lcom/android/camera/ui/ProModeSeekBar$Item;

    move-object/from16 v21, v0

    add-int/lit8 v22, v19, -0x1

    new-instance v2, Lcom/android/camera/ui/ProModeSeekBar$Item;

    add-int/lit8 v4, v19, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ui/ProModeSeekBar$Item;-><init>(Lcom/android/camera/ui/ProModeSeekBar;ILcom/android/camera/ManualDataUtil$ManualModeItemData;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    aput-object v2, v21, v22

    .line 846
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 876
    .end local v11    # "hintIcon":I
    .end local v13    # "indicator":I
    .end local v14    # "j":I
    .end local v18    # "pIndicator":I
    :cond_8
    add-int/lit8 v2, v19, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/ProModeSeekBar;->mMax:I

    .line 877
    return-void
.end method

.method private initMovePos(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 917
    iget-boolean v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mIsMovable:Z

    if-nez v0, :cond_1

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mMoveDiff:F

    .line 922
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mListener:Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mListener:Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;->onMovementChanged(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private initVars()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x40400000    # 3.0f

    .line 378
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02009a

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mIndicatorBackground:Landroid/graphics/Bitmap;

    .line 379
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02009c

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mIndicatorDisableBackground:Landroid/graphics/Bitmap;

    .line 380
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mLineColor:I

    .line 381
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mDisableColor:I

    .line 382
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/util/ProductModelUtil;->isLargeScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 383
    :goto_0
    iput v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mMoveThreshold:F

    .line 384
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 385
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 387
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ProModeSeekBar;->mMoveThreshold:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mMoveThreshold:F

    .line 388
    iget v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mMoveThreshold:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_0

    .line 389
    iput v7, p0, Lcom/android/camera/ui/ProModeSeekBar;->mMoveThreshold:F

    .line 392
    :cond_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorPaint:Landroid/graphics/Paint;

    .line 393
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 394
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 397
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGPaint:Landroid/graphics/Paint;

    .line 398
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 402
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGStrokePaint:Landroid/graphics/Paint;

    .line 403
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 404
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGStrokePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/camera/ui/ProModeSeekBar;->mLineColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 406
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGStrokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 408
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressPaint:Landroid/graphics/Paint;

    .line 409
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 410
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 411
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 412
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 414
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressDisablePaint:Landroid/graphics/Paint;

    .line 415
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressDisablePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 416
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressDisablePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 417
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressDisablePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 418
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressDisablePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 420
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressLargePaint:Landroid/graphics/Paint;

    .line 421
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressLargePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 422
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressLargePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 423
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressLargePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 424
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressLargePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 426
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressDisableLargePaint:Landroid/graphics/Paint;

    .line 427
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressDisableLargePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 428
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressDisableLargePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 429
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressDisableLargePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 430
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressDisableLargePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 432
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mDisablePaint:Landroid/graphics/Paint;

    .line 433
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mDisableColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 434
    .local v0, "filter":Landroid/graphics/ColorFilter;
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mDisablePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 435
    return-void

    .line 383
    .end local v0    # "filter":Landroid/graphics/ColorFilter;
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    goto/16 :goto_0
.end method

.method private restoreMovePos()V
    .locals 4

    .prologue
    .line 943
    iget-boolean v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mIsMovable:Z

    if-nez v0, :cond_1

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mLastMovePos:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 948
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mListener:Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mListener:Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;->onMovementChanged(Landroid/view/View;Z)V

    goto :goto_0
.end method


# virtual methods
.method protected calculatePointerAngle()V
    .locals 3

    .prologue
    .line 726
    iget v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgress:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mMax:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 727
    .local v0, "progressPercent":F
    iget v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mTotalDegree:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mStartAngle:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mPointerPosition:F

    .line 728
    iget v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mPointerPosition:F

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mPointerPosition:F

    .line 729
    return-void
.end method

.method protected calculatePointerXYPosition()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 732
    new-instance v0, Landroid/graphics/PathMeasure;

    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressPath:Landroid/graphics/Path;

    invoke-direct {v0, v2, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 733
    .local v0, "pm":Landroid/graphics/PathMeasure;
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ProModeSeekBar;->mPointerPositionXY:[F

    invoke-virtual {v0, v2, v3, v5}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v1

    .line 734
    .local v1, "returnValue":Z
    if-nez v1, :cond_0

    .line 735
    new-instance v0, Landroid/graphics/PathMeasure;

    .end local v0    # "pm":Landroid/graphics/PathMeasure;
    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorPath:Landroid/graphics/Path;

    invoke-direct {v0, v2, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 736
    .restart local v0    # "pm":Landroid/graphics/PathMeasure;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/ui/ProModeSeekBar;->mPointerPositionXY:[F

    invoke-virtual {v0, v2, v3, v5}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v1

    .line 738
    :cond_0
    return-void
.end method

.method protected calculateProgressDegrees()V
    .locals 2

    .prologue
    .line 721
    iget v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mPointerPosition:F

    iget v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mStartAngle:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressDegree:F

    .line 722
    iget v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressDegree:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/high16 v0, 0x43b40000    # 360.0f

    iget v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressDegree:F

    add-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressDegree:F

    .line 723
    return-void

    .line 722
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressDegree:F

    goto :goto_0
.end method

.method protected calculateTotalDegrees()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    .line 709
    iget v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mStartAngle:F

    iget v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mEndAngle:F

    sub-float/2addr v0, v1

    sub-float v0, v2, v0

    rem-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mTotalDegree:F

    .line 710
    iget v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mTotalDegree:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    .line 711
    iput v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mTotalDegree:F

    .line 714
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mStartBGAngle:F

    iget v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mEndBGAngle:F

    sub-float/2addr v0, v1

    sub-float v0, v2, v0

    rem-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mTotalBGDegree:F

    .line 715
    iget v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mTotalBGDegree:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    .line 716
    iput v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mTotalBGDegree:F

    .line 718
    :cond_1
    return-void
.end method

.method public getIsMovable()Z
    .locals 1

    .prologue
    .line 913
    iget-boolean v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mIsMovable:Z

    return v0
.end method

.method public getIsTouchEnabled()Z
    .locals 1

    .prologue
    .line 897
    iget-boolean v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mIsTouchEnabled:Z

    return v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    .prologue
    .line 880
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgress()I
    .locals 3

    .prologue
    .line 778
    iget v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mMax:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressDegree:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mTotalDegree:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 779
    .local v0, "progress":I
    iget v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mScaleSize:I

    div-int v1, v0, v1

    return v1
.end method

.method protected initPaths()V
    .locals 7

    .prologue
    .line 686
    iget-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mRadius:F

    neg-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ProModeSeekBar;->mRadius:F

    neg-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/ProModeSeekBar;->mRadius:F

    iget v5, p0, Lcom/android/camera/ui/ProModeSeekBar;->mRadius:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 687
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorPath:Landroid/graphics/Path;

    .line 688
    iget-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/camera/ui/ProModeSeekBar;->mStartAngle:F

    iget v4, p0, Lcom/android/camera/ui/ProModeSeekBar;->mTotalDegree:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 689
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressPath:Landroid/graphics/Path;

    .line 690
    iget-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/camera/ui/ProModeSeekBar;->mStartAngle:F

    iget v4, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressDegree:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 692
    iget-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mRadius:F

    iget v3, p0, Lcom/android/camera/ui/ProModeSeekBar;->mBandWidth:F

    add-float/2addr v2, v3

    neg-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ProModeSeekBar;->mRadius:F

    iget v4, p0, Lcom/android/camera/ui/ProModeSeekBar;->mBandWidth:F

    add-float/2addr v3, v4

    neg-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/ProModeSeekBar;->mRadius:F

    iget v5, p0, Lcom/android/camera/ui/ProModeSeekBar;->mBandWidth:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/ProModeSeekBar;->mRadius:F

    iget v6, p0, Lcom/android/camera/ui/ProModeSeekBar;->mBandWidth:F

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 693
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGPath:Landroid/graphics/Path;

    .line 694
    iget-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/camera/ui/ProModeSeekBar;->mStartBGAngle:F

    iget v4, p0, Lcom/android/camera/ui/ProModeSeekBar;->mTotalBGDegree:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 695
    iget-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/camera/ui/ProModeSeekBar;->mStartBGAngle:F

    iget v4, p0, Lcom/android/camera/ui/ProModeSeekBar;->mTotalBGDegree:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/ProModeSeekBar;->mTotalBGDegree:F

    neg-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 696
    iget-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 698
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGStrokePath:Landroid/graphics/Path;

    .line 699
    iget-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGStrokePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/camera/ui/ProModeSeekBar;->mStartBGAngle:F

    iget v4, p0, Lcom/android/camera/ui/ProModeSeekBar;->mTotalBGDegree:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 701
    iget-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mLabelItems:[Lcom/android/camera/ui/ProModeSeekBar$Item;

    if-eqz v1, :cond_0

    .line 702
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mLabelItems:[Lcom/android/camera/ui/ProModeSeekBar$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 703
    iget-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mLabelItems:[Lcom/android/camera/ui/ProModeSeekBar$Item;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mRadius:F

    iget v3, p0, Lcom/android/camera/ui/ProModeSeekBar;->mStartAngle:F

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/ProModeSeekBar$Item;->calculate(FF)V

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 706
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 464
    iget-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 465
    iget-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGStrokePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorBGStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 466
    iget-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 467
    iget v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgress:I

    .line 468
    .local v0, "progress":I
    iget-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mLabelItems:[Lcom/android/camera/ui/ProModeSeekBar$Item;

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mLabelItems:[Lcom/android/camera/ui/ProModeSeekBar$Item;

    array-length v1, v1

    if-le v1, v0, :cond_0

    .line 475
    iget-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mLabelItems:[Lcom/android/camera/ui/ProModeSeekBar$Item;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mOrientation:I

    iget-boolean v3, p0, Lcom/android/camera/ui/ProModeSeekBar;->mUserIsMovingPointer:Z

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/camera/ui/ProModeSeekBar$Item;->drawIndicator(Landroid/graphics/Canvas;IZ)V

    .line 476
    iget-object v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mLabelItems:[Lcom/android/camera/ui/ProModeSeekBar$Item;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mOrientation:I

    invoke-virtual {v1, p1, v2}, Lcom/android/camera/ui/ProModeSeekBar$Item;->drawHint(Landroid/graphics/Canvas;I)V

    .line 479
    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 455
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 456
    int-to-float v0, p3

    iput v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mLastMovePos:F

    .line 457
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 439
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 441
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 442
    .local v1, "boundWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 443
    .local v0, "boundHeight":I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    int-to-float v2, v0

    iget v3, p0, Lcom/android/camera/ui/ProModeSeekBar;->mBandWidth:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/ProModeSeekBar;->mRadius:F

    .line 449
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->recalculateAngle()V

    .line 450
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->recalculateAll()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 491
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mIsTouchEnabled:Z

    if-nez v12, :cond_0

    .line 492
    const/4 v12, 0x0

    .line 682
    :goto_0
    return v12

    .line 496
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float v10, v12, v13

    .line 497
    .local v10, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->getHeight()I

    move-result v13

    int-to-float v13, v13

    sub-float v11, v12, v13

    .line 500
    .local v11, "y":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorRectF:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    sub-float v2, v12, v10

    .line 501
    .local v2, "distanceX":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mSectorRectF:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    sub-float v3, v12, v11

    .line 504
    .local v3, "distanceY":F
    float-to-double v12, v2

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    float-to-double v14, v3

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v9, v12

    .line 505
    .local v9, "touchEventRadius":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mRadius:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/ProModeSeekBar;->mHalfBandWidth:F

    add-float v5, v12, v13

    .line 506
    .local v5, "outerRadius":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mRadius:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/ProModeSeekBar;->mHalfBandWidth:F

    sub-float v4, v12, v13

    .line 509
    .local v4, "innerRadius":F
    float-to-double v12, v11

    float-to-double v14, v10

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v12, v14

    const-wide v14, 0x4066800000000000L    # 180.0

    mul-double/2addr v12, v14

    const-wide v14, 0x4076800000000000L    # 360.0

    rem-double/2addr v12, v14

    double-to-float v8, v12

    .line 510
    .local v8, "touchAngle":F
    const/4 v12, 0x0

    cmpg-float v12, v8, v12

    if-gez v12, :cond_1

    const/high16 v12, 0x43b40000    # 360.0f

    add-float/2addr v8, v12

    .line 512
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mStartAngle:F

    sub-float v12, v8, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromStart:F

    .line 513
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromStart:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_4

    const/high16 v12, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromStart:F

    add-float/2addr v12, v13

    :goto_1
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromStart:F

    .line 514
    const/high16 v12, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromStart:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->ccwDistanceFromStart:F

    .line 516
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mEndAngle:F

    sub-float v12, v8, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromEnd:F

    .line 517
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromEnd:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    const/high16 v12, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromEnd:F

    add-float/2addr v12, v13

    :goto_2
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromEnd:F

    .line 518
    const/high16 v12, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromEnd:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->ccwDistanceFromEnd:F

    .line 520
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 678
    :cond_2
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 682
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 513
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromStart:F

    goto :goto_1

    .line 517
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromEnd:F

    goto :goto_2

    .line 523
    :pswitch_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mPointRadius:I

    int-to-float v12, v12

    const/high16 v13, 0x41f00000    # 30.0f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_7

    const/high16 v7, 0x41f00000    # 30.0f

    .line 524
    .local v7, "radius":F
    :goto_4
    const/high16 v12, 0x43340000    # 180.0f

    mul-float/2addr v12, v7

    float-to-double v12, v12

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/ProModeSeekBar;->mRadius:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/ProModeSeekBar;->mRadius:F

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    div-double/2addr v12, v14

    double-to-float v6, v12

    .line 525
    .local v6, "pointerRadiusDegrees":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mPointerPosition:F

    sub-float v12, v8, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromPointer:F

    .line 526
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromPointer:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_8

    const/high16 v12, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromPointer:F

    add-float/2addr v12, v13

    :goto_5
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromPointer:F

    .line 527
    const/high16 v12, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromPointer:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->ccwDistanceFromPointer:F

    .line 529
    cmpl-float v12, v9, v4

    if-ltz v12, :cond_9

    cmpg-float v12, v9, v5

    if-gtz v12, :cond_9

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromPointer:F

    cmpg-float v12, v12, v6

    if-lez v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->ccwDistanceFromPointer:F

    cmpg-float v12, v12, v6

    if-gtz v12, :cond_9

    .line 530
    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mPointerPosition:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/camera/ui/ProModeSeekBar;->setProgressBasedOnAngle(F)V

    .line 531
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromStart:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lastCWDistanceFromStart:F

    .line 532
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mIsMovingCW:Z

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->recalculateAll()V

    .line 536
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->invalidate()V

    .line 540
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mUserIsMovingPointer:Z

    .line 541
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtEnd:Z

    .line 542
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtStart:Z

    .line 569
    :goto_6
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/ui/ProModeSeekBar;->initMovePos(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 523
    .end local v6    # "pointerRadiusDegrees":F
    .end local v7    # "radius":F
    :cond_7
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mPointRadius:I

    int-to-float v7, v12

    goto/16 :goto_4

    .line 526
    .restart local v6    # "pointerRadiusDegrees":F
    .restart local v7    # "radius":F
    :cond_8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromPointer:F

    goto :goto_5

    .line 543
    :cond_9
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromStart:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/ProModeSeekBar;->mTotalDegree:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_a

    .line 544
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mUserIsMovingPointer:Z

    .line 545
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 546
    :cond_a
    cmpl-float v12, v9, v4

    if-ltz v12, :cond_c

    cmpg-float v12, v9, v5

    if-gtz v12, :cond_c

    .line 548
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/camera/ui/ProModeSeekBar;->setProgressBasedOnAngle(F)V

    .line 549
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromStart:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lastCWDistanceFromStart:F

    .line 550
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mIsMovingCW:Z

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->recalculateAll()V

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->invalidate()V

    .line 559
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mListener:Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;

    if-eqz v12, :cond_b

    .line 560
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mListener:Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->getUnScaleProgress()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-interface {v12, v0, v13, v14}, Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;->onProgressChanged(Landroid/view/View;IZ)V

    .line 562
    :cond_b
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mUserIsMovingPointer:Z

    .line 563
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtEnd:Z

    .line 564
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtStart:Z

    goto :goto_6

    .line 566
    :cond_c
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mUserIsMovingPointer:Z

    .line 567
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 572
    .end local v6    # "pointerRadiusDegrees":F
    .end local v7    # "radius":F
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mUserIsMovingPointer:Z

    if-eqz v12, :cond_1a

    .line 573
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lastCWDistanceFromStart:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromStart:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_14

    .line 574
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromStart:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/ProModeSeekBar;->lastCWDistanceFromStart:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x43340000    # 180.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_13

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mIsMovingCW:Z

    if-nez v12, :cond_13

    .line 575
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtStart:Z

    .line 576
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtEnd:Z

    .line 589
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtStart:Z

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mIsMovingCW:Z

    if-eqz v12, :cond_d

    .line 590
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtStart:Z

    .line 592
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtEnd:Z

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mIsMovingCW:Z

    if-nez v12, :cond_e

    .line 593
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtEnd:Z

    .line 595
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtStart:Z

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mIsMovingCW:Z

    if-nez v12, :cond_f

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->ccwDistanceFromStart:F

    const/high16 v13, 0x42b40000    # 90.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_f

    .line 596
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtStart:Z

    .line 598
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtEnd:Z

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mIsMovingCW:Z

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromEnd:F

    const/high16 v13, 0x42b40000    # 90.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_10

    .line 599
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtEnd:Z

    .line 602
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtEnd:Z

    if-nez v12, :cond_11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromStart:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/ProModeSeekBar;->mTotalDegree:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mIsMovingCW:Z

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lastCWDistanceFromStart:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/ProModeSeekBar;->mTotalDegree:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_11

    .line 603
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtEnd:Z

    .line 606
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtStart:Z

    if-eqz v12, :cond_16

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockEnabled:Z

    if-eqz v12, :cond_16

    .line 608
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mProgress:I

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->recalculateAll()V

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->invalidate()V

    .line 614
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mListener:Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;

    if-eqz v12, :cond_12

    .line 615
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mListener:Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->getUnScaleProgress()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-interface {v12, v0, v13, v14}, Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;->onProgressChanged(Landroid/view/View;IZ)V

    .line 645
    :cond_12
    :goto_8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromStart:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lastCWDistanceFromStart:F

    .line 646
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/ui/ProModeSeekBar;->calculateMovePos(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 578
    :cond_13
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mIsMovingCW:Z

    goto/16 :goto_7

    .line 581
    :cond_14
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lastCWDistanceFromStart:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromStart:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x43340000    # 180.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_15

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mIsMovingCW:Z

    if-eqz v12, :cond_15

    .line 582
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtEnd:Z

    .line 583
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtStart:Z

    goto/16 :goto_7

    .line 585
    :cond_15
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mIsMovingCW:Z

    goto/16 :goto_7

    .line 617
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockAtEnd:Z

    if-eqz v12, :cond_17

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->lockEnabled:Z

    if-eqz v12, :cond_17

    .line 618
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mMax:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mProgress:I

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->recalculateAll()V

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->invalidate()V

    .line 625
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mListener:Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;

    if-eqz v12, :cond_12

    .line 626
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mListener:Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->getUnScaleProgress()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-interface {v12, v0, v13, v14}, Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;->onProgressChanged(Landroid/view/View;IZ)V

    goto :goto_8

    .line 628
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mMoveOutsideCircle:Z

    if-nez v12, :cond_18

    cmpg-float v12, v9, v5

    if-gtz v12, :cond_2

    .line 630
    :cond_18
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->cwDistanceFromStart:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/ProModeSeekBar;->mTotalDegree:F

    cmpl-float v12, v12, v13

    if-gtz v12, :cond_19

    .line 631
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/camera/ui/ProModeSeekBar;->setProgressBasedOnAngle(F)V

    .line 633
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->recalculateAll()V

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->invalidate()V

    .line 638
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mListener:Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;

    if-eqz v12, :cond_12

    .line 639
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mListener:Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->getUnScaleProgress()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-interface {v12, v0, v13, v14}, Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;->onProgressChanged(Landroid/view/View;IZ)V

    goto/16 :goto_8

    .line 648
    :cond_1a
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 654
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->getUnScaleProgress()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/camera/ui/ProModeSeekBar;->setProgress(I)V

    .line 655
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mListener:Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;

    if-eqz v12, :cond_1b

    .line 656
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mListener:Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->getUnScaleProgress()I

    move-result v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-interface {v12, v0, v13, v14}, Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;->onProgressChanged(Landroid/view/View;IZ)V

    .line 659
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mUserIsMovingPointer:Z

    if-eqz v12, :cond_1c

    .line 660
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->restoreMovePos()V

    .line 661
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mUserIsMovingPointer:Z

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->invalidate()V

    goto/16 :goto_3

    .line 667
    :cond_1c
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 673
    :pswitch_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/camera/ui/ProModeSeekBar;->mUserIsMovingPointer:Z

    .line 674
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ProModeSeekBar;->invalidate()V

    goto/16 :goto_3

    .line 520
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected recalculateAll()V
    .locals 0

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->calculateTotalDegrees()V

    .line 771
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->calculatePointerAngle()V

    .line 772
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->calculateProgressDegrees()V

    .line 773
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->initPaths()V

    .line 774
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->calculatePointerXYPosition()V

    .line 775
    return-void
.end method

.method protected recalculateAngle()V
    .locals 14

    .prologue
    const/high16 v0, 0x42340000    # 45.0f

    const-wide v12, 0x4066800000000000L    # 180.0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    const/high16 v9, 0x43b40000    # 360.0f

    const/high16 v8, 0x43340000    # 180.0f

    .line 745
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 746
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 747
    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v6, 0x2

    .line 748
    .local v2, "halfScreenWidth":I
    int-to-float v6, v2

    iget v7, p0, Lcom/android/camera/ui/ProModeSeekBar;->mRadius:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    .line 749
    iput v8, p0, Lcom/android/camera/ui/ProModeSeekBar;->mStartBGAngle:F

    .line 750
    iput v9, p0, Lcom/android/camera/ui/ProModeSeekBar;->mEndBGAngle:F

    .line 751
    iget-boolean v6, p0, Lcom/android/camera/ui/ProModeSeekBar;->mIsRestrictMode:Z

    if-eqz v6, :cond_0

    .line 752
    .local v0, "angle":F
    :goto_0
    add-float v6, v8, v0

    iput v6, p0, Lcom/android/camera/ui/ProModeSeekBar;->mStartAngle:F

    .line 753
    sub-float v6, v9, v0

    iput v6, p0, Lcom/android/camera/ui/ProModeSeekBar;->mEndAngle:F

    .line 766
    :goto_1
    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    iput v6, p0, Lcom/android/camera/ui/ProModeSeekBar;->mDeviceHeight:F

    .line 767
    return-void

    .line 751
    .end local v0    # "angle":F
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mRestrictAngle:F

    goto :goto_0

    .line 755
    :cond_1
    int-to-float v6, v2

    iget v7, p0, Lcom/android/camera/ui/ProModeSeekBar;->mRadius:F

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    div-double/2addr v6, v10

    mul-double/2addr v6, v12

    double-to-float v1, v6

    .line 756
    .local v1, "halfAngle":F
    add-float v6, v8, v1

    iput v6, p0, Lcom/android/camera/ui/ProModeSeekBar;->mStartBGAngle:F

    .line 757
    sub-float v6, v9, v1

    iput v6, p0, Lcom/android/camera/ui/ProModeSeekBar;->mEndBGAngle:F

    .line 759
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900f7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 760
    .local v4, "padding":I
    sub-int v6, v2, v4

    int-to-float v6, v6

    iget v7, p0, Lcom/android/camera/ui/ProModeSeekBar;->mRadius:F

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    div-double/2addr v6, v10

    mul-double/2addr v6, v12

    double-to-float v5, v6

    .line 761
    .local v5, "restrictAngle":F
    iget-boolean v6, p0, Lcom/android/camera/ui/ProModeSeekBar;->mIsRestrictMode:Z

    if-eqz v6, :cond_2

    .line 762
    .restart local v0    # "angle":F
    :goto_2
    cmpl-float v6, v1, v0

    if-lez v6, :cond_3

    .line 763
    :goto_3
    add-float v6, v8, v1

    iput v6, p0, Lcom/android/camera/ui/ProModeSeekBar;->mStartAngle:F

    .line 764
    sub-float v6, v9, v1

    iput v6, p0, Lcom/android/camera/ui/ProModeSeekBar;->mEndAngle:F

    goto :goto_1

    .end local v0    # "angle":F
    :cond_2
    move v0, v5

    .line 761
    goto :goto_2

    .restart local v0    # "angle":F
    :cond_3
    move v1, v0

    .line 762
    goto :goto_3
.end method

.method public setAnimateGone(Z)V
    .locals 7
    .param p1, "isChanged"    # Z

    .prologue
    const/4 v3, 0x1

    .line 994
    if-eqz p1, :cond_0

    .line 995
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 996
    .local v0, "am":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 997
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ProModeSeekBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 998
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 1000
    .end local v0    # "am":Landroid/view/animation/Animation;
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 1001
    return-void
.end method

.method public setAnimateVisible()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 986
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 987
    .local v0, "am":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 988
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ProModeSeekBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 989
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 990
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 991
    return-void
.end method

.method public setClipPaddingSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 953
    iput p1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mClipPaddingSize:I

    .line 954
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 955
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/camera/ui/ProModeSeekBar$1;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/ui/ProModeSeekBar$1;-><init>(Lcom/android/camera/ui/ProModeSeekBar;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 981
    return-void
.end method

.method public setIsMovable(Z)V
    .locals 0
    .param p1, "isMovable"    # Z

    .prologue
    .line 905
    iput-boolean p1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mIsMovable:Z

    .line 906
    return-void
.end method

.method public setIsTouchEnabled(Z)V
    .locals 0
    .param p1, "isTouchEnabled"    # Z

    .prologue
    .line 888
    iput-boolean p1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mIsTouchEnabled:Z

    .line 889
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->invalidate()V

    .line 890
    return-void
.end method

.method public setListener(Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mListener:Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;

    .line 805
    return-void
.end method

.method public setMax(Ljava/util/ArrayList;Ljava/lang/String;ZZ)V
    .locals 1
    .param p2, "currentValue"    # Ljava/lang/String;
    .param p3, "needScale"    # Z
    .param p4, "useSameIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 808
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    if-nez p1, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 812
    if-eqz p3, :cond_2

    const/16 v0, 0xa

    :goto_1
    iput v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mScaleSize:I

    .line 813
    iput-boolean p3, p0, Lcom/android/camera/ui/ProModeSeekBar;->mIsScaled:Z

    .line 814
    invoke-direct {p0, p1, p2, p4}, Lcom/android/camera/ui/ProModeSeekBar;->initData(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 815
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->recalculateAll()V

    .line 816
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->invalidate()V

    goto :goto_0

    .line 812
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 1005
    iput p1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mOrientation:I

    .line 1006
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->invalidate()V

    .line 1007
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 785
    iget v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mMax:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mScaleSize:I

    div-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 786
    iget v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mMax:I

    iput v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgress:I

    .line 793
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->recalculateAll()V

    .line 794
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->invalidate()V

    .line 795
    return-void

    .line 787
    :cond_0
    if-nez p1, :cond_1

    .line 788
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgress:I

    goto :goto_0

    .line 790
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mScaleSize:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mScaleSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgress:I

    goto :goto_0
.end method

.method protected setProgressBasedOnAngle(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 798
    iput p1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mPointerPosition:F

    .line 799
    invoke-virtual {p0}, Lcom/android/camera/ui/ProModeSeekBar;->calculateProgressDegrees()V

    .line 800
    iget v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mMax:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgressDegree:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mTotalDegree:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ProModeSeekBar;->mProgress:I

    .line 801
    return-void
.end method

.method public setRestrictMode(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 741
    iput-boolean p1, p0, Lcom/android/camera/ui/ProModeSeekBar;->mIsRestrictMode:Z

    .line 742
    return-void
.end method
