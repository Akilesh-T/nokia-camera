.class Lcom/android/camera/ManualModule$14;
.super Ljava/lang/Object;
.source "ManualModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualModule;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 2782
    iput-object p1, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBurstCompleted()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2796
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "onBurstCompleted"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2797
    iget-object v1, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v1}, Lcom/android/camera/ManualModule;->access$500(Lcom/android/camera/ManualModule;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2798
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "igonre onBurstCompleted : This callback will not execute after pause()."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2819
    :cond_0
    :goto_0
    return-void

    .line 2802
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2803
    .local v0, "zoomValue":F
    iget-object v1, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v1}, Lcom/android/camera/ManualModule;->access$4400(Lcom/android/camera/ManualModule;)Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2804
    iget-object v1, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v1}, Lcom/android/camera/ManualModule;->access$4500(Lcom/android/camera/ManualModule;)Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v0

    .line 2806
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v1}, Lcom/android/camera/ManualModule;->access$4300(Lcom/android/camera/ManualModule;)Lcom/android/camera/burst/BurstManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2}, Lcom/android/camera/ManualModule;->access$4600(Lcom/android/camera/ManualModule;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v3}, Lcom/android/camera/ManualModule;->access$4700(Lcom/android/camera/ManualModule;)Lcom/android/camera/ui/TouchCoordinate;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v4}, Lcom/android/camera/ManualModule;->access$4800(Lcom/android/camera/ManualModule;)Z

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/camera/burst/BurstManager;->onBurstCompleted(ZFLcom/android/camera/ui/TouchCoordinate;Z)V

    .line 2808
    iget-object v1, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v1}, Lcom/android/camera/ManualModule;->access$700(Lcom/android/camera/ManualModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v1, v2, :cond_3

    .line 2809
    iget-object v1, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v1}, Lcom/android/camera/ManualModule;->access$800(Lcom/android/camera/ManualModule;)Lcom/android/camera/ManualAbstractUI;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ManualAbstractUI;->setSwipingEnabled(Z)V

    .line 2811
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v1}, Lcom/android/camera/ManualModule;->access$900(Lcom/android/camera/ManualModule;)V

    .line 2813
    iget-object v1, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v1, v5}, Lcom/android/camera/ManualModule;->access$4902(Lcom/android/camera/ManualModule;Z)Z

    .line 2814
    iget-object v1, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v1, v6}, Lcom/android/camera/ManualModule;->access$4702(Lcom/android/camera/ManualModule;Lcom/android/camera/ui/TouchCoordinate;)Lcom/android/camera/ui/TouchCoordinate;

    .line 2815
    iget-object v1, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v1, v5}, Lcom/android/camera/ManualModule;->access$4802(Lcom/android/camera/ManualModule;Z)Z

    .line 2816
    iget-object v1, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v1}, Lcom/android/camera/ManualModule;->access$5000(Lcom/android/camera/ManualModule;)J

    move-result-wide v2

    const-wide/32 v4, 0x2faf080

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 2817
    iget-object v1, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v1}, Lcom/android/camera/ManualModule;->access$1000(Lcom/android/camera/ManualModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    goto :goto_0
.end method

.method public onBurstFailed(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 2823
    iget-object v0, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$4300(Lcom/android/camera/ManualModule;)Lcom/android/camera/burst/BurstManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/burst/BurstManager;->onBurstFailed(I)V

    .line 2824
    iget-object v0, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ManualModule;->access$4902(Lcom/android/camera/ManualModule;Z)Z

    .line 2825
    return-void
.end method

.method public onBurstPictureTaken([B)V
    .locals 12
    .param p1, "data"    # [B

    .prologue
    .line 2829
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

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

    .line 2830
    new-instance v2, Lcom/android/camera/util/Size;

    iget-object v0, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$4500(Lcom/android/camera/ManualModule;)Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 2831
    .local v2, "photoSize":Lcom/android/camera/util/Size;
    iget-object v0, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-virtual {v0}, Lcom/android/camera/ManualModule;->getPeekAccessibilityString()Ljava/lang/String;

    move-result-object v4

    .line 2832
    .local v4, "accStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$5100(Lcom/android/camera/ManualModule;)Lcom/android/camera/hardware/HeadingSensor;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$5100(Lcom/android/camera/ManualModule;)Lcom/android/camera/hardware/HeadingSensor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v5

    .line 2833
    .local v5, "heading":I
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$5200(Lcom/android/camera/ManualModule;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v6, 0x0

    .line 2835
    .local v6, "compassEnabled":Z
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$4300(Lcom/android/camera/ManualModule;)Lcom/android/camera/burst/BurstManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v1}, Lcom/android/camera/ManualModule;->access$5300(Lcom/android/camera/ManualModule;)I

    move-result v3

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/burst/BurstManager;->onBurstPictureTaken([BLcom/android/camera/util/Size;ILjava/lang/String;IZ)Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    move-result-object v7

    .line 2836
    .local v7, "takenState":Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;
    sget-object v0, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;->FAILED:Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    if-ne v7, v0, :cond_0

    .line 2837
    iget-object v0, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$3000(Lcom/android/camera/ManualModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopBurst()V

    .line 2840
    :cond_0
    sget-object v0, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;->SUCCESS:Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    if-ne v7, v0, :cond_1

    .line 2841
    iget-object v0, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    iget-object v1, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v1}, Lcom/android/camera/ManualModule;->access$5000(Lcom/android/camera/ManualModule;)J

    move-result-wide v8

    array-length v1, p1

    int-to-long v10, v1

    sub-long/2addr v8, v10

    invoke-static {v0, v8, v9}, Lcom/android/camera/ManualModule;->access$5002(Lcom/android/camera/ManualModule;J)J

    .line 2842
    iget-object v0, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$5000(Lcom/android/camera/ManualModule;)J

    move-result-wide v0

    const-wide/32 v8, 0x2faf080

    cmp-long v0, v0, v8

    if-gtz v0, :cond_1

    .line 2843
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no available size during burst shot "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v3}, Lcom/android/camera/ManualModule;->access$5000(Lcom/android/camera/ManualModule;)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2844
    iget-object v0, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$3500(Lcom/android/camera/ManualModule;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ManualModule$14$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualModule$14$1;-><init>(Lcom/android/camera/ManualModule$14;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2853
    :cond_1
    return-void

    .line 2832
    .end local v5    # "heading":I
    .end local v6    # "compassEnabled":Z
    .end local v7    # "takenState":Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;
    :cond_2
    const/4 v5, -0x1

    goto :goto_0

    .line 2833
    .restart local v5    # "heading":I
    :cond_3
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public onBurstStarted()V
    .locals 4

    .prologue
    .line 2786
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onBurstStarted"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2787
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v3, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v3}, Lcom/android/camera/ManualModule;->access$700(Lcom/android/camera/ManualModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 2788
    .local v1, "hdrOn":Z
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2}, Lcom/android/camera/ManualModule;->access$4300(Lcom/android/camera/ManualModule;)Lcom/android/camera/burst/BurstManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/burst/BurstManager;->onBurstStarted(Z)Z

    move-result v0

    .line 2789
    .local v0, "burstStarted":Z
    if-nez v0, :cond_0

    .line 2790
    iget-object v2, p0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2}, Lcom/android/camera/ManualModule;->access$3000(Lcom/android/camera/ManualModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopBurst()V

    .line 2792
    :cond_0
    return-void

    .line 2787
    .end local v0    # "burstStarted":Z
    .end local v1    # "hdrOn":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
