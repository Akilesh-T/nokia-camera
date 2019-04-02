.class public Lcom/android/camera/ExpandMultiToggleImageButton;
.super Lcom/android/camera/MultiToggleImageButton;
.source "ExpandMultiToggleImageButton.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mExpandAttachedView:Landroid/view/ViewGroup;

.field private mExpandRootView:Landroid/view/ViewGroup;

.field private mInitModeItemsRunnable:Ljava/lang/Runnable;

.field private mNeedInitModeItem:Z

.field private mOrientation:I

.field private mRootView:Landroid/view/ViewGroup;

.field private mTouchCenter:Landroid/graphics/Point;

.field private mTouchCircle:Lcom/android/camera/ui/TouchCircleDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ExpMultiToggleImgBtn"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ExpandMultiToggleImageButton;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/camera/MultiToggleImageButton;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mNeedInitModeItem:Z

    .line 63
    new-instance v0, Lcom/android/camera/ExpandMultiToggleImageButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ExpandMultiToggleImageButton$1;-><init>(Lcom/android/camera/ExpandMultiToggleImageButton;)V

    iput-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mInitModeItemsRunnable:Ljava/lang/Runnable;

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mNeedInitModeItem:Z

    .line 63
    new-instance v0, Lcom/android/camera/ExpandMultiToggleImageButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ExpandMultiToggleImageButton$1;-><init>(Lcom/android/camera/ExpandMultiToggleImageButton;)V

    iput-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mInitModeItemsRunnable:Ljava/lang/Runnable;

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/MultiToggleImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mNeedInitModeItem:Z

    .line 63
    new-instance v0, Lcom/android/camera/ExpandMultiToggleImageButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ExpandMultiToggleImageButton$1;-><init>(Lcom/android/camera/ExpandMultiToggleImageButton;)V

    iput-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mInitModeItemsRunnable:Ljava/lang/Runnable;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ExpandMultiToggleImageButton;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mExpandAttachedView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/ExpandMultiToggleImageButton;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ExpandMultiToggleImageButton;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mExpandAttachedView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/ExpandMultiToggleImageButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ExpandMultiToggleImageButton;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mNeedInitModeItem:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/ExpandMultiToggleImageButton;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ExpandMultiToggleImageButton;
    .param p1, "x1"    # Landroid/graphics/Point;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mTouchCenter:Landroid/graphics/Point;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/camera/ExpandMultiToggleImageButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ExpandMultiToggleImageButton;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mNeedInitModeItem:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/ExpandMultiToggleImageButton;ILandroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ExpandMultiToggleImageButton;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ExpandMultiToggleImageButton;->setExpandVisible(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ExpandMultiToggleImageButton;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mExpandRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/ExpandMultiToggleImageButton;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ExpandMultiToggleImageButton;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mExpandRootView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/ExpandMultiToggleImageButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ExpandMultiToggleImageButton;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/camera/ExpandMultiToggleImageButton;->addSpaceView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ExpandMultiToggleImageButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ExpandMultiToggleImageButton;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mOrientation:I

    return v0
.end method

.method static synthetic access$500()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/camera/ExpandMultiToggleImageButton;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ExpandMultiToggleImageButton;ILandroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ExpandMultiToggleImageButton;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ExpandMultiToggleImageButton;->indicatorAnimation(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/ExpandMultiToggleImageButton;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ExpandMultiToggleImageButton;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/ExpandMultiToggleImageButton;Lcom/android/camera/ui/TouchCircleDrawable;)Lcom/android/camera/ui/TouchCircleDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ExpandMultiToggleImageButton;
    .param p1, "x1"    # Lcom/android/camera/ui/TouchCircleDrawable;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mTouchCircle:Lcom/android/camera/ui/TouchCircleDrawable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/ExpandMultiToggleImageButton;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ExpandMultiToggleImageButton;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mInitModeItemsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private addSpaceView()V
    .locals 4

    .prologue
    .line 251
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 252
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 253
    new-instance v1, Landroid/widget/Space;

    iget-object v2, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mExpandAttachedView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 254
    .local v1, "space":Landroid/widget/Space;
    iget-object v2, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mExpandAttachedView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    return-void
.end method

.method private indicatorAnimation(ILandroid/view/View;Z)V
    .locals 5
    .param p1, "animationDirection"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "updateState"    # Z

    .prologue
    .line 258
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera/ExpandMultiToggleImageButton;->setState(I)V

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ExpandMultiToggleImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 260
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 261
    .local v1, "wPixel":I
    iget-object v2, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mTouchCircle:Lcom/android/camera/ui/TouchCircleDrawable;

    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/TouchCircleDrawable;->setSize(II)V

    .line 262
    iget-object v2, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mTouchCircle:Lcom/android/camera/ui/TouchCircleDrawable;

    iget-object v3, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mTouchCenter:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/TouchCircleDrawable;->setCenter(Landroid/graphics/Point;)V

    .line 263
    iget-object v2, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mTouchCircle:Lcom/android/camera/ui/TouchCircleDrawable;

    const-string v3, "0Xb4"

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/TouchCircleDrawable;->setAlpha(I)V

    .line 264
    iget-object v2, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mTouchCircle:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ExpandMultiToggleImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0084

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/TouchCircleDrawable;->setColor(I)V

    .line 265
    iget-object v2, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mTouchCircle:Lcom/android/camera/ui/TouchCircleDrawable;

    new-instance v3, Lcom/android/camera/ExpandMultiToggleImageButton$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/camera/ExpandMultiToggleImageButton$3;-><init>(Lcom/android/camera/ExpandMultiToggleImageButton;ILandroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/TouchCircleDrawable;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 286
    iget-object v2, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mTouchCircle:Lcom/android/camera/ui/TouchCircleDrawable;

    invoke-virtual {v2, p1}, Lcom/android/camera/ui/TouchCircleDrawable;->animate(I)V

    .line 287
    return-void
.end method

.method private setExpandVisible(ILandroid/view/View;)V
    .locals 6
    .param p1, "visible"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 200
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mExpandAttachedView:Landroid/view/ViewGroup;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 202
    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    .line 235
    :cond_0
    return-void

    .line 203
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mExpandAttachedView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 204
    iget-object v4, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mExpandAttachedView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/android/camera/ui/RotateLayout;

    if-eqz v4, :cond_2

    .line 206
    const v4, 0x7f0f01a3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 207
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 208
    .local v2, "state":I
    invoke-virtual {p0}, Lcom/android/camera/ExpandMultiToggleImageButton;->getState()I

    move-result v4

    if-ne v2, v4, :cond_3

    .line 209
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->setActivated(Z)V

    .line 210
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    .end local v2    # "state":I
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .restart local v2    # "state":I
    .restart local v3    # "textView":Landroid/widget/TextView;
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setActivated(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/android/camera/ExpandMultiToggleImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e006c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ExpandMultiToggleImageButton;->setAnimDirection(I)V

    .line 115
    new-instance v0, Lcom/android/camera/ExpandMultiToggleImageButton$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ExpandMultiToggleImageButton$2;-><init>(Lcom/android/camera/ExpandMultiToggleImageButton;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ExpandMultiToggleImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    return-void
.end method

.method public overrideModeOptionItems(II)V
    .locals 2
    .param p1, "imageIds"    # I
    .param p2, "textIds"    # I

    .prologue
    .line 181
    invoke-super {p0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItems(II)V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mNeedInitModeItem:Z

    .line 184
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mExpandAttachedView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mExpandAttachedView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 186
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mExpandRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mExpandRootView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 190
    :cond_0
    return-void
.end method

.method protected parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 169
    return-void
.end method

.method public setExpandView(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mRootView:Landroid/view/ViewGroup;

    .line 194
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mExpandRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mExpandRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mExpandRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 239
    invoke-super {p0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;->setOrientation(IZ)V

    .line 240
    iput p1, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mOrientation:I

    .line 241
    iget-object v2, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mExpandAttachedView:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 248
    :cond_0
    return-void

    .line 243
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mExpandAttachedView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mExpandAttachedView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 245
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/android/camera/ui/RotateLayout;

    if-eqz v2, :cond_2

    .line 246
    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 243
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/camera/ExpandMultiToggleImageButton;->mModeItems:[Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/MultiToggleImageButton;->setState(I)V

    goto :goto_0
.end method
