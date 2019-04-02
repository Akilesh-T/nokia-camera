.class Lcom/android/camera/BokehModule$6;
.super Ljava/lang/Object;
.source "BokehModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehModule;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/android/camera/BokehModule$6;->this$0:Lcom/android/camera/BokehModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 695
    return-void
.end method

.method public onStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 660
    iget-object v2, p0, Lcom/android/camera/BokehModule$6;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$400(Lcom/android/camera/BokehModule;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/BokehModule$6;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$500(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraProvider;->waitingForCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    iget-object v2, p0, Lcom/android/camera/BokehModule$6;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$900(Lcom/android/camera/BokehModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 667
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v2, p0, Lcom/android/camera/BokehModule$6;->this$0:Lcom/android/camera/BokehModule;

    .line 668
    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$500(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v2

    .line 667
    invoke-static {v1, v2}, Lcom/android/camera/settings/Keys;->isCameraBackFacing(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 669
    iget-object v2, p0, Lcom/android/camera/BokehModule$6;->this$0:Lcom/android/camera/BokehModule;

    .line 670
    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$500(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-static {v1, v2}, Lcom/android/camera/settings/Keys;->requestsReturnToHdrPlus(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 671
    iget-object v2, p0, Lcom/android/camera/BokehModule$6;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$1600(Lcom/android/camera/BokehModule;)V

    goto :goto_0

    .line 676
    :cond_2
    iget-object v2, p0, Lcom/android/camera/BokehModule$6;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v3

    const-string v4, "Switching Camera"

    invoke-virtual {v3, v4}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/BokehModule;->access$1702(Lcom/android/camera/BokehModule;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/stats/profiler/Profile;

    .line 678
    iget-object v2, p0, Lcom/android/camera/BokehModule$6;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$500(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabledImmediately(Z)V

    .line 679
    iget-object v2, p0, Lcom/android/camera/BokehModule$6;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$900(Lcom/android/camera/BokehModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 680
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->disableCameraButtonAndBlock()V

    .line 682
    iget-object v2, p0, Lcom/android/camera/BokehModule$6;->this$0:Lcom/android/camera/BokehModule;

    iput p1, v2, Lcom/android/camera/BokehModule;->mPendingSwitchCameraId:I

    .line 684
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start to switch camera. cameraId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 689
    iget-object v2, p0, Lcom/android/camera/BokehModule$6;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$1800(Lcom/android/camera/BokehModule;)V

    goto :goto_0
.end method
