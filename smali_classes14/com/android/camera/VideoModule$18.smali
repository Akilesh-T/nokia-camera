.class Lcom/android/camera/VideoModule$18;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 3215
    iput-object p1, p0, Lcom/android/camera/VideoModule$18;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountDownFinished()V
    .locals 1

    .prologue
    .line 3224
    iget-object v0, p0, Lcom/android/camera/VideoModule$18;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 3225
    iget-object v0, p0, Lcom/android/camera/VideoModule$18;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 3226
    iget-object v0, p0, Lcom/android/camera/VideoModule$18;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 3227
    iget-object v0, p0, Lcom/android/camera/VideoModule$18;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$5800(Lcom/android/camera/VideoModule;)V

    .line 3228
    return-void
.end method

.method public onRemainingSecondsChanged(I)V
    .locals 0
    .param p1, "remainingSeconds"    # I

    .prologue
    .line 3220
    return-void
.end method
