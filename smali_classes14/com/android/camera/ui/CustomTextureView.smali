.class public Lcom/android/camera/ui/CustomTextureView;
.super Landroid/view/TextureView;
.source "CustomTextureView.java"


# instance fields
.field private mBottom:I

.field private mLeft:I

.field private mPreviewBufferHeight:I

.field private mPreviewBufferWidth:I

.field private mRight:I

.field private mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

.field private mTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 48
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 50
    :try_start_0
    const-class v1, Landroid/view/TextureView;

    const-string v2, "getHardwareLayer"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 51
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 66
    invoke-super/range {p0 .. p5}, Landroid/view/TextureView;->onLayout(ZIIII)V

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/CustomTextureView;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/CustomTextureView;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    iget v6, p0, Lcom/android/camera/ui/CustomTextureView;->mLeft:I

    iget v7, p0, Lcom/android/camera/ui/CustomTextureView;->mTop:I

    iget v8, p0, Lcom/android/camera/ui/CustomTextureView;->mRight:I

    iget v9, p0, Lcom/android/camera/ui/CustomTextureView;->mBottom:I

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/TextureViewHelper;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 70
    :cond_0
    iput p2, p0, Lcom/android/camera/ui/CustomTextureView;->mLeft:I

    .line 71
    iput p3, p0, Lcom/android/camera/ui/CustomTextureView;->mTop:I

    .line 72
    iput p4, p0, Lcom/android/camera/ui/CustomTextureView;->mRight:I

    .line 73
    iput p5, p0, Lcom/android/camera/ui/CustomTextureView;->mBottom:I

    .line 74
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 40
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    .line 41
    iget v0, p0, Lcom/android/camera/ui/CustomTextureView;->mPreviewBufferHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/CustomTextureView;->mPreviewBufferWidth:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/CustomTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/camera/ui/CustomTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/CustomTextureView;->mPreviewBufferWidth:I

    iget v2, p0, Lcom/android/camera/ui/CustomTextureView;->mPreviewBufferHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 44
    :cond_0
    return-void
.end method

.method public setDefaultBufferSize(II)V
    .locals 3
    .param p1, "previewBufferWidth"    # I
    .param p2, "previewBufferHeight"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/camera/ui/CustomTextureView;->mPreviewBufferWidth:I

    .line 59
    iput p2, p0, Lcom/android/camera/ui/CustomTextureView;->mPreviewBufferHeight:I

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/ui/CustomTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/camera/ui/CustomTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/CustomTextureView;->mPreviewBufferWidth:I

    iget v2, p0, Lcom/android/camera/ui/CustomTextureView;->mPreviewBufferHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 62
    :cond_0
    return-void
.end method

.method public setTextureViewHelper(Lcom/android/camera/TextureViewHelper;)V
    .locals 10
    .param p1, "textureViewHelper"    # Lcom/android/camera/TextureViewHelper;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/camera/ui/CustomTextureView;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    .line 78
    iget v0, p0, Lcom/android/camera/ui/CustomTextureView;->mRight:I

    iget v1, p0, Lcom/android/camera/ui/CustomTextureView;->mLeft:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/CustomTextureView;->mBottom:I

    iget v1, p0, Lcom/android/camera/ui/CustomTextureView;->mTop:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/CustomTextureView;->mTextureViewHelper:Lcom/android/camera/TextureViewHelper;

    iget v2, p0, Lcom/android/camera/ui/CustomTextureView;->mLeft:I

    iget v3, p0, Lcom/android/camera/ui/CustomTextureView;->mTop:I

    iget v4, p0, Lcom/android/camera/ui/CustomTextureView;->mRight:I

    iget v5, p0, Lcom/android/camera/ui/CustomTextureView;->mBottom:I

    iget v6, p0, Lcom/android/camera/ui/CustomTextureView;->mLeft:I

    iget v7, p0, Lcom/android/camera/ui/CustomTextureView;->mTop:I

    iget v8, p0, Lcom/android/camera/ui/CustomTextureView;->mRight:I

    iget v9, p0, Lcom/android/camera/ui/CustomTextureView;->mBottom:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/TextureViewHelper;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 81
    :cond_0
    return-void
.end method
