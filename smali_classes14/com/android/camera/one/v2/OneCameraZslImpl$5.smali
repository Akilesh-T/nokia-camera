.class Lcom/android/camera/one/v2/OneCameraZslImpl$5;
.super Ljava/lang/Object;
.source "OneCameraZslImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImageConstraint;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/OneCameraZslImpl;->takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/OneCameraZslImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$5;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public satisfiesConstraint(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 11
    .param p1, "captureResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 461
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v9}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 462
    .local v6, "timestamp":Ljava/lang/Long;
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v9}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 463
    .local v5, "lensState":Ljava/lang/Integer;
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v9}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 464
    .local v4, "flashState":Ljava/lang/Integer;
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v9}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 465
    .local v3, "flashMode":Ljava/lang/Integer;
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v9}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 466
    .local v0, "aeState":Ljava/lang/Integer;
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v9}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 467
    .local v1, "afState":Ljava/lang/Integer;
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v9}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 469
    .local v2, "awbState":Ljava/lang/Integer;
    if-nez v5, :cond_0

    .line 470
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 472
    :cond_0
    if-nez v4, :cond_1

    .line 473
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 475
    :cond_1
    if-nez v3, :cond_2

    .line 476
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 478
    :cond_2
    if-nez v0, :cond_3

    .line 479
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 481
    :cond_3
    if-nez v1, :cond_4

    .line 482
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 484
    :cond_4
    if-nez v2, :cond_5

    .line 485
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 488
    :cond_5
    iget-object v9, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$5;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v9}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$100(Lcom/android/camera/one/v2/OneCameraZslImpl;)Ljava/util/Set;

    move-result-object v9

    monitor-enter v9

    .line 489
    :try_start_0
    iget-object v10, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$5;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v10}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$100(Lcom/android/camera/one/v2/OneCameraZslImpl;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 491
    monitor-exit v9

    .line 514
    :cond_6
    :goto_0
    return v7

    .line 493
    :cond_7
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v8, :cond_6

    .line 500
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v8, :cond_6

    .line 501
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_6

    .line 505
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_6

    .line 506
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v8, :cond_6

    .line 510
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v8, :cond_6

    move v7, v8

    .line 514
    goto :goto_0

    .line 493
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method
