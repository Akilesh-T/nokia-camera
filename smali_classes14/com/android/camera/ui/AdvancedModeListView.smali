.class public Lcom/android/camera/ui/AdvancedModeListView;
.super Lcom/android/camera/ui/operation/ModeListViewOperation;
.source "AdvancedModeListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/AdvancedModeListView$PeepholeAnimationEffect;,
        Lcom/android/camera/ui/AdvancedModeListView$SelectedState;,
        Lcom/android/camera/ui/AdvancedModeListView$FullyShownState;,
        Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;
    }
.end annotation


# static fields
.field private static final BACKGROUND_TRANSPARENTCY:I = 0x66

.field private static final DEFAULT_DURATION_MS:I = 0xc8

.field private static final DELAY_MS:I = 0x1e

.field private static final NO_ITEM_SELECTED:I = -0x1

.field private static final PREVIEW_DOWN_SAMPLE_FACTOR:I = 0x4

.field private static final SCROLL_FACTOR:F = 0.5f

.field private static final SCROLL_INTERVAL_MS:I = 0x32

.field private static final SLOW_ZONE_PERCENTAGE:F = 0.2f

.field private static final SNAP_BACK_THRESHOLD_RATIO:F = 0.33f

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final VELOCITY_THRESHOLD:F = 2.0f


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBackImage:Landroid/widget/ImageView;

.field private mChildViewTouched:Landroid/view/View;

.field private mFocusItem:I

.field private mHeight:I

.field private mInited:Z

.field private mLastChildTouchEvent:Landroid/view/MotionEvent;

.field private mLastScrollTime:J

.field private mListBackgroundColor:I

.field private mListView:Landroid/widget/LinearLayout;

.field private mListViewContainer:Lcom/android/camera/ui/RotateLayout;

.field private mListViewContainerChild:Landroid/widget/FrameLayout;

.field private mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

.field private mModeListOpenFactor:F

.field private final mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mOrientation:I

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
    .line 68
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "AdvModeListView"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 488
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/operation/ModeListViewOperation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mFocusItem:I

    .line 106
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeListOpenFactor:F

    .line 108
    iput-object v3, p0, Lcom/android/camera/ui/AdvancedModeListView;->mChildViewTouched:Landroid/view/View;

    .line 109
    iput-object v3, p0, Lcom/android/camera/ui/AdvancedModeListView;->mLastChildTouchEvent:Landroid/view/MotionEvent;

    .line 110
    iput v2, p0, Lcom/android/camera/ui/AdvancedModeListView;->mVisibleWidth:I

    .line 116
    iput v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mScrollTrendX:F

    .line 117
    iput v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mScrollTrendY:F

    .line 119
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mPositionHistory:Ljava/util/LinkedList;

    .line 124
    iput-boolean v2, p0, Lcom/android/camera/ui/AdvancedModeListView;->mInited:Z

    .line 411
    new-instance v0, Lcom/android/camera/ui/AdvancedModeListView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/AdvancedModeListView$1;-><init>(Lcom/android/camera/ui/AdvancedModeListView;)V

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 489
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListBackgroundColor:I

    .line 490
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v1, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;-><init>(Lcom/android/camera/ui/AdvancedModeListView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 493
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/AdvancedModeListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/camera/ui/AdvancedModeListView;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/AdvancedModeListView;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/camera/ui/AdvancedModeListView;->snapToFullScreen()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/AdvancedModeListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mHeight:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/ui/AdvancedModeListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/AdvancedModeListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mOrientation:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/camera/ui/AdvancedModeListView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView;
    .param p1, "x1"    # J

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mLastScrollTime:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/android/camera/ui/AdvancedModeListView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView;
    .param p1, "x1"    # F

    .prologue
    .line 66
    iput p1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mVelocityX:F

    return p1
.end method

.method static synthetic access$1500()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/ui/AdvancedModeListView;Lcom/android/camera/ui/operation/ModeSelectorItemOperation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView;
    .param p1, "x1"    # Lcom/android/camera/ui/operation/ModeSelectorItemOperation;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AdvancedModeListView;->onItemSelected(Lcom/android/camera/ui/operation/ModeSelectorItemOperation;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/ui/AdvancedModeListView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AdvancedModeListView;->onModeSelected(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/AdvancedModeListView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mBackImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/AdvancedModeListView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AdvancedModeListView;->isTouchInsideContainer(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/AdvancedModeListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeListView;->setOnceSelected()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/ui/AdvancedModeListView;)[Lcom/android/camera/ui/AdvancedModeItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/AdvancedModeListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mWidth:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/ui/AdvancedModeListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/AdvancedModeListView;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mWidth:I

    return p1
.end method

.method private varargs animateListToWidth(IILandroid/animation/TimeInterpolator;[I)Landroid/animation/Animator;
    .locals 6
    .param p1, "delay"    # I
    .param p2, "duration"    # I
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p4, "width"    # [I

    .prologue
    .line 1060
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1061
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->end()V

    .line 1064
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v0, 0x1

    .line 1066
    .local v0, "animateModeItemsInOrder":Z
    if-gez p1, :cond_1

    .line 1067
    const/4 v0, 0x0

    .line 1068
    mul-int/lit8 p1, p1, -0x1

    .line 1070
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mTotalModes:I

    if-ge v3, v4, :cond_4

    .line 1071
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aget-object v4, v4, v3

    if-nez v4, :cond_2

    .line 1070
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1073
    :cond_2
    if-eqz v0, :cond_3

    .line 1074
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aget-object v4, v4, v3

    const-string v5, "visibleWidth"

    invoke-static {v4, v5, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1080
    .local v1, "animator":Landroid/animation/ObjectAnimator;
    :goto_2
    int-to-long v4, p2

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1081
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1077
    .end local v1    # "animator":Landroid/animation/ObjectAnimator;
    :cond_3
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    iget v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mTotalModes:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v3

    aget-object v4, v4, v5

    const-string v5, "visibleWidth"

    invoke-static {v4, v5, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .restart local v1    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_2

    .line 1084
    .end local v1    # "animator":Landroid/animation/ObjectAnimator;
    :cond_4
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1085
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1086
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1087
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 1089
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v4
.end method

.method private varargs animateListToWidth([I)Landroid/animation/Animator;
    .locals 3
    .param p1, "width"    # [I

    .prologue
    .line 1046
    const/4 v0, 0x0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/camera/ui/AdvancedModeListView;->animateListToWidth(IILandroid/animation/TimeInterpolator;[I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private animateListToWidthAtVelocity(FI)Landroid/animation/Animator;
    .locals 8
    .param p1, "velocity"    # F
    .param p2, "width"    # I

    .prologue
    .line 1099
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1100
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->end()V

    .line 1103
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mTotalModes:I

    if-ge v3, v4, :cond_2

    .line 1105
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aget-object v4, v4, v3

    if-nez v4, :cond_1

    .line 1104
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1106
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aget-object v4, v4, v3

    const-string v5, "visibleWidth"

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput p2, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1108
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    int-to-float v4, p2

    div-float/2addr v4, p1

    float-to-int v2, v4

    .line 1109
    .local v2, "duration":I
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1110
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1113
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v2    # "duration":I
    :cond_2
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1114
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1115
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1116
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 1118
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v4
.end method

.method private cancelForwardingTouchEvent()V
    .locals 2

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mChildViewTouched:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mLastChildTouchEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 929
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mChildViewTouched:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mLastChildTouchEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 930
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mChildViewTouched:Landroid/view/View;

    .line 932
    :cond_0
    return-void
.end method

.method private getModeIndex(I)I
    .locals 3
    .param p1, "modeSelectorIndex"    # I

    .prologue
    .line 654
    iget v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mTotalModes:I

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mSupportedModes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 659
    :goto_0
    return v0

    .line 657
    :cond_0
    sget-object v0, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    iget v2, p0, Lcom/android/camera/ui/AdvancedModeListView;->mTotalModes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0
.end method

.method private initSettingsButton()V
    .locals 6

    .prologue
    const v5, 0x7f0800f9

    .line 670
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/util/AndroidServices;->provideLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 671
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04001e

    const/4 v4, 0x0

    .line 672
    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/AdvancedModeItem;

    .line 673
    .local v2, "modeItem":Lcom/android/camera/ui/AdvancedModeItem;
    iget-object v3, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 674
    const v3, 0x7f020281

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/AdvancedModeItem;->setImageResource(I)V

    .line 675
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/AdvancedModeItem;->setText(Ljava/lang/CharSequence;)V

    .line 676
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/AdvancedModeItem;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 677
    new-instance v0, Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;

    invoke-direct {v0}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;-><init>()V

    .line 678
    .local v0, "config":Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;->mIsSettings:Z

    .line 679
    invoke-virtual {v2, v0}, Lcom/android/camera/ui/AdvancedModeItem;->setModeConfig(Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;)V

    .line 680
    new-instance v3, Lcom/android/camera/ui/AdvancedModeListView$6;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/AdvancedModeListView$6;-><init>(Lcom/android/camera/ui/AdvancedModeListView;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/AdvancedModeItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    iget-object v3, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    iget v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mTotalModes:I

    add-int/lit8 v4, v4, -0x1

    aput-object v2, v3, v4

    .line 698
    return-void
.end method

.method private initializeModeSelectorItems(Z)V
    .locals 10
    .param p1, "isSecureCamera"    # Z

    .prologue
    .line 561
    const v7, 0x7f0f018a

    invoke-virtual {p0, v7}, Lcom/android/camera/ui/AdvancedModeListView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ui/RotateLayout;

    iput-object v7, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListViewContainer:Lcom/android/camera/ui/RotateLayout;

    .line 562
    const v7, 0x7f0f018b

    invoke-virtual {p0, v7}, Lcom/android/camera/ui/AdvancedModeListView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListViewContainerChild:Landroid/widget/FrameLayout;

    .line 563
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "findViewById(R.id.mode_list_container_child)"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 564
    iget v7, p0, Lcom/android/camera/ui/AdvancedModeListView;->mTotalModes:I

    new-array v7, v7, [Lcom/android/camera/ui/AdvancedModeItem;

    iput-object v7, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    .line 565
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "new AdvancedModeItem"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 567
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/util/AndroidServices;->provideLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 568
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "provideLayoutInflater"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 569
    const v7, 0x7f0f018c

    invoke-virtual {p0, v7}, Lcom/android/camera/ui/AdvancedModeListView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListView:Landroid/widget/LinearLayout;

    .line 570
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v7, p0, Lcom/android/camera/ui/AdvancedModeListView;->mTotalModes:I

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_0

    .line 571
    const v7, 0x7f04001e

    const/4 v8, 0x0

    .line 572
    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/AdvancedModeItem;

    .line 573
    .local v6, "modeItem":Lcom/android/camera/ui/AdvancedModeItem;
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inflate(R.layout.advanced_mode_item : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 574
    iget-object v7, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 575
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "addView[i] done"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 576
    invoke-direct {p0, v1}, Lcom/android/camera/ui/AdvancedModeListView;->getModeIndex(I)I

    move-result v5

    .line 577
    .local v5, "modeId":I
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "modeId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeListView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/util/CameraUtil;->getCameraModeIconResId(ILandroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/AdvancedModeItem;->setImageResource(I)V

    .line 580
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "setImageResource[i] done"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeListView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/util/CameraUtil;->getCameraModeText(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/AdvancedModeItem;->setText(Ljava/lang/CharSequence;)V

    .line 583
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "setText[i] done"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeListView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/util/CameraUtil;->getCameraModeContentDescription(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 585
    invoke-virtual {v6, v7}, Lcom/android/camera/ui/AdvancedModeItem;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 587
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "setContentDescription[i] done"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 588
    invoke-virtual {v6, v5}, Lcom/android/camera/ui/AdvancedModeItem;->setModeId(I)V

    .line 589
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "setModeId[i] done"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeListView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/util/CameraUtil;->isVideoActionModule(ILandroid/content/Context;)Z

    move-result v4

    .line 592
    .local v4, "isVideoMode":Z
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isVideoMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeListView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/util/CameraUtil;->isOnlySupportBackCamera(ILandroid/content/Context;)Z

    move-result v3

    .line 594
    .local v3, "isOnlySupportBack":Z
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isOnlySupportBack = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 596
    new-instance v0, Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;

    invoke-direct {v0}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;-><init>()V

    .line 597
    .local v0, "config":Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "new ModeConfig[i] done"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 598
    iput-boolean v4, v0, Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;->mIsVideoMode:Z

    .line 599
    iput-boolean v3, v0, Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;->mIsOnlySupportBack:Z

    .line 600
    invoke-virtual {v6, v0}, Lcom/android/camera/ui/AdvancedModeItem;->setModeConfig(Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;)V

    .line 601
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "setModeConfig[i] done"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 602
    new-instance v7, Lcom/android/camera/ui/AdvancedModeListView$3;

    invoke-direct {v7, p0, v6}, Lcom/android/camera/ui/AdvancedModeListView$3;-><init>(Lcom/android/camera/ui/AdvancedModeListView;Lcom/android/camera/ui/AdvancedModeItem;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/AdvancedModeItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "setOnClickListener[i] done"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 611
    iget-object v7, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aput-object v6, v7, v1

    .line 612
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "mModeItems[i] done"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 614
    .end local v0    # "config":Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;
    .end local v3    # "isOnlySupportBack":Z
    .end local v4    # "isVideoMode":Z
    .end local v5    # "modeId":I
    .end local v6    # "modeItem":Lcom/android/camera/ui/AdvancedModeItem;
    :cond_0
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "all ModeItems done"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 615
    invoke-direct {p0}, Lcom/android/camera/ui/AdvancedModeListView;->initSettingsButton()V

    .line 616
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "initSettingsButton done"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 620
    iget-object v7, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    iget v8, p0, Lcom/android/camera/ui/AdvancedModeListView;->mTotalModes:I

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, p0}, Lcom/android/camera/ui/AdvancedModeItem;->setVisibleWidthChangedListener(Lcom/android/camera/ui/operation/ModeSelectorItemOperation$VisibleWidthChangedListener;)V

    .line 621
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "setVisibleWidthChangedListener done"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 622
    invoke-direct {p0}, Lcom/android/camera/ui/AdvancedModeListView;->resetModeSelectors()V

    .line 623
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "resetModeSelectors done"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 630
    const v7, 0x7f0f018d

    invoke-virtual {p0, v7}, Lcom/android/camera/ui/AdvancedModeListView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/camera/ui/AdvancedModeListView;->mBackImage:Landroid/widget/ImageView;

    .line 631
    iget-object v7, p0, Lcom/android/camera/ui/AdvancedModeListView;->mBackImage:Landroid/widget/ImageView;

    new-instance v8, Lcom/android/camera/ui/AdvancedModeListView$4;

    invoke-direct {v8, p0}, Lcom/android/camera/ui/AdvancedModeListView$4;-><init>(Lcom/android/camera/ui/AdvancedModeListView;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "setOnClickListener done"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 638
    new-instance v7, Lcom/android/camera/ui/AdvancedModeListView$5;

    invoke-direct {v7, p0}, Lcom/android/camera/ui/AdvancedModeListView$5;-><init>(Lcom/android/camera/ui/AdvancedModeListView;)V

    invoke-virtual {p0, v7}, Lcom/android/camera/ui/AdvancedModeListView;->post(Ljava/lang/Runnable;)Z

    .line 644
    sget-object v7, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "post done"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method private isTouchInsideContainer(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 471
    iget v3, p0, Lcom/android/camera/ui/AdvancedModeListView;->mOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_1

    .line 472
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListViewContainerChild:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    move-result v4

    sub-float v0, v3, v4

    .line 473
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListViewContainerChild:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v4

    sub-float v1, v3, v4

    .line 474
    .local v1, "y":F
    cmpg-float v3, v0, v5

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListViewContainerChild:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_0

    cmpg-float v3, v1, v5

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListViewContainerChild:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    .line 484
    :cond_0
    :goto_0
    return v2

    .line 478
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListViewContainerChild:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v4

    sub-float v0, v3, v4

    .line 479
    .restart local v0    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListViewContainerChild:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    move-result v4

    sub-float v1, v3, v4

    .line 480
    .restart local v1    # "y":F
    cmpg-float v3, v0, v5

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListViewContainerChild:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_0

    cmpg-float v3, v1, v5

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListViewContainerChild:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_0

    .line 484
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onItemSelected(Lcom/android/camera/ui/operation/ModeSelectorItemOperation;)V
    .locals 2
    .param p1, "selectedItem"    # Lcom/android/camera/ui/operation/ModeSelectorItemOperation;

    .prologue
    .line 457
    invoke-virtual {p1}, Lcom/android/camera/ui/operation/ModeSelectorItemOperation;->getModeId()I

    move-result v0

    .line 458
    .local v0, "modeId":I
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeSwitchListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;

    invoke-interface {v1, v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;->onModeButtonPressed(I)V

    .line 460
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->onItemSelected(Lcom/android/camera/ui/operation/ModeSelectorItemOperation;)V

    .line 461
    return-void
.end method

.method private onModeListOpenRatioUpdate(F)V
    .locals 2
    .param p1, "openRatio"    # F

    .prologue
    .line 912
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 913
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/AdvancedModeItem;->setTextAlpha(F)V

    .line 912
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 915
    :cond_1
    const/high16 v1, 0x42cc0000    # 102.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/AdvancedModeListView;->setBackgroundAlpha(I)V

    .line 916
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeListOpenListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;

    if-eqz v1, :cond_2

    .line 917
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeListOpenListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;

    invoke-interface {v1, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;->onModeListOpenProgress(F)V

    .line 919
    :cond_2
    return-void
.end method

.method private onModeSelected(I)V
    .locals 1
    .param p1, "modeIndex"    # I

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeSwitchListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeSwitchListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;->onModeSelected(I)V

    .line 667
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 870
    invoke-direct {p0}, Lcom/android/camera/ui/AdvancedModeListView;->resetModeSelectors()V

    .line 871
    iput v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mScrollTrendX:F

    .line 872
    iput v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mScrollTrendY:F

    .line 873
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedModeListView;->setVisibility(I)V

    .line 874
    return-void
.end method

.method private resetModeSelectors()V
    .locals 3

    .prologue
    .line 806
    iget-boolean v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mInited:Z

    if-nez v1, :cond_1

    .line 811
    :cond_0
    return-void

    .line 807
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    if-eqz v1, :cond_0

    .line 808
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 809
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/AdvancedModeItem;->setVisibleWidth(I)V

    .line 808
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setBackgroundAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 503
    and-int/lit16 p1, p1, 0xff

    .line 505
    iget v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListBackgroundColor:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListBackgroundColor:I

    .line 506
    iget v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListBackgroundColor:I

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListBackgroundColor:I

    .line 510
    iget v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedModeListView;->setBackgroundColor(I)V

    .line 511
    return-void
.end method

.method private shouldSnapBack()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 981
    iget v3, p0, Lcom/android/camera/ui/AdvancedModeListView;->mFocusItem:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 982
    .local v0, "itemId":I
    iget v3, p0, Lcom/android/camera/ui/AdvancedModeListView;->mVelocityX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 984
    iget v3, p0, Lcom/android/camera/ui/AdvancedModeListView;->mVelocityX:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_1

    .line 991
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 984
    goto :goto_0

    .line 985
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/camera/ui/AdvancedModeItem;->getVisibleWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aget-object v4, v4, v0

    .line 986
    invoke-virtual {v4}, Lcom/android/camera/ui/AdvancedModeItem;->getMaxVisibleWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 988
    iget v3, p0, Lcom/android/camera/ui/AdvancedModeListView;->mScrollTrendX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mScrollTrendY:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget v3, p0, Lcom/android/camera/ui/AdvancedModeListView;->mScrollTrendX:F

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_0

    :cond_3
    move v1, v2

    .line 991
    goto :goto_0
.end method

.method private snap()V
    .locals 1

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/android/camera/ui/AdvancedModeListView;->shouldSnapBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    invoke-direct {p0}, Lcom/android/camera/ui/AdvancedModeListView;->snapBack()Landroid/animation/Animator;

    .line 978
    :goto_0
    return-void

    .line 976
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/AdvancedModeListView;->snapToFullScreen()Landroid/animation/Animator;

    goto :goto_0
.end method

.method private snapBack()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 1018
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedModeListView;->snapBack(Z)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private snapToFullScreen()Landroid/animation/Animator;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 1023
    iget v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mFocusItem:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    move v1, v3

    .line 1024
    .local v1, "focusItem":I
    :goto_0
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/camera/ui/AdvancedModeItem;->getMaxVisibleWidth()I

    move-result v2

    .line 1025
    .local v2, "fullWidth":I
    iget v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mVelocityX:F

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_2

    .line 1026
    const/4 v4, 0x1

    new-array v4, v4, [I

    aput v2, v4, v3

    invoke-direct {p0, v4}, Lcom/android/camera/ui/AdvancedModeListView;->animateListToWidth([I)Landroid/animation/Animator;

    move-result-object v0

    .line 1032
    .local v0, "animator":Landroid/animation/Animator;
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeListOpenListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;

    if-eqz v3, :cond_0

    .line 1033
    iget-object v3, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeListOpenListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;

    invoke-interface {v3}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;->onOpenFullScreen()V

    .line 1035
    :cond_0
    return-object v0

    .line 1023
    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v1    # "focusItem":I
    .end local v2    # "fullWidth":I
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mFocusItem:I

    goto :goto_0

    .line 1030
    .restart local v1    # "focusItem":I
    .restart local v2    # "fullWidth":I
    :cond_2
    invoke-direct {p0, v6, v2}, Lcom/android/camera/ui/AdvancedModeListView;->animateListToWidthAtVelocity(FI)Landroid/animation/Animator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/Animator;
    goto :goto_1
.end method

.method private updateModeListLayout()V
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    if-nez v0, :cond_1

    .line 744
    sget-object v0, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Capture layout helper needs to be set first."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListViewContainer:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListViewContainer:Lcom/android/camera/ui/RotateLayout;

    check-cast v0, Lcom/android/camera/ui/ModeListContainer;

    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeListContainer;->setCaptureLayoutHelper(Lcom/android/camera/CaptureLayoutHelper;)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 761
    iget-object v2, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v2}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v1

    .line 762
    .local v1, "currentState":Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;
    invoke-virtual {v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->getCurrentAnimationEffects()Lcom/android/camera/widget/AnimationEffects;

    move-result-object v0

    .line 763
    .local v0, "currentEffects":Lcom/android/camera/widget/AnimationEffects;
    if-eqz v0, :cond_1

    .line 764
    invoke-virtual {v0, p1}, Lcom/android/camera/widget/AnimationEffects;->drawBackground(Landroid/graphics/Canvas;)V

    .line 765
    invoke-virtual {v0}, Lcom/android/camera/widget/AnimationEffects;->shouldDrawSuper()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 766
    invoke-super {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation;->draw(Landroid/graphics/Canvas;)V

    .line 768
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/widget/AnimationEffects;->drawForeground(Landroid/graphics/Canvas;)V

    .line 772
    :goto_0
    return-void

    .line 770
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

    .line 1122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/camera/ui/AdvancedModeListView;->mLastScrollTime:J

    sub-long/2addr v6, v8

    long-to-int v3, v6

    .line 1123
    .local v3, "timeElapsed":I
    const/16 v5, 0x32

    if-le v3, v5, :cond_0

    .line 1124
    const/16 v3, 0x32

    .line 1127
    :cond_0
    int-to-float v5, p2

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 1128
    .local v2, "slowZone":I
    sub-int v5, p2, v2

    if-ge p1, v5, :cond_1

    .line 1129
    int-to-float v5, v3

    mul-float/2addr v5, v10

    int-to-float v6, p1

    add-float v1, v5, v6

    .line 1135
    .local v1, "position":F
    :goto_0
    int-to-float v5, p2

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1136
    return v1

    .line 1131
    .end local v1    # "position":F
    :cond_1
    sub-int v5, p2, v2

    sub-int v5, p1, v5

    div-int/2addr v5, v2

    int-to-float v0, v5

    .line 1132
    .local v0, "percentageIntoSlowZone":F
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v0

    mul-float v4, v5, v10

    .line 1133
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
    .line 790
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->hide()V

    .line 791
    return-void
.end method

.method public hideAnimated()V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->hideAnimated()V

    .line 799
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

    .line 520
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00df

    .line 521
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 522
    .local v3, "modeSequence":[I
    sget-object v4, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "getIntArray(R.array.supported_mode_list"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 526
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 527
    .local v2, "modeIsSupported":Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 528
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 529
    .local v1, "mode":I
    invoke-virtual {v2, v1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    .end local v1    # "mode":I
    :cond_0
    sget-object v4, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "new SparseBooleanArray()"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 535
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mSupportedModes:Ljava/util/ArrayList;

    .line 536
    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 537
    aget v1, v3, v0

    .line 538
    .restart local v1    # "mode":I
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 539
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mSupportedModes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 542
    .end local v1    # "mode":I
    :cond_2
    sget-object v4, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "mSupportedModes.add(mode)"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 543
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mSupportedModes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mTotalModes:I

    .line 544
    iget v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mTotalModes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mTotalModes:I

    .line 545
    sget-object v4, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTotalModes = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/ui/AdvancedModeListView;->mTotalModes:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 546
    invoke-direct {p0, p2}, Lcom/android/camera/ui/AdvancedModeListView;->initializeModeSelectorItems(Z)V

    .line 547
    sget-object v4, Lcom/android/camera/ui/AdvancedModeListView;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "initializeModeSelectorItems done"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 549
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/camera/ui/AdvancedModeListView;->onModeListOpenRatioUpdate(F)V

    .line 550
    iput-boolean v7, p0, Lcom/android/camera/ui/AdvancedModeListView;->mInited:Z

    .line 551
    iget-object v4, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    new-instance v5, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/AdvancedModeListView$FullyHiddenState;-><init>(Lcom/android/camera/ui/AdvancedModeListView;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->setCurrentState(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;)V

    .line 552
    new-instance v4, Lcom/android/camera/ui/AdvancedModeListView$2;

    invoke-direct {v4, p0}, Lcom/android/camera/ui/AdvancedModeListView$2;-><init>(Lcom/android/camera/ui/AdvancedModeListView;)V

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/AdvancedModeListView;->post(Ljava/lang/Runnable;)Z

    .line 558
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

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
    .line 716
    invoke-super/range {p0 .. p5}, Lcom/android/camera/ui/operation/ModeListViewOperation;->onLayout(ZIIII)V

    .line 717
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mWidth:I

    .line 718
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mHeight:I

    .line 720
    invoke-direct {p0}, Lcom/android/camera/ui/AdvancedModeListView;->updateModeListLayout()V

    .line 725
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    .line 726
    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->getCurrentAnimationEffects()Lcom/android/camera/widget/AnimationEffects;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->getCurrentAnimationEffects()Lcom/android/camera/widget/AnimationEffects;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mWidth:I

    iget v2, p0, Lcom/android/camera/ui/AdvancedModeListView;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/widget/AnimationEffects;->setSize(II)V

    .line 730
    :cond_0
    return-void
.end method

.method public onMenuPressed()Z
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

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
    .line 734
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeListView;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    invoke-direct {p0}, Lcom/android/camera/ui/AdvancedModeListView;->updateModeListLayout()V

    .line 740
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 703
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->shouldHandleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 704
    const/4 v0, 0x0

    .line 711
    :goto_0
    return v0

    .line 706
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 707
    invoke-super {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 710
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 821
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/operation/ModeListViewOperation;->onVisibilityChanged(Landroid/view/View;I)V

    .line 822
    iget-boolean v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mInited:Z

    if-nez v5, :cond_1

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    if-nez p2, :cond_9

    .line 825
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeSwitchListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;

    if-eqz v5, :cond_7

    .line 826
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeSwitchListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;

    invoke-interface {v5}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;->getCurrentModeIndex()I

    move-result v4

    .line 828
    .local v4, "modeId":I
    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/util/CameraUtil;->isVideoActionModule(ILandroid/content/Context;)Z

    move-result v3

    .line 829
    .local v3, "isVideoMode":Z
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeSwitchListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;

    invoke-interface {v5}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;->isBackFacingCamera()Z

    move-result v2

    .line 832
    .local v2, "isBackFacing":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mSupportedModes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 833
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aget-object v5, v5, v1

    if-nez v5, :cond_2

    .line 832
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 835
    :cond_2
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mSupportedModes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 836
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aget-object v5, v5, v1

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/AdvancedModeItem;->setSelected(Z)V

    .line 839
    :cond_3
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/camera/ui/AdvancedModeItem;->getModeConfig()Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;

    move-result-object v0

    .line 840
    .local v0, "config":Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;
    iget-boolean v5, v0, Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;->mIsSettings:Z

    if-eqz v5, :cond_4

    .line 841
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aget-object v5, v5, v1

    invoke-virtual {v5, v7}, Lcom/android/camera/ui/AdvancedModeItem;->setVisibility(I)V

    goto :goto_2

    .line 842
    :cond_4
    iget-boolean v5, v0, Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;->mIsVideoMode:Z

    if-ne v3, v5, :cond_5

    iget-boolean v5, v0, Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;->mIsOnlySupportBack:Z

    if-nez v5, :cond_5

    .line 843
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aget-object v5, v5, v1

    invoke-virtual {v5, v7}, Lcom/android/camera/ui/AdvancedModeItem;->setVisibility(I)V

    goto :goto_2

    .line 844
    :cond_5
    iget-boolean v5, v0, Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;->mIsVideoMode:Z

    if-ne v3, v5, :cond_6

    if-eqz v2, :cond_6

    iget-boolean v5, v0, Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;->mIsOnlySupportBack:Z

    if-eqz v5, :cond_6

    .line 845
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aget-object v5, v5, v1

    invoke-virtual {v5, v7}, Lcom/android/camera/ui/AdvancedModeItem;->setVisibility(I)V

    goto :goto_2

    .line 847
    :cond_6
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aget-object v5, v5, v1

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Lcom/android/camera/ui/AdvancedModeItem;->setVisibility(I)V

    goto :goto_2

    .line 851
    .end local v0    # "config":Lcom/android/camera/ui/operation/ModeSelectorItemOperation$ModeConfig;
    .end local v1    # "i":I
    .end local v2    # "isBackFacing":Z
    .end local v3    # "isVideoMode":Z
    .end local v4    # "modeId":I
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/ui/AdvancedModeListView;->updateModeListLayout()V

    .line 864
    :cond_8
    :goto_3
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mVisibilityChangedListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListVisibilityChangedListener;

    if-eqz v5, :cond_0

    .line 865
    iget-object v8, p0, Lcom/android/camera/ui/AdvancedModeListView;->mVisibilityChangedListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListVisibilityChangedListener;

    invoke-virtual {p0}, Lcom/android/camera/ui/AdvancedModeListView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_c

    move v5, v6

    :goto_4
    invoke-virtual {v8, v5}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListVisibilityChangedListener;->onVisibilityEvent(Z)V

    goto/16 :goto_0

    .line 853
    :cond_9
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    if-eqz v5, :cond_b

    .line 855
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    array-length v5, v5

    if-ge v1, v5, :cond_b

    .line 856
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aget-object v5, v5, v1

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    aget-object v5, v5, v1

    invoke-virtual {v5, v7}, Lcom/android/camera/ui/AdvancedModeItem;->setSelected(Z)V

    .line 855
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 859
    .end local v1    # "i":I
    :cond_b
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeListOpenListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;

    if-eqz v5, :cond_8

    .line 860
    iget-object v5, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeListOpenListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;

    invoke-interface {v5}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;->onModeListClosed()V

    goto :goto_3

    :cond_c
    move v5, v7

    .line 865
    goto :goto_4
.end method

.method public onVisibleWidthChanged(I)V
    .locals 4
    .param p1, "visibleWidth"    # I

    .prologue
    .line 891
    iput p1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mVisibleWidth:I

    .line 895
    iget-object v2, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeItems:[Lcom/android/camera/ui/AdvancedModeItem;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/camera/ui/AdvancedModeItem;->getMaxVisibleWidth()I

    move-result v0

    .line 896
    .local v0, "maxVisibleWidth":I
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 897
    if-eq p1, v0, :cond_0

    .line 899
    invoke-direct {p0}, Lcom/android/camera/ui/AdvancedModeListView;->cancelForwardingTouchEvent()V

    .line 901
    :cond_0
    int-to-float v2, p1

    int-to-float v3, v0

    div-float v1, v2, v3

    .line 902
    .local v1, "openRatio":F
    iget v2, p0, Lcom/android/camera/ui/AdvancedModeListView;->mModeListOpenFactor:F

    mul-float/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/android/camera/ui/AdvancedModeListView;->onModeListOpenRatioUpdate(F)V

    .line 903
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 815
    invoke-super {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation;->onWindowFocusChanged(Z)V

    .line 816
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->onWindowFocusChanged(Z)V

    .line 817
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 936
    invoke-super {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation;->onWindowVisibilityChanged(I)V

    .line 937
    if-eqz p1, :cond_0

    .line 938
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->hide()V

    .line 940
    :cond_0
    return-void
.end method

.method public setCaptureLayoutHelper(Lcom/android/camera/CaptureLayoutHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/camera/CaptureLayoutHelper;

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 1144
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 445
    iput p1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mOrientation:I

    .line 446
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListViewContainer:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mListViewContainer:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 449
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 878
    iget-object v1, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v1}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    .line 879
    .local v0, "currentState":Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->shouldHandleVisibilityChange(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 883
    :goto_0
    return-void

    .line 882
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/operation/ModeListViewOperation;->setVisibility(I)V

    goto :goto_0
.end method

.method public showModeSwitcherHint()V
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->showSwitcherHint()V

    .line 783
    return-void
.end method

.method public snapBack(Z)Landroid/animation/Animator;
    .locals 3
    .param p1, "withAnimation"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1001
    if-eqz p1, :cond_1

    .line 1002
    iget v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mVelocityX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1003
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v2, v0, v2

    invoke-direct {p0, v0}, Lcom/android/camera/ui/AdvancedModeListView;->animateListToWidth([I)Landroid/animation/Animator;

    move-result-object v0

    .line 1010
    :goto_0
    return-object v0

    .line 1005
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mVelocityX:F

    invoke-direct {p0, v0, v2}, Lcom/android/camera/ui/AdvancedModeListView;->animateListToWidthAtVelocity(FI)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 1008
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AdvancedModeListView;->setVisibility(I)V

    .line 1009
    invoke-direct {p0}, Lcom/android/camera/ui/AdvancedModeListView;->resetModeSelectors()V

    .line 1010
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startModeSelectionAnimation()V
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;->getCurrentState()Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;->startModeSelectionAnimation()V

    .line 964
    return-void
.end method
