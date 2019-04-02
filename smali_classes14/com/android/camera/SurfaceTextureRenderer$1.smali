.class Lcom/android/camera/SurfaceTextureRenderer$1;
.super Ljava/lang/Object;
.source "SurfaceTextureRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SurfaceTextureRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SurfaceTextureRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/SurfaceTextureRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/SurfaceTextureRenderer;->access$000(Lcom/android/camera/SurfaceTextureRenderer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/SurfaceTextureRenderer;->access$100(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/SurfaceTextureRenderer;->access$200(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/SurfaceTextureRenderer;->access$400(Lcom/android/camera/SurfaceTextureRenderer;)Lcom/android/camera/SurfaceTextureRenderer$FrameDrawer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$300(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/camera/SurfaceTextureRenderer$FrameDrawer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 59
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/SurfaceTextureRenderer;->access$500(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$100(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v3}, Lcom/android/camera/SurfaceTextureRenderer;->access$200(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 60
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$602(Lcom/android/camera/SurfaceTextureRenderer;Z)Z

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$1;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/SurfaceTextureRenderer;->access$000(Lcom/android/camera/SurfaceTextureRenderer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
