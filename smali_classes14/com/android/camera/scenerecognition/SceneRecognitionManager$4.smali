.class Lcom/android/camera/scenerecognition/SceneRecognitionManager$4;
.super Ljava/lang/Object;
.source "SceneRecognitionManager.java"

# interfaces
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/scenerecognition/SceneRecognitionManager;->registerSceneRecognition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/scenerecognition/SceneRecognitionManager;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$4;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    iput-object p2, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$4;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resid"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 331
    const/4 v0, 0x7

    .line 332
    .local v0, "scene_detection_root_layout_index":I
    const/4 v1, 0x7

    invoke-virtual {p3, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 333
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$4;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {v1, p1}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$902(Lcom/android/camera/scenerecognition/SceneRecognitionManager;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 334
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$4;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v1}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$1000(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$4;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
