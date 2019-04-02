.class Lcom/android/camera/SquareModule$23;
.super Ljava/lang/Object;
.source "SquareModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SquareModule;->closeCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SquareModule;


# direct methods
.method constructor <init>(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 2595
    iput-object p1, p0, Lcom/android/camera/SquareModule$23;->this$0:Lcom/android/camera/SquareModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2598
    iget-object v0, p0, Lcom/android/camera/SquareModule$23;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$4600(Lcom/android/camera/SquareModule;)Lcom/android/camera/SquareModuleUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SquareModuleUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 2599
    iget-object v0, p0, Lcom/android/camera/SquareModule$23;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$4600(Lcom/android/camera/SquareModule;)Lcom/android/camera/SquareModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SquareModuleUI;->onStopFaceDetection()V

    .line 2600
    iget-object v0, p0, Lcom/android/camera/SquareModule$23;->this$0:Lcom/android/camera/SquareModule;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/camera/SquareModule;->access$4700(Lcom/android/camera/SquareModule;I)V

    .line 2601
    iget-object v0, p0, Lcom/android/camera/SquareModule$23;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$5300(Lcom/android/camera/SquareModule;)Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2602
    iget-object v0, p0, Lcom/android/camera/SquareModule$23;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$5300(Lcom/android/camera/SquareModule;)Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->hideSceneDetection()V

    .line 2604
    :cond_0
    return-void
.end method
