.class Lcom/android/camera/scenerecognition/SceneRecognitionManager$1$1;
.super Ljava/lang/Object;
.source "SceneRecognitionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;


# direct methods
.method constructor <init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1$1;->this$1:Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 255
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1$1;->this$1:Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;

    iget-object v2, v2, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$200(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1$1;->this$1:Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;

    iget-object v2, v2, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$300(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 257
    .local v1, "iconLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1$1;->this$1:Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;

    iget-object v2, v2, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$400(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 258
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1$1;->this$1:Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;

    iget-object v2, v2, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$300(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1$1;->this$1:Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;

    iget-object v2, v2, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$500(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 260
    .local v0, "closeLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1$1;->this$1:Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;

    iget-object v2, v2, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$400(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 261
    iget-object v2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1$1;->this$1:Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;

    iget-object v2, v2, Lcom/android/camera/scenerecognition/SceneRecognitionManager$1;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v2}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$500(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    return-void
.end method
