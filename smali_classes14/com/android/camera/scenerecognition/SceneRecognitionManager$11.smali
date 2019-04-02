.class Lcom/android/camera/scenerecognition/SceneRecognitionManager$11;
.super Ljava/lang/Object;
.source "SceneRecognitionManager.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 444
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$11;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 447
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->DUMP_YUV_IMAGE:Z

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$11;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$1700(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)V

    .line 450
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
