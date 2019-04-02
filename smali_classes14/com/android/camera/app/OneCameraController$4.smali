.class Lcom/android/camera/app/OneCameraController$4;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "OneCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/OneCameraController;->checkAndOpenCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isFirstCallback:Z

.field final synthetic this$0:Lcom/android/camera/app/OneCameraController;

.field final synthetic val$id:Lcom/android/camera/device/CameraId;

.field final synthetic val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

.field final synthetic val$openSlaveCamFuture:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$slaveCameraId:Lcom/android/camera/device/CameraId;


# direct methods
.method constructor <init>(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/google/common/util/concurrent/SettableFuture;Lcom/android/camera/one/OneCamera$OpenCallback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/app/OneCameraController;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    iput-object p2, p0, Lcom/android/camera/app/OneCameraController$4;->val$slaveCameraId:Lcom/android/camera/device/CameraId;

    iput-object p3, p0, Lcom/android/camera/app/OneCameraController$4;->val$id:Lcom/android/camera/device/CameraId;

    iput-object p4, p0, Lcom/android/camera/app/OneCameraController$4;->val$openSlaveCamFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p5, p0, Lcom/android/camera/app/OneCameraController$4;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/app/OneCameraController$4;->isFirstCallback:Z

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 749
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClosed : device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 750
    iget-boolean v0, p0, Lcom/android/camera/app/OneCameraController$4;->isFirstCallback:Z

    if-eqz v0, :cond_0

    .line 751
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/OneCameraController$4;->isFirstCallback:Z

    .line 752
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/camera/app/OneCameraController;->access$202(Lcom/android/camera/app/OneCameraController;I)I

    .line 753
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$400(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/device/ActiveCameraDeviceTracker;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 754
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$4;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onCameraClosed()V

    .line 756
    :cond_0
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 721
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnected : device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 722
    iget-boolean v0, p0, Lcom/android/camera/app/OneCameraController$4;->isFirstCallback:Z

    if-eqz v0, :cond_0

    .line 723
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/OneCameraController$4;->isFirstCallback:Z

    .line 724
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/camera/app/OneCameraController;->access$202(Lcom/android/camera/app/OneCameraController;I)I

    .line 725
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$400(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/device/ActiveCameraDeviceTracker;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 726
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 727
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$4;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onCameraClosed()V

    .line 729
    :cond_0
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .prologue
    .line 733
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError : device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 734
    iget-boolean v0, p0, Lcom/android/camera/app/OneCameraController$4;->isFirstCallback:Z

    if-eqz v0, :cond_0

    .line 735
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/OneCameraController$4;->isFirstCallback:Z

    .line 736
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/camera/app/OneCameraController;->access$202(Lcom/android/camera/app/OneCameraController;I)I

    .line 737
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$400(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/device/ActiveCameraDeviceTracker;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 738
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 739
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$4;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    .line 745
    :goto_0
    return-void

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$1100(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 17
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 636
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onOpened : device = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 638
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/app/OneCameraController$4;->isFirstCallback:Z

    if-eqz v1, :cond_3

    .line 639
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/camera/app/OneCameraController$4;->isFirstCallback:Z

    .line 640
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v5, -0x1

    invoke-static {v1, v5}, Lcom/android/camera/app/OneCameraController;->access$202(Lcom/android/camera/app/OneCameraController;I)I

    .line 642
    const/4 v2, 0x0

    .line 643
    .local v2, "slaveDevice":Landroid/hardware/camera2/CameraDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->val$slaveCameraId:Lcom/android/camera/device/CameraId;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->val$id:Lcom/android/camera/device/CameraId;

    invoke-virtual {v1}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/OneCameraController$4;->val$slaveCameraId:Lcom/android/camera/device/CameraId;

    invoke-virtual {v5}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 645
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->val$openSlaveCamFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/hardware/camera2/CameraDevice;

    move-object v2, v0

    .line 646
    if-eqz v2, :cond_0

    .line 647
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v5, "onOpened : slaveDevice get."

    invoke-static {v1, v5}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$600(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$1400(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/app/OneCameraController$OneCameraDemandChecker;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OneCameraController$OneCameraDemandChecker;->isOneCameraOnDemand()Z

    move-result v1

    if-nez v1, :cond_4

    .line 660
    :cond_1
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v5, "device opened when no more reqiured, close it."

    invoke-static {v1, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$400(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/device/ActiveCameraDeviceTracker;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 662
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 663
    if-eqz v2, :cond_2

    .line 664
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 666
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera$OpenCallback;->onCameraClosed()V

    .line 717
    .end local v2    # "slaveDevice":Landroid/hardware/camera2/CameraDevice;
    :cond_3
    :goto_0
    return-void

    .line 649
    .restart local v2    # "slaveDevice":Landroid/hardware/camera2/CameraDevice;
    :catch_0
    move-exception v13

    .line 650
    .local v13, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get slaveDevice fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v5, -0x1

    invoke-static {v1, v5}, Lcom/android/camera/app/OneCameraController;->access$202(Lcom/android/camera/app/OneCameraController;I)I

    .line 652
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$400(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/device/ActiveCameraDeviceTracker;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 653
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 654
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    goto :goto_0

    .line 671
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v12

    .line 672
    .local v12, "cameraId":Lcom/android/camera/device/CameraId;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$700(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCameraManager;

    move-result-object v1

    invoke-interface {v1, v12}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v14

    .line 674
    .local v14, "oneCameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$600(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-static {v1, v14}, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->from(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v9

    .line 676
    .local v9, "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidServices;->provideCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 680
    .local v3, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-eqz v2, :cond_5

    .line 681
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v15

    .line 682
    .local v15, "slaveCameraId":Lcom/android/camera/device/CameraId;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$600(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v5}, Lcom/android/camera/app/OneCameraController;->access$700(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCameraManager;

    move-result-object v5

    invoke-interface {v5, v15}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->from(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v10

    .line 684
    .local v10, "slaveImageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidServices;->provideCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 690
    .end local v15    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    .local v4, "slaveCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    .line 695
    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$900(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    .line 696
    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$1000(Lcom/android/camera/app/OneCameraController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/settings/ResolutionUtil;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    .line 697
    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$1000(Lcom/android/camera/app/OneCameraController;)Landroid/content/Context;

    move-result-object v7

    .line 698
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    .line 701
    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$1100(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/FatalErrorHandler;

    move-result-object v11

    move-object/from16 v1, p1

    .line 690
    invoke-static/range {v1 .. v11}, Lcom/android/camera/one/v2/OneCameraCreator;->create(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera/one/config/OneCameraFeatureConfig;Landroid/util/DisplayMetrics;Landroid/content/Context;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/FatalErrorHandler;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lcom/android/camera/app/OneCameraController;->access$802(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 703
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$800(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 704
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/OneCameraController$4;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v5}, Lcom/android/camera/app/OneCameraController;->access$800(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/android/camera/one/OneCamera$OpenCallback;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 709
    .end local v3    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v4    # "slaveCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v9    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .end local v10    # "slaveImageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .end local v12    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v14    # "oneCameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    :catch_1
    move-exception v13

    .line 710
    .local v13, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v5, "Could not get camera characteristics"

    invoke-static {v1, v5, v13}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    goto/16 :goto_0

    .line 686
    .end local v13    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v3    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v9    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .restart local v12    # "cameraId":Lcom/android/camera/device/CameraId;
    .restart local v14    # "oneCameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    :cond_5
    const/4 v4, 0x0

    .line 687
    .restart local v4    # "slaveCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v10, 0x0

    .restart local v10    # "slaveImageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    goto :goto_1

    .line 706
    :cond_6
    :try_start_2
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v5, "Could not construct a OneCamera object!"

    invoke-static {v1, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 712
    .end local v3    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v4    # "slaveCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v9    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .end local v10    # "slaveImageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .end local v12    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v14    # "oneCameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    :catch_2
    move-exception v13

    .line 713
    .local v13, "e":Lcom/android/camera/one/OneCameraAccessException;
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v5, "Could not create OneCamera"

    invoke-static {v1, v5, v13}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$4;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    goto/16 :goto_0
.end method
