.class public Lcom/android/camera/BokehModule$BokehTouchInfo;
.super Ljava/lang/Object;
.source "BokehModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BokehTouchInfo"
.end annotation


# instance fields
.field private mBlurLevel:I

.field private mPictureSize:Lcom/android/camera/util/Size;

.field private mPreviewSize:Lcom/android/camera/util/Size;

.field private mTouchX:I

.field private mTouchY:I

.field final synthetic this$0:Lcom/android/camera/BokehModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/BokehModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 3317
    iput-object p1, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->this$0:Lcom/android/camera/BokehModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBlurLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 3352
    iput p1, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mBlurLevel:I

    .line 3353
    return-void
.end method

.method public setPictureSize(Lcom/android/camera/util/Size;)V
    .locals 0
    .param p1, "size"    # Lcom/android/camera/util/Size;

    .prologue
    .line 3356
    iput-object p1, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mPictureSize:Lcom/android/camera/util/Size;

    .line 3357
    return-void
.end method

.method public setPreviewSize(Lcom/android/camera/util/Size;)V
    .locals 0
    .param p1, "size"    # Lcom/android/camera/util/Size;

    .prologue
    .line 3360
    iput-object p1, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mPreviewSize:Lcom/android/camera/util/Size;

    .line 3361
    return-void
.end method

.method public setTouch(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3325
    iput p1, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mTouchX:I

    .line 3326
    iput p2, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mTouchY:I

    .line 3328
    iget-object v4, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v4}, Lcom/android/camera/BokehModule;->access$500(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/CameraAppUI;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 3329
    .local v3, "previewAreaRectF":Landroid/graphics/RectF;
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSingleTapUp x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3330
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSingleTapUp Preview area["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3332
    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    float-to-int v2, v4

    .line 3333
    .local v2, "previewAreaHeight":I
    move v0, p1

    .line 3334
    .local v0, "calX":I
    int-to-float v4, p2

    iget v5, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 3335
    .local v1, "calY":I
    iget-object v4, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v4

    mul-int/2addr v4, v0

    div-int v0, v4, v2

    .line 3336
    iget-object v4, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v4

    mul-int/2addr v4, v1

    div-int v1, v4, v2

    .line 3337
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSingleTapUp calX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", calY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", previewAreaHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", previewSize.width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mPreviewSize:Lcom/android/camera/util/Size;

    .line 3338
    invoke-virtual {v6}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", previewSize.height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v6}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pictureSize.width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mPictureSize:Lcom/android/camera/util/Size;

    .line 3339
    invoke-virtual {v6}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pictureSize.height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v6}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3337
    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3340
    iget-object v4, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v6}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v6

    div-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mTouchY:I

    .line 3341
    iget-object v4, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v4

    mul-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    iput v4, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mTouchX:I

    .line 3342
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSingleTapUp mTouchX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mTouchX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,mTouchY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mTouchY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3343
    return-void
.end method

.method public updateBokehInfo(Lcom/android/camera/mpo/Bokeh_Info;)V
    .locals 2
    .param p1, "info"    # Lcom/android/camera/mpo/Bokeh_Info;

    .prologue
    .line 3346
    iget v0, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mTouchX:I

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/android/camera/mpo/Bokeh_Info;->mTouchX:J

    .line 3347
    iget v0, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mTouchY:I

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/android/camera/mpo/Bokeh_Info;->mTouchY:J

    .line 3348
    iget v0, p0, Lcom/android/camera/BokehModule$BokehTouchInfo;->mBlurLevel:I

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/android/camera/mpo/Bokeh_Info;->mBlurLevel:J

    .line 3349
    return-void
.end method
