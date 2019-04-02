.class Lcom/android/camera/TimelapsedModule$8;
.super Ljava/lang/Object;
.source "TimelapsedModule.java"

# interfaces
.implements Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/TimelapsedModule;->startVideoRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TimelapsedModule;


# direct methods
.method constructor <init>(Lcom/android/camera/TimelapsedModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageUpdateDone(J)V
    .locals 7
    .param p1, "bytes"    # J

    .prologue
    const/4 v6, 0x1

    .line 1378
    const-wide/32 v2, 0x2faf080

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 1379
    invoke-static {}, Lcom/android/camera/TimelapsedModule;->access$1500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Storage issue, ignore the start request"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1380
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$600(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 1467
    :goto_0
    return-void

    .line 1382
    :cond_0
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$2200(Lcom/android/camera/TimelapsedModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1383
    invoke-static {}, Lcom/android/camera/TimelapsedModule;->access$1500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "in storage callback after camera closed"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1384
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$600(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    goto :goto_0

    .line 1387
    :cond_1
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$400(Lcom/android/camera/TimelapsedModule;)Z

    move-result v1

    if-ne v1, v6, :cond_2

    .line 1388
    invoke-static {}, Lcom/android/camera/TimelapsedModule;->access$1500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "in storage callback after module paused"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1389
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$600(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    goto :goto_0

    .line 1396
    :cond_2
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$900(Lcom/android/camera/TimelapsedModule;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1397
    invoke-static {}, Lcom/android/camera/TimelapsedModule;->access$1500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "in storage callback after recording started"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1401
    :cond_3
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$2300(Lcom/android/camera/TimelapsedModule;)V

    .line 1403
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/TimelapsedModule;->access$102(Lcom/android/camera/TimelapsedModule;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1404
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v2}, Lcom/android/camera/TimelapsedModule;->access$2500(Lcom/android/camera/TimelapsedModule;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/TimelapsedModule;->access$2402(Lcom/android/camera/TimelapsedModule;Z)Z

    .line 1406
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$2600(Lcom/android/camera/TimelapsedModule;)V

    .line 1407
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$2700(Lcom/android/camera/TimelapsedModule;)Landroid/media/MediaRecorder;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1408
    invoke-static {}, Lcom/android/camera/TimelapsedModule;->access$1500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Fail to initialize media recorder"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1413
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$2700(Lcom/android/camera/TimelapsedModule;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1426
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$1300(Lcom/android/camera/TimelapsedModule;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/camera/TimelapsedModule$8$1;

    invoke-direct {v2, p0}, Lcom/android/camera/TimelapsedModule$8$1;-><init>(Lcom/android/camera/TimelapsedModule$8;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1433
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$600(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1437
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$2200(Lcom/android/camera/TimelapsedModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->refreshSettings()V

    .line 1442
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v2}, Lcom/android/camera/TimelapsedModule;->access$2200(Lcom/android/camera/TimelapsedModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/TimelapsedModule;->access$3002(Lcom/android/camera/TimelapsedModule;Lcom/android/ex/camera2/portability/CameraSettings;)Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1444
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1, v6}, Lcom/android/camera/TimelapsedModule;->access$902(Lcom/android/camera/TimelapsedModule;Z)Z

    .line 1445
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/camera/TimelapsedModule;->access$3102(Lcom/android/camera/TimelapsedModule;J)J

    .line 1446
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$300(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->lockOrientation()V

    .line 1447
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/camera/TimelapsedModule;->access$3202(Lcom/android/camera/TimelapsedModule;J)J

    .line 1451
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$600(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions(Z)V

    .line 1452
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$600(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->applyStateWhenRecordingStateChange()V

    .line 1454
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$3300(Lcom/android/camera/TimelapsedModule;)Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_SNAPSHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1455
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$600(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->showVideoSnapShotButton()V

    .line 1459
    :cond_5
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$600(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    const v2, 0x7f020310

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->startVideoRecordBtnAnim(I)V

    .line 1460
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$3400(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/TimelapsedUI;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/TimelapsedUI;->showRecordingUI(Z)V

    .line 1462
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-virtual {v1}, Lcom/android/camera/TimelapsedModule;->setFocusParameters()V

    .line 1464
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$700(Lcom/android/camera/TimelapsedModule;)V

    .line 1465
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$300(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    goto/16 :goto_0

    .line 1414
    :catch_0
    move-exception v0

    .line 1415
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/camera/TimelapsedModule;->access$1500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1416
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$600(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 1417
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$2800(Lcom/android/camera/TimelapsedModule;)V

    .line 1419
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$2200(Lcom/android/camera/TimelapsedModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->lock()V

    .line 1420
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$600(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    goto/16 :goto_0
.end method
