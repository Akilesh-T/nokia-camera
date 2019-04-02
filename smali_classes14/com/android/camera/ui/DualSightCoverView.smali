.class public Lcom/android/camera/ui/DualSightCoverView;
.super Landroid/widget/FrameLayout;
.source "DualSightCoverView.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mClearPaint:Landroid/graphics/Paint;

.field private mIsDraw:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "DualSightCoverView"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/DualSightCoverView;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/android/camera/ui/DualSightCoverView;->initPaint()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/android/camera/ui/DualSightCoverView;->initPaint()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/android/camera/ui/DualSightCoverView;->initPaint()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4, "defStyleRes"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    invoke-direct {p0}, Lcom/android/camera/ui/DualSightCoverView;->initPaint()V

    .line 49
    return-void
.end method

.method private initPaint()V
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/camera/ui/DualSightCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 54
    .local v0, "strokeWidht":I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/DualSightCoverView;->mPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v1, p0, Lcom/android/camera/ui/DualSightCoverView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v1, p0, Lcom/android/camera/ui/DualSightCoverView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v1, p0, Lcom/android/camera/ui/DualSightCoverView;->mPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v1, p0, Lcom/android/camera/ui/DualSightCoverView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v1, p0, Lcom/android/camera/ui/DualSightCoverView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xb2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 61
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/DualSightCoverView;->mClearPaint:Landroid/graphics/Paint;

    .line 62
    iget-object v1, p0, Lcom/android/camera/ui/DualSightCoverView;->mClearPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/DualSightCoverView;->mRectF:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 76
    iget-boolean v0, p0, Lcom/android/camera/ui/DualSightCoverView;->mIsDraw:Z

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/DualSightCoverView;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/DualSightCoverView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/DualSightCoverView;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/DualSightCoverView;->mClearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setDrawRect(Landroid/graphics/RectF;Z)V
    .locals 0
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "isDraw"    # Z

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/camera/ui/DualSightCoverView;->mRectF:Landroid/graphics/RectF;

    .line 68
    iput-boolean p2, p0, Lcom/android/camera/ui/DualSightCoverView;->mIsDraw:Z

    .line 69
    invoke-virtual {p0}, Lcom/android/camera/ui/DualSightCoverView;->invalidate()V

    .line 70
    return-void
.end method
