.class public Lcom/android/camera/livebroadcast/status/ReactionView;
.super Ljava/lang/Object;
.source "ReactionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/livebroadcast/status/ReactionView$MainHandler;
    }
.end annotation


# static fields
.field public static LIMIT_NUMBER:I = 0x0

.field private static final MAX_STEP:I = 0x21c

.field private static final PRE_ANIMATION_DURATION:I = 0xbb8

.field private static final REMOVE_TIMEOUT:I = 0x3e8

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mAnimationHeight:I

.field private final mAnimationWidth:I

.field private mContext:Landroid/content/Context;

.field private mFactor:I

.field private final mHandler:Lcom/android/camera/livebroadcast/status/ReactionView$MainHandler;

.field private mHasInit:Z

.field private mHasSet:Z

.field private mImageView:Landroid/widget/ImageView;

.field private final mMaxMove:I

.field private final mMinMove:I

.field private mOriginalX:I

.field private mOriginalY:I

.field private mRootView:Landroid/view/ViewGroup;

.field private mThumbUpAnimator:Landroid/animation/ValueAnimator;

.field private mThumbUpResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-class v1, Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/status/ReactionView;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 32
    const/16 v0, 0x64

    sput v0, Lcom/android/camera/livebroadcast/status/ReactionView;->LIMIT_NUMBER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Landroid/os/Looper;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/ViewGroup;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "looper"    # Landroid/os/Looper;
    .param p6, "orientation"    # I

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mHasSet:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mHasInit:Z

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mFactor:I

    .line 54
    sget-boolean v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/livebroadcast/status/ReactionView;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new ReactionView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mRootView:Landroid/view/ViewGroup;

    .line 57
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mImageView:Landroid/widget/ImageView;

    .line 58
    new-instance v0, Lcom/android/camera/livebroadcast/status/ReactionView$MainHandler;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mImageView:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2, p5}, Lcom/android/camera/livebroadcast/status/ReactionView$MainHandler;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mHandler:Lcom/android/camera/livebroadcast/status/ReactionView$MainHandler;

    .line 59
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mMinMove:I

    .line 60
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mMaxMove:I

    .line 61
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mAnimationWidth:I

    .line 62
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mAnimationHeight:I

    .line 63
    invoke-static {p4}, Lcom/android/camera/livebroadcast/status/ReactionView;->getThumbUpResourceId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mThumbUpResourceId:I

    .line 64
    invoke-direct {p0, p6}, Lcom/android/camera/livebroadcast/status/ReactionView;->initView(I)V

    .line 65
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/status/ReactionView;->initAnimation()V

    .line 66
    invoke-direct {p0, p3}, Lcom/android/camera/livebroadcast/status/ReactionView;->loadURL(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/livebroadcast/status/ReactionView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/status/ReactionView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/livebroadcast/status/ReactionView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/status/ReactionView;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mOriginalY:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/livebroadcast/status/ReactionView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/status/ReactionView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mThumbUpAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/livebroadcast/status/ReactionView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/status/ReactionView;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mFactor:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/livebroadcast/status/ReactionView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/status/ReactionView;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mAnimationHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/livebroadcast/status/ReactionView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/status/ReactionView;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mOriginalX:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/livebroadcast/status/ReactionView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/status/ReactionView;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mAnimationWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/livebroadcast/status/ReactionView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/status/ReactionView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mHasInit:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/livebroadcast/status/ReactionView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/status/ReactionView;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mHasInit:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/livebroadcast/status/ReactionView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/status/ReactionView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mHasSet:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/livebroadcast/status/ReactionView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/status/ReactionView;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mHasSet:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/livebroadcast/status/ReactionView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/status/ReactionView;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mThumbUpResourceId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/livebroadcast/status/ReactionView;)Lcom/android/camera/livebroadcast/status/ReactionView$MainHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/status/ReactionView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mHandler:Lcom/android/camera/livebroadcast/status/ReactionView$MainHandler;

    return-object v0
.end method

.method private static getThumbUpResourceId(Ljava/lang/String;)I
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const v0, 0x7f0202f5

    .line 200
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    :goto_0
    return v0

    .line 203
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 205
    :pswitch_0
    const v0, 0x7f02011a

    goto :goto_0

    .line 203
    :sswitch_0
    const-string v2, "ANGRY"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "HAHA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "LOVE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "SAD"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "WOW"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    .line 207
    :pswitch_1
    const v0, 0x7f02011b

    goto :goto_0

    .line 209
    :pswitch_2
    const v0, 0x7f02011c

    goto :goto_0

    .line 211
    :pswitch_3
    const v0, 0x7f02011d

    goto :goto_0

    .line 213
    :pswitch_4
    const v0, 0x7f02011e

    goto :goto_0

    .line 203
    :sswitch_data_0
    .sparse-switch
        0x13fb6 -> :sswitch_3
        0x1507f -> :sswitch_4
        0x21b7b2 -> :sswitch_1
        0x23bf72 -> :sswitch_2
        0x3b88181 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initAnimation()V
    .locals 4

    .prologue
    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mThumbUpAnimator:Landroid/animation/ValueAnimator;

    .line 104
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mThumbUpAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 106
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mThumbUpAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/livebroadcast/status/ReactionView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/status/ReactionView$1;-><init>(Lcom/android/camera/livebroadcast/status/ReactionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mThumbUpAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/livebroadcast/status/ReactionView$2;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/status/ReactionView$2;-><init>(Lcom/android/camera/livebroadcast/status/ReactionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 168
    return-void

    .line 103
    :array_0
    .array-data 4
        0x0
        0x21c
    .end array-data
.end method

.method private initView(I)V
    .locals 8
    .param p1, "orientation"    # I

    .prologue
    const/16 v7, 0x10e

    .line 70
    iget-object v4, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 71
    .local v3, "thumbnailSize":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_0

    if-ne p1, v7, :cond_4

    .line 75
    :cond_0
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mFactor:I

    .line 76
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77
    const/16 v4, 0x15

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v4, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mImageView:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    if-eqz p1, :cond_2

    .line 86
    iget-object v4, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mImageView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 87
    iget-object v4, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mImageView:Landroid/widget/ImageView;

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 88
    iget-object v4, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mImageView:Landroid/widget/ImageView;

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 89
    iget-object v4, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mImageView:Landroid/widget/ImageView;

    rsub-int v5, p1, 0x168

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setRotation(F)V

    .line 91
    :cond_2
    iget-object v4, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mRootView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 94
    .local v2, "random":Ljava/util/Random;
    iget v4, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mFactor:I

    iget v5, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mMaxMove:I

    iget v6, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mMinMove:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iget v6, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mMinMove:I

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mOriginalX:I

    .line 95
    if-eqz p1, :cond_3

    if-ne p1, v7, :cond_6

    :cond_3
    iget-object v4, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 97
    .local v0, "marginBottom":I
    :goto_1
    iget v4, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mFactor:I

    iget v5, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mMaxMove:I

    iget v6, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mMinMove:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iget v6, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mMinMove:I

    add-int/2addr v5, v6

    add-int/2addr v5, v0

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mOriginalY:I

    .line 98
    iget-object v4, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mImageView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mOriginalX:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 99
    iget-object v4, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mImageView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mOriginalY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 100
    return-void

    .line 78
    .end local v0    # "marginBottom":I
    .end local v2    # "random":Ljava/util/Random;
    :cond_4
    const/16 v4, 0x5a

    if-eq p1, v4, :cond_5

    const/16 v4, 0xb4

    if-ne p1, v4, :cond_1

    .line 79
    :cond_5
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mFactor:I

    .line 80
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81
    const/16 v4, 0x14

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_0

    .line 96
    .restart local v2    # "random":Ljava/util/Random;
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private loadURL(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 171
    new-instance v1, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    invoke-direct {v1}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;-><init>()V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 172
    invoke-virtual {v1, v2}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->scaleType(Landroid/widget/ImageView$ScaleType;)Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    move-result-object v1

    .line 173
    invoke-virtual {v1, v3}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->borderColor(I)Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 174
    invoke-virtual {v1, v2}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->borderWidthDp(F)Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    move-result-object v1

    const/high16 v2, 0x42480000    # 50.0f

    .line 175
    invoke-virtual {v1, v2}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->cornerRadiusDp(F)Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    move-result-object v1

    .line 176
    invoke-virtual {v1, v3}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->oval(Z)Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->build()Lcom/squareup/picasso/Transformation;

    move-result-object v0

    .line 179
    .local v0, "transformation":Lcom/squareup/picasso/Transformation;
    iget-object v1, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    .line 180
    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mContext:Landroid/content/Context;

    .line 182
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020107

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02011f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->error(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 185
    invoke-virtual {v1, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/livebroadcast/status/ReactionView;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/camera/livebroadcast/status/ReactionView$3;

    invoke-direct {v3, p0}, Lcom/android/camera/livebroadcast/status/ReactionView$3;-><init>(Lcom/android/camera/livebroadcast/status/ReactionView;)V

    .line 186
    invoke-virtual {v1, v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 197
    return-void
.end method
