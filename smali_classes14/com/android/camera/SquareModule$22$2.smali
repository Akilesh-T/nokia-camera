.class Lcom/android/camera/SquareModule$22$2;
.super Ljava/lang/Object;
.source "SquareModule.java"

# interfaces
.implements Lcom/android/camera/burst/BurstReadyStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SquareModule$22;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/SquareModule$22;


# direct methods
.method constructor <init>(Lcom/android/camera/SquareModule$22;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/SquareModule$22;

    .prologue
    .line 2283
    iput-object p1, p0, Lcom/android/camera/SquareModule$22$2;->this$1:Lcom/android/camera/SquareModule$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBurstReadyStateChanged(Z)V
    .locals 2
    .param p1, "ready"    # Z

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$2;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 2287
    if-eqz p1, :cond_0

    .line 2288
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$2;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 2289
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$2;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 2290
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$2;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$4600(Lcom/android/camera/SquareModule;)Lcom/android/camera/SquareModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SquareModuleUI;->resumeFaceDetection()V

    .line 2291
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$2;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/SquareModule;->access$4700(Lcom/android/camera/SquareModule;I)V

    .line 2298
    :goto_0
    return-void

    .line 2293
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$2;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 2294
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$2;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 2295
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$2;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$4600(Lcom/android/camera/SquareModule;)Lcom/android/camera/SquareModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SquareModuleUI;->pauseFaceDetection()V

    .line 2296
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$2;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/camera/SquareModule;->access$4700(Lcom/android/camera/SquareModule;I)V

    goto :goto_0
.end method
