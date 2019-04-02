.class Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;
.super Landroid/graphics/drawable/Drawable;
.source "FilmstripLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/FilmstripLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripBackground"
.end annotation


# instance fields
.field private mOffset:I

.field private mPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/camera/widget/FilmstripLayout;


# direct methods
.method public constructor <init>(Lcom/android/camera/widget/FilmstripLayout;)V
    .locals 3

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 495
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->mPaint:Landroid/graphics/Paint;

    .line 496
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 497
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/android/camera/widget/FilmstripLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 498
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 499
    return-void
.end method

.method private setAlpha(F)V
    .locals 1
    .param p1, "a"    # F

    .prologue
    .line 515
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->setAlpha(I)V

    .line 516
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 530
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripLayout;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->mOffset:I

    sub-int v7, v0, v2

    .line 531
    .local v7, "width":I
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$700(Lcom/android/camera/widget/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    iget v2, p0, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->mOffset:I

    int-to-float v2, v2

    sub-float v6, v0, v2

    .line 532
    .local v6, "translation":F
    int-to-float v0, v7

    cmpl-float v0, v6, v0

    if-nez v0, :cond_0

    .line 538
    :goto_0
    return-void

    .line 536
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripLayout;->access$000(Lcom/android/camera/widget/FilmstripLayout;)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->setAlpha(F)V

    .line 537
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 525
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 512
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 521
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 506
    iput p1, p0, Lcom/android/camera/widget/FilmstripLayout$FilmstripBackground;->mOffset:I

    .line 507
    return-void
.end method
