.class Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler$2;
.super Ljava/lang/Object;
.source "DualSightPreviewRender.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->getSlaveInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler$2;->this$1:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler$2;->this$1:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/opengl/ImageSource;->SLAVE:Lcom/android/camera/opengl/ImageSource;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1169
    return-void
.end method
