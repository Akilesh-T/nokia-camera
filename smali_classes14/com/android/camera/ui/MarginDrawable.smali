.class public Lcom/android/camera/ui/MarginDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MarginDrawable.java"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private mScreen:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/ui/MarginDrawable;->mScreen:Landroid/graphics/RectF;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/MarginDrawable;->mPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/MarginDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/MarginDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 58
    iget-object v9, p0, Lcom/android/camera/ui/MarginDrawable;->mScreen:Landroid/graphics/RectF;

    .line 59
    .local v9, "s":Landroid/graphics/RectF;
    iget v0, v9, Landroid/graphics/RectF;->top:F

    iget v2, v9, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iget v0, v9, Landroid/graphics/RectF;->left:F

    iget v2, v9, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 61
    .local v8, "cb":Landroid/graphics/Rect;
    iget v0, v9, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 62
    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/RectF;->top:F

    add-float v4, v0, v10

    iget-object v5, p0, Lcom/android/camera/ui/MarginDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 64
    :cond_0
    iget v0, v9, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 65
    iget v2, v9, Landroid/graphics/RectF;->top:F

    iget v0, v9, Landroid/graphics/RectF;->left:F

    add-float v3, v0, v10

    iget v4, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/camera/ui/MarginDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 67
    :cond_1
    iget v0, v9, Landroid/graphics/RectF;->right:F

    iget v2, v8, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 68
    iget v0, v9, Landroid/graphics/RectF;->right:F

    sub-float v3, v0, v10

    iget v4, v9, Landroid/graphics/RectF;->top:F

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v5, v0

    iget v6, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/android/camera/ui/MarginDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 70
    :cond_2
    iget v0, v9, Landroid/graphics/RectF;->bottom:F

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 71
    iget v0, v9, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v0, v10

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/MarginDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 74
    .end local v8    # "cb":Landroid/graphics/Rect;
    :cond_3
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 78
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 82
    return-void
.end method

.method public setScreen(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "screen"    # Landroid/graphics/RectF;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/MarginDrawable;->mScreen:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/ui/MarginDrawable;->invalidateSelf()V

    .line 54
    return-void
.end method
