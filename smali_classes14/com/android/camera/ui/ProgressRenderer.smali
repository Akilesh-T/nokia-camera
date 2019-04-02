.class public Lcom/android/camera/ui/ProgressRenderer;
.super Ljava/lang/Object;
.source "ProgressRenderer.java"


# static fields
.field private static final SHOW_PROGRESS_X_ADDITIONAL_MS:I = 0x64


# instance fields
.field private mArcBounds:Landroid/graphics/RectF;

.field private final mInvalidateParentViewRunnable:Ljava/lang/Runnable;

.field private final mParentView:Landroid/view/View;

.field private mProgressAngleDegrees:I

.field private final mProgressBasePaint:Landroid/graphics/Paint;

.field private final mProgressPaint:Landroid/graphics/Paint;

.field private final mProgressRadius:I

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/camera/ui/ProgressRenderer;->mArcBounds:Landroid/graphics/RectF;

    .line 37
    const/16 v1, 0x10e

    iput v1, p0, Lcom/android/camera/ui/ProgressRenderer;->mProgressAngleDegrees:I

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/ProgressRenderer;->mVisible:Z

    .line 40
    new-instance v1, Lcom/android/camera/ui/ProgressRenderer$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ProgressRenderer$1;-><init>(Lcom/android/camera/ui/ProgressRenderer;)V

    iput-object v1, p0, Lcom/android/camera/ui/ProgressRenderer;->mInvalidateParentViewRunnable:Ljava/lang/Runnable;

    .line 54
    iput-object p2, p0, Lcom/android/camera/ui/ProgressRenderer;->mParentView:Landroid/view/View;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090232

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ProgressRenderer;->mProgressRadius:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090233

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 58
    .local v0, "pieProgressWidth":I
    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v1}, Lcom/android/camera/ui/ProgressRenderer;->createProgressPaint(IF)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/ProgressRenderer;->mProgressBasePaint:Landroid/graphics/Paint;

    .line 59
    invoke-static {v0, v3}, Lcom/android/camera/ui/ProgressRenderer;->createProgressPaint(IF)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/ProgressRenderer;->mProgressPaint:Landroid/graphics/Paint;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ProgressRenderer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ProgressRenderer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/ProgressRenderer;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method private static createProgressPaint(IF)Landroid/graphics/Paint;
    .locals 3
    .param p0, "width"    # I
    .param p1, "alpha"    # F

    .prologue
    const/16 v2, 0xff

    .line 118
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 119
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    int-to-float v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    return-object v0
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/camera/ui/ProgressRenderer;->mVisible:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "centerX"    # I
    .param p3, "centerY"    # I

    .prologue
    const/4 v4, 0x0

    .line 86
    iget-boolean v0, p0, Lcom/android/camera/ui/ProgressRenderer;->mVisible:Z

    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/ui/ProgressRenderer;->mProgressRadius:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ProgressRenderer;->mProgressRadius:I

    sub-int v2, p3, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ProgressRenderer;->mProgressRadius:I

    add-int/2addr v3, p2

    int-to-float v3, v3

    iget v5, p0, Lcom/android/camera/ui/ProgressRenderer;->mProgressRadius:I

    add-int/2addr v5, p3

    int-to-float v5, v5

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/ui/ProgressRenderer;->mArcBounds:Landroid/graphics/RectF;

    .line 93
    int-to-float v0, p2

    int-to-float v1, p3

    iget v2, p0, Lcom/android/camera/ui/ProgressRenderer;->mProgressRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/ProgressRenderer;->mProgressBasePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 94
    iget-object v1, p0, Lcom/android/camera/ui/ProgressRenderer;->mArcBounds:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/android/camera/ui/ProgressRenderer;->mProgressAngleDegrees:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/android/camera/ui/ProgressRenderer;->mProgressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 98
    iget v0, p0, Lcom/android/camera/ui/ProgressRenderer;->mProgressAngleDegrees:I

    const/16 v1, 0x168

    if-ne v0, v1, :cond_0

    .line 99
    iput-boolean v4, p0, Lcom/android/camera/ui/ProgressRenderer;->mVisible:Z

    .line 100
    iget-object v0, p0, Lcom/android/camera/ui/ProgressRenderer;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/android/camera/ui/ProgressRenderer$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ProgressRenderer$2;-><init>(Lcom/android/camera/ui/ProgressRenderer;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    const/16 v2, 0x64

    .line 72
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 73
    const v0, 0x40666666    # 3.6f

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/ProgressRenderer;->mProgressAngleDegrees:I

    .line 76
    if-ge p1, v2, :cond_0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ProgressRenderer;->mVisible:Z

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ProgressRenderer;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/ProgressRenderer;->mInvalidateParentViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method
