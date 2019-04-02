.class public Lcom/fih_foxconn/imagelab/GLDofRenderer;
.super Ljava/lang/Object;
.source "GLDofRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fih_foxconn/imagelab/GLDofRenderer$BOKEH_TYPE;
    }
.end annotation


# static fields
.field private static final MAX_BOKEH_RADIUS:F = 15.0f

.field private static final TAG:Ljava/lang/String; = "GLDofRenderer"

.field private static mInstance:Lcom/fih_foxconn/imagelab/GLDofRenderer;


# instance fields
.field private isInitialized:Z

.field private mBokehLevel:F

.field private mBokehType:Lcom/fih_foxconn/imagelab/GLDofRenderer$BOKEH_TYPE;

.field private mGLES3DoF:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field mSavingTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mInstance:Lcom/fih_foxconn/imagelab/GLDofRenderer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/fih_foxconn/imagelab/GLDofRenderer$BOKEH_TYPE;->PLANAR:Lcom/fih_foxconn/imagelab/GLDofRenderer$BOKEH_TYPE;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mBokehType:Lcom/fih_foxconn/imagelab/GLDofRenderer$BOKEH_TYPE;

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mBokehLevel:F

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->isInitialized:Z

    .line 32
    new-instance v0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

    invoke-direct {v0}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;-><init>()V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mGLES3DoF:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/fih_foxconn/imagelab/GLDofRenderer;)Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;
    .locals 1
    .param p0, "x0"    # Lcom/fih_foxconn/imagelab/GLDofRenderer;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mGLES3DoF:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

    return-object v0
.end method

.method public static getInstance()Lcom/fih_foxconn/imagelab/GLDofRenderer;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mInstance:Lcom/fih_foxconn/imagelab/GLDofRenderer;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/fih_foxconn/imagelab/GLDofRenderer;

    invoke-direct {v0}, Lcom/fih_foxconn/imagelab/GLDofRenderer;-><init>()V

    sput-object v0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mInstance:Lcom/fih_foxconn/imagelab/GLDofRenderer;

    .line 93
    :cond_0
    sget-object v0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mInstance:Lcom/fih_foxconn/imagelab/GLDofRenderer;

    return-object v0
.end method


# virtual methods
.method public getBokehType()Lcom/fih_foxconn/imagelab/GLDofRenderer$BOKEH_TYPE;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mBokehType:Lcom/fih_foxconn/imagelab/GLDofRenderer$BOKEH_TYPE;

    return-object v0
.end method

.method public getResultBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "depth"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    iget-boolean v5, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->isInitialized:Z

    if-nez v5, :cond_0

    .line 54
    const-string v5, "GLDofRenderer"

    const-string v6, "GLES3Dof module has not been successfully initialized yet!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v5, "GLDofRenderer"

    const-string v6, "Return null!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v4, 0x0

    .line 83
    :goto_0
    return-object v4

    .line 58
    :cond_0
    const/4 v4, 0x0

    .line 59
    .local v4, "result":Landroid/graphics/Bitmap;
    move-object v3, p1

    .line 60
    .local v3, "final_image":Landroid/graphics/Bitmap;
    move-object v2, p2

    .line 61
    .local v2, "final_depth":Landroid/graphics/Bitmap;
    new-instance v5, Ljava/util/concurrent/FutureTask;

    new-instance v6, Lcom/fih_foxconn/imagelab/GLDofRenderer$1;

    invoke-direct {v6, p0, v3, v2}, Lcom/fih_foxconn/imagelab/GLDofRenderer$1;-><init>(Lcom/fih_foxconn/imagelab/GLDofRenderer;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-direct {v5, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v5, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mSavingTask:Ljava/util/concurrent/FutureTask;

    .line 75
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v6, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mSavingTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v5, v6}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 77
    :try_start_0
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mSavingTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v5}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 81
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 146
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 140
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v1, 0x1

    .line 110
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mGLES3DoF:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

    invoke-virtual {v0}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->init()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const-string v0, "GLDofRenderer"

    const-string v1, "Fail to initialize GLES3Dof module!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    iput-boolean v1, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->isInitialized:Z

    .line 114
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mGLES3DoF:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->setPreviewType(I)V

    .line 115
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mBokehType:Lcom/fih_foxconn/imagelab/GLDofRenderer$BOKEH_TYPE;

    invoke-virtual {p0, v0}, Lcom/fih_foxconn/imagelab/GLDofRenderer;->setBokehType(Lcom/fih_foxconn/imagelab/GLDofRenderer$BOKEH_TYPE;)V

    .line 116
    iget v0, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mBokehLevel:F

    invoke-virtual {p0, v0}, Lcom/fih_foxconn/imagelab/GLDofRenderer;->setBokehLevel(F)V

    goto :goto_0
.end method

.method public setBokehLevel(F)V
    .locals 2
    .param p1, "level"    # F

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 126
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mGLES3DoF:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->setBokehRadius(F)V

    .line 127
    return-void
.end method

.method public setBokehType(Lcom/fih_foxconn/imagelab/GLDofRenderer$BOKEH_TYPE;)V
    .locals 2
    .param p1, "type"    # Lcom/fih_foxconn/imagelab/GLDofRenderer$BOKEH_TYPE;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mBokehType:Lcom/fih_foxconn/imagelab/GLDofRenderer$BOKEH_TYPE;

    .line 98
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mGLES3DoF:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

    invoke-virtual {p1}, Lcom/fih_foxconn/imagelab/GLDofRenderer$BOKEH_TYPE;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->setBokehType(I)V

    .line 99
    return-void
.end method

.method public setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 2
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 40
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 41
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 42
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 43
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 44
    return-void
.end method

.method public setTargetDepth(I)V
    .locals 2
    .param p1, "depth"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/GLDofRenderer;->mGLES3DoF:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->setTargetDepth(F)V

    .line 134
    return-void
.end method
