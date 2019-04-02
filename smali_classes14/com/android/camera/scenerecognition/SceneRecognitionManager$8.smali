.class Lcom/android/camera/scenerecognition/SceneRecognitionManager$8;
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
    .line 405
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$8;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$8;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$1100(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/scenerecognition/BarCodeAction;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 409
    const-string v0, "CAM_SceneRecognitionManager"

    const-string v1, " mBarCodeSecondAction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$8;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$1100(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/scenerecognition/BarCodeAction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$8;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v1}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$1200(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/barcode/BarCodeResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/scenerecognition/BarCodeAction;->sendBarCodeSecondAction(Lcom/android/camera/barcode/BarCodeResult;)V

    .line 411
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$8;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$1300(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/ui/BarcodeRotateLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BarcodeRotateLayout;->startHideAnimation()V

    .line 414
    :cond_0
    return-void
.end method
