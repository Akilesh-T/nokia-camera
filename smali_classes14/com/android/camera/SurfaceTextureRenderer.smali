.class public Lcom/android/camera/SurfaceTextureRenderer;
.super Ljava/lang/Object;
.source "SurfaceTextureRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SurfaceTextureRenderer$FrameDrawer;
    }
.end annotation


# static fields
.field private static final CONFIG_SPEC:[I

.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private volatile mDrawPending:Z

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private final mEglHandler:Landroid/os/Handler;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private final mFrameDrawer:Lcom/android/camera/SurfaceTextureRenderer$FrameDrawer;

.field private mGl:Ljavax/microedition/khronos/opengles/GL10;

.field private final mRenderLock:Ljava/lang/Object;

.field private final mRenderTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "SurfTexRenderer"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/SurfaceTextureRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 179
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/SurfaceTextureRenderer;->CONFIG_SPEC:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;Landroid/os/Handler;Lcom/android/camera/SurfaceTextureRenderer$FrameDrawer;)V
    .locals 1
    .param p1, "tex"    # Landroid/graphics/SurfaceTexture;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "renderer"    # Lcom/android/camera/SurfaceTextureRenderer$FrameDrawer;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mDrawPending:Z

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mRenderLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Lcom/android/camera/SurfaceTextureRenderer$1;

    invoke-direct {v0, p0}, Lcom/android/camera/SurfaceTextureRenderer$1;-><init>(Lcom/android/camera/SurfaceTextureRenderer;)V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mRenderTask:Ljava/lang/Runnable;

    .line 69
    iput-object p2, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglHandler:Landroid/os/Handler;

    .line 70
    iput-object p3, p0, Lcom/android/camera/SurfaceTextureRenderer;->mFrameDrawer:Lcom/android/camera/SurfaceTextureRenderer$FrameDrawer;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/camera/SurfaceTextureRenderer;->initialize(Landroid/graphics/SurfaceTexture;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/SurfaceTextureRenderer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mRenderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method static synthetic access$1000(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1
    .param p0, "x0"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/android/camera/SurfaceTextureRenderer;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLSurface;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/opengles/GL10;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/opengles/GL10;)Ljavax/microedition/khronos/opengles/GL10;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;
    .param p1, "x1"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/SurfaceTextureRenderer;)Lcom/android/camera/SurfaceTextureRenderer$FrameDrawer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mFrameDrawer:Lcom/android/camera/SurfaceTextureRenderer$FrameDrawer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGL10;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGL10;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/camera/SurfaceTextureRenderer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/camera/SurfaceTextureRenderer;->mDrawPending:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p1
.end method

.method static synthetic access$800()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/camera/SurfaceTextureRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/SurfaceTextureRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/camera/SurfaceTextureRenderer;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SurfaceTextureRenderer;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object p1
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 6
    .param p0, "prompt"    # Ljava/lang/String;
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;

    .prologue
    .line 173
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 174
    sget-object v1, Lcom/android/camera/SurfaceTextureRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method private static chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    const/4 v4, 0x0

    .line 191
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 192
    .local v5, "numConfig":[I
    sget-object v2, Lcom/android/camera/SurfaceTextureRenderer;->CONFIG_SPEC:[I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    aget v10, v5, v4

    .line 197
    .local v10, "numConfigs":I
    if-gtz v10, :cond_1

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_1
    new-array v9, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 202
    .local v9, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v8, Lcom/android/camera/SurfaceTextureRenderer;->CONFIG_SPEC:[I

    move-object v6, p0

    move-object v7, p1

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_2
    aget-object v0, v9, v4

    return-object v0
.end method

.method private initialize(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "target"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/SurfaceTextureRenderer$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/SurfaceTextureRenderer$3;-><init>(Lcom/android/camera/SurfaceTextureRenderer;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureRenderer;->waitDone()V

    .line 150
    return-void
.end method

.method private waitDone()V
    .locals 4

    .prologue
    .line 153
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 154
    .local v1, "lock":Ljava/lang/Object;
    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/SurfaceTextureRenderer$4;

    invoke-direct {v3, p0, v1}, Lcom/android/camera/SurfaceTextureRenderer$4;-><init>(Lcom/android/camera/SurfaceTextureRenderer;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 169
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "ex":Ljava/lang/InterruptedException;
    sget-object v2, Lcom/android/camera/SurfaceTextureRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "waitDone() interrupted"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public draw(Z)V
    .locals 4
    .param p1, "sync"    # Z

    .prologue
    .line 97
    iget-object v2, p0, Lcom/android/camera/SurfaceTextureRenderer;->mRenderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 98
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/SurfaceTextureRenderer;->mDrawPending:Z

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/SurfaceTextureRenderer;->mRenderTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/SurfaceTextureRenderer;->mDrawPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    if-eqz p1, :cond_0

    .line 103
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureRenderer;->mRenderLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 110
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "ex":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/android/camera/SurfaceTextureRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "RenderLock.wait() interrupted"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer;->mEglHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/SurfaceTextureRenderer$2;

    invoke-direct {v1, p0}, Lcom/android/camera/SurfaceTextureRenderer$2;-><init>(Lcom/android/camera/SurfaceTextureRenderer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method
