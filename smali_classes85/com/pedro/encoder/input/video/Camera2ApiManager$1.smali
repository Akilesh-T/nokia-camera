.class Lcom/pedro/encoder/input/video/Camera2ApiManager$1;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "Camera2ApiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pedro/encoder/input/video/Camera2ApiManager;->startPreview(Landroid/hardware/camera2/CameraDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pedro/encoder/input/video/Camera2ApiManager;


# direct methods
.method constructor <init>(Lcom/pedro/encoder/input/video/Camera2ApiManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pedro/encoder/input/video/Camera2ApiManager;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 122
    const-string v0, "Camera2ApiManager"

    const-string v1, "configuration failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    invoke-static {v1, p1}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->access$002(Lcom/pedro/encoder/input/video/Camera2ApiManager;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    invoke-static {v1}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->access$100(Lcom/pedro/encoder/input/video/Camera2ApiManager;)Landroid/view/SurfaceView;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    invoke-static {v1}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->access$200(Lcom/pedro/encoder/input/video/Camera2ApiManager;)Landroid/view/TextureView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 106
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/hardware/camera2/CaptureRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    iget-object v4, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    .line 107
    invoke-static {v4}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->access$300(Lcom/pedro/encoder/input/video/Camera2ApiManager;)Landroid/view/Surface;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->access$400(Lcom/pedro/encoder/input/video/Camera2ApiManager;Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    iget-object v4, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    invoke-static {v4}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->access$500(Lcom/pedro/encoder/input/video/Camera2ApiManager;)Landroid/view/Surface;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->access$600(Lcom/pedro/encoder/input/video/Camera2ApiManager;Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    .line 108
    invoke-static {v3}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->access$700(Lcom/pedro/encoder/input/video/Camera2ApiManager;)Landroid/os/Handler;

    move-result-object v3

    .line 106
    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 113
    :goto_0
    const-string v1, "Camera2ApiManager"

    const-string v2, "camera configured"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_1
    return-void

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    .line 111
    invoke-static {v2}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->access$500(Lcom/pedro/encoder/input/video/Camera2ApiManager;)Landroid/view/Surface;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->access$600(Lcom/pedro/encoder/input/video/Camera2ApiManager;Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager$1;->this$0:Lcom/pedro/encoder/input/video/Camera2ApiManager;

    invoke-static {v3}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->access$700(Lcom/pedro/encoder/input/video/Camera2ApiManager;)Landroid/os/Handler;

    move-result-object v3

    .line 110
    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_2
.end method
