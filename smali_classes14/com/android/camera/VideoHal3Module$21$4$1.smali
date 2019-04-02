.class Lcom/android/camera/VideoHal3Module$21$4$1;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3Module$21$4;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/VideoHal3Module$21$4;

.field final synthetic val$listener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoHal3Module$21$4;Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/VideoHal3Module$21$4;

    .prologue
    .line 2216
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$21$4$1;->this$2:Lcom/android/camera/VideoHal3Module$21$4;

    iput-object p2, p0, Lcom/android/camera/VideoHal3Module$21$4$1;->val$listener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountDownFinished()V
    .locals 2

    .prologue
    .line 2224
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$4$1;->this$2:Lcom/android/camera/VideoHal3Module$21$4;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$4;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 2225
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$4$1;->this$2:Lcom/android/camera/VideoHal3Module$21$4;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$4;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 2226
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$4$1;->this$2:Lcom/android/camera/VideoHal3Module$21$4;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$4;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 2227
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$4$1;->this$2:Lcom/android/camera/VideoHal3Module$21$4;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$4;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/VideoHal3ModuleUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoHal3ModuleUI;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 2228
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$4$1;->this$2:Lcom/android/camera/VideoHal3Module$21$4;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$4;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$1800(Lcom/android/camera/VideoHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2232
    :goto_0
    return-void

    .line 2231
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$4$1;->val$listener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;->onCountDownFinished()V

    goto :goto_0
.end method

.method public onRemainingSecondsChanged(I)V
    .locals 1
    .param p1, "remainingSeconds"    # I

    .prologue
    .line 2219
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$4$1;->val$listener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;->onRemainingSecondsChanged(I)V

    .line 2220
    return-void
.end method
