.class Lcom/android/camera/SlowmotionModule$9;
.super Ljava/lang/Object;
.source "SlowmotionModule.java"

# interfaces
.implements Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SlowmotionModule;->startVideoRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SlowmotionModule;


# direct methods
.method constructor <init>(Lcom/android/camera/SlowmotionModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageUpdateDone(J)V
    .locals 7
    .param p1, "bytes"    # J

    .prologue
    const/4 v6, 0x1

    .line 1512
    const-wide/32 v2, 0x2faf080

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 1513
    invoke-static {}, Lcom/android/camera/SlowmotionModule;->access$1500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Storage issue, ignore the start request"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1605
    :goto_0
    return-void

    .line 1516
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$2200(Lcom/android/camera/SlowmotionModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1517
    invoke-static {}, Lcom/android/camera/SlowmotionModule;->access$1500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "in storage callback after camera closed"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1521
    :cond_1
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$400(Lcom/android/camera/SlowmotionModule;)Z

    move-result v1

    if-ne v1, v6, :cond_2

    .line 1522
    invoke-static {}, Lcom/android/camera/SlowmotionModule;->access$1500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "in storage callback after module paused"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1530
    :cond_2
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$900(Lcom/android/camera/SlowmotionModule;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1531
    invoke-static {}, Lcom/android/camera/SlowmotionModule;->access$1500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "in storage callback after recording started"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1535
    :cond_3
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$2300(Lcom/android/camera/SlowmotionModule;)V

    .line 1537
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/SlowmotionModule;->access$102(Lcom/android/camera/SlowmotionModule;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1538
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v2}, Lcom/android/camera/SlowmotionModule;->access$2500(Lcom/android/camera/SlowmotionModule;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/SlowmotionModule;->access$2402(Lcom/android/camera/SlowmotionModule;Z)Z

    .line 1539
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Lcom/android/camera/SlowmotionModule;->access$2602(Lcom/android/camera/SlowmotionModule;I)I

    .line 1541
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$2700(Lcom/android/camera/SlowmotionModule;)V

    .line 1542
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$2200(Lcom/android/camera/SlowmotionModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v2}, Lcom/android/camera/SlowmotionModule;->access$2800(Lcom/android/camera/SlowmotionModule;)Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1544
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$2900(Lcom/android/camera/SlowmotionModule;)V

    .line 1545
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$3000(Lcom/android/camera/SlowmotionModule;)Landroid/media/MediaRecorder;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1546
    invoke-static {}, Lcom/android/camera/SlowmotionModule;->access$1500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Fail to initialize media recorder"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1551
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$3000(Lcom/android/camera/SlowmotionModule;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1564
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$1300(Lcom/android/camera/SlowmotionModule;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/camera/SlowmotionModule$9$1;

    invoke-direct {v2, p0}, Lcom/android/camera/SlowmotionModule$9$1;-><init>(Lcom/android/camera/SlowmotionModule$9;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1571
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$600(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1575
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$2200(Lcom/android/camera/SlowmotionModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->refreshSettings()V

    .line 1580
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v2}, Lcom/android/camera/SlowmotionModule;->access$2200(Lcom/android/camera/SlowmotionModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/SlowmotionModule;->access$2802(Lcom/android/camera/SlowmotionModule;Lcom/android/ex/camera2/portability/CameraSettings;)Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1582
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1, v6}, Lcom/android/camera/SlowmotionModule;->access$902(Lcom/android/camera/SlowmotionModule;Z)Z

    .line 1583
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/camera/SlowmotionModule;->access$3302(Lcom/android/camera/SlowmotionModule;J)J

    .line 1584
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$300(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->lockOrientation()V

    .line 1585
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/camera/SlowmotionModule;->access$3402(Lcom/android/camera/SlowmotionModule;J)J

    .line 1589
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$600(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions(Z)V

    .line 1590
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$600(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->applyStateWhenRecordingStateChange()V

    .line 1592
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$3500(Lcom/android/camera/SlowmotionModule;)Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_SNAPSHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1593
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$600(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->showVideoSnapShotButton()V

    .line 1597
    :cond_5
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$600(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    const v2, 0x7f020310

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->startVideoRecordBtnAnim(I)V

    .line 1598
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$3600(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/SlowmotionUI;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/SlowmotionUI;->showRecordingUI(Z)V

    .line 1600
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-virtual {v1}, Lcom/android/camera/SlowmotionModule;->setFocusParameters()V

    .line 1602
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$700(Lcom/android/camera/SlowmotionModule;)V

    .line 1603
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$300(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    goto/16 :goto_0

    .line 1552
    :catch_0
    move-exception v0

    .line 1553
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/camera/SlowmotionModule;->access$1500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1554
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$600(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 1555
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$3100(Lcom/android/camera/SlowmotionModule;)V

    .line 1557
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$2200(Lcom/android/camera/SlowmotionModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->lock()V

    goto/16 :goto_0
.end method
