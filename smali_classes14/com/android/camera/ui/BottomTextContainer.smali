.class public Lcom/android/camera/ui/BottomTextContainer;
.super Landroid/widget/HorizontalScrollView;
.source "BottomTextContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;,
        Lcom/android/camera/ui/BottomTextContainer$MyHandler;
    }
.end annotation


# static fields
.field private static final CAMERA_MODE_SELECT:I = 0x3

.field private static final CAMERA_MODE_SWITCH:I = 0x2

.field private static final CAMERA_MODE_SWITCH_ANIMATION_START:I = 0x1

.field private static final PREFIX_PREF:Ljava/lang/String; = "Pref_ManageMode_"

.field private static final TAG:Ljava/lang/String; = "CAM_BottomTextContainer"


# instance fields
.field private indexDis:I

.field private interval:I

.field protected mAnimationRunning:Z

.field private mCameraModeSwitchListener:Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;

.field private mCaptureIntent:Z

.field private mContainter:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentModeIndex:I

.field private mCurrentModeSize:I

.field private mDisableAllUserInteractions:Z

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragView:Landroid/widget/ImageView;

.field protected mEnableModeManage:Z

.field private mEnableSwitchMode:Z

.field private mFromModeIndex:I

.field private mFromView:Landroid/view/View;

.field private final mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private mHandler:Landroid/os/Handler;

.field private mItemMoving:Z

.field private final mItemTouchHelperGestureListener:Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mModeIndexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalTxtColor:I

.field private mNormalTxtPadding:I

.field private mNormalTxtSize:I

.field private mPickedTxtColor:I

.field private mSelectDx:I

.field private mSelectIndex:I

.field private mSingleModeName:Landroid/widget/TextView;

.field private mStartSwitchMode:Z

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

.field private mSupportedModesMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeEnabled:Z

.field private mSwitchAnimation:Landroid/animation/ValueAnimator;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private prefs:Landroid/content/SharedPreferences;

.field private startX:I

.field private startY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-boolean v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mEnableSwitchMode:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mEnableModeManage:Z

    .line 71
    iput v1, p0, Lcom/android/camera/ui/BottomTextContainer;->interval:I

    .line 77
    iput v1, p0, Lcom/android/camera/ui/BottomTextContainer;->indexDis:I

    .line 79
    new-instance v0, Lcom/android/camera/ui/BottomTextContainer$MyHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/ui/BottomTextContainer$MyHandler;-><init>(Lcom/android/camera/ui/BottomTextContainer;Lcom/android/camera/ui/BottomTextContainer$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mList:Ljava/util/ArrayList;

    .line 85
    iput-boolean v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mItemMoving:Z

    .line 86
    iput-object v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mFromView:Landroid/view/View;

    .line 91
    iput-boolean v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mSwipeEnabled:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mDisableAllUserInteractions:Z

    .line 122
    iput-object p1, p0, Lcom/android/camera/ui/BottomTextContainer;->mContext:Landroid/content/Context;

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtSize:I

    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtPadding:I

    .line 125
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomTextContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->prefs:Landroid/content/SharedPreferences;

    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0010

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtColor:I

    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mContext:Landroid/content/Context;

    const v1, 0x7f0e000f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mPickedTxtColor:I

    .line 128
    new-instance v0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;-><init>(Lcom/android/camera/ui/BottomTextContainer;Lcom/android/camera/ui/BottomTextContainer$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mItemTouchHelperGestureListener:Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;

    .line 129
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    iget-object v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mItemTouchHelperGestureListener:Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 132
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/BottomTextContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BottomTextContainer;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mSelectIndex:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/BottomTextContainer;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BottomTextContainer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/ui/BottomTextContainer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/BottomTextContainer;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/camera/ui/BottomTextContainer;->mSelectIndex:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/camera/ui/BottomTextContainer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/BottomTextContainer;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/camera/ui/BottomTextContainer;->mSelectDx:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/BottomTextContainer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BottomTextContainer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/camera/ui/BottomTextContainer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/BottomTextContainer;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/camera/ui/BottomTextContainer;->mFromModeIndex:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/BottomTextContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BottomTextContainer;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mCurrentModeIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/camera/ui/BottomTextContainer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/BottomTextContainer;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/camera/ui/BottomTextContainer;->mCurrentModeIndex:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/BottomTextContainer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/BottomTextContainer;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/ui/BottomTextContainer;->changeTextStyle(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/ui/BottomTextContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BottomTextContainer;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/camera/ui/BottomTextContainer;->interval:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/ui/BottomTextContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BottomTextContainer;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtPadding:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/ui/BottomTextContainer;Landroid/view/View;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/BottomTextContainer;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/ui/BottomTextContainer;->expandViewTouchDelegate(Landroid/view/View;IIII)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/BottomTextContainer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BottomTextContainer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mSupportedModes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/BottomTextContainer;)Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BottomTextContainer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mCameraModeSwitchListener:Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/ui/BottomTextContainer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/BottomTextContainer;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/camera/ui/BottomTextContainer;->mItemMoving:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/ui/BottomTextContainer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BottomTextContainer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mFromView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/ui/BottomTextContainer;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/BottomTextContainer;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/ui/BottomTextContainer;->mFromView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/ui/BottomTextContainer;II)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/BottomTextContainer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/BottomTextContainer;->findChildView(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/ui/BottomTextContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/BottomTextContainer;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/ui/BottomTextContainer;->mDragBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/ui/BottomTextContainer;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/BottomTextContainer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/BottomTextContainer;->startDragging(II)V

    return-void
.end method

.method private addModeTextView(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v12, -0x1

    const/4 v11, -0x2

    .line 511
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomTextContainer;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomTextContainer;->removeAllViews()V

    .line 514
    :cond_0
    iget-object v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    if-nez v7, :cond_1

    .line 515
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    .line 516
    :cond_1
    iget-object v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 517
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 520
    .local v2, "itemParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 522
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 523
    .local v4, "modeindex":I
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 524
    .local v6, "txtView":Landroid/widget/TextView;
    const-string v3, ""

    .line 525
    .local v3, "modeName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-ne v4, v7, :cond_2

    iget-object v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mCameraModeSwitchListener:Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;

    invoke-interface {v7}, Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;->isBackFacingCamera()Z

    move-result v7

    if-nez v7, :cond_2

    .line 526
    iget-object v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800f7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 531
    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 534
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 535
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 536
    iget v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mSelectIndex:I

    if-ne v7, v1, :cond_3

    .line 537
    iget v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mPickedTxtColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 538
    const/4 v7, 0x0

    iget v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtSize:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 543
    :goto_2
    iget v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtPadding:I

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtPadding:I

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 545
    iget-object v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    .end local v3    # "modeName":Ljava/lang/String;
    .end local v4    # "modeindex":I
    .end local v6    # "txtView":Landroid/widget/TextView;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    .restart local v3    # "modeName":Ljava/lang/String;
    .restart local v4    # "modeindex":I
    .restart local v6    # "txtView":Landroid/widget/TextView;
    :cond_2
    iget-object v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/camera/util/CameraUtil;->getCameraModeText(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 540
    :cond_3
    const/4 v7, 0x0

    iget v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtSize:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 541
    iget v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 546
    .end local v3    # "modeName":Ljava/lang/String;
    .end local v4    # "modeindex":I
    .end local v6    # "txtView":Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 550
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomTextContainer;->updateLayout()V

    .line 551
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 553
    .local v5, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7, v5}, Lcom/android/camera/ui/BottomTextContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    return-void
.end method

.method private addMultiModeTextView(Ljava/util/List;I)V
    .locals 20
    .param p2, "currentMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 841
    .local p1, "modeIndexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BottomTextContainer;->mSupportedModes:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 842
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/BottomTextContainer;->mSupportedModes:Ljava/util/ArrayList;

    .line 847
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BottomTextContainer;->mSupportedModesMap:Ljava/util/TreeMap;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 848
    new-instance v17, Ljava/util/TreeMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/BottomTextContainer;->mSupportedModesMap:Ljava/util/TreeMap;

    .line 852
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/BottomTextContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d00df

    .line 853
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v11

    .line 855
    .local v11, "modeSequence":[I
    const-string v17, "CAM_BottomTextContainer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "buildModeList currentMode="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    new-instance v10, Landroid/util/SparseBooleanArray;

    invoke-direct {v10}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 857
    .local v10, "modeIsSupported":Landroid/util/SparseBooleanArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v3, v0, :cond_2

    .line 858
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 859
    .local v9, "mode":I
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v9, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 857
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 844
    .end local v3    # "i":I
    .end local v9    # "mode":I
    .end local v10    # "modeIsSupported":Landroid/util/SparseBooleanArray;
    .end local v11    # "modeSequence":[I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BottomTextContainer;->mSupportedModes:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 850
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BottomTextContainer;->mSupportedModesMap:Ljava/util/TreeMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/TreeMap;->clear()V

    goto :goto_1

    .line 863
    .restart local v3    # "i":I
    .restart local v10    # "modeIsSupported":Landroid/util/SparseBooleanArray;
    .restart local v11    # "modeSequence":[I
    :cond_2
    const/4 v7, -0x1

    .line 864
    .local v7, "j":I
    const/4 v3, 0x0

    :goto_3
    array-length v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v3, v0, :cond_7

    .line 865
    aget v9, v11, v3

    .line 866
    .restart local v9    # "mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/BottomTextContainer;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BottomTextContainer;->mCameraModeSwitchListener:Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;->isBackFacingCamera()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v9, v0, v1}, Lcom/android/camera/util/CameraUtil;->isOnlySupportBackCamera(ILandroid/content/Context;Z)Z

    move-result v6

    .line 868
    .local v6, "isOnlySupportBack":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BottomTextContainer;->mCameraModeSwitchListener:Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;

    move-object/from16 v17, v0

    .line 869
    invoke-interface/range {v17 .. v17}, Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;->isBackFacingCamera()Z

    move-result v17

    if-nez v17, :cond_5

    if-eqz v6, :cond_5

    const/4 v12, 0x1

    .line 870
    .local v12, "modeUnsupport":Z
    :goto_4
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v9, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 871
    const-string v17, "CAM_BottomTextContainer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "j ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",i="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    add-int/lit8 v7, v7, 0x1

    .line 873
    if-nez v12, :cond_4

    .line 874
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Pref_ManageMode_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 875
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BottomTextContainer;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v8, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 876
    .local v15, "state":Ljava/lang/String;
    move v13, v7

    .line 878
    .local v13, "order":I
    :try_start_0
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_3

    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-eqz v17, :cond_6

    .line 879
    :cond_3
    move v13, v7

    .line 893
    :goto_5
    const-string v17, "CAM_BottomTextContainer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "state ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",mode="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",order="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BottomTextContainer;->mSupportedModesMap:Ljava/util/TreeMap;

    move-object/from16 v17, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    .end local v8    # "key":Ljava/lang/String;
    .end local v13    # "order":I
    .end local v15    # "state":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 869
    .end local v12    # "modeUnsupport":Z
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 881
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v12    # "modeUnsupport":Z
    .restart local v13    # "order":I
    .restart local v15    # "state":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v17, "Off"

    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 883
    .local v5, "isClosed":Z
    if-nez v5, :cond_4

    .line 886
    const/16 v17, 0x0

    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 887
    .local v16, "temp":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    goto :goto_5

    .line 889
    .end local v5    # "isClosed":Z
    .end local v16    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 890
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 891
    move v13, v7

    goto/16 :goto_5

    .line 899
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "isOnlySupportBack":Z
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "mode":I
    .end local v12    # "modeUnsupport":Z
    .end local v13    # "order":I
    .end local v15    # "state":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    .line 900
    .local v4, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BottomTextContainer;->mSupportedModesMap:Ljava/util/TreeMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 901
    .local v9, "mode":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_8

    .line 902
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/camera/ui/BottomTextContainer;->mSelectIndex:I

    .line 904
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BottomTextContainer;->mSupportedModes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    add-int/lit8 v4, v4, 0x1

    .line 906
    goto :goto_6

    .line 907
    .end local v9    # "mode":Ljava/lang/Integer;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BottomTextContainer;->mSupportedModes:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 908
    .local v14, "size":I
    if-lez v14, :cond_a

    .line 909
    const-string v17, "CAM_BottomTextContainer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "buildModeList size="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/camera/ui/BottomTextContainer;->mCurrentModeSize:I

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/BottomTextContainer;->mSupportedModes:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/camera/ui/BottomTextContainer;->addModeTextView(Ljava/util/ArrayList;)V

    .line 913
    :cond_a
    return-void
.end method

.method private calculateDx(II)I
    .locals 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 747
    const/4 v0, 0x0

    .line 749
    .local v0, "dx":I
    if-ge p1, p2, :cond_2

    .line 750
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-gt v2, p2, :cond_5

    .line 751
    if-eq v2, p1, :cond_0

    if-ne v2, p2, :cond_1

    .line 752
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/camera/ui/BottomTextContainer;->interval:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    .line 750
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 754
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/BottomTextContainer;->interval:I

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    goto :goto_1

    .line 758
    .end local v2    # "i":I
    :cond_2
    move v2, p2

    .restart local v2    # "i":I
    :goto_2
    if-gt v2, p1, :cond_5

    .line 759
    if-eq v2, p1, :cond_3

    if-ne v2, p2, :cond_4

    .line 760
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/camera/ui/BottomTextContainer;->interval:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 758
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 762
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/BottomTextContainer;->interval:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    goto :goto_3

    .line 766
    :catch_0
    move-exception v1

    .line 767
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 769
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    return v0
.end method

.method private changeTextStyle(Z)V
    .locals 8
    .param p1, "itemMove"    # Z

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 724
    const-string v2, "CAM_BottomTextContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeTextStyle mSelectIndex= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/BottomTextContainer;->mSelectIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 726
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 727
    .local v1, "view":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    .line 728
    iget v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 729
    iget v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 730
    invoke-virtual {v1, v7, v5, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 725
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 732
    :cond_0
    iget v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mSelectIndex:I

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_1

    .line 733
    iget v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mPickedTxtColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 734
    iget v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 735
    invoke-virtual {v1, v5, v5, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_1

    .line 737
    :cond_1
    iget v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 738
    iget v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 739
    invoke-virtual {v1, v7, v5, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_1

    .line 744
    .end local v1    # "view":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method private dragView(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 236
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 237
    .local v2, "view":Landroid/view/View;
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 238
    .local v1, "location":[I
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 239
    aget v3, v1, v6

    iget v4, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtPadding:I

    sub-int/2addr v3, v4

    if-le p2, v3, :cond_2

    aget v3, v1, v6

    iget v4, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtPadding:I

    add-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p2, v3, :cond_2

    .line 240
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mFromView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 241
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 242
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mFromView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 243
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/android/camera/ui/BottomTextContainer;->mFromView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p1, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 255
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/android/camera/ui/BottomTextContainer;->mFromView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v4, p2, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 256
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/camera/ui/BottomTextContainer;->mDragView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/camera/ui/BottomTextContainer;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    return-void

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomTextContainer;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/BottomTextContainer;->mFromView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    if-le p1, v3, :cond_0

    .line 245
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 246
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomTextContainer;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/BottomTextContainer;->mFromView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 247
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 250
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 251
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 252
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private expandViewTouchDelegate(Landroid/view/View;IIII)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "left"    # I
    .param p5, "right"    # I

    .prologue
    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/View;

    new-instance v0, Lcom/android/camera/ui/BottomTextContainer$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/BottomTextContainer$1;-><init>(Lcom/android/camera/ui/BottomTextContainer;Landroid/view/View;IIII)V

    invoke-virtual {v7, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 380
    return-void
.end method

.method private findChildView(II)Landroid/view/View;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 330
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 331
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 332
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/ui/BottomTextContainer;->isTouchView(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 331
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 337
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findTargetView(II)Landroid/view/View;
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 341
    iget-object v5, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 342
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 343
    iget-object v5, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 344
    .local v3, "view":Landroid/view/View;
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 345
    .local v2, "location":[I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_1

    .line 346
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 350
    :goto_1
    aget v5, v2, v9

    iget v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtPadding:I

    sub-int/2addr v5, v6

    if-le p2, v5, :cond_2

    aget v5, v2, v9

    iget v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtPadding:I

    add-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-gt p2, v5, :cond_2

    .line 351
    aget v5, v2, v8

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    if-le p1, v5, :cond_0

    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_0

    aget v5, v2, v8

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    if-gt p1, v5, :cond_3

    .line 358
    .end local v2    # "location":[I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    :goto_2
    return-object v3

    .line 348
    .restart local v2    # "location":[I
    .restart local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 355
    goto :goto_2

    .line 342
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "location":[I
    .end local v3    # "view":Landroid/view/View;
    :cond_4
    move-object v3, v4

    .line 358
    goto :goto_2
.end method

.method private saveModeOrder()V
    .locals 10

    .prologue
    .line 307
    iget-object v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mSupportedModesMap:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 308
    .local v4, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 309
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 310
    .local v1, "index":I
    iget-object v8, p0, Lcom/android/camera/ui/BottomTextContainer;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 311
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 312
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 313
    .local v3, "key":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mSupportedModes:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 314
    .local v5, "mode":I
    iget-object v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mSupportedModesMap:Ljava/util/TreeMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pref_ManageMode_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 316
    .local v6, "modekey":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/camera/ui/BottomTextContainer;->prefs:Landroid/content/SharedPreferences;

    const-string v9, ""

    invoke-interface {v8, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, "state":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_0

    .line 318
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":On"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 322
    :goto_1
    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 323
    add-int/lit8 v1, v1, 0x1

    .line 324
    goto :goto_0

    .line 320
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 325
    .end local v3    # "key":Ljava/lang/Integer;
    .end local v5    # "mode":I
    .end local v6    # "modekey":Ljava/lang/String;
    .end local v7    # "state":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 326
    return-void
.end method

.method private showNextModule()V
    .locals 2

    .prologue
    .line 773
    iget v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mSelectIndex:I

    .line 774
    .local v0, "currentIndex":I
    add-int/lit8 v0, v0, 0x1

    .line 775
    iget v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mCurrentModeSize:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 778
    :goto_0
    return-void

    .line 777
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomTextContainer;->startAnimation(I)V

    goto :goto_0
.end method

.method private showPreviousModule()V
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mSelectIndex:I

    .line 782
    .local v0, "currentIndex":I
    add-int/lit8 v0, v0, -0x1

    .line 783
    if-gez v0, :cond_0

    .line 786
    :goto_0
    return-void

    .line 785
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomTextContainer;->startAnimation(I)V

    goto :goto_0
.end method

.method private startDragging(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, -0x2

    .line 213
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 214
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 215
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 216
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 218
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 219
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 220
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x398

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 225
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 226
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 227
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomTextContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 228
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 229
    .local v1, "v":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 230
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mWindowManager:Landroid/view/WindowManager;

    .line 231
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iput-object v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mDragView:Landroid/widget/ImageView;

    .line 233
    return-void
.end method

.method private stopDragging(II)V
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 261
    iget-object v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mDragView:Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 262
    iget-object v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v6, v7}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 263
    iget-object v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iput-object v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mDragView:Landroid/widget/ImageView;

    .line 266
    :cond_0
    iget-object v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 267
    iget-object v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 268
    iput-object v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 270
    :cond_1
    iput-boolean v9, p0, Lcom/android/camera/ui/BottomTextContainer;->mItemMoving:Z

    .line 271
    iget-object v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 272
    .local v5, "view":Landroid/view/View;
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 273
    .local v2, "location":[I
    invoke-virtual {v5, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 275
    iget-object v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mFromView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 276
    .local v0, "fromIndex":I
    const/4 v4, -0x1

    .line 277
    .local v4, "targetViewIndex":I
    aget v6, v2, v10

    iget v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtPadding:I

    sub-int/2addr v6, v7

    if-le p2, v6, :cond_2

    aget v6, v2, v10

    iget v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtPadding:I

    add-int/2addr v6, v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-gt p2, v6, :cond_2

    .line 278
    aget v6, v2, v9

    if-ge p1, v6, :cond_2

    .line 279
    const/4 v4, 0x0

    .line 282
    :cond_2
    const/4 v6, -0x1

    if-ne v4, v6, :cond_3

    .line 283
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/BottomTextContainer;->findTargetView(II)Landroid/view/View;

    move-result-object v3

    .line 285
    .local v3, "targetView":Landroid/view/View;
    if-nez v3, :cond_4

    .line 286
    move v4, v0

    .line 292
    .end local v3    # "targetView":Landroid/view/View;
    :cond_3
    :goto_0
    move v1, v4

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 293
    iget-object v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 288
    .end local v1    # "i":I
    .restart local v3    # "targetView":Landroid/view/View;
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    goto :goto_0

    .line 296
    .end local v3    # "targetView":Landroid/view/View;
    .restart local v1    # "i":I
    :cond_5
    iget-object v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mSupportedModes:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mFromModeIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 297
    iget-object v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mSupportedModes:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mCurrentModeIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mSelectIndex:I

    .line 298
    iget-object v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mFromView:Landroid/view/View;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 299
    iget-object v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mSelectDx:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 300
    const-string v6, "CAM_BottomTextContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSelectIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mSelectIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/camera/ui/BottomTextContainer;->mFromView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mFromView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v7, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 302
    invoke-direct {p0}, Lcom/android/camera/ui/BottomTextContainer;->saveModeOrder()V

    .line 303
    invoke-direct {p0, v9}, Lcom/android/camera/ui/BottomTextContainer;->changeTextStyle(Z)V

    .line 304
    return-void
.end method


# virtual methods
.method public addSingleModeTextView(I)V
    .locals 8
    .param p1, "currentMode"    # I

    .prologue
    const/16 v7, 0x11

    const/4 v6, -0x1

    .line 789
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomTextContainer;->removeAllViews()V

    .line 790
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mLinearLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    .line 791
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/camera/ui/BottomTextContainer;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 792
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 794
    .local v0, "itemParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/ui/BottomTextContainer;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mSingleModeName:Landroid/widget/TextView;

    .line 796
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomTextContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 795
    invoke-static {p1, v3}, Lcom/android/camera/util/CameraUtil;->getCameraModeText(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 797
    .local v1, "modeName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mSingleModeName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mSingleModeName:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 799
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mSingleModeName:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 800
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mSingleModeName:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/camera/ui/BottomTextContainer;->mPickedTxtColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 801
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mSingleModeName:Landroid/widget/TextView;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtSize:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 802
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 803
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/camera/ui/BottomTextContainer;->mSingleModeName:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    .end local v0    # "itemParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 811
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 812
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v2}, Lcom/android/camera/ui/BottomTextContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 813
    return-void

    .line 806
    .end local v1    # "modeName":Ljava/lang/String;
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomTextContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 805
    invoke-static {p1, v3}, Lcom/android/camera/util/CameraUtil;->getCameraModeText(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 807
    .restart local v1    # "modeName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mSingleModeName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public buildModeList(Ljava/util/List;ZIZ)Z
    .locals 3
    .param p2, "isSecureCamera"    # Z
    .param p3, "currentMode"    # I
    .param p4, "isCaptureIntent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;ZIZ)Z"
        }
    .end annotation

    .prologue
    .line 826
    .local p1, "modeIndexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-boolean p4, p0, Lcom/android/camera/ui/BottomTextContainer;->mCaptureIntent:Z

    .line 827
    iput-object p1, p0, Lcom/android/camera/ui/BottomTextContainer;->mModeIndexList:Ljava/util/List;

    .line 828
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 829
    const/4 v0, 0x1

    .line 837
    :goto_0
    return v0

    .line 831
    :cond_0
    if-eqz p4, :cond_1

    .line 832
    const-string v0, "CAM_BottomTextContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildModeList isCaptureIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-virtual {p0, p3}, Lcom/android/camera/ui/BottomTextContainer;->addSingleModeTextView(I)V

    .line 837
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 835
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ui/BottomTextContainer;->addMultiModeTextView(Ljava/util/List;I)V

    goto :goto_1
.end method

.method public disableSwitchMode()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mEnableSwitchMode:Z

    .line 194
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 720
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 721
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 918
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public enableSwitchMode()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mEnableSwitchMode:Z

    .line 198
    return-void
.end method

.method public isTouchView(Landroid/view/View;II)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 455
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 456
    .local v0, "location":[I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_2

    .line 457
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 462
    :goto_0
    aget v3, v0, v2

    if-lt p2, v3, :cond_0

    aget v3, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-lt p2, v3, :cond_3

    :cond_0
    move v1, v2

    .line 469
    :cond_1
    :goto_1
    return v1

    .line 459
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    goto :goto_0

    .line 465
    :cond_3
    aget v3, v0, v1

    iget v4, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtPadding:I

    sub-int/2addr v3, v4

    if-lt p3, v3, :cond_4

    aget v3, v0, v1

    iget v4, p0, Lcom/android/camera/ui/BottomTextContainer;->mNormalTxtPadding:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-lt p3, v3, :cond_1

    :cond_4
    move v1, v2

    .line 466
    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 167
    .local v0, "modeTagIndex":I
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomTextContainer;->startAnimation(I)V

    .line 168
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 609
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 610
    const-string v8, "CAM_BottomTextContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onLayout changed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v5, 0x0

    .line 612
    .local v5, "left":I
    const/4 v6, 0x0

    .line 614
    .local v6, "top":I
    iget-object v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    iget-boolean v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mItemMoving:Z

    if-nez v8, :cond_0

    .line 620
    const/4 v1, 0x0

    .line 621
    .local v1, "dx":I
    const/4 v4, -0x1

    .line 622
    .local v4, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 623
    iget-object v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 624
    .local v0, "child":Landroid/view/View;
    iget v9, p0, Lcom/android/camera/ui/BottomTextContainer;->mSelectIndex:I

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v9, v8, :cond_3

    .line 625
    move v4, v3

    .line 629
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 632
    const/4 v3, 0x0

    :goto_2
    if-gt v3, v4, :cond_5

    .line 633
    if-ne v3, v4, :cond_4

    .line 634
    iget-object v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v1, v8

    .line 632
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 622
    .restart local v0    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 636
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    iget-object v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Lcom/android/camera/ui/BottomTextContainer;->interval:I

    add-int/2addr v8, v9

    add-int/2addr v1, v8

    goto :goto_3

    .line 639
    :cond_5
    const/4 v8, -0x1

    if-ne v4, v8, :cond_7

    .line 640
    const/4 v5, 0x0

    .line 644
    :goto_4
    iget-object v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    .line 645
    .local v7, "w":I
    iget-object v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    .line 646
    .local v2, "h":I
    if-nez v6, :cond_6

    .line 647
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomTextContainer;->getHeight()I

    move-result v8

    sub-int/2addr v8, v2

    div-int/lit8 v6, v8, 0x2

    .line 649
    :cond_6
    iget-object v8, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    add-int v9, v5, v7

    add-int v10, v6, v2

    invoke-virtual {v8, v5, v6, v9, v10}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto :goto_0

    .line 642
    .end local v2    # "h":I
    .end local v7    # "w":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomTextContainer;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v5, v8, v1

    goto :goto_4
.end method

.method public onModeSelected(I)V
    .locals 9
    .param p1, "modeIndex"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 478
    const-string v5, "CAM_BottomTextContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wcx--enter---setViewState--modeIndex:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-boolean v5, p0, Lcom/android/camera/ui/BottomTextContainer;->mAnimationRunning:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/ui/BottomTextContainer;->mEnableSwitchMode:Z

    if-nez v5, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    move v0, p1

    .line 483
    .local v0, "currentMode":I
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomTextContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-ne v0, v5, :cond_3

    .line 484
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomTextContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 489
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/camera/ui/BottomTextContainer;->mSupportedModes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 490
    .local v1, "index":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_5

    .line 491
    iget-object v5, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 492
    iget-object v5, p0, Lcom/android/camera/ui/BottomTextContainer;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 485
    .end local v1    # "index":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomTextContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-ne v0, v5, :cond_2

    .line 486
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomTextContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_1

    .line 494
    .restart local v1    # "index":I
    :cond_4
    iget-object v5, p0, Lcom/android/camera/ui/BottomTextContainer;->mCameraModeSwitchListener:Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;

    invoke-interface {v5, v0}, Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;->showModeBlurCover(I)V

    .line 495
    iget-object v5, p0, Lcom/android/camera/ui/BottomTextContainer;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 496
    iget-object v4, p0, Lcom/android/camera/ui/BottomTextContainer;->mModeIndexList:Ljava/util/List;

    invoke-direct {p0, v4, v0}, Lcom/android/camera/ui/BottomTextContainer;->addMultiModeTextView(Ljava/util/List;I)V

    goto :goto_0

    .line 499
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomTextContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/util/CameraUtil;->isOnlySupportBackCamera(ILandroid/content/Context;)Z

    move-result v2

    .line 501
    .local v2, "isOnlySupportBack":Z
    iget-object v5, p0, Lcom/android/camera/ui/BottomTextContainer;->mCameraModeSwitchListener:Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;

    invoke-interface {v5}, Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;->isBackFacingCamera()Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v2, :cond_6

    .line 502
    .local v3, "modeUnsupport":Z
    :goto_2
    if-nez v3, :cond_0

    .line 503
    iget-object v5, p0, Lcom/android/camera/ui/BottomTextContainer;->mCameraModeSwitchListener:Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;

    invoke-interface {v5, v0}, Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;->showModeBlurCover(I)V

    .line 504
    iget-object v5, p0, Lcom/android/camera/ui/BottomTextContainer;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/camera/ui/BottomTextContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 505
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomTextContainer;->addSingleModeTextView(I)V

    goto/16 :goto_0

    .end local v3    # "modeUnsupport":Z
    :cond_6
    move v3, v4

    .line 501
    goto :goto_2
.end method

.method public onSwipeDetected(I)V
    .locals 2
    .param p1, "swipeState"    # I

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mAnimationRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mEnableSwitchMode:Z

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "CAM_BottomTextContainer"

    const-string v1, "onSwipeDetected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 180
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/ui/BottomTextContainer;->showNextModule()V

    goto :goto_0

    .line 183
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/ui/BottomTextContainer;->showPreviousModule()V

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 384
    iget-boolean v11, p0, Lcom/android/camera/ui/BottomTextContainer;->mSwipeEnabled:Z

    if-eqz v11, :cond_0

    iget-boolean v11, p0, Lcom/android/camera/ui/BottomTextContainer;->mDisableAllUserInteractions:Z

    if-nez v11, :cond_0

    iget-boolean v11, p0, Lcom/android/camera/ui/BottomTextContainer;->mCaptureIntent:Z

    if-nez v11, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomTextContainer;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_1

    .line 385
    :cond_0
    const/4 v11, 0x1

    .line 451
    :goto_0
    return v11

    .line 386
    :cond_1
    iget-object v11, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_3

    .line 387
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 389
    :cond_3
    iget-object v11, p0, Lcom/android/camera/ui/BottomTextContainer;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v11, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    and-int/lit16 v11, v11, 0xff

    packed-switch v11, :pswitch_data_0

    .line 451
    :cond_4
    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    .line 392
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    float-to-int v4, v11

    .line 393
    .local v4, "endX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    float-to-int v5, v11

    .line 394
    .local v5, "endY":I
    iget-object v11, p0, Lcom/android/camera/ui/BottomTextContainer;->mFromView:Landroid/view/View;

    if-eqz v11, :cond_5

    .line 395
    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/BottomTextContainer;->stopDragging(II)V

    .line 396
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/camera/ui/BottomTextContainer;->mFromView:Landroid/view/View;

    goto :goto_1

    .line 398
    :cond_5
    iget v11, p0, Lcom/android/camera/ui/BottomTextContainer;->startX:I

    sub-int v11, v4, v11

    const/16 v12, 0xa

    if-ge v11, v12, :cond_4

    iget v11, p0, Lcom/android/camera/ui/BottomTextContainer;->startY:I

    sub-int v11, v5, v11

    const/16 v12, 0xa

    if-ge v11, v12, :cond_4

    .line 399
    iget-object v11, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 400
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v2, :cond_4

    .line 401
    iget-object v11, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 402
    .local v10, "view":Landroid/view/View;
    invoke-virtual {p0, v10, v4, v5}, Lcom/android/camera/ui/BottomTextContainer;->isTouchView(Landroid/view/View;II)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 403
    iget-boolean v11, p0, Lcom/android/camera/ui/BottomTextContainer;->mAnimationRunning:Z

    if-nez v11, :cond_6

    iget-boolean v11, p0, Lcom/android/camera/ui/BottomTextContainer;->mEnableSwitchMode:Z

    if-nez v11, :cond_7

    .line 404
    :cond_6
    const/4 v11, 0x1

    goto :goto_0

    .line 406
    :cond_7
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 407
    .local v7, "modeTagIndex":I
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/BottomTextContainer;->startAnimation(I)V

    goto :goto_1

    .line 400
    .end local v7    # "modeTagIndex":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 415
    .end local v2    # "count":I
    .end local v4    # "endX":I
    .end local v5    # "endY":I
    .end local v6    # "i":I
    .end local v10    # "view":Landroid/view/View;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    float-to-int v0, v11

    .line 416
    .local v0, "cancelX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    float-to-int v1, v11

    .line 417
    .local v1, "cancelY":I
    iget-object v11, p0, Lcom/android/camera/ui/BottomTextContainer;->mFromView:Landroid/view/View;

    if-eqz v11, :cond_4

    .line 418
    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/BottomTextContainer;->stopDragging(II)V

    .line 419
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/camera/ui/BottomTextContainer;->mFromView:Landroid/view/View;

    goto :goto_1

    .line 423
    .end local v0    # "cancelX":I
    .end local v1    # "cancelY":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Lcom/android/camera/ui/BottomTextContainer;->startX:I

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Lcom/android/camera/ui/BottomTextContainer;->startY:I

    goto :goto_1

    .line 427
    :pswitch_3
    iget-object v11, p0, Lcom/android/camera/ui/BottomTextContainer;->mFromView:Landroid/view/View;

    if-eqz v11, :cond_9

    .line 428
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    float-to-int v12, v12

    invoke-direct {p0, v11, v12}, Lcom/android/camera/ui/BottomTextContainer;->dragView(II)V

    goto/16 :goto_1

    .line 430
    :cond_9
    iget v11, p0, Lcom/android/camera/ui/BottomTextContainer;->startX:I

    if-lez v11, :cond_4

    .line 431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    float-to-int v8, v11

    .line 432
    .local v8, "moveX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    float-to-int v9, v11

    .line 433
    .local v9, "moveY":I
    iget v11, p0, Lcom/android/camera/ui/BottomTextContainer;->startX:I

    sub-int v3, v8, v11

    .line 434
    .local v3, "deltaX":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/16 v12, 0x28

    if-le v11, v12, :cond_4

    .line 435
    if-lez v3, :cond_a

    .line 436
    const/4 v11, 0x4

    invoke-virtual {p0, v11}, Lcom/android/camera/ui/BottomTextContainer;->onSwipeDetected(I)V

    .line 437
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/camera/ui/BottomTextContainer;->startX:I

    .line 438
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/camera/ui/BottomTextContainer;->startY:I

    goto/16 :goto_1

    .line 440
    :cond_a
    const/4 v11, 0x3

    invoke-virtual {p0, v11}, Lcom/android/camera/ui/BottomTextContainer;->onSwipeDetected(I)V

    .line 441
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->setAction(I)V

    .line 442
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/camera/ui/BottomTextContainer;->startX:I

    .line 443
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/camera/ui/BottomTextContainer;->startY:I

    goto/16 :goto_1

    .line 390
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public setDisableAllUserInteractions(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/android/camera/ui/BottomTextContainer;->mDisableAllUserInteractions:Z

    .line 206
    return-void
.end method

.method public setModeSwitchListener(Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/camera/ui/BottomTextContainer;->mCameraModeSwitchListener:Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;

    .line 190
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/android/camera/ui/BottomTextContainer;->mSwipeEnabled:Z

    .line 202
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomTextContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomTextContainer;->updateLayout()V

    .line 819
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 821
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 823
    return-void
.end method

.method public startAnimation(I)V
    .locals 5
    .param p1, "modeTagIndex"    # I

    .prologue
    const/4 v4, 0x2

    .line 654
    iget v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mSelectIndex:I

    if-ne v1, p1, :cond_0

    .line 716
    :goto_0
    return-void

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 659
    iget v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mSelectIndex:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/android/camera/ui/BottomTextContainer;->indexDis:I

    .line 660
    iput p1, p0, Lcom/android/camera/ui/BottomTextContainer;->mSelectIndex:I

    .line 661
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mEnableModeManage:Z

    .line 662
    iget-boolean v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mStartSwitchMode:Z

    if-eqz v1, :cond_2

    .line 663
    iget-object v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 667
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mStartSwitchMode:Z

    .line 668
    iget v1, p0, Lcom/android/camera/ui/BottomTextContainer;->indexDis:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/ui/BottomTextContainer;->calculateDx(II)I

    move-result v0

    .line 669
    .local v0, "dx":I
    iget-object v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mSwitchAnimation:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_1

    .line 670
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mSwitchAnimation:Landroid/animation/ValueAnimator;

    .line 671
    iget-object v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mSwitchAnimation:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 673
    iget-object v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mSwitchAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/camera/ui/BottomTextContainer$3;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/BottomTextContainer$3;-><init>(Lcom/android/camera/ui/BottomTextContainer;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 703
    iget-object v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mSwitchAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 705
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mSwitchAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/camera/ui/BottomTextContainer$4;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/ui/BottomTextContainer$4;-><init>(Lcom/android/camera/ui/BottomTextContainer;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 714
    iget-object v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mSwitchAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 665
    .end local v0    # "dx":I
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer;->mCameraModeSwitchListener:Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;

    iget-object v1, p0, Lcom/android/camera/ui/BottomTextContainer;->mSupportedModes:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/camera/ui/BottomTextContainer;->mSelectIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;->onCameraModeSelected(I)V

    goto :goto_1

    .line 670
    nop

    :array_0
    .array-data 4
        0x0
        0x7fffffff
    .end array-data
.end method

.method public switchModeDone()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mStartSwitchMode:Z

    .line 210
    return-void
.end method

.method public updateLayout()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 604
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer;->mContainter:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/BottomTextContainer$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/BottomTextContainer$2;-><init>(Lcom/android/camera/ui/BottomTextContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
