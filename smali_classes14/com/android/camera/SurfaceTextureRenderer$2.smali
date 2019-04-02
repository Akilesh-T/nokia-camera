.class Lcom/android/camera/SurfaceTextureRenderer$2;
.super Ljava/lang/Object;
.source "SurfaceTextureRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SurfaceTextureRenderer;->release()V
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
    .line 76
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureRenderer$2;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 79
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$2;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/SurfaceTextureRenderer;->access$500(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureRenderer$2;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v1}, Lcom/android/camera/SurfaceTextureRenderer;->access$100(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$2;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$200(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 80
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$2;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/SurfaceTextureRenderer;->access$500(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureRenderer$2;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v1}, Lcom/android/camera/SurfaceTextureRenderer;->access$100(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$2;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$700(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 81
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$2;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/SurfaceTextureRenderer;->access$500(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureRenderer$2;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v1}, Lcom/android/camera/SurfaceTextureRenderer;->access$100(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 83
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$2;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v0}, Lcom/android/camera/SurfaceTextureRenderer;->access$500(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureRenderer$2;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v1}, Lcom/android/camera/SurfaceTextureRenderer;->access$100(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 84
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$2;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v0, v5}, Lcom/android/camera/SurfaceTextureRenderer;->access$202(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 85
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$2;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v0, v5}, Lcom/android/camera/SurfaceTextureRenderer;->access$702(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 86
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$2;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v0, v5}, Lcom/android/camera/SurfaceTextureRenderer;->access$102(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 87
    return-void
.end method
