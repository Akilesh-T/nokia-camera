.class Lcom/android/camera/scenerecognition/SceneRecognitionManager$10$1;
.super Ljava/lang/Object;
.source "SceneRecognitionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/scenerecognition/SceneRecognitionManager$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/scenerecognition/SceneRecognitionManager$10;


# direct methods
.method constructor <init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager$10;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$10$1;->this$1:Lcom/android/camera/scenerecognition/SceneRecognitionManager$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$10$1;->this$1:Lcom/android/camera/scenerecognition/SceneRecognitionManager$10;

    iget-object v0, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$10;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->setSceneMode(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$10$1;->this$1:Lcom/android/camera/scenerecognition/SceneRecognitionManager$10;

    iget-object v0, v0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$10;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$1500(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const-string v1, "dump success"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 438
    return-void
.end method
