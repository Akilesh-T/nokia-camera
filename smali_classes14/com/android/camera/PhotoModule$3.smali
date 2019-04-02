.class Lcom/android/camera/PhotoModule$3;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;


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
    .line 302
    iput-object p1, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBurstCompleted()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 315
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "onBurstCompleted"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$500(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "igonre onBurstCompleted : This callback will not execute after pause()."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 322
    .local v0, "zoomValue":F
    iget-object v1, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1300(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 323
    iget-object v1, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v0

    .line 325
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/burst/BurstManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1500(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/TouchCoordinate;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)Z

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/camera/burst/BurstManager;->onBurstCompleted(ZFLcom/android/camera/ui/TouchCoordinate;Z)V

    .line 327
    iget-object v1, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v1, v2, :cond_3

    .line 328
    iget-object v1, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoUI;->setSwipingEnabled(Z)V

    .line 330
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)V

    .line 332
    iget-object v1, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1, v5}, Lcom/android/camera/PhotoModule;->access$1802(Lcom/android/camera/PhotoModule;Z)Z

    .line 333
    iget-object v1, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1, v6}, Lcom/android/camera/PhotoModule;->access$1602(Lcom/android/camera/PhotoModule;Lcom/android/camera/ui/TouchCoordinate;)Lcom/android/camera/ui/TouchCoordinate;

    .line 334
    iget-object v1, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1, v5}, Lcom/android/camera/PhotoModule;->access$1702(Lcom/android/camera/PhotoModule;Z)Z

    .line 336
    iget-object v1, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v2

    const-wide/32 v4, 0x2faf080

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    goto :goto_0
.end method

.method public onBurstFailed(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/burst/BurstManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/burst/BurstManager;->onBurstFailed(I)V

    .line 344
    iget-object v0, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$1802(Lcom/android/camera/PhotoModule;Z)Z

    .line 345
    return-void
.end method

.method public onBurstPictureTaken([B)V
    .locals 12
    .param p1, "data"    # [B

    .prologue
    .line 349
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBurstPictureTaken : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 350
    new-instance v2, Lcom/android/camera/util/Size;

    iget-object v0, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 351
    .local v2, "photoSize":Lcom/android/camera/util/Size;
    iget-object v0, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule;->getPeekAccessibilityString()Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, "accStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/hardware/HeadingSensor;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/hardware/HeadingSensor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v5

    .line 353
    .local v5, "heading":I
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2100(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v6, 0x0

    .line 355
    .local v6, "compassEnabled":Z
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/burst/BurstManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)I

    move-result v3

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/burst/BurstManager;->onBurstPictureTaken([BLcom/android/camera/util/Size;ILjava/lang/String;IZ)Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    move-result-object v7

    .line 356
    .local v7, "takenState":Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;
    sget-object v0, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;->FAILED:Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    if-ne v7, v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1200(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopBurst()V

    .line 360
    :cond_0
    sget-object v0, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;->SUCCESS:Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    if-ne v7, v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v8

    array-length v1, p1

    int-to-long v10, v1

    sub-long/2addr v8, v10

    invoke-static {v0, v8, v9}, Lcom/android/camera/PhotoModule;->access$1902(Lcom/android/camera/PhotoModule;J)J

    .line 362
    iget-object v0, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v0

    const-wide/32 v8, 0x2faf080

    cmp-long v0, v0, v8

    if-gtz v0, :cond_1

    .line 363
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no available size during burst shot "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PhotoModule$3$1;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$3$1;-><init>(Lcom/android/camera/PhotoModule$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 373
    :cond_1
    return-void

    .line 352
    .end local v5    # "heading":I
    .end local v6    # "compassEnabled":Z
    .end local v7    # "takenState":Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;
    :cond_2
    const/4 v5, -0x1

    goto :goto_0

    .line 353
    .restart local v5    # "heading":I
    :cond_3
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public onBurstStarted()V
    .locals 4

    .prologue
    .line 305
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onBurstStarted"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 306
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v3, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 307
    .local v1, "hdrOn":Z
    :goto_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/burst/BurstManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/burst/BurstManager;->onBurstStarted(Z)Z

    move-result v0

    .line 308
    .local v0, "burstStarted":Z
    if-nez v0, :cond_0

    .line 309
    iget-object v2, p0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1200(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopBurst()V

    .line 311
    :cond_0
    return-void

    .line 306
    .end local v0    # "burstStarted":Z
    .end local v1    # "hdrOn":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
