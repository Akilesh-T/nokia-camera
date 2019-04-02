.class Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$1;
.super Ljava/lang/Object;
.source "VideoPreviewRender.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->getMainInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$1;->this$1:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$1;->this$1:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/opengl/ImageSource;->MAIN:Lcom/android/camera/opengl/ImageSource;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 436
    return-void
.end method
