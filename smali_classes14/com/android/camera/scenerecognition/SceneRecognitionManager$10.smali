.class Lcom/android/camera/scenerecognition/SceneRecognitionManager$10;
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
    .line 428
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$10;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 431
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->DUMP_YUV_IMAGE:Z

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$10;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->setSceneMode(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$10;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$1600(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/scenerecognition/SceneRecognitionManager$10$1;

    invoke-direct {v1, p0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager$10$1;-><init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager$10;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 441
    :cond_0
    return-void
.end method
