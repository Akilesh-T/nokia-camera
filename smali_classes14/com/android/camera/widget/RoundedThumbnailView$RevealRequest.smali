.class Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;
.super Ljava/lang/Object;
.source "RoundedThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/RoundedThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RevealRequest"
.end annotation


# instance fields
.field private mAccessibilityString:Ljava/lang/String;

.field private final mNeedAnim:Z

.field private mRippleAnimationFinished:Z

.field private mThumbnailAnimationFinished:Z

.field private mThumbnailPaint:Landroid/graphics/Paint;

.field private mViewSize:F


# direct methods
.method public constructor <init>(FLjava/lang/String;Z)V
    .locals 0
    .param p1, "viewSize"    # F
    .param p2, "accessibilityString"    # Ljava/lang/String;
    .param p3, "needAnim"    # Z

    .prologue
    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    iput-object p2, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->mAccessibilityString:Ljava/lang/String;

    .line 694
    iput p1, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->mViewSize:F

    .line 695
    iput-boolean p3, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->mNeedAnim:Z

    .line 696
    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->mNeedAnim:Z

    return v0
.end method

.method private cropCenterBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 811
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 812
    .local v2, "srcWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 814
    .local v1, "srcHeight":I
    if-lt v2, v1, :cond_0

    .line 815
    div-int/lit8 v3, v2, 0x2

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    invoke-static {p1, v3, v5, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 821
    .local v0, "dstBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 818
    .end local v0    # "dstBitmap":Landroid/graphics/Bitmap;
    :cond_0
    div-int/lit8 v3, v1, 0x2

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    invoke-static {p1, v5, v3, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "dstBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private precomputeThumbnailPaint(Landroid/graphics/Bitmap;I)V
    .locals 8
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 721
    iget-object v4, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->mThumbnailPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_0

    .line 723
    if-nez p1, :cond_1

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 732
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 738
    .local v1, "shader":Landroid/graphics/BitmapShader;
    new-instance v3, Landroid/graphics/RectF;

    .line 739
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 740
    .local v3, "srcRect":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->mViewSize:F

    iget v5, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->mViewSize:F

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 742
    .local v0, "dstRect":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 745
    .local v2, "shaderMatrix":Landroid/graphics/Matrix;
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v0, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 748
    int-to-float v4, p2

    .line 749
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v7

    .line 750
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v7

    .line 748
    invoke-virtual {v2, v4, v5, v6}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 752
    invoke-virtual {v1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 756
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->mThumbnailPaint:Landroid/graphics/Paint;

    .line 757
    iget-object v4, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->mThumbnailPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 758
    iget-object v4, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->mThumbnailPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method


# virtual methods
.method public finishRippleAnimation()V
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->mRippleAnimationFinished:Z

    .line 783
    return-void
.end method

.method public finishThumbnailAnimation()V
    .locals 1

    .prologue
    .line 775
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->mThumbnailAnimationFinished:Z

    .line 776
    return-void
.end method

.method public getAccessibilityString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->mAccessibilityString:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->mThumbnailPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public isAnimNeeded()Z
    .locals 1

    .prologue
    .line 825
    iget-boolean v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->mNeedAnim:Z

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 768
    iget-boolean v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->mThumbnailAnimationFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->mRippleAnimationFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setThumbnailBitmap(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "thumbnailBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I

    .prologue
    .line 792
    move-object v0, p1

    .line 794
    .local v0, "originalBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 795
    invoke-direct {p0, v0}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->cropCenterBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 798
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->precomputeThumbnailPaint(Landroid/graphics/Bitmap;I)V

    .line 799
    return-void
.end method
