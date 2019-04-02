.class Lcom/android/camera/app/OneCameraController$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "OneCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/OneCameraController;->warmStartCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isFirstCallback:Z

.field final synthetic this$0:Lcom/android/camera/app/OneCameraController;

.field final synthetic val$id:Lcom/android/camera/device/CameraId;

.field final synthetic val$openSlaveCamFuture:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$slaveCameraId:Lcom/android/camera/device/CameraId;


# direct methods
.method constructor <init>(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/app/OneCameraController;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    iput-object p2, p0, Lcom/android/camera/app/OneCameraController$1;->val$slaveCameraId:Lcom/android/camera/device/CameraId;

    iput-object p3, p0, Lcom/android/camera/app/OneCameraController$1;->val$id:Lcom/android/camera/device/CameraId;

    iput-object p4, p0, Lcom/android/camera/app/OneCameraController$1;->val$openSlaveCamFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/app/OneCameraController$1;->isFirstCallback:Z

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
    .line 341
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

    .line 342
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$100(Lcom/android/camera/app/OneCameraController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 343
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/app/OneCameraController$1;->isFirstCallback:Z

    if-eqz v0, :cond_0

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/OneCameraController$1;->isFirstCallback:Z

    .line 345
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/camera/app/OneCameraController;->access$202(Lcom/android/camera/app/OneCameraController;I)I

    .line 346
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/camera/app/OneCameraController;->access$302(Lcom/android/camera/app/OneCameraController;I)I

    .line 347
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$400(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/device/ActiveCameraDeviceTracker;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 348
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onCameraClosed()V

    .line 350
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/app/OneCameraController;->access$502(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/one/OneCamera$OpenCallback;)Lcom/android/camera/one/OneCamera$OpenCallback;

    .line 353
    :cond_0
    monitor-exit v1

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 301
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

    .line 302
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$100(Lcom/android/camera/app/OneCameraController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 303
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/app/OneCameraController$1;->isFirstCallback:Z

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/OneCameraController$1;->isFirstCallback:Z

    .line 305
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/camera/app/OneCameraController;->access$202(Lcom/android/camera/app/OneCameraController;I)I

    .line 306
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/camera/app/OneCameraController;->access$302(Lcom/android/camera/app/OneCameraController;I)I

    .line 307
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$400(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/device/ActiveCameraDeviceTracker;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 308
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 309
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onCameraClosed()V

    .line 311
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/app/OneCameraController;->access$502(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/one/OneCamera$OpenCallback;)Lcom/android/camera/one/OneCamera$OpenCallback;

    .line 314
    :cond_0
    monitor-exit v1

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .prologue
    .line 319
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

    .line 320
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$100(Lcom/android/camera/app/OneCameraController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 321
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/app/OneCameraController$1;->isFirstCallback:Z

    if-eqz v0, :cond_1

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/OneCameraController$1;->isFirstCallback:Z

    .line 323
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/camera/app/OneCameraController;->access$202(Lcom/android/camera/app/OneCameraController;I)I

    .line 324
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/camera/app/OneCameraController;->access$302(Lcom/android/camera/app/OneCameraController;I)I

    .line 325
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$400(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/device/ActiveCameraDeviceTracker;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 326
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 327
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    .line 329
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/app/OneCameraController;->access$502(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/one/OneCamera$OpenCallback;)Lcom/android/camera/one/OneCamera$OpenCallback;

    .line 336
    :cond_0
    :goto_0
    monitor-exit v1

    .line 337
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$1100(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 17
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 191
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

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$100(Lcom/android/camera/app/OneCameraController;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 194
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/app/OneCameraController$1;->isFirstCallback:Z

    if-eqz v1, :cond_5

    .line 195
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/camera/app/OneCameraController$1;->isFirstCallback:Z

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v5, -0x1

    invoke-static {v1, v5}, Lcom/android/camera/app/OneCameraController;->access$202(Lcom/android/camera/app/OneCameraController;I)I

    .line 198
    const/4 v2, 0x0

    .line 199
    .local v2, "slaveDevice":Landroid/hardware/camera2/CameraDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->val$slaveCameraId:Lcom/android/camera/device/CameraId;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->val$id:Lcom/android/camera/device/CameraId;

    invoke-virtual {v1}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/OneCameraController$1;->val$slaveCameraId:Lcom/android/camera/device/CameraId;

    invoke-virtual {v5}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 201
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->val$openSlaveCamFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/hardware/camera2/CameraDevice;

    move-object v2, v0

    .line 202
    if-eqz v2, :cond_0

    .line 203
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v5, "onOpened : slaveDevice get."

    invoke-static {v1, v5}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :cond_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$600(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v5, "device opened when AppController Paused, close it."

    invoke-static {v1, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$400(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/device/ActiveCameraDeviceTracker;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 222
    if-eqz v2, :cond_1

    .line 223
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 225
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v5, -0x1

    invoke-static {v1, v5}, Lcom/android/camera/app/OneCameraController;->access$302(Lcom/android/camera/app/OneCameraController;I)I

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera$OpenCallback;->onCameraClosed()V

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/android/camera/app/OneCameraController;->access$502(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/one/OneCamera$OpenCallback;)Lcom/android/camera/one/OneCamera$OpenCallback;

    .line 231
    :cond_2
    monitor-exit v15

    .line 297
    .end local v2    # "slaveDevice":Landroid/hardware/camera2/CameraDevice;
    :goto_0
    return-void

    .line 205
    .restart local v2    # "slaveDevice":Landroid/hardware/camera2/CameraDevice;
    :catch_0
    move-exception v13

    .line 206
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

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v5, -0x1

    invoke-static {v1, v5}, Lcom/android/camera/app/OneCameraController;->access$302(Lcom/android/camera/app/OneCameraController;I)I

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$400(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/device/ActiveCameraDeviceTracker;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/android/camera/app/OneCameraController;->access$502(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/one/OneCamera$OpenCallback;)Lcom/android/camera/one/OneCamera$OpenCallback;

    .line 214
    :cond_3
    monitor-exit v15

    goto :goto_0

    .line 296
    .end local v2    # "slaveDevice":Landroid/hardware/camera2/CameraDevice;
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 235
    .restart local v2    # "slaveDevice":Landroid/hardware/camera2/CameraDevice;
    :cond_4
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v12

    .line 236
    .local v12, "cameraId":Lcom/android/camera/device/CameraId;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$600(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v5}, Lcom/android/camera/app/OneCameraController;->access$700(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCameraManager;

    move-result-object v5

    invoke-interface {v5, v12}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->from(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v9

    .line 237
    .local v9, "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidServices;->provideCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 241
    .local v3, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-eqz v2, :cond_6

    .line 242
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v14

    .line 243
    .local v14, "slaveCameraId":Lcom/android/camera/device/CameraId;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$600(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v5}, Lcom/android/camera/app/OneCameraController;->access$700(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCameraManager;

    move-result-object v5

    invoke-interface {v5, v14}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->from(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v10

    .line 245
    .local v10, "slaveImageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidServices;->provideCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 251
    .end local v14    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    .local v4, "slaveCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    .line 256
    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$900(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    .line 257
    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$1000(Lcom/android/camera/app/OneCameraController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/settings/ResolutionUtil;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    .line 258
    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$1000(Lcom/android/camera/app/OneCameraController;)Landroid/content/Context;

    move-result-object v7

    .line 259
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    .line 262
    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$1100(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/FatalErrorHandler;

    move-result-object v11

    move-object/from16 v1, p1

    .line 251
    invoke-static/range {v1 .. v11}, Lcom/android/camera/one/v2/OneCameraCreator;->create(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera/one/config/OneCameraFeatureConfig;Landroid/util/DisplayMetrics;Landroid/content/Context;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/FatalErrorHandler;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lcom/android/camera/app/OneCameraController;->access$802(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$800(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 265
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v5}, Lcom/android/camera/app/OneCameraController;->access$800(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/android/camera/one/OneCamera$OpenCallback;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/android/camera/app/OneCameraController;->access$502(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/one/OneCamera$OpenCallback;)Lcom/android/camera/one/OneCamera$OpenCallback;
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 296
    .end local v2    # "slaveDevice":Landroid/hardware/camera2/CameraDevice;
    .end local v3    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v4    # "slaveCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v9    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .end local v10    # "slaveImageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .end local v12    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_5
    :goto_2
    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 247
    .restart local v2    # "slaveDevice":Landroid/hardware/camera2/CameraDevice;
    .restart local v3    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v9    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .restart local v12    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_6
    const/4 v4, 0x0

    .line 248
    .restart local v4    # "slaveCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v10, 0x0

    .restart local v10    # "slaveImageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    goto :goto_1

    .line 270
    :cond_7
    :try_start_5
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v5, "Could not construct a OneCamera object!"

    invoke-static {v1, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v5, -0x1

    invoke-static {v1, v5}, Lcom/android/camera/app/OneCameraController;->access$302(Lcom/android/camera/app/OneCameraController;I)I

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/android/camera/app/OneCameraController;->access$502(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/one/OneCamera$OpenCallback;)Lcom/android/camera/one/OneCamera$OpenCallback;
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 278
    .end local v3    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v4    # "slaveCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v9    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .end local v10    # "slaveImageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .end local v12    # "cameraId":Lcom/android/camera/device/CameraId;
    :catch_1
    move-exception v13

    .line 279
    .local v13, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_6
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v5, "Could not get camera characteristics"

    invoke-static {v1, v5, v13}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v5, -0x1

    invoke-static {v1, v5}, Lcom/android/camera/app/OneCameraController;->access$302(Lcom/android/camera/app/OneCameraController;I)I

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    .line 284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/android/camera/app/OneCameraController;->access$502(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/one/OneCamera$OpenCallback;)Lcom/android/camera/one/OneCamera$OpenCallback;

    goto :goto_2

    .line 286
    .end local v13    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_2
    move-exception v13

    .line 287
    .local v13, "e":Lcom/android/camera/one/OneCameraAccessException;
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v5, "Could not create OneCamera"

    invoke-static {v1, v5, v13}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v5, -0x1

    invoke-static {v1, v5}, Lcom/android/camera/app/OneCameraController;->access$302(Lcom/android/camera/app/OneCameraController;I)I

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v1}, Lcom/android/camera/app/OneCameraController;->access$500(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/one/OneCamera$OpenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/app/OneCameraController$1;->this$0:Lcom/android/camera/app/OneCameraController;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/android/camera/app/OneCameraController;->access$502(Lcom/android/camera/app/OneCameraController;Lcom/android/camera/one/OneCamera$OpenCallback;)Lcom/android/camera/one/OneCamera$OpenCallback;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2
.end method
