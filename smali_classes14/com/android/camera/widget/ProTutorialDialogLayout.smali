.class public Lcom/android/camera/widget/ProTutorialDialogLayout;
.super Landroid/widget/FrameLayout;
.source "ProTutorialDialogLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;,
        Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;,
        Lcom/android/camera/widget/ProTutorialDialogLayout$MyTouchListener;,
        Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;,
        Lcom/android/camera/widget/ProTutorialDialogLayout$ProTutorialDialogListener;
    }
.end annotation


# static fields
.field public static final IDLE:I = 0x0

.field private static final ORIENTATION_HYSTERESIS:I = 0x5

.field public static final SWIPE_NEXT:I = 0x1

.field public static final SWIPE_PREV:I = 0x2

.field private static final SWIPE_TIME_OUT_MS:I = 0x1f4


# instance fields
.field private TAG:Lcom/android/camera/debug/Log$Tag;

.field mButtonClickHandler:Landroid/view/View$OnClickListener;

.field private mButtonRoot:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDoneBtn:Landroid/widget/Button;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHintImg:Landroid/widget/ImageView;

.field private mHintTxt:Landroid/widget/TextView;

.field private mIdSwipeDownImg:Landroid/widget/ImageView;

.field private mIdSwipeExitImg:Landroid/widget/ImageView;

.field private mIdSwipeUpOnceImg:Landroid/widget/ImageView;

.field private mIdSwipeUpTwiceImg:Landroid/widget/ImageView;

.field private mLastDeviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

.field private mNextBtn:Landroid/widget/Button;

.field private mOrientation:I

.field private mOrientationEventListener:Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;

.field private mProTutorialDialogListener:Lcom/android/camera/widget/ProTutorialDialogLayout$ProTutorialDialogListener;

.field private mSkipBtn:Landroid/widget/Button;

.field private mSlop:I

.field private mState:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

.field private mSwipeState:I

.field private mTutorialRootView:Landroid/widget/FrameLayout;

.field private mTutorialRotateRootView:Lcom/android/camera/ui/RotateLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ProTutorialDL"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 42
    sget-object v0, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->IDLE:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mState:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mSwipeState:I

    .line 167
    new-instance v0, Lcom/android/camera/widget/ProTutorialDialogLayout$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/ProTutorialDialogLayout$1;-><init>(Lcom/android/camera/widget/ProTutorialDialogLayout;)V

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mButtonClickHandler:Landroid/view/View$OnClickListener;

    .line 249
    sget-object v0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mLastDeviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 68
    const v0, 0x7f04007c

    invoke-static {p1, v0, p0}, Lcom/android/camera/widget/ProTutorialDialogLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 69
    iput-object p1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;-><init>(Lcom/android/camera/widget/ProTutorialDialogLayout;Lcom/android/camera/widget/ProTutorialDialogLayout$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 72
    new-instance v0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;-><init>(Lcom/android/camera/widget/ProTutorialDialogLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mOrientationEventListener:Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;

    .line 73
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mSlop:I

    .line 74
    invoke-direct {p0, p0}, Lcom/android/camera/widget/ProTutorialDialogLayout;->initLayout(Landroid/view/ViewGroup;)V

    .line 76
    sget-object v0, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->IDLE:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mState:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    .line 77
    invoke-direct {p0}, Lcom/android/camera/widget/ProTutorialDialogLayout;->handlerNextState()V

    .line 78
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/ProTutorialDialogLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mLastDeviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/widget/ProTutorialDialogLayout;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/ProTutorialDialogLayout;
    .param p1, "x1"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mLastDeviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/app/OrientationManager$DeviceOrientation;I)Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->roundOrientation(Lcom/android/camera/app/OrientationManager$DeviceOrientation;I)Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/ProTutorialDialogLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mTutorialRotateRootView:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/widget/ProTutorialDialogLayout;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/ProTutorialDialogLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/debug/Log$Tag;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/ProTutorialDialogLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/widget/ProTutorialDialogLayout$ProTutorialDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/ProTutorialDialogLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mProTutorialDialogListener:Lcom/android/camera/widget/ProTutorialDialogLayout$ProTutorialDialogListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/ProTutorialDialogLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mState:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/widget/ProTutorialDialogLayout;Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;)Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/ProTutorialDialogLayout;
    .param p1, "x1"    # Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mState:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/widget/ProTutorialDialogLayout;Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/ProTutorialDialogLayout;
    .param p1, "x1"    # Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->handlerNextState(Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/widget/ProTutorialDialogLayout;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/ProTutorialDialogLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/widget/ProTutorialDialogLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/ProTutorialDialogLayout;

    .prologue
    .line 23
    iget v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mSwipeState:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/widget/ProTutorialDialogLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/ProTutorialDialogLayout;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mSwipeState:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/widget/ProTutorialDialogLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/ProTutorialDialogLayout;

    .prologue
    .line 23
    iget v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mSlop:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/widget/ProTutorialDialogLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/ProTutorialDialogLayout;

    .prologue
    .line 23
    iget v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mOrientation:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/widget/ProTutorialDialogLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/widget/ProTutorialDialogLayout;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mOrientation:I

    return p1
.end method

.method private handlerNextState()V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->values()[Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mState:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    invoke-virtual {v1}, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mState:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    .line 120
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mState:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    invoke-direct {p0, v0}, Lcom/android/camera/widget/ProTutorialDialogLayout;->handlerNextState(Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;)V

    .line 121
    return-void
.end method

.method private handlerNextState(Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;)V
    .locals 7
    .param p1, "mState"    # Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x4

    const v5, 0x7f020304

    const/4 v4, 0x0

    const v3, 0x7f020305

    .line 124
    sget-object v0, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->SWIPE_UP_ONCE:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    if-ne p1, v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mSkipBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mDoneBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mNextBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mHintTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080213

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mHintImg:Landroid/widget/ImageView;

    const v1, 0x7f020300

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mIdSwipeUpOnceImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mIdSwipeUpTwiceImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mIdSwipeDownImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mIdSwipeExitImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->EXIT:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    if-ne p1, v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mSkipBtn:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mDoneBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mNextBtn:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mHintImg:Landroid/widget/ImageView;

    const v1, 0x7f020303

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mHintTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080212

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mIdSwipeUpOnceImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mIdSwipeUpTwiceImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mIdSwipeDownImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mIdSwipeExitImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    :cond_1
    return-void

    .line 134
    :cond_2
    sget-object v0, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->SWIPE_UP_TWICE:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    if-ne p1, v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mSkipBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mDoneBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mNextBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mHintTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080214

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mHintImg:Landroid/widget/ImageView;

    const v1, 0x7f020301

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mIdSwipeUpOnceImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mIdSwipeUpTwiceImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mIdSwipeDownImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mIdSwipeExitImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 144
    :cond_3
    sget-object v0, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->SWIPE_DOWN:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    if-ne p1, v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mSkipBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mDoneBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mNextBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mHintTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080211

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mHintImg:Landroid/widget/ImageView;

    const v1, 0x7f020302

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mIdSwipeUpOnceImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mIdSwipeUpTwiceImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mIdSwipeDownImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mIdSwipeExitImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private initLayout(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 99
    const v0, 0x7f0f01d6

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mTutorialRootView:Landroid/widget/FrameLayout;

    .line 100
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mTutorialRootView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/camera/widget/ProTutorialDialogLayout$MyTouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/widget/ProTutorialDialogLayout$MyTouchListener;-><init>(Lcom/android/camera/widget/ProTutorialDialogLayout;Lcom/android/camera/widget/ProTutorialDialogLayout$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    const v0, 0x7f0f01db

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mHintTxt:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0f01d9

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mHintImg:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f0f01e2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mSkipBtn:Landroid/widget/Button;

    .line 104
    const v0, 0x7f0f01e3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mDoneBtn:Landroid/widget/Button;

    .line 105
    const v0, 0x7f0f01e4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mNextBtn:Landroid/widget/Button;

    .line 106
    const v0, 0x7f0f01dd

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mIdSwipeUpOnceImg:Landroid/widget/ImageView;

    .line 107
    const v0, 0x7f0f01de

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mIdSwipeUpTwiceImg:Landroid/widget/ImageView;

    .line 108
    const v0, 0x7f0f01df

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mIdSwipeDownImg:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f0f01e0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mIdSwipeExitImg:Landroid/widget/ImageView;

    .line 110
    const v0, 0x7f0f01e1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mButtonRoot:Landroid/widget/RelativeLayout;

    .line 111
    const v0, 0x7f0f01d7

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mTutorialRotateRootView:Lcom/android/camera/ui/RotateLayout;

    .line 113
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mSkipBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mButtonClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mDoneBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mButtonClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mNextBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mButtonClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

.method private static roundOrientation(Lcom/android/camera/app/OrientationManager$DeviceOrientation;I)Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .locals 4
    .param p0, "oldDeviceOrientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p1, "newRawOrientation"    # I

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v3

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 288
    .local v0, "dist":I
    rsub-int v3, v0, 0x168

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 289
    const/16 v3, 0x32

    if-lt v0, v3, :cond_1

    const/4 v1, 0x1

    .line 291
    .local v1, "isOrientationChanged":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 292
    add-int/lit8 v3, p1, 0x2d

    div-int/lit8 v3, v3, 0x5a

    mul-int/lit8 v3, v3, 0x5a

    rem-int/lit16 v2, v3, 0x168

    .line 293
    .local v2, "newRoundedOrientation":I
    sparse-switch v2, :sswitch_data_0

    .line 304
    .end local v2    # "newRoundedOrientation":I
    .end local p0    # "oldDeviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    :cond_0
    :goto_1
    return-object p0

    .line 289
    .end local v1    # "isOrientationChanged":Z
    .restart local p0    # "oldDeviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 295
    .restart local v1    # "isOrientationChanged":Z
    .restart local v2    # "newRoundedOrientation":I
    :sswitch_0
    sget-object p0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    goto :goto_1

    .line 297
    :sswitch_1
    sget-object p0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_90:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    goto :goto_1

    .line 299
    :sswitch_2
    sget-object p0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_180:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    goto :goto_1

    .line 301
    :sswitch_3
    sget-object p0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_270:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    goto :goto_1

    .line 293
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 83
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mOrientationEventListener:Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;->enable()V

    .line 85
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 90
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mOrientationEventListener:Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/widget/ProTutorialDialogLayout$MyOrientationEventListener;->disable()V

    .line 92
    return-void
.end method

.method public setListener(Lcom/android/camera/widget/ProTutorialDialogLayout$ProTutorialDialogListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/widget/ProTutorialDialogLayout$ProTutorialDialogListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout;->mProTutorialDialogListener:Lcom/android/camera/widget/ProTutorialDialogLayout$ProTutorialDialogListener;

    .line 96
    return-void
.end method
