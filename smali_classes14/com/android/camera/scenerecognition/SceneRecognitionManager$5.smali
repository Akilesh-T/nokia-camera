.class Lcom/android/camera/scenerecognition/SceneRecognitionManager$5;
.super Ljava/lang/Object;
.source "SceneRecognitionManager.java"

# interfaces
.implements Lcom/android/camera/ui/BarcodeRotateLayout$OnBarcodeUIChangeListener;


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
    .line 364
    iput-object p1, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$5;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBarcodeUIHide()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$5;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$000(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/ui/SceneDetectionRotateLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$5;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$000(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/ui/SceneDetectionRotateLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->setVisibility(I)V

    .line 375
    :cond_0
    return-void
.end method

.method public onBarcodeUIShow()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$5;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$000(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/ui/SceneDetectionRotateLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionManager$5;->this$0:Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    invoke-static {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->access$000(Lcom/android/camera/scenerecognition/SceneRecognitionManager;)Lcom/android/camera/ui/SceneDetectionRotateLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SceneDetectionRotateLayout;->setVisibility(I)V

    .line 369
    :cond_0
    return-void
.end method
