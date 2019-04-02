.class Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$1;
.super Ljava/lang/Object;
.source "PicSelfiePreviewRendererHandler.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$1;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/camera2/params/Face;)V
    .locals 2
    .param p1, "faceList"    # [Landroid/hardware/camera2/params/Face;

    .prologue
    .line 521
    if-eqz p1, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$1;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v0, p1}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$802(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;[Landroid/hardware/camera2/params/Face;)[Landroid/hardware/camera2/params/Face;

    .line 530
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$1;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$802(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;[Landroid/hardware/camera2/params/Face;)[Landroid/hardware/camera2/params/Face;

    goto :goto_0
.end method
