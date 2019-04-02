.class Lcom/android/camera/PhotoModule$7;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 796
    iput-object p1, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 846
    return-void
.end method

.method public onStateChanged(I)V
    .locals 9
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    .line 802
    iget-object v6, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$500(Lcom/android/camera/PhotoModule;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/CameraProvider;->waitingForCamera()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    const/4 v6, 0x4

    invoke-static {v6}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 809
    iget-object v6, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    .line 810
    .local v4, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v6, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/settings/Keys;->isCameraBackFacing(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)Z

    move-result v5

    .line 811
    .local v5, "toBackFacing":Z
    iget-object v6, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/settings/Keys;->requestsReturnToHdrPlus(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)Z

    move-result v2

    .line 812
    .local v2, "requestsReturnToHdrPlus":Z
    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 813
    iget-object v6, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$2900(Lcom/android/camera/PhotoModule;)V

    goto :goto_0

    .line 817
    :cond_2
    iget-object v6, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v7

    const-string v8, "Switching Camera"

    invoke-virtual {v7, v8}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/PhotoModule;->access$3002(Lcom/android/camera/PhotoModule;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/stats/profiler/Profile;

    .line 819
    iget-object v6, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabledImmediately(Z)V

    .line 820
    iget-object v6, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 821
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->disableCameraButtonAndBlock()V

    .line 823
    iget-object v6, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    iput p1, v6, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 825
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start to switch camera. cameraId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 830
    iget-object v6, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v7, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    iget v7, v7, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    invoke-static {v6, v7}, Lcom/android/camera/PhotoModule;->access$3102(Lcom/android/camera/PhotoModule;I)I

    .line 831
    iget-object v6, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/util/ProductModelUtil;->getFrontCameraDefalutMode(Landroid/content/Context;)I

    move-result v1

    .line 832
    .local v1, "defaultIdx":I
    iget-object v6, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v6

    if-ne v1, v6, :cond_3

    const/4 v3, 0x1

    .line 833
    .local v3, "sameModlue":Z
    :cond_3
    iget-object v6, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pref_camera_id_key"

    iget-object v8, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    iget v8, v8, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 834
    if-nez v5, :cond_4

    iget-object v6, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$3200(Lcom/android/camera/PhotoModule;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v3, :cond_5

    .line 835
    :cond_4
    iget-object v6, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$3300(Lcom/android/camera/PhotoModule;)V

    goto/16 :goto_0

    .line 838
    :cond_5
    iget-object v6, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/app/CameraAppUI;->fakefreezeScreenUntilPreviewReady()V

    .line 839
    iget-object v6, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/camera/CameraActivity;->onModeSelected(I)V

    goto/16 :goto_0
.end method
