.class Lcom/android/camera/CaptureModule$25;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->closeCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 2880
    iput-object p1, p0, Lcom/android/camera/CaptureModule$25;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2883
    iget-object v0, p0, Lcom/android/camera/CaptureModule$25;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$5100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureModuleUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureModuleUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 2884
    iget-object v0, p0, Lcom/android/camera/CaptureModule$25;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$5100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureModuleUI;->onStopFaceDetection()V

    .line 2885
    iget-object v0, p0, Lcom/android/camera/CaptureModule$25;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0, v2}, Lcom/android/camera/CaptureModule;->access$5200(Lcom/android/camera/CaptureModule;I)V

    .line 2886
    iget-object v0, p0, Lcom/android/camera/CaptureModule$25;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0, v2}, Lcom/android/camera/CaptureModule;->access$7000(Lcom/android/camera/CaptureModule;I)V

    .line 2887
    iget-object v0, p0, Lcom/android/camera/CaptureModule$25;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2888
    iget-object v0, p0, Lcom/android/camera/CaptureModule$25;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/scenerecognition/SceneRecognitionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionManager;->hideSceneDetection()V

    .line 2890
    :cond_0
    return-void
.end method
