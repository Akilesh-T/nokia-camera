.class public Lcom/android/camera/ui/ModeListView;
.super Lcom/android/camera/ui/operation/ModeListViewOperation;
.source "ModeListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ModeListView$PeepholeAnimationEffect;,
        Lcom/android/camera/ui/ModeListView$SelectedState;,
        Lcom/android/camera/ui/ModeListView$ScrollingState;,
        Lcom/android/camera/ui/ModeListView$ShimmyState;,
        Lcom/android/camera/ui/ModeListView$FullyShownState;,
        Lcom/android/camera/ui/ModeListView$FullyHiddenState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BACKGROUND_TRANSPARENTCY:I = 0x99

.field private static final DEFAULT_DURATION_MS:I = 0xc8

.field private static final DELAY_MS:I = 0x1e

.field private static final FLY_IN_DURATION_MS:I = 0x0

.field private static final FLY_OUT_DURATION_MS:I = 0x352

.field private static final HIDE_SHIMMY_DELAY_MS:I = 0x3e8

.field private static final HOLD_DURATION_MS:I = 0x0

.field private static final NO_ITEM_SELECTED:I = -0x1

.field private static final PREVIEW_DOWN_SAMPLE_FACTOR:I = 0x4

.field private static final SCROLL_FACTOR:F = 0.5f

.field private static final SCROLL_INTERVAL_MS:I = 0x32

.field private static final SLOW_ZONE_PERCENTAGE:F = 0.2f

.field private static final SNAP_BACK_THRESHOLD_RATIO:F = 0.33f

.field private static final START_DELAY_MS:I = 0x64

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final TOTAL_DURATION_MS:I = 0x352

.field private static final VELOCITY_THRESHOLD:F = 2.0f


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mChildViewTouched:Landroid/view/View;

.field private mCurrentTime:J

.field private mFocusItem:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mInputPixels:[I

.field private mLastChildTouchEvent:Landroid/view/MotionEvent;

.field private mLastDownTime:J

.field private mLastScrollTime:J

.field private mListBackgroundColor:I

.field private mListView:Landroid/widget/LinearLayout;

.field private mModeListOpenFactor:F

.field private mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

.field private final mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mOutputPixels:[I

.field private final mPositionHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollTrendX:F

.field private mScrollTrendY:F

.field private mSettingsButton:Landroid/widget/ImageView;

.field private final mSettingsButtonMargin:I

.field private mSettingsCling:Lcom/android/camera/widget/SettingsCling;

.field private mSupportedModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalModes:I

.field private mVelocityX:F

.field private mVisibleWidth:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const-class v0, Lcom/android/camera/ui/ModeListView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/camera/ui/ModeListView;->$assertionsDisabled:Z

    .line 67
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ModeListView"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/ModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 794
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/operation/ModeListViewOperation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ModeListView;->mFocusItem:I

    .line 114
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/ModeListView;->mModeListOpenFactor:F

    .line 116
    iput-object v2, p0, Lcom/android/camera/ui/ModeListView;->mChildViewTouched:Landroid/view/View;

    .line 117
    iput-object v2, p0, Lcom/android/camera/ui/ModeListView;->mLastChildTouchEvent:Landroid/view/MotionEvent;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ModeListView;->mVisibleWidth:I

    .line 124
    iput v1, p0, Lcom/android/camera/ui/ModeListView;->mScrollTrendX:F

    .line 125
    iput v1, p0, Lcom/android/camera/ui/ModeListView;->mScrollTrendY:F

    .line 127
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeListView;->mPositionHistory:Ljava/util/LinkedList;

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ui/ModeListView;->mLastDownTime:J

    .line 132
    iput-object v2, p0, Lcom/android/camera/ui/ModeListView;->mSettingsCling:Lcom/android/camera/widget/SettingsCling;

    .line 733
    new-instance v0, Lcom/android/camera/ui/ModeListView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ModeListView$1;-><init>(Lcom/android/camera/ui/ModeListView;)V

    iput-object v0, p0, Lcom/android/camera/ui/ModeListView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 795
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/ModeListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 796
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeListView;->mListBackgroundColor:I

    .line 797
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButtonMargin:I

    .line 799
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ModeListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ModeListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView;->resetModeSelectors()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/camera/ui/ModeListView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView;->mChildViewTouched:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/ModeListView;)[Lcom/android/camera/ui/ModeSelectorItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/ModeListView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModeListView;->forwardTouchEventToChild(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/ModeListView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/ui/ModeListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/ui/ModeListView;->mModeListOpenFactor:F

    return v0
.end method

.method static synthetic access$1602(Lcom/android/camera/ui/ModeListView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;
    .param p1, "x1"    # F

    .prologue
    .line 65
    iput p1, p0, Lcom/android/camera/ui/ModeListView;->mModeListOpenFactor:F

    return p1
.end method

.method static synthetic access$1700(Lcom/android/camera/ui/ModeListView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;
    .param p1, "x1"    # F

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModeListView;->onModeListOpenRatioUpdate(F)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/ui/ModeListView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/camera/ui/ModeListView;->mLastDownTime:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/android/camera/ui/ModeListView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;
    .param p1, "x1"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/camera/ui/ModeListView;->mLastDownTime:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/android/camera/ui/ModeListView;IILandroid/animation/TimeInterpolator;[I)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/animation/TimeInterpolator;
    .param p4, "x4"    # [I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/ModeListView;->animateListToWidth(IILandroid/animation/TimeInterpolator;[I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ModeListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/ui/ModeListView;->mFocusItem:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/ModeListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/camera/ui/ModeListView;->mFocusItem:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/camera/ui/ModeListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView;->disableA11yOnModeSelectorItems()V

    return-void
.end method

.method static synthetic access$2300()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/camera/ui/ModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/ui/ModeListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView;->enableA11yOnModeSelectorItems()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/ui/ModeListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/ui/ModeListView;->mVisibleWidth:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/camera/ui/ModeListView;[I)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;
    .param p1, "x1"    # [I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModeListView;->animateListToWidth([I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/ui/ModeListView;IFF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/ModeListView;->scroll(IFF)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/ui/ModeListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView;->shouldSnapBack()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/ui/ModeListView;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView;->snapBack()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/ModeListView;FF)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ModeListView;->getFocusItem(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/camera/ui/ModeListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/ui/ModeListView;->mWidth:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/camera/ui/ModeListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/camera/ui/ModeListView;->mWidth:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/camera/ui/ModeListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/ui/ModeListView;->mHeight:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/camera/ui/ModeListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/camera/ui/ModeListView;->mHeight:I

    return p1
.end method

.method static synthetic access$3402(Lcom/android/camera/ui/ModeListView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;
    .param p1, "x1"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/camera/ui/ModeListView;->mLastScrollTime:J

    return-wide p1
.end method

.method static synthetic access$3502(Lcom/android/camera/ui/ModeListView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;
    .param p1, "x1"    # F

    .prologue
    .line 65
    iput p1, p0, Lcom/android/camera/ui/ModeListView;->mVelocityX:F

    return p1
.end method

.method static synthetic access$3600(Lcom/android/camera/ui/ModeListView;Lcom/android/camera/ui/ModeSelectorItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;
    .param p1, "x1"    # Lcom/android/camera/ui/ModeSelectorItem;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModeListView;->onItemSelected(Lcom/android/camera/ui/ModeSelectorItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/ModeListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModeListView;->setSwipeMode(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/camera/ui/ModeListView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModeListView;->onModeSelected(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/ui/ModeListView;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView;->snapToFullScreen()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/ModeListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView;->cancelForwardingTouchEvent()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/ui/ModeListView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeListView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ModeListView;->isTouchInsideList(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private varargs animateListToWidth(IILandroid/animation/TimeInterpolator;[I)Landroid/animation/Animator;
    .locals 6
    .param p1, "delay"    # I
    .param p2, "duration"    # I
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p4, "width"    # [I

    .prologue
    .line 1529
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1530
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->end()V

    .line 1533
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1534
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v0, 0x1

    .line 1535
    .local v0, "animateModeItemsInOrder":Z
    if-gez p1, :cond_1

    .line 1536
    const/4 v0, 0x0

    .line 1537
    mul-int/lit8 p1, p1, -0x1

    .line 1539
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/android/camera/ui/ModeListView;->mTotalModes:I

    if-ge v3, v4, :cond_3

    .line 1541
    if-eqz v0, :cond_2

    .line 1542
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    aget-object v4, v4, v3

    const-string v5, "visibleWidth"

    invoke-static {v4, v5, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1548
    .local v1, "animator":Landroid/animation/ObjectAnimator;
    :goto_1
    int-to-long v4, p2

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1549
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1539
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1545
    .end local v1    # "animator":Landroid/animation/ObjectAnimator;
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    iget v5, p0, Lcom/android/camera/ui/ModeListView;->mTotalModes:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v3

    aget-object v4, v4, v5

    const-string v5, "visibleWidth"

    invoke-static {v4, v5, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .restart local v1    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_1

    .line 1552
    .end local v1    # "animator":Landroid/animation/ObjectAnimator;
    :cond_3
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/ModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1553
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1554
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1555
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 1557
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v4
.end method

.method private varargs animateListToWidth([I)Landroid/animation/Animator;
    .locals 3
    .param p1, "width"    # [I

    .prologue
    .line 1515
    const/4 v0, 0x0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/camera/ui/ModeListView;->animateListToWidth(IILandroid/animation/TimeInterpolator;[I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private animateListToWidthAtVelocity(FI)Landroid/animation/Animator;
    .locals 8
    .param p1, "velocity"    # F
    .param p2, "width"    # I

    .prologue
    .line 1567
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1568
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->end()V

    .line 1571
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1572
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/android/camera/ui/ModeListView;->mTotalModes:I

    if-ge v3, v4, :cond_1

    .line 1573
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    aget-object v4, v4, v3

    const-string v5, "visibleWidth"

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput p2, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1575
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    int-to-float v4, p2

    div-float/2addr v4, p1

    float-to-int v2, v4

    .line 1576
    .local v2, "duration":I
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1577
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1572
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1580
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v2    # "duration":I
    :cond_1
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/ModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1581
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1582
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1583
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 1585
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v4
.end method

.method private cancelForwardingTouchEvent()V
    .locals 2

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mChildViewTouched:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mLastChildTouchEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1398
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mChildViewTouched:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mLastChildTouchEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModeListView;->mChildViewTouched:Landroid/view/View;

    .line 1401
    :cond_0
    return-void
.end method

.method private disableA11yOnModeSelectorItems()V
    .locals 5

    .prologue
    .line 802
    iget-object v2, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 803
    .local v0, "selectorItem":Landroid/view/View;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 802
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 805
    .end local v0    # "selectorItem":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private enableA11yOnModeSelectorItems()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 808
    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 809
    .local v0, "selectorItem":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 808
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 811
    .end local v0    # "selectorItem":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private forwardTouchEventToChild(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 992
    iget-object v2, p0, Lcom/android/camera/ui/ModeListView;->mChildViewTouched:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 993
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 994
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 995
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/camera/ui/ModeListView;->mChildViewTouched:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 996
    iget-object v2, p0, Lcom/android/camera/ui/ModeListView;->mChildViewTouched:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 998
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/ModeListView;->mLastChildTouchEvent:Landroid/view/MotionEvent;

    .line 999
    iget-object v2, p0, Lcom/android/camera/ui/ModeListView;->mLastChildTouchEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1000
    iget-object v2, p0, Lcom/android/camera/ui/ModeListView;->mChildViewTouched:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mLastChildTouchEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2, v3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1002
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    return-void
.end method

.method private getFocusItem(FF)I
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1178
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getX()F

    move-result v1

    sub-float/2addr p1, v1

    .line 1179
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getY()F

    move-result v1

    sub-float/2addr p2, v1

    .line 1181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1182
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/camera/ui/ModeSelectorItem;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 1186
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 1181
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1186
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method private getModeIndex(I)I
    .locals 3
    .param p1, "modeSelectorIndex"    # I

    .prologue
    .line 952
    iget v0, p0, Lcom/android/camera/ui/ModeListView;->mTotalModes:I

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 953
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mSupportedModes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 957
    :goto_0
    return v0

    .line 955
    :cond_0
    sget-object v0, Lcom/android/camera/ui/ModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode selector index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", total modes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/ModeListView;->mTotalModes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 957
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0
.end method

.method private getPosition(JF)F
    .locals 13
    .param p1, "time"    # J
    .param p3, "currentPosition"    # F

    .prologue
    .line 1291
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/camera/ui/ModeListView;->mPositionHistory:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 1292
    iget-object v6, p0, Lcom/android/camera/ui/ModeListView;->mPositionHistory:Ljava/util/LinkedList;

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;

    .line 1293
    .local v1, "historyPosition":Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;
    invoke-virtual {v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;->getTimeStamp()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-lez v6, :cond_1

    .line 1295
    if-nez v2, :cond_0

    .line 1297
    const v5, 0x3e4ccccd    # 0.2f

    .line 1298
    .local v5, "weight":F
    invoke-virtual {v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;->getPosition()F

    move-result v6

    mul-float/2addr v6, v5

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v5

    mul-float v7, v7, p3

    add-float v3, v6, v7

    .line 1319
    .end local v1    # "historyPosition":Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;
    .end local v5    # "weight":F
    :goto_1
    return v3

    .line 1300
    .restart local v1    # "historyPosition":Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;
    :cond_0
    iget-object v6, p0, Lcom/android/camera/ui/ModeListView;->mPositionHistory:Ljava/util/LinkedList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;

    .line 1302
    .local v4, "prevTimeBasedPosition":Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;
    invoke-virtual {v4}, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;->getTimeStamp()J

    move-result-wide v6

    sub-long v6, p1, v6

    long-to-float v6, v6

    .line 1303
    invoke-virtual {v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;->getTimeStamp()J

    move-result-wide v8

    invoke-virtual {v4}, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;->getTimeStamp()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v7, v8

    div-float v0, v6, v7

    .line 1304
    .local v0, "fraction":F
    invoke-virtual {v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;->getPosition()F

    move-result v6

    .line 1305
    invoke-virtual {v4}, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;->getPosition()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v6, v0

    invoke-virtual {v4}, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;->getPosition()F

    move-result v7

    add-float v3, v6, v7

    .line 1306
    .local v3, "position":F
    goto :goto_1

    .line 1291
    .end local v0    # "fraction":F
    .end local v3    # "position":F
    .end local v4    # "prevTimeBasedPosition":Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1311
    .end local v1    # "historyPosition":Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;
    :cond_2
    sget-object v6, Lcom/android/camera/ui/ModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid time input for getPosition(). time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1312
    iget-object v6, p0, Lcom/android/camera/ui/ModeListView;->mPositionHistory:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 1313
    sget-object v6, Lcom/android/camera/ui/ModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "TimeBasedPosition history size is 0"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1318
    :goto_2
    sget-boolean v6, Lcom/android/camera/ui/ModeListView;->$assertionsDisabled:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/ui/ModeListView;->mPositionHistory:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lt v2, v6, :cond_4

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1315
    :cond_3
    sget-object v7, Lcom/android/camera/ui/ModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "First position recorded at "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/android/camera/ui/ModeListView;->mPositionHistory:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;

    invoke-virtual {v6}, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;->getTimeStamp()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , last position recorded at "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/android/camera/ui/ModeListView;->mPositionHistory:Ljava/util/LinkedList;

    .line 1316
    invoke-virtual {v6}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;

    invoke-virtual {v6}, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;->getTimeStamp()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1315
    invoke-static {v7, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2

    .line 1319
    :cond_4
    int-to-float v3, v2

    goto/16 :goto_1
.end method

.method private initializeModeSelectorItems()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 896
    iget v4, p0, Lcom/android/camera/ui/ModeListView;->mTotalModes:I

    new-array v4, v4, [Lcom/android/camera/ui/ModeSelectorItem;

    iput-object v4, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    .line 898
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/util/AndroidServices;->provideLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 899
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0f018c

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/ModeListView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/camera/ui/ModeListView;->mListView:Landroid/widget/LinearLayout;

    .line 900
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/camera/ui/ModeListView;->mTotalModes:I

    if-ge v0, v4, :cond_2

    .line 901
    const v4, 0x7f04005f

    const/4 v5, 0x0

    .line 902
    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/ModeSelectorItem;

    .line 903
    .local v3, "selectorItem":Lcom/android/camera/ui/ModeSelectorItem;
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 905
    if-nez v0, :cond_0

    .line 906
    invoke-virtual {v3}, Lcom/android/camera/ui/ModeSelectorItem;->getPaddingLeft()I

    move-result v4

    .line 907
    invoke-virtual {v3}, Lcom/android/camera/ui/ModeSelectorItem;->getPaddingRight()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/camera/ui/ModeSelectorItem;->getPaddingBottom()I

    move-result v6

    .line 906
    invoke-virtual {v3, v4, v7, v5, v6}, Lcom/android/camera/ui/ModeSelectorItem;->setPadding(IIII)V

    .line 910
    :cond_0
    iget v4, p0, Lcom/android/camera/ui/ModeListView;->mTotalModes:I

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_1

    .line 911
    invoke-virtual {v3}, Lcom/android/camera/ui/ModeSelectorItem;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/camera/ui/ModeSelectorItem;->getPaddingTop()I

    move-result v5

    .line 912
    invoke-virtual {v3}, Lcom/android/camera/ui/ModeSelectorItem;->getPaddingRight()I

    move-result v6

    .line 911
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/camera/ui/ModeSelectorItem;->setPadding(IIII)V

    .line 915
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/ModeListView;->getModeIndex(I)I

    move-result v2

    .line 916
    .local v2, "modeId":I
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 917
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/camera/util/CameraUtil;->getCameraThemeColorId(ILandroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 916
    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ModeSelectorItem;->setHighlightColor(I)V

    .line 920
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/util/CameraUtil;->getCameraModeIconResId(ILandroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ModeSelectorItem;->setImageResource(I)V

    .line 923
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/util/CameraUtil;->getCameraModeText(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ModeSelectorItem;->setText(Ljava/lang/CharSequence;)V

    .line 927
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/util/CameraUtil;->getCameraModeContentDescription(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 926
    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ModeSelectorItem;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 928
    invoke-virtual {v3, v2}, Lcom/android/camera/ui/ModeSelectorItem;->setModeId(I)V

    .line 929
    new-instance v4, Lcom/android/camera/ui/ModeListView$4;

    invoke-direct {v4, p0, v3}, Lcom/android/camera/ui/ModeListView$4;-><init>(Lcom/android/camera/ui/ModeListView;Lcom/android/camera/ui/ModeSelectorItem;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ModeSelectorItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 936
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    aput-object v3, v4, v0

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 941
    .end local v2    # "modeId":I
    .end local v3    # "selectorItem":Lcom/android/camera/ui/ModeSelectorItem;
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    iget v5, p0, Lcom/android/camera/ui/ModeListView;->mTotalModes:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, p0}, Lcom/android/camera/ui/ModeSelectorItem;->setVisibleWidthChangedListener(Lcom/android/camera/ui/operation/ModeSelectorItemOperation$VisibleWidthChangedListener;)V

    .line 942
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView;->resetModeSelectors()V

    .line 943
    return-void
.end method

.method private insertNewPosition(FJ)V
    .locals 6
    .param p1, "position"    # F
    .param p2, "time"    # J

    .prologue
    .line 1264
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mPositionHistory:Ljava/util/LinkedList;

    new-instance v4, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;

    invoke-direct {v4, p1, p2, p3}, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;-><init>(FJ)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1269
    iget v1, p0, Lcom/android/camera/ui/ModeListView;->mTotalModes:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x1e

    int-to-long v4, v1

    sub-long v2, p2, v4

    .line 1270
    .local v2, "timeCutoff":J
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mPositionHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1272
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mPositionHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;

    .line 1273
    .local v0, "historyPosition":Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;
    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;->getTimeStamp()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    .line 1274
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mPositionHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 1279
    .end local v0    # "historyPosition":Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;
    :cond_0
    return-void
.end method

.method private isRunningAccordionAnimation()Z
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchInsideList(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 785
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 786
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 787
    .local v1, "y":F
    cmpg-float v2, v0, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    cmpg-float v2, v1, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 788
    :cond_0
    const/4 v2, 0x0

    .line 790
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onItemSelected(Lcom/android/camera/ui/ModeSelectorItem;)V
    .locals 2
    .param p1, "selectedItem"    # Lcom/android/camera/ui/ModeSelectorItem;

    .prologue
    .line 771
    invoke-virtual {p1}, Lcom/android/camera/ui/ModeSelectorItem;->getModeId()I

    move-result v0

    .line 772
    .local v0, "modeId":I
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mModeSwitchListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;

    invoke-interface {v1, v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;->onModeButtonPressed(I)V

    .line 774
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->onItemSelected(Lcom/android/camera/ui/operation/ModeSelectorItemOperation;)V

    .line 775
    return-void
.end method

.method private onModeListOpenRatioUpdate(F)V
    .locals 5
    .param p1, "openRatio"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 1365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1366
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ModeSelectorItem;->setTextAlpha(F)V

    .line 1365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1368
    :cond_0
    const/high16 v1, 0x43190000    # 153.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/ModeListView;->setBackgroundAlpha(I)V

    .line 1369
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mModeListOpenListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;

    if-eqz v1, :cond_1

    .line 1370
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mModeListOpenListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;

    invoke-interface {v1, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;->onModeListOpenProgress(F)V

    .line 1372
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 1374
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-gez v1, :cond_2

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_5

    .line 1375
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayerType()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 1376
    sget-object v1, Lcom/android/camera/ui/ModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Disabling hardware layer for the Settings Button. (via alpha)"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1377
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1386
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1388
    :cond_4
    return-void

    .line 1380
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayerType()I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 1381
    sget-object v1, Lcom/android/camera/ui/ModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Enabling hardware layer for the Settings Button."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1382
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v4}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private onModeSelected(I)V
    .locals 1
    .param p1, "modeIndex"    # I

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mModeSwitchListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mModeSwitchListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;->onModeSelected(I)V

    .line 965
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1323
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView;->resetModeSelectors()V

    .line 1324
    iput v0, p0, Lcom/android/camera/ui/ModeListView;->mScrollTrendX:F

    .line 1325
    iput v0, p0, Lcom/android/camera/ui/ModeListView;->mScrollTrendY:F

    .line 1326
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeListView;->setVisibility(I)V

    .line 1327
    return-void
.end method

.method private resetModeSelectors()V
    .locals 3

    .prologue
    .line 1158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1159
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ModeSelectorItem;->setVisibleWidth(I)V

    .line 1158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1161
    :cond_0
    return-void
.end method

.method private scroll(IFF)V
    .locals 9
    .param p1, "itemId"    # I
    .param p2, "deltaX"    # F
    .param p3, "deltaY"    # F

    .prologue
    const/4 v8, 0x0

    const v7, 0x3f333333    # 0.7f

    const v6, 0x3e99999a    # 0.3f

    .line 1231
    iget v4, p0, Lcom/android/camera/ui/ModeListView;->mScrollTrendX:F

    mul-float/2addr v4, v6

    mul-float v5, p2, v7

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/ui/ModeListView;->mScrollTrendX:F

    .line 1232
    iget v4, p0, Lcom/android/camera/ui/ModeListView;->mScrollTrendY:F

    mul-float/2addr v4, v6

    mul-float v5, p3, v7

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/ui/ModeListView;->mScrollTrendY:F

    .line 1235
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/ModeListView;->mCurrentTime:J

    .line 1237
    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    .line 1238
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/android/camera/ui/ModeSelectorItem;->getVisibleWidth()I

    move-result v4

    int-to-float v1, v4

    .line 1242
    .local v1, "longestWidth":F
    :goto_0
    sub-float v3, v1, p2

    .line 1243
    .local v3, "newPosition":F
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/android/camera/ui/ModeSelectorItem;->getMaxVisibleWidth()I

    move-result v2

    .line 1244
    .local v2, "maxVisibleWidth":I
    float-to-int v4, v1

    invoke-virtual {p0, v4, v2}, Lcom/android/camera/ui/ModeListView;->getMaxMovementBasedOnPosition(II)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1246
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1247
    iget-wide v4, p0, Lcom/android/camera/ui/ModeListView;->mCurrentTime:J

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/ui/ModeListView;->insertNewPosition(FJ)V

    .line 1249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 1250
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    aget-object v4, v4, v0

    float-to-int v5, v3

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ModeSelectorItem;->setVisibleWidth(I)V

    .line 1249
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1240
    .end local v0    # "i":I
    .end local v1    # "longestWidth":F
    .end local v2    # "maxVisibleWidth":I
    .end local v3    # "newPosition":F
    :cond_0
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/android/camera/ui/ModeSelectorItem;->getVisibleWidth()I

    move-result v4

    int-to-float v1, v4

    .restart local v1    # "longestWidth":F
    goto :goto_0

    .line 1252
    .restart local v0    # "i":I
    .restart local v2    # "maxVisibleWidth":I
    .restart local v3    # "newPosition":F
    :cond_1
    return-void
.end method

.method private setBackgroundAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 821
    and-int/lit16 p1, p1, 0xff

    .line 823
    iget v0, p0, Lcom/android/camera/ui/ModeListView;->mListBackgroundColor:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ModeListView;->mListBackgroundColor:I

    .line 824
    iget v0, p0, Lcom/android/camera/ui/ModeListView;->mListBackgroundColor:I

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ModeListView;->mListBackgroundColor:I

    .line 826
    iget v0, p0, Lcom/android/camera/ui/ModeListView;->mListBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeListView;->setBackgroundColor(I)V

    .line 827
    return-void
.end method

.method private setSwipeMode(Z)V
    .locals 2
    .param p1, "swipeIn"    # Z

    .prologue
    .line 1011
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ModeSelectorItem;->onSwipeModeChanged(Z)V

    .line 1011
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1014
    :cond_0
    return-void
.end method

.method private shouldSnapBack()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1450
    iget v3, p0, Lcom/android/camera/ui/ModeListView;->mFocusItem:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1451
    .local v0, "itemId":I
    iget v3, p0, Lcom/android/camera/ui/ModeListView;->mVelocityX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 1453
    iget v3, p0, Lcom/android/camera/ui/ModeListView;->mVelocityX:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_1

    .line 1460
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 1453
    goto :goto_0

    .line 1454
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/camera/ui/ModeSelectorItem;->getVisibleWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    aget-object v4, v4, v0

    .line 1455
    invoke-virtual {v4}, Lcom/android/camera/ui/ModeSelectorItem;->getMaxVisibleWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 1457
    iget v3, p0, Lcom/android/camera/ui/ModeListView;->mScrollTrendX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/ModeListView;->mScrollTrendY:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget v3, p0, Lcom/android/camera/ui/ModeListView;->mScrollTrendX:F

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_0

    :cond_3
    move v1, v2

    .line 1460
    goto :goto_0
.end method

.method private snap()V
    .locals 1

    .prologue
    .line 1442
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView;->shouldSnapBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1443
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView;->snapBack()Landroid/animation/Animator;

    .line 1447
    :goto_0
    return-void

    .line 1445
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView;->snapToFullScreen()Landroid/animation/Animator;

    goto :goto_0
.end method

.method private snapBack()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 1487
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeListView;->snapBack(Z)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private snapToFullScreen()Landroid/animation/Animator;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 1492
    iget v4, p0, Lcom/android/camera/ui/ModeListView;->mFocusItem:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    move v1, v3

    .line 1493
    .local v1, "focusItem":I
    :goto_0
    iget-object v4, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/camera/ui/ModeSelectorItem;->getMaxVisibleWidth()I

    move-result v2

    .line 1494
    .local v2, "fullWidth":I
    iget v4, p0, Lcom/android/camera/ui/ModeListView;->mVelocityX:F

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_2

    .line 1495
    const/4 v4, 0x1

    new-array v4, v4, [I

    aput v2, v4, v3

    invoke-direct {p0, v4}, Lcom/android/camera/ui/ModeListView;->animateListToWidth([I)Landroid/animation/Animator;

    move-result-object v0

    .line 1501
    .local v0, "animator":Landroid/animation/Animator;
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mModeListOpenListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;

    if-eqz v3, :cond_0

    .line 1502
    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mModeListOpenListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;

    invoke-interface {v3}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;->onOpenFullScreen()V

    .line 1504
    :cond_0
    return-object v0

    .line 1492
    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v1    # "focusItem":I
    .end local v2    # "fullWidth":I
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/ModeListView;->mFocusItem:I

    goto :goto_0

    .line 1499
    .restart local v1    # "focusItem":I
    .restart local v2    # "fullWidth":I
    :cond_2
    invoke-direct {p0, v6, v2}, Lcom/android/camera/ui/ModeListView;->animateListToWidthAtVelocity(FI)Landroid/animation/Animator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/Animator;
    goto :goto_1
.end method

.method private updateModeListLayout()V
    .locals 4

    .prologue
    .line 1041
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    if-nez v1, :cond_0

    .line 1042
    sget-object v1, Lcom/android/camera/ui/ModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Capture layout helper needs to be set first."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1055
    :goto_0
    return-void

    .line 1047
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v1}, Lcom/android/camera/CaptureLayoutHelper;->getUncoveredPreviewRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 1049
    .local v0, "uncoveredPreviewArea":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mListView:Landroid/widget/LinearLayout;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 1051
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mListView:Landroid/widget/LinearLayout;

    .line 1052
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 1051
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1054
    invoke-direct {p0, v0}, Lcom/android/camera/ui/ModeListView;->updateSettingsButtonLayout(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private updateSettingsButtonLayout(Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "uncoveredPreviewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 1058
    iget v0, p0, Lcom/android/camera/ui/ModeListView;->mWidth:I

    iget v1, p0, Lcom/android/camera/ui/ModeListView;->mHeight:I

    if-le v0, v1, :cond_1

    .line 1060
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButton:Landroid/widget/ImageView;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButtonMargin:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButton:Landroid/widget/ImageView;

    .line 1061
    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 1060
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1062
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButton:Landroid/widget/ImageView;

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButtonMargin:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1070
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mSettingsCling:Lcom/android/camera/widget/SettingsCling;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mSettingsCling:Lcom/android/camera/widget/SettingsCling;

    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SettingsCling;->updatePosition(Landroid/view/View;)V

    .line 1073
    :cond_0
    return-void

    .line 1065
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButton:Landroid/widget/ImageView;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButtonMargin:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButton:Landroid/widget/ImageView;

    .line 1066
    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 1065
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1067
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButton:Landroid/widget/ImageView;

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButtonMargin:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButton:Landroid/widget/ImageView;

    .line 1068
    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 1067
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1077
    iget-object v2, p0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v2}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v1

    .line 1078
    .local v1, "currentState":Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;
    invoke-virtual {v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->getCurrentAnimationEffects()Lcom/android/camera/widget/AnimationEffects;

    move-result-object v0

    .line 1079
    .local v0, "currentEffects":Lcom/android/camera/widget/AnimationEffects;
    if-eqz v0, :cond_1

    .line 1080
    invoke-virtual {v0, p1}, Lcom/android/camera/widget/AnimationEffects;->drawBackground(Landroid/graphics/Canvas;)V

    .line 1081
    invoke-virtual {v0}, Lcom/android/camera/widget/AnimationEffects;->shouldDrawSuper()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1082
    invoke-super {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation;->draw(Landroid/graphics/Canvas;)V

    .line 1084
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/widget/AnimationEffects;->drawForeground(Landroid/graphics/Canvas;)V

    .line 1088
    :goto_0
    return-void

    .line 1086
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getMaxMovementBasedOnPosition(II)F
    .locals 11
    .param p1, "lastVisibleWidth"    # I
    .param p2, "maxWidth"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 1589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/camera/ui/ModeListView;->mLastScrollTime:J

    sub-long/2addr v6, v8

    long-to-int v3, v6

    .line 1590
    .local v3, "timeElapsed":I
    const/16 v5, 0x32

    if-le v3, v5, :cond_0

    .line 1591
    const/16 v3, 0x32

    .line 1594
    :cond_0
    int-to-float v5, p2

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 1595
    .local v2, "slowZone":I
    sub-int v5, p2, v2

    if-ge p1, v5, :cond_1

    .line 1596
    int-to-float v5, v3

    mul-float/2addr v5, v10

    int-to-float v6, p1

    add-float v1, v5, v6

    .line 1602
    .local v1, "position":F
    :goto_0
    int-to-float v5, p2

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1603
    return v1

    .line 1598
    .end local v1    # "position":F
    :cond_1
    sub-int v5, p2, v2

    sub-int v5, p1, v5

    div-int/2addr v5, v2

    int-to-float v0, v5

    .line 1599
    .local v0, "percentageIntoSlowZone":F
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v0

    mul-float v4, v5, v10

    .line 1600
    .local v4, "velocity":F
    int-to-float v5, v3

    mul-float/2addr v5, v4

    int-to-float v6, p1

    add-float v1, v5, v6

    .restart local v1    # "position":F
    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->hide()V

    .line 1143
    return-void
.end method

.method public hideAnimated()V
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->hideAnimated()V

    .line 1151
    return-void
.end method

.method public init(Ljava/util/List;Z)V
    .locals 8
    .param p2, "isSecureCamera"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "modeIndexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x1

    .line 836
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d001e

    .line 837
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 838
    .local v3, "modeSequence":[I
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d001d

    .line 839
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 843
    .local v4, "visibleModes":[I
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 844
    .local v2, "modeIsSupported":Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 845
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 846
    .local v1, "mode":I
    invoke-virtual {v2, v1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 844
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 848
    .end local v1    # "mode":I
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 849
    aget v1, v4, v0

    .line 850
    .restart local v1    # "mode":I
    invoke-virtual {v2, v1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 848
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 855
    .end local v1    # "mode":I
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/ui/ModeListView;->mSupportedModes:Ljava/util/ArrayList;

    .line 856
    const/4 v0, 0x0

    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 857
    aget v1, v3, v0

    .line 858
    .restart local v1    # "mode":I
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 859
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView;->mSupportedModes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 862
    .end local v1    # "mode":I
    :cond_3
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView;->mSupportedModes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, p0, Lcom/android/camera/ui/ModeListView;->mTotalModes:I

    .line 863
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView;->initializeModeSelectorItems()V

    .line 864
    const v5, 0x7f0f018e

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/ModeListView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButton:Landroid/widget/ImageView;

    .line 865
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView;->mSettingsButton:Landroid/widget/ImageView;

    new-instance v6, Lcom/android/camera/ui/ModeListView$2;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/ModeListView$2;-><init>(Lcom/android/camera/ui/ModeListView;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 881
    new-instance v5, Lcom/android/camera/ui/ModeListView$3;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/ModeListView$3;-><init>(Lcom/android/camera/ui/ModeListView;)V

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/ModeListView;->post(Ljava/lang/Runnable;)Z

    .line 889
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/camera/ui/ModeListView;->onModeListOpenRatioUpdate(F)V

    .line 890
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v5}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v5

    if-nez v5, :cond_4

    .line 891
    iget-object v5, p0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v6, Lcom/android/camera/ui/ModeListView$FullyHiddenState;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/ModeListView$FullyHiddenState;-><init>(Lcom/android/camera/ui/ModeListView;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 893
    :cond_4
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1018
    invoke-super/range {p0 .. p5}, Lcom/android/camera/ui/operation/ModeListViewOperation;->onLayout(ZIIII)V

    .line 1019
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/camera/ui/ModeListView;->mWidth:I

    .line 1020
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ModeListView;->mHeight:I

    .line 1022
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView;->updateModeListLayout()V

    .line 1024
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->getCurrentAnimationEffects()Lcom/android/camera/widget/AnimationEffects;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->getCurrentAnimationEffects()Lcom/android/camera/widget/AnimationEffects;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/ModeListView;->mWidth:I

    iget v2, p0, Lcom/android/camera/ui/ModeListView;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/widget/AnimationEffects;->setSize(II)V

    .line 1028
    :cond_0
    return-void
.end method

.method public onMenuPressed()Z
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->onMenuPressed()Z

    move-result v0

    return v0
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeListView;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1036
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView;->updateModeListLayout()V

    .line 1038
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 970
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 971
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/ModeListView;->mChildViewTouched:Landroid/view/View;

    .line 974
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->shouldHandleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 975
    const/4 v0, 0x0

    .line 983
    :goto_0
    return v0

    .line 977
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 978
    invoke-super {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 981
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 982
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1197
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/operation/ModeListViewOperation;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1198
    if-nez p2, :cond_4

    .line 1200
    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mModeSwitchListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;

    if-eqz v3, :cond_1

    .line 1201
    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mModeSwitchListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;

    invoke-interface {v3}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;->getCurrentModeIndex()I

    move-result v1

    .line 1202
    .local v1, "modeId":I
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/util/CameraUtil;->getCameraModeParentModeId(ILandroid/content/Context;)I

    move-result v2

    .line 1204
    .local v2, "parentMode":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mSupportedModes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1205
    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mSupportedModes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1206
    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    aget-object v3, v3, v0

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ModeSelectorItem;->setSelected(Z)V

    .line 1204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1210
    .end local v0    # "i":I
    .end local v1    # "modeId":I
    .end local v2    # "parentMode":I
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView;->updateModeListLayout()V

    .line 1223
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mVisibilityChangedListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListVisibilityChangedListener;

    if-eqz v3, :cond_3

    .line 1224
    iget-object v6, p0, Lcom/android/camera/ui/ModeListView;->mVisibilityChangedListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListVisibilityChangedListener;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeListView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListVisibilityChangedListener;->onVisibilityEvent(Z)V

    .line 1226
    :cond_3
    return-void

    .line 1212
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    if-eqz v3, :cond_5

    .line 1214
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 1215
    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/ModeSelectorItem;->setSelected(Z)V

    .line 1214
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1218
    .end local v0    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mModeListOpenListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;

    if-eqz v3, :cond_2

    .line 1219
    iget-object v3, p0, Lcom/android/camera/ui/ModeListView;->mModeListOpenListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;

    invoke-interface {v3}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;->onModeListClosed()V

    goto :goto_1

    :cond_6
    move v3, v5

    .line 1224
    goto :goto_2
.end method

.method public onVisibleWidthChanged(I)V
    .locals 4
    .param p1, "visibleWidth"    # I

    .prologue
    .line 1344
    iput p1, p0, Lcom/android/camera/ui/ModeListView;->mVisibleWidth:I

    .line 1348
    iget-object v2, p0, Lcom/android/camera/ui/ModeListView;->mModeSelectorItems:[Lcom/android/camera/ui/ModeSelectorItem;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/camera/ui/ModeSelectorItem;->getMaxVisibleWidth()I

    move-result v0

    .line 1349
    .local v0, "maxVisibleWidth":I
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1350
    if-eq p1, v0, :cond_0

    .line 1352
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView;->cancelForwardingTouchEvent()V

    .line 1354
    :cond_0
    int-to-float v2, p1

    int-to-float v3, v0

    div-float v1, v2, v3

    .line 1355
    .local v1, "openRatio":F
    iget v2, p0, Lcom/android/camera/ui/ModeListView;->mModeListOpenFactor:F

    mul-float/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/android/camera/ui/ModeListView;->onModeListOpenRatioUpdate(F)V

    .line 1356
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1191
    invoke-super {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation;->onWindowFocusChanged(Z)V

    .line 1192
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->onWindowFocusChanged(Z)V

    .line 1193
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1405
    invoke-super {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation;->onWindowVisibilityChanged(I)V

    .line 1406
    if-eqz p1, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->hide()V

    .line 1409
    :cond_0
    return-void
.end method

.method public setShouldShowSettingsCling(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1099
    if-eqz p1, :cond_1

    .line 1100
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mSettingsCling:Lcom/android/camera/widget/SettingsCling;

    if-nez v0, :cond_0

    .line 1101
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040089

    invoke-static {v0, v1, p0}, Lcom/android/camera/ui/ModeListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1102
    const v0, 0x7f0f020a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/SettingsCling;

    iput-object v0, p0, Lcom/android/camera/ui/ModeListView;->mSettingsCling:Lcom/android/camera/widget/SettingsCling;

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1105
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mSettingsCling:Lcom/android/camera/widget/SettingsCling;

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mSettingsCling:Lcom/android/camera/widget/SettingsCling;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeListView;->removeView(Landroid/view/View;)V

    .line 1108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModeListView;->mSettingsCling:Lcom/android/camera/widget/SettingsCling;

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1331
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    .line 1332
    .local v0, "currentState":Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->shouldHandleVisibilityChange(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1336
    :goto_0
    return-void

    .line 1335
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation;->setVisibility(I)V

    goto :goto_0
.end method

.method public showModeSwitcherHint()V
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->showSwitcherHint()V

    .line 1135
    return-void
.end method

.method public showSettingsClingIfEnabled(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1120
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mSettingsCling:Lcom/android/camera/widget/SettingsCling;

    if-eqz v1, :cond_0

    .line 1121
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1122
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ModeListView;->mSettingsCling:Lcom/android/camera/widget/SettingsCling;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/SettingsCling;->setVisibility(I)V

    .line 1124
    .end local v0    # "visibility":I
    :cond_0
    return-void

    .line 1121
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public snapBack(Z)Landroid/animation/Animator;
    .locals 3
    .param p1, "withAnimation"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1470
    if-eqz p1, :cond_1

    .line 1471
    iget v0, p0, Lcom/android/camera/ui/ModeListView;->mVelocityX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1472
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v2, v0, v2

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ModeListView;->animateListToWidth([I)Landroid/animation/Animator;

    move-result-object v0

    .line 1479
    :goto_0
    return-object v0

    .line 1474
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ModeListView;->mVelocityX:F

    invoke-direct {p0, v0, v2}, Lcom/android/camera/ui/ModeListView;->animateListToWidthAtVelocity(FI)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 1477
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeListView;->setVisibility(I)V

    .line 1478
    invoke-direct {p0}, Lcom/android/camera/ui/ModeListView;->resetModeSelectors()V

    .line 1479
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startModeSelectionAnimation()V
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->startModeSelectionAnimation()V

    .line 1433
    return-void
.end method
