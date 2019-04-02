.class Lcom/android/camera/BokehHal3Module$19$2$2;
.super Ljava/lang/Object;
.source "BokehHal3Module.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehHal3Module$19$2;->onReadyForCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/BokehHal3Module$19$2;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehHal3Module$19$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/BokehHal3Module$19$2;

    .prologue
    .line 2036
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module$19$2$2;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/camera2/params/Face;)V
    .locals 1
    .param p1, "faceList"    # [Landroid/hardware/camera2/params/Face;

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2$2;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19$2;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2$2;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19$2;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    .line 2040
    invoke-virtual {v0}, Lcom/android/camera/opengl/PreviewRenderer;->getFaceDetectionListener()Lcom/android/camera/one/OneCamera$FaceDetectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2041
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2$2;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19$2;->val$glRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-virtual {v0}, Lcom/android/camera/opengl/PreviewRenderer;->getFaceDetectionListener()Lcom/android/camera/one/OneCamera$FaceDetectionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCamera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/camera2/params/Face;)V

    .line 2043
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2$2;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$3300(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/BokehHal3ModuleUI;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2$2;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$3300(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/BokehHal3ModuleUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/BokehHal3ModuleUI;->onFaceDetection([Landroid/hardware/camera2/params/Face;)V

    .line 2044
    :cond_1
    return-void
.end method
