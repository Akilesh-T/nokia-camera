.class Lcom/android/camera/app/CameraController$SubCameraOpenCallback;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubCameraOpenCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/CameraController;


# direct methods
.method private constructor <init>(Lcom/android/camera/app/CameraController;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;->this$0:Lcom/android/camera/app/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/app/CameraController;Lcom/android/camera/app/CameraController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/app/CameraController;
    .param p2, "x1"    # Lcom/android/camera/app/CameraController$1;

    .prologue
    .line 585
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;-><init>(Lcom/android/camera/app/CameraController;)V

    return-void
.end method


# virtual methods
.method public onCameraDisabled(I)V
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;->this$0:Lcom/android/camera/app/CameraController;

    invoke-static {v0}, Lcom/android/camera/app/CameraController;->access$300(Lcom/android/camera/app/CameraController;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;->this$0:Lcom/android/camera/app/CameraController;

    invoke-static {v0}, Lcom/android/camera/app/CameraController;->access$300(Lcom/android/camera/app/CameraController;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraDisabled(I)V

    .line 604
    :cond_0
    return-void
.end method

.method public onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2
    .param p1, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;->this$0:Lcom/android/camera/app/CameraController;

    invoke-static {v0}, Lcom/android/camera/app/CameraController;->access$100(Lcom/android/camera/app/CameraController;)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;->this$0:Lcom/android/camera/app/CameraController;

    invoke-static {v0, p1}, Lcom/android/camera/app/CameraController;->access$202(Lcom/android/camera/app/CameraController;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 593
    iget-object v0, p0, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;->this$0:Lcom/android/camera/app/CameraController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/camera/app/CameraController;->access$102(Lcom/android/camera/app/CameraController;I)I

    .line 594
    iget-object v0, p0, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;->this$0:Lcom/android/camera/app/CameraController;

    invoke-static {v0}, Lcom/android/camera/app/CameraController;->access$300(Lcom/android/camera/app/CameraController;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;->this$0:Lcom/android/camera/app/CameraController;

    invoke-static {v0}, Lcom/android/camera/app/CameraController;->access$300(Lcom/android/camera/app/CameraController;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    goto :goto_0
.end method

.method public onDeviceOpenFailure(ILjava/lang/String;)V
    .locals 1
    .param p1, "cameraId"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;->this$0:Lcom/android/camera/app/CameraController;

    invoke-static {v0}, Lcom/android/camera/app/CameraController;->access$300(Lcom/android/camera/app/CameraController;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;->this$0:Lcom/android/camera/app/CameraController;

    invoke-static {v0}, Lcom/android/camera/app/CameraController;->access$300(Lcom/android/camera/app/CameraController;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V

    .line 611
    :cond_0
    return-void
.end method

.method public onDeviceOpenedAlready(ILjava/lang/String;)V
    .locals 1
    .param p1, "cameraId"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;->this$0:Lcom/android/camera/app/CameraController;

    invoke-static {v0}, Lcom/android/camera/app/CameraController;->access$300(Lcom/android/camera/app/CameraController;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;->this$0:Lcom/android/camera/app/CameraController;

    invoke-static {v0}, Lcom/android/camera/app/CameraController;->access$300(Lcom/android/camera/app/CameraController;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenedAlready(ILjava/lang/String;)V

    .line 618
    :cond_0
    return-void
.end method

.method public onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V
    .locals 1
    .param p1, "mgr"    # Lcom/android/ex/camera2/portability/CameraAgent;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;->this$0:Lcom/android/camera/app/CameraController;

    invoke-static {v0}, Lcom/android/camera/app/CameraController;->access$300(Lcom/android/camera/app/CameraController;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/camera/app/CameraController$SubCameraOpenCallback;->this$0:Lcom/android/camera/app/CameraController;

    invoke-static {v0}, Lcom/android/camera/app/CameraController;->access$300(Lcom/android/camera/app/CameraController;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V

    .line 626
    :cond_0
    return-void
.end method
