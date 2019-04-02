.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->applySettingsAndStartPanorama(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$panoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

.field final synthetic val$settings:Lcom/android/ex/camera2/portability/CameraSettings;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->val$panoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    iput-object p4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->val$settings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImgOrientation()I
    .locals 1

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->val$panoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->getImgOrientation()I

    move-result v0

    return v0
.end method

.method public onPanoramaCompleted()V
    .locals 3

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 1745
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanoramaCompleted returning when not capturing panorama : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v2, v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1751
    :goto_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20$2;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20$2;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1757
    return-void

    .line 1747
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->val$settings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setCaptureIntent(Lcom/android/ex/camera2/portability/CaptureIntent;)V

    .line 1748
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    goto :goto_0
.end method

.method public onPanoramaFailed(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 1772
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanoramaFailed returning when not capturing panorama : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v2, v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1778
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20$4;

    invoke-direct {v1, p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20$4;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1784
    return-void

    .line 1773
    :cond_1
    if-gez p1, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->val$settings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setCaptureIntent(Lcom/android/ex/camera2/portability/CaptureIntent;)V

    .line 1775
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->this$1:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    goto :goto_0
.end method

.method public onPanoramaPictureTaken([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20$6;

    invoke-direct {v1, p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20$6;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1804
    return-void
.end method

.method public onPanoramaPreviewFrame(Landroid/graphics/Bitmap;II[II[III)V
    .locals 11
    .param p1, "preview"    # Landroid/graphics/Bitmap;
    .param p2, "fullImgWidth"    # I
    .param p3, "fullImgHeight"    # I
    .param p4, "previewAttr"    # [I
    .param p5, "direction"    # I
    .param p6, "offset"    # [I
    .param p7, "progress"    # I
    .param p8, "totalPreviewLength"    # I

    .prologue
    .line 1788
    iget-object v10, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->val$handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20$5;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;Landroid/graphics/Bitmap;II[II[III)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1794
    return-void
.end method

.method public onPanoramaStarted()V
    .locals 2

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20$1;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1740
    return-void
.end method

.method public onPanoramaWarning(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20$3;

    invoke-direct {v1, p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20$3;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1767
    return-void
.end method
