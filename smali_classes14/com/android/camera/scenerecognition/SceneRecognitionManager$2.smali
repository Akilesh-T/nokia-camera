.class Lcom/android/camera/scenerecognition/SceneRecognitionManager$2;
.super Ljava/lang/Object;
.source "SceneRecognitionManager.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/scenerecognition/SceneRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;


# direct methods
.method constructor <init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$2;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    const v4, 0x7f090105

    const v3, 0x7f0900cc

    const/4 v2, 0x0

    .line 284
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 285
    :cond_0
    const-string v1, "CAM_SceneRecognitionManager"

    const-string v2, "previewArea should be valid, Skip it!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_1
    :goto_0
    return-void

    .line 288
    :cond_2
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$2;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    iput-object p1, v1, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mPreviewArea:Landroid/graphics/RectF;

    .line 289
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$2;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v1}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$000(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/ui/SceneDetectionRotateLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$2;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v1}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$000(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/ui/SceneDetectionRotateLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 291
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$2;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    iget-object v1, v1, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mPreviewArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$2;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$400(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 292
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$2;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v1}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$400(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$2;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$400(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 296
    :goto_1
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$2;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v1}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$000(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/ui/SceneDetectionRotateLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$2;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v1}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$000(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/ui/SceneDetectionRotateLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$2;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$700(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->updateSceneMargin(Z)V

    goto :goto_0

    .line 294
    :cond_3
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$2;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    iget-object v1, v1, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->mPreviewArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$2;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$400(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1
.end method
