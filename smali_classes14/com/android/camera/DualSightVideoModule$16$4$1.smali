.class Lcom/android/camera/DualSightVideoModule$16$4$1;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightVideoModule$16$4;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/DualSightVideoModule$16$4;

.field final synthetic val$listener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightVideoModule$16$4;Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/DualSightVideoModule$16$4;

    .prologue
    .line 1905
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$16$4$1;->this$2:Lcom/android/camera/DualSightVideoModule$16$4;

    iput-object p2, p0, Lcom/android/camera/DualSightVideoModule$16$4$1;->val$listener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountDownFinished()V
    .locals 1

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$4$1;->this$2:Lcom/android/camera/DualSightVideoModule$16$4;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$4;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 1914
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$4$1;->this$2:Lcom/android/camera/DualSightVideoModule$16$4;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$4;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1915
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$4$1;->this$2:Lcom/android/camera/DualSightVideoModule$16$4;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$4;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 1916
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$4$1;->this$2:Lcom/android/camera/DualSightVideoModule$16$4;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$4;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1300(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1920
    :goto_0
    return-void

    .line 1919
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$4$1;->val$listener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;->onCountDownFinished()V

    goto :goto_0
.end method

.method public onRemainingSecondsChanged(I)V
    .locals 1
    .param p1, "remainingSeconds"    # I

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$4$1;->val$listener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;->onRemainingSecondsChanged(I)V

    .line 1909
    return-void
.end method
