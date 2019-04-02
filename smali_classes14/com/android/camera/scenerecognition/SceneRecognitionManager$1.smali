.class Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;
.super Ljava/lang/Object;
.source "SceneRecognitionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/scenerecognition/SceneRecognitionManager;->onSceneClassifyResult(Lcom/android/camera/scenerecognition/SceneClassifyLabel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

.field final synthetic val$label:Lcom/android/camera/scenerecognition/FilterClassifyLabel;


# direct methods
.method constructor <init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;Lcom/android/camera/scenerecognition/FilterClassifyLabel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    iput-object p2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->val$label:Lcom/android/camera/scenerecognition/FilterClassifyLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 236
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$000(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/ui/SceneDetectionRotateLayout;

    move-result-object v2

    if-nez v2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->val$label:Lcom/android/camera/scenerecognition/FilterClassifyLabel;

    iget v2, v2, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_2

    .line 239
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$000(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/ui/SceneDetectionRotateLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->setVisibility(I)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$102(Lcom/android/camera/scenerecognition/SceneRecognitionManager;I)I

    .line 242
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$000(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/ui/SceneDetectionRotateLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->setVisibility(I)V

    .line 243
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$200(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 244
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$200(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$300(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 246
    .local v1, "iconLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$400(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 247
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$300(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$500(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 249
    .local v0, "closeLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$400(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 250
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$500(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$200(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->val$label:Lcom/android/camera/scenerecognition/FilterClassifyLabel;

    iget v3, v3, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    iget-object v4, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v4}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$400(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/util/CameraUtil;->getSceneDetectionTextResId(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    new-instance v3, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1$1;

    invoke-direct {v3, p0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1$1;-><init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;)V

    invoke-static {v2, v3}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$602(Lcom/android/camera/scenerecognition/SceneRecognitionManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 264
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$200(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v3}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$600(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 265
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$200(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v3}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$600(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 267
    .end local v0    # "closeLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "iconLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$300(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$300(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->val$label:Lcom/android/camera/scenerecognition/FilterClassifyLabel;

    iget v3, v3, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    iget-object v4, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v4}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$400(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/util/CameraUtil;->getSceneDetectionIconResId(ILandroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method
