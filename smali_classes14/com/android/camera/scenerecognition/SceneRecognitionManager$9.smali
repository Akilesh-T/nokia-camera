.class Lcom/android/camera/scenerecognition/SceneRecognitionManager$9;
.super Ljava/lang/Object;
.source "SceneRecognitionManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/scenerecognition/SceneRecognitionManager;->inflateSceneViewIfNeeded()V
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
    .line 417
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$9;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$9;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$000(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/ui/SceneDetectionRotateLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$9;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$1400(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$9;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$1400(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)I

    move-result v0

    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$9;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$9;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v1}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$1400(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$102(Lcom/android/camera/scenerecognition/SceneRecognitionManager;I)I

    .line 425
    :cond_0
    return-void
.end method
