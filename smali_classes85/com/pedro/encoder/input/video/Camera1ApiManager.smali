.class public Lcom/pedro/encoder/input/video/Camera1ApiManager;
.super Ljava/lang/Object;
.source "Camera1ApiManager.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private TAG:Ljava/lang/String;

.field private camera:Landroid/hardware/Camera;

.field private cameraSelect:I

.field private fps:I

.field private getCameraData:Lcom/pedro/encoder/input/video/GetCameraData;

.field private handlerThread:Landroid/os/HandlerThread;

.field private height:I

.field private imageFormat:I

.field private isFrontCamera:Z

.field private lanternEnable:Z

.field private orientation:I

.field private volatile prepared:Z

.field private previewSizeBack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private previewSizeFront:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private running:Z

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private surfaceView:Landroid/view/SurfaceView;

.field private textureView:Landroid/view/TextureView;

.field private thread:Landroid/os/Handler;

.field private width:I

.field private yuvBuffer:[B


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;Landroid/content/Context;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "Camera1ApiManager"

    iput-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    .line 44
    iput-boolean v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->running:Z

    .line 45
    iput-boolean v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->prepared:Z

    .line 46
    iput-boolean v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->lanternEnable:Z

    .line 48
    iput-boolean v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->isFrontCamera:Z

    .line 51
    const/16 v0, 0x280

    iput v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->width:I

    .line 52
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->height:I

    .line 53
    const/16 v0, 0x1e

    iput v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->fps:I

    .line 54
    iput v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->orientation:I

    .line 55
    const/16 v0, 0x11

    iput v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->imageFormat:I

    .line 75
    iput-object p1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 76
    invoke-direct {p0, p2}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;Lcom/pedro/encoder/input/video/GetCameraData;)V
    .locals 2
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;
    .param p2, "getCameraData"    # Lcom/pedro/encoder/input/video/GetCameraData;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "Camera1ApiManager"

    iput-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    .line 44
    iput-boolean v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->running:Z

    .line 45
    iput-boolean v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->prepared:Z

    .line 46
    iput-boolean v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->lanternEnable:Z

    .line 48
    iput-boolean v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->isFrontCamera:Z

    .line 51
    const/16 v0, 0x280

    iput v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->width:I

    .line 52
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->height:I

    .line 53
    const/16 v0, 0x1e

    iput v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->fps:I

    .line 54
    iput v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->orientation:I

    .line 55
    const/16 v0, 0x11

    iput v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->imageFormat:I

    .line 63
    iput-object p1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->surfaceView:Landroid/view/SurfaceView;

    .line 64
    iput-object p2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->getCameraData:Lcom/pedro/encoder/input/video/GetCameraData;

    .line 65
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->init(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/view/TextureView;Lcom/pedro/encoder/input/video/GetCameraData;)V
    .locals 2
    .param p1, "textureView"    # Landroid/view/TextureView;
    .param p2, "getCameraData"    # Lcom/pedro/encoder/input/video/GetCameraData;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "Camera1ApiManager"

    iput-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    .line 44
    iput-boolean v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->running:Z

    .line 45
    iput-boolean v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->prepared:Z

    .line 46
    iput-boolean v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->lanternEnable:Z

    .line 48
    iput-boolean v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->isFrontCamera:Z

    .line 51
    const/16 v0, 0x280

    iput v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->width:I

    .line 52
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->height:I

    .line 53
    const/16 v0, 0x1e

    iput v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->fps:I

    .line 54
    iput v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->orientation:I

    .line 55
    const/16 v0, 0x11

    iput v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->imageFormat:I

    .line 69
    iput-object p1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->textureView:Landroid/view/TextureView;

    .line 70
    iput-object p2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->getCameraData:Lcom/pedro/encoder/input/video/GetCameraData;

    .line 71
    invoke-virtual {p1}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/pedro/encoder/input/video/Camera1ApiManager;)[B
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera1ApiManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->yuvBuffer:[B

    return-object v0
.end method

.method static synthetic access$002(Lcom/pedro/encoder/input/video/Camera1ApiManager;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera1ApiManager;
    .param p1, "x1"    # [B

    .prologue
    .line 36
    iput-object p1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->yuvBuffer:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/pedro/encoder/input/video/Camera1ApiManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera1ApiManager;

    .prologue
    .line 36
    iget v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->width:I

    return v0
.end method

.method static synthetic access$1000(Lcom/pedro/encoder/input/video/Camera1ApiManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera1ApiManager;

    .prologue
    .line 36
    iget v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->orientation:I

    return v0
.end method

.method static synthetic access$1100(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera1ApiManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->surfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera1ApiManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->textureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera1ApiManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/pedro/encoder/input/video/Camera1ApiManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera1ApiManager;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->running:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera1ApiManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pedro/encoder/input/video/Camera1ApiManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera1ApiManager;

    .prologue
    .line 36
    iget v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->height:I

    return v0
.end method

.method static synthetic access$300(Lcom/pedro/encoder/input/video/Camera1ApiManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera1ApiManager;

    .prologue
    .line 36
    iget v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->imageFormat:I

    return v0
.end method

.method static synthetic access$400(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera1ApiManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$402(Lcom/pedro/encoder/input/video/Camera1ApiManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera1ApiManager;
    .param p1, "x1"    # Landroid/hardware/Camera;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$500(Lcom/pedro/encoder/input/video/Camera1ApiManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera1ApiManager;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->prepared:Z

    return v0
.end method

.method static synthetic access$600(Lcom/pedro/encoder/input/video/Camera1ApiManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera1ApiManager;

    .prologue
    .line 36
    iget v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->cameraSelect:I

    return v0
.end method

.method static synthetic access$702(Lcom/pedro/encoder/input/video/Camera1ApiManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera1ApiManager;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->isFrontCamera:Z

    return p1
.end method

.method static synthetic access$800(Lcom/pedro/encoder/input/video/Camera1ApiManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera1ApiManager;

    .prologue
    .line 36
    iget v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->fps:I

    return v0
.end method

.method static synthetic access$900(Lcom/pedro/encoder/input/video/Camera1ApiManager;ILjava/util/List;)[I
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera1ApiManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->adaptFpsRange(ILjava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method private adaptFpsRange(ILjava/util/List;)[I
    .locals 9
    .param p1, "expectedFps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<[I>;)[I"
        }
    .end annotation

    .prologue
    .local p2, "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 287
    mul-int/lit16 p1, p1, 0x3e8

    .line 288
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 289
    .local v0, "closestRange":[I
    aget v4, v0, v7

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    aget v5, v0, v8

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int v2, v4, v5

    .line 290
    .local v2, "measure":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 291
    .local v3, "range":[I
    aget v5, v3, v7

    if-gt v5, p1, :cond_0

    aget v5, v3, v8

    if-lt v5, p1, :cond_0

    .line 292
    aget v5, v3, v7

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    aget v6, v3, v8

    sub-int/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int v1, v5, v6

    .line 293
    .local v1, "curMeasure":I
    if-ge v1, v2, :cond_0

    .line 294
    move-object v0, v3

    .line 295
    move v2, v1

    goto :goto_0

    .line 299
    .end local v1    # "curMeasure":I
    .end local v3    # "range":[I
    :cond_1
    return-object v0
.end method

.method private checkCanOpen()Z
    .locals 5

    .prologue
    .line 419
    iget v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->cameraSelect:I

    invoke-direct {p0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->selectCameraBack()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 420
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->previewSizeBack:Ljava/util/List;

    .line 424
    .local v0, "previews":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 425
    .local v1, "size":Landroid/hardware/Camera$Size;
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->width:I

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->height:I

    if-ne v3, v4, :cond_0

    .line 426
    const/4 v2, 0x1

    .line 429
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    :goto_1
    return v2

    .line 422
    .end local v0    # "previews":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_1
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->previewSizeFront:Ljava/util/List;

    .restart local v0    # "previews":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    goto :goto_0

    .line 429
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private clearSurface(Ljava/lang/Object;)V
    .locals 13
    .param p1, "texture"    # Ljava/lang/Object;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 247
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 248
    .local v0, "egl":Ljavax/microedition/khronos/egl/EGL10;
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 249
    .local v1, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 251
    const/16 v4, 0xd

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    .line 257
    .local v2, "attribList":[I
    new-array v3, v11, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 258
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v5, v11, [I

    .line 259
    .local v5, "numConfigs":[I
    array-length v4, v3

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 260
    aget-object v6, v3, v12

    .line 261
    .local v6, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_1

    invoke-interface {v0, v1, v6, v4, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v7

    .line 264
    .local v7, "context":Ljavax/microedition/khronos/egl/EGLContext;
    new-array v4, v11, [I

    const/16 v9, 0x3038

    aput v9, v4, v12

    invoke-interface {v0, v1, v6, p1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v8

    .line 268
    .local v8, "eglSurface":Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-interface {v0, v1, v8, v8, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 269
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v10, v10, v10, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 270
    const/16 v4, 0x4000

    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 271
    invoke-interface {v0, v1, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 272
    invoke-interface {v0, v1, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 273
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v10, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v4, v9, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 274
    invoke-interface {v0, v1, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 275
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 276
    return-void

    .line 251
    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
        0x0
        0x3038
    .end array-data

    .line 261
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private getMaxEncoderSizeSupported()Landroid/hardware/Camera$Size;
    .locals 4

    .prologue
    .line 374
    const/16 v0, 0x8

    invoke-static {v0}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Landroid/hardware/Camera$Size;

    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xf00

    const/16 v3, 0x870

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    .line 381
    :goto_0
    return-object v0

    .line 376
    :cond_0
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    new-instance v0, Landroid/hardware/Camera$Size;

    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x780

    const/16 v3, 0x438

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    goto :goto_0

    .line 378
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    new-instance v0, Landroid/hardware/Camera$Size;

    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    goto :goto_0

    .line 381
    :cond_2
    new-instance v0, Landroid/hardware/Camera$Size;

    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x280

    const/16 v3, 0x1e0

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    goto :goto_0
.end method

.method private getPreviewSize()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v4, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    if-eqz v4, :cond_2

    .line 341
    invoke-direct {p0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->getMaxEncoderSizeSupported()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 342
    .local v1, "maxSize":Landroid/hardware/Camera$Size;
    iget-object v4, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 351
    .local v2, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 352
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 353
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 354
    .local v3, "size":Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    if-gt v4, v5, :cond_1

    iget v4, v3, Landroid/hardware/Camera$Size;->height:I

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    if-le v4, v5, :cond_0

    .line 355
    :cond_1
    iget-object v4, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", not supported for encoder"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 344
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    .end local v1    # "maxSize":Landroid/hardware/Camera$Size;
    .end local v2    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v3    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    iget v4, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->cameraSelect:I

    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    .line 345
    invoke-direct {p0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->getMaxEncoderSizeSupported()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 346
    .restart local v1    # "maxSize":Landroid/hardware/Camera$Size;
    iget-object v4, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 347
    .restart local v2    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v4, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->release()V

    .line 348
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    goto :goto_0

    .line 359
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_3
    return-object v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 81
    const/16 v0, 0x5a

    iput v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->orientation:I

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->selectCameraFront()I

    move-result v0

    iput v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->cameraSelect:I

    .line 84
    invoke-direct {p0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->getPreviewSize()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->previewSizeFront:Ljava/util/List;

    .line 85
    invoke-direct {p0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->selectCameraBack()I

    move-result v0

    iput v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->cameraSelect:I

    .line 86
    invoke-direct {p0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->getPreviewSize()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->previewSizeBack:Ljava/util/List;

    .line 87
    return-void
.end method

.method private selectCameraBack()I
    .locals 4

    .prologue
    .line 189
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 190
    .local v2, "number":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 191
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 192
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 193
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 199
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    :goto_1
    return v0

    .line 196
    .restart local v0    # "i":I
    .restart local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_0
    iput v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->cameraSelect:I

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_1
    iget v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->cameraSelect:I

    goto :goto_1
.end method

.method private selectCameraFront()I
    .locals 5

    .prologue
    .line 203
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 204
    .local v2, "number":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 205
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 206
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 207
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 213
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    :goto_1
    return v0

    .line 210
    .restart local v0    # "i":I
    .restart local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_0
    iput v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->cameraSelect:I

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .end local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_1
    iget v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->cameraSelect:I

    goto :goto_1
.end method


# virtual methods
.method public disableLantern()V
    .locals 2

    .prologue
    .line 459
    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 461
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 463
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->lanternEnable:Z

    .line 465
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    return-void
.end method

.method public enableLantern()V
    .locals 4

    .prologue
    .line 440
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 441
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 442
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 443
    .local v1, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 444
    const-string v2, "torch"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    const-string v2, "torch"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 446
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 447
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->lanternEnable:Z

    .line 453
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v1    # "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 449
    .restart local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v1    # "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->TAG:Ljava/lang/String;

    const-string v3, "Lantern unsupported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCameraPreviewImageFormatSupported()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v0

    .line 325
    .local v0, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 326
    .local v1, "i":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "camera format supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    .end local v0    # "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "i":Ljava/lang/Integer;
    :cond_0
    iget v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->cameraSelect:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    .line 330
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v0

    .line 331
    .restart local v0    # "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 332
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    .line 334
    :cond_1
    return-object v0
.end method

.method public getPreviewSizeBack()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->previewSizeBack:Ljava/util/List;

    return-object v0
.end method

.method public getPreviewSizeFront()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->previewSizeFront:Ljava/util/List;

    return-object v0
.end method

.method public isLanternEnable()Z
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->lanternEnable:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->prepared:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->running:Z

    return v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 305
    iget v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->imageFormat:I

    const v1, 0x32315659

    if-ne v0, v1, :cond_0

    .line 306
    iget v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->width:I

    iget v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->height:I

    invoke-static {p1, v0, v1}, Lcom/pedro/encoder/utils/YUVUtil;->YV12toNV21([BII)[B

    move-result-object p1

    .line 309
    :cond_0
    iget-boolean v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->isFrontCamera:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->orientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->orientation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    .line 310
    :cond_1
    iget v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->width:I

    iget v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->height:I

    const/16 v2, 0xb4

    invoke-static {p1, v0, v1, v2}, Lcom/pedro/encoder/utils/YUVUtil;->rotateNV21([BIII)[B

    move-result-object p1

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->getCameraData:Lcom/pedro/encoder/input/video/GetCameraData;

    invoke-interface {v0, p1}, Lcom/pedro/encoder/input/video/GetCameraData;->inputYUVData([B)V

    .line 313
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->yuvBuffer:[B

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 314
    return-void
.end method

.method public prepareCamera()V
    .locals 4

    .prologue
    .line 98
    const/16 v0, 0x280

    const/16 v1, 0x1e0

    iget v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->fps:I

    iget v3, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->imageFormat:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->prepareCamera(IIII)V

    .line 99
    return-void
.end method

.method public prepareCamera(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fps"    # I
    .param p4, "imageFormat"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->width:I

    .line 91
    iput p2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->height:I

    .line 92
    iput p3, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->fps:I

    .line 93
    iput p4, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->imageFormat:I

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->prepared:Z

    .line 95
    return-void
.end method

.method public setEffect(Lcom/pedro/encoder/input/video/EffectManager;)V
    .locals 4
    .param p1, "effect"    # Lcom/pedro/encoder/input/video/EffectManager;

    .prologue
    .line 386
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 388
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {p1}, Lcom/pedro/encoder/input/video/EffectManager;->getEffect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 390
    :try_start_0
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_0
    return-void

    .line 391
    .restart local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->TAG:Ljava/lang/String;

    const-string v3, "Unsupported effect: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPreviewOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->orientation:I

    .line 181
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->running:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 183
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 184
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 186
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->checkCanOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/pedro/encoder/input/video/CameraOpenException;

    const-string v1, "This camera resolution cant be opened"

    invoke-direct {v0, v1}, Lcom/pedro/encoder/input/video/CameraOpenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cameraThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->handlerThread:Landroid/os/HandlerThread;

    .line 118
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 119
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->thread:Landroid/os/Handler;

    .line 120
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->thread:Landroid/os/Handler;

    new-instance v1, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;

    invoke-direct {v1, p0}, Lcom/pedro/encoder/input/video/Camera1ApiManager$1;-><init>(Lcom/pedro/encoder/input/video/Camera1ApiManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method

.method public start(I)V
    .locals 2
    .param p1, "cameraFacing"    # I
        .annotation build Lcom/pedro/encoder/input/video/Camera1Facing;
        .end annotation
    .end param

    .prologue
    .line 110
    iget v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->width:I

    iget v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->height:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->start(III)V

    .line 111
    return-void
.end method

.method public start(III)V
    .locals 1
    .param p1, "cameraFacing"    # I
        .annotation build Lcom/pedro/encoder/input/video/Camera1Facing;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 102
    iput p2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->width:I

    .line 103
    iput p3, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->height:I

    .line 104
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->selectCameraBack()I

    move-result v0

    .line 105
    :goto_0
    iput v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->cameraSelect:I

    .line 106
    invoke-virtual {p0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->start()V

    .line 107
    return-void

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->selectCameraFront()I

    move-result v0

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 219
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 220
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 221
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 222
    iput-object v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    .line 223
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->clearSurface(Ljava/lang/Object;)V

    .line 231
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 233
    iput-object v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->handlerThread:Landroid/os/HandlerThread;

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->thread:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->thread:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 237
    iput-object v1, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->thread:Landroid/os/Handler;

    .line 239
    :cond_2
    iput-boolean v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->running:Z

    .line 240
    iput-boolean v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->prepared:Z

    .line 241
    return-void

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->clearSurface(Ljava/lang/Object;)V

    goto :goto_0

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->clearSurface(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public switchCamera()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pedro/encoder/input/video/CameraOpenException;
        }
    .end annotation

    .prologue
    .line 398
    iget-object v3, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->camera:Landroid/hardware/Camera;

    if-eqz v3, :cond_1

    .line 399
    iget v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->cameraSelect:I

    .line 400
    .local v2, "oldCamera":I
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .line 401
    .local v1, "number":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 402
    iget v3, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->cameraSelect:I

    if-eq v3, v0, :cond_2

    .line 403
    iput v0, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->cameraSelect:I

    .line 404
    invoke-direct {p0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->checkCanOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 405
    iput v2, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->cameraSelect:I

    .line 406
    new-instance v3, Lcom/pedro/encoder/input/video/CameraOpenException;

    const-string v4, "This camera resolution cant be opened"

    invoke-direct {v3, v4}, Lcom/pedro/encoder/input/video/CameraOpenException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->stop()V

    .line 409
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/pedro/encoder/input/video/Camera1ApiManager;->prepared:Z

    .line 410
    invoke-virtual {p0}, Lcom/pedro/encoder/input/video/Camera1ApiManager;->start()V

    .line 415
    .end local v0    # "i":I
    .end local v1    # "number":I
    .end local v2    # "oldCamera":I
    :cond_1
    return-void

    .line 401
    .restart local v0    # "i":I
    .restart local v1    # "number":I
    .restart local v2    # "oldCamera":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
