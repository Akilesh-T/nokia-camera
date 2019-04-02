.class public Lcom/pedro/rtplibrary/view/AutoFitTextureView;
.super Landroid/view/TextureView;
.source "AutoFitTextureView.java"


# instance fields
.field private mRatioHeight:I

.field private mRatioWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pedro/rtplibrary/view/AutoFitTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pedro/rtplibrary/view/AutoFitTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput v0, p0, Lcom/pedro/rtplibrary/view/AutoFitTextureView;->mRatioWidth:I

    .line 29
    iput v0, p0, Lcom/pedro/rtplibrary/view/AutoFitTextureView;->mRatioHeight:I

    .line 41
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 63
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 64
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 65
    .local v0, "height":I
    iget v2, p0, Lcom/pedro/rtplibrary/view/AutoFitTextureView;->mRatioWidth:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/pedro/rtplibrary/view/AutoFitTextureView;->mRatioHeight:I

    if-nez v2, :cond_1

    .line 66
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/pedro/rtplibrary/view/AutoFitTextureView;->setMeasuredDimension(II)V

    .line 74
    :goto_0
    return-void

    .line 68
    :cond_1
    iget v2, p0, Lcom/pedro/rtplibrary/view/AutoFitTextureView;->mRatioWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/pedro/rtplibrary/view/AutoFitTextureView;->mRatioHeight:I

    div-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 69
    iget v2, p0, Lcom/pedro/rtplibrary/view/AutoFitTextureView;->mRatioHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/pedro/rtplibrary/view/AutoFitTextureView;->mRatioWidth:I

    div-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/pedro/rtplibrary/view/AutoFitTextureView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 71
    :cond_2
    iget v2, p0, Lcom/pedro/rtplibrary/view/AutoFitTextureView;->mRatioWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/pedro/rtplibrary/view/AutoFitTextureView;->mRatioHeight:I

    div-int/2addr v2, v3

    invoke-virtual {p0, v2, v0}, Lcom/pedro/rtplibrary/view/AutoFitTextureView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setAspectRatio(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 52
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    iput p1, p0, Lcom/pedro/rtplibrary/view/AutoFitTextureView;->mRatioWidth:I

    .line 56
    iput p2, p0, Lcom/pedro/rtplibrary/view/AutoFitTextureView;->mRatioHeight:I

    .line 57
    invoke-virtual {p0}, Lcom/pedro/rtplibrary/view/AutoFitTextureView;->requestLayout()V

    .line 58
    return-void
.end method
