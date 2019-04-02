.class Lcom/android/camera/CameraActivity$SubCameraCallback;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubCameraCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 4801
    iput-object p1, p0, Lcom/android/camera/CameraActivity$SubCameraCallback;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CameraActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/CameraActivity;
    .param p2, "x1"    # Lcom/android/camera/CameraActivity$1;

    .prologue
    .line 4801
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity$SubCameraCallback;-><init>(Lcom/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onCameraDisabled(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 4843
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubCamera disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4844
    iget-object v0, p0, Lcom/android/camera/CameraActivity$SubCameraCallback;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$4000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onCameraDisabledFailure()V

    .line 4845
    return-void
.end method

.method public onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 4
    .param p1, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v3, 0x0

    .line 4805
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "onSubCameraOpened"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4806
    iget-object v1, p0, Lcom/android/camera/CameraActivity$SubCameraCallback;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$100(Lcom/android/camera/CameraActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4810
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "received onCameraOpened but activity is paused, closing Camera"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4811
    iget-object v1, p0, Lcom/android/camera/CameraActivity$SubCameraCallback;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4812
    iget-object v1, p0, Lcom/android/camera/CameraActivity$SubCameraCallback;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/app/CameraController;->closeCamera(Z)V

    .line 4839
    :cond_0
    :goto_0
    return-void

    .line 4817
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity$SubCameraCallback;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$5200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/ModuleManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraActivity$SubCameraCallback;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$3600(Lcom/android/camera/CameraActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/app/ModuleManagerImpl;->getModuleAgent(I)Lcom/android/camera/app/ModuleManager$ModuleAgent;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/ModuleManager$ModuleAgent;->requestAppForCamera()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4819
    iget-object v1, p0, Lcom/android/camera/CameraActivity$SubCameraCallback;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4820
    iget-object v1, p0, Lcom/android/camera/CameraActivity$SubCameraCallback;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraController()Lcom/android/camera/app/CameraController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/app/CameraController;->closeCamera(Z)V

    .line 4822
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Camera opened but the module shouldn\'t be requesting"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4825
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CameraActivity$SubCameraCallback;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$3200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/CameraModule;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 4827
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity$SubCameraCallback;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$3200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/CameraModule;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/PIPPhotoModule;

    if-eqz v1, :cond_4

    .line 4828
    iget-object v1, p0, Lcom/android/camera/CameraActivity$SubCameraCallback;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$3200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/CameraModule;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PIPPhotoModule;

    invoke-virtual {v1, p1}, Lcom/android/camera/PIPPhotoModule;->onSubCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4832
    :catch_0
    move-exception v0

    .line 4833
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Error connecting to camera"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4834
    iget-object v1, p0, Lcom/android/camera/CameraActivity$SubCameraCallback;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$4000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/FatalErrorHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/FatalErrorHandler;->onCameraOpenFailure()V

    goto :goto_0

    .line 4829
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity$SubCameraCallback;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$3200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/CameraModule;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/PIPVideoModule;

    if-eqz v1, :cond_0

    .line 4830
    iget-object v1, p0, Lcom/android/camera/CameraActivity$SubCameraCallback;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$3200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/CameraModule;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PIPVideoModule;

    invoke-virtual {v1, p1}, Lcom/android/camera/PIPVideoModule;->onSubCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4837
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "mCurrentModule null, not invoking onSubCameraAvailable"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onDeviceOpenFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 4849
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubCamera open failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4850
    iget-object v0, p0, Lcom/android/camera/CameraActivity$SubCameraCallback;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$4000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onCameraOpenFailure()V

    .line 4851
    return-void
.end method

.method public onDeviceOpenedAlready(ILjava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 4855
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubCamera open already: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4856
    iget-object v0, p0, Lcom/android/camera/CameraActivity$SubCameraCallback;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$4000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 4857
    return-void
.end method

.method public onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V
    .locals 3
    .param p1, "mgr"    # Lcom/android/ex/camera2/portability/CameraAgent;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 4861
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubCamera reconnection failure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4862
    iget-object v0, p0, Lcom/android/camera/CameraActivity$SubCameraCallback;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$4000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onCameraReconnectFailure()V

    .line 4863
    return-void
.end method
