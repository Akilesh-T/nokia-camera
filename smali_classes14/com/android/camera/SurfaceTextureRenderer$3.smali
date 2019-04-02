.class Lcom/android/camera/SurfaceTextureRenderer$3;
.super Ljava/lang/Object;
.source "SurfaceTextureRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SurfaceTextureRenderer;->initialize(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SurfaceTextureRenderer;

.field final synthetic val$target:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lcom/android/camera/SurfaceTextureRenderer;Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    iput-object p2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->val$target:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 116
    iget-object v3, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v3, v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$502(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGL10;)Ljavax/microedition/khronos/egl/EGL10;

    .line 117
    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    iget-object v3, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v3}, Lcom/android/camera/SurfaceTextureRenderer;->access$500(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/SurfaceTextureRenderer;->access$102(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 118
    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$100(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_0

    .line 119
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglGetDisplay failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 122
    .local v1, "version":[I
    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$500(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v3}, Lcom/android/camera/SurfaceTextureRenderer;->access$100(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglInitialize failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_1
    invoke-static {}, Lcom/android/camera/SurfaceTextureRenderer;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EGL version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    const/4 v2, 0x3

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 128
    .local v0, "attribList":[I
    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    iget-object v3, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v3}, Lcom/android/camera/SurfaceTextureRenderer;->access$500(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v4}, Lcom/android/camera/SurfaceTextureRenderer;->access$100(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/SurfaceTextureRenderer;->access$1000(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/SurfaceTextureRenderer;->access$902(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    .line 129
    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    iget-object v3, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v3}, Lcom/android/camera/SurfaceTextureRenderer;->access$500(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    .line 130
    invoke-static {v4}, Lcom/android/camera/SurfaceTextureRenderer;->access$100(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v5}, Lcom/android/camera/SurfaceTextureRenderer;->access$900(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v5

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 129
    invoke-interface {v3, v4, v5, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/SurfaceTextureRenderer;->access$702(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 132
    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$700(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$700(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v3, :cond_3

    .line 133
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "failed to createContext"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_3
    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    iget-object v3, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v3}, Lcom/android/camera/SurfaceTextureRenderer;->access$500(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    .line 136
    invoke-static {v4}, Lcom/android/camera/SurfaceTextureRenderer;->access$100(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v5}, Lcom/android/camera/SurfaceTextureRenderer;->access$900(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->val$target:Landroid/graphics/SurfaceTexture;

    const/4 v7, 0x0

    .line 135
    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/SurfaceTextureRenderer;->access$202(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 137
    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$200(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$200(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_5

    .line 138
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "failed to createWindowSurface"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_5
    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$500(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    .line 142
    invoke-static {v3}, Lcom/android/camera/SurfaceTextureRenderer;->access$100(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v4}, Lcom/android/camera/SurfaceTextureRenderer;->access$200(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v5}, Lcom/android/camera/SurfaceTextureRenderer;->access$200(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v6}, Lcom/android/camera/SurfaceTextureRenderer;->access$700(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v6

    .line 141
    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 143
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "failed to eglMakeCurrent"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_6
    iget-object v3, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer$3;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    invoke-static {v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$700(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {v3, v2}, Lcom/android/camera/SurfaceTextureRenderer;->access$302(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/opengles/GL10;)Ljavax/microedition/khronos/opengles/GL10;

    .line 147
    return-void

    .line 127
    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method
