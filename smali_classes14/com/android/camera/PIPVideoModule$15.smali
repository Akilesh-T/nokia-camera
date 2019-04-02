.class Lcom/android/camera/PIPVideoModule$15;
.super Ljava/lang/Object;
.source "PIPVideoModule.java"

# interfaces
.implements Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PIPVideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PIPVideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 2974
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule$15;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountDownFinished()V
    .locals 1

    .prologue
    .line 2983
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$15;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v0}, Lcom/android/camera/PIPVideoModule;->access$100(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 2984
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$15;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v0}, Lcom/android/camera/PIPVideoModule;->access$100(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 2985
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$15;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v0}, Lcom/android/camera/PIPVideoModule;->access$100(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 2986
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$15;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v0}, Lcom/android/camera/PIPVideoModule;->access$3600(Lcom/android/camera/PIPVideoModule;)V

    .line 2987
    return-void
.end method

.method public onRemainingSecondsChanged(I)V
    .locals 0
    .param p1, "remainingSeconds"    # I

    .prologue
    .line 2979
    return-void
.end method
