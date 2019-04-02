.class Lcom/android/camera/BeautyModule$5;
.super Ljava/lang/Object;
.source "BeautyModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BeautyModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BeautyModule;


# direct methods
.method constructor <init>(Lcom/android/camera/BeautyModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/camera/BeautyModule$5;->this$0:Lcom/android/camera/BeautyModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 571
    return-void
.end method

.method public onStateChanged(I)V
    .locals 8
    .param p1, "state"    # I

    .prologue
    .line 534
    iget-object v5, p0, Lcom/android/camera/BeautyModule$5;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v5}, Lcom/android/camera/BeautyModule;->access$1100(Lcom/android/camera/BeautyModule;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/BeautyModule$5;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v5}, Lcom/android/camera/BeautyModule;->access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/CameraProvider;->waitingForCamera()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    const/4 v5, 0x4

    invoke-static {v5}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 539
    iget-object v5, p0, Lcom/android/camera/BeautyModule$5;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v5}, Lcom/android/camera/BeautyModule;->access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabledImmediately(Z)V

    .line 540
    iget-object v5, p0, Lcom/android/camera/BeautyModule$5;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v5}, Lcom/android/camera/BeautyModule;->access$500(Lcom/android/camera/BeautyModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 541
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->disableCameraButtonAndBlock()V

    .line 543
    iget-object v5, p0, Lcom/android/camera/BeautyModule$5;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v5}, Lcom/android/camera/BeautyModule;->access$500(Lcom/android/camera/BeautyModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    .line 544
    .local v3, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v5, p0, Lcom/android/camera/BeautyModule$5;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v5}, Lcom/android/camera/BeautyModule;->access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/settings/Keys;->isCameraBackFacing(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)Z

    move-result v4

    .line 545
    .local v4, "toBackFacing":Z
    iget-object v5, p0, Lcom/android/camera/BeautyModule$5;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v5}, Lcom/android/camera/BeautyModule;->access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->userSelectedModeAlready()Z

    move-result v1

    .line 547
    .local v1, "onceUserSelectMode":Z
    iget-object v5, p0, Lcom/android/camera/BeautyModule$5;->this$0:Lcom/android/camera/BeautyModule;

    iput p1, v5, Lcom/android/camera/BeautyModule;->mPendingSwitchCameraId:I

    .line 548
    iget-object v5, p0, Lcom/android/camera/BeautyModule$5;->this$0:Lcom/android/camera/BeautyModule;

    iget-object v6, p0, Lcom/android/camera/BeautyModule$5;->this$0:Lcom/android/camera/BeautyModule;

    iget v6, v6, Lcom/android/camera/BeautyModule;->mPendingSwitchCameraId:I

    invoke-static {v5, v6}, Lcom/android/camera/BeautyModule;->access$1202(Lcom/android/camera/BeautyModule;I)I

    .line 549
    iget-object v5, p0, Lcom/android/camera/BeautyModule$5;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v5}, Lcom/android/camera/BeautyModule;->access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_id_key"

    iget-object v7, p0, Lcom/android/camera/BeautyModule$5;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v7}, Lcom/android/camera/BeautyModule;->access$1200(Lcom/android/camera/BeautyModule;)I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 551
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start to switch camera. cameraId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 557
    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    .line 558
    iget-object v5, p0, Lcom/android/camera/BeautyModule$5;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v5}, Lcom/android/camera/BeautyModule;->access$500(Lcom/android/camera/BeautyModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 560
    .local v2, "photoIdx":I
    iget-object v5, p0, Lcom/android/camera/BeautyModule$5;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v5}, Lcom/android/camera/BeautyModule;->access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/CameraAppUI;->fakefreezeScreenUntilPreviewReady()V

    .line 561
    iget-object v5, p0, Lcom/android/camera/BeautyModule$5;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v5}, Lcom/android/camera/BeautyModule;->access$500(Lcom/android/camera/BeautyModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/camera/CameraActivity;->onModeSelected(I)V

    goto/16 :goto_0

    .line 564
    .end local v2    # "photoIdx":I
    :cond_2
    iget-object v5, p0, Lcom/android/camera/BeautyModule$5;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v5}, Lcom/android/camera/BeautyModule;->access$1400(Lcom/android/camera/BeautyModule;)V

    goto/16 :goto_0
.end method
