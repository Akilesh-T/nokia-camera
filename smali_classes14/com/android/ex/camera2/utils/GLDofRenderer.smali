.class public Lcom/android/ex/camera2/utils/GLDofRenderer;
.super Ljava/lang/Object;
.source "GLDofRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;
    }
.end annotation


# static fields
.field private static final MAX_BOKEH_RADIUS:F = 15.0f

.field private static final TAG:Ljava/lang/String; = "GLDofRenderer"

.field private static mInstance:Lcom/android/ex/camera2/utils/GLDofRenderer;


# instance fields
.field private isInitialized:Z

.field private mBokehType:Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

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

    sput-object v0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mInstance:Lcom/android/ex/camera2/utils/GLDofRenderer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;->PLANAR:Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

    iput-object v0, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mBokehType:Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->isInitialized:Z

    .line 31
    new-instance v0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

    invoke-direct {v0}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mGLES3DoF:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/android/ex/camera2/utils/GLDofRenderer;)Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/utils/GLDofRenderer;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mGLES3DoF:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

    return-object v0
.end method

.method public static getInstance()Lcom/android/ex/camera2/utils/GLDofRenderer;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mInstance:Lcom/android/ex/camera2/utils/GLDofRenderer;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/android/ex/camera2/utils/GLDofRenderer;

    invoke-direct {v0}, Lcom/android/ex/camera2/utils/GLDofRenderer;-><init>()V

    sput-object v0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mInstance:Lcom/android/ex/camera2/utils/GLDofRenderer;

    .line 92
    :cond_0
    sget-object v0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mInstance:Lcom/android/ex/camera2/utils/GLDofRenderer;

    return-object v0
.end method


# virtual methods
.method public getBokehType()Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mBokehType:Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

    return-object v0
.end method

.method public getResultBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "depth"    # Landroid/graphics/Bitmap;

    .prologue
    .line 52
    iget-boolean v5, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->isInitialized:Z

    if-nez v5, :cond_0

    .line 53
    const-string v5, "GLDofRenderer"

    const-string v6, "GLES3Dof module has not been successfully initialized yet!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v5, "GLDofRenderer"

    const-string v6, "Return null!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v4, 0x0

    .line 82
    :goto_0
    return-object v4

    .line 57
    :cond_0
    const/4 v4, 0x0

    .line 58
    .local v4, "result":Landroid/graphics/Bitmap;
    move-object v3, p1

    .line 59
    .local v3, "final_image":Landroid/graphics/Bitmap;
    move-object v2, p2

    .line 60
    .local v2, "final_depth":Landroid/graphics/Bitmap;
    new-instance v5, Ljava/util/concurrent/FutureTask;

    new-instance v6, Lcom/android/ex/camera2/utils/GLDofRenderer$1;

    invoke-direct {v6, p0, v3, v2}, Lcom/android/ex/camera2/utils/GLDofRenderer$1;-><init>(Lcom/android/ex/camera2/utils/GLDofRenderer;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-direct {v5, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v5, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mSavingTask:Ljava/util/concurrent/FutureTask;

    .line 74
    iget-object v5, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v6, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mSavingTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v5, v6}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 76
    :try_start_0
    iget-object v5, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mSavingTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v5}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 80
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 152
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 146
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v1, 0x1

    .line 116
    iget-object v0, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mGLES3DoF:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

    invoke-virtual {v0}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->init()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-string v0, "GLDofRenderer"

    const-string v1, "Fail to initialize GLES3Dof module!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    return-void

    .line 119
    :cond_0
    iput-boolean v1, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->isInitialized:Z

    .line 120
    iget-object v0, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mGLES3DoF:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->setPreviewType(I)V

    .line 121
    sget-object v0, Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;->BIOTAR:Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/utils/GLDofRenderer;->setBokehType(Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;)V

    .line 122
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/utils/GLDofRenderer;->setBokehLevel(F)V

    goto :goto_0
.end method

.method public setBokehLevel(F)V
    .locals 2
    .param p1, "level"    # F

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 132
    iget-object v0, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mGLES3DoF:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->setBokehRadius(F)V

    .line 133
    return-void
.end method

.method public setBokehType(Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;)V
    .locals 2
    .param p1, "type"    # Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mBokehType:Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;

    .line 97
    sget-object v0, Lcom/android/ex/camera2/utils/GLDofRenderer$2;->$SwitchMap$com$android$ex$camera2$utils$GLDofRenderer$BOKEH_TYPE:[I

    invoke-virtual {p1}, Lcom/android/ex/camera2/utils/GLDofRenderer$BOKEH_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mGLES3DoF:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->setBokehType(I)V

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mGLES3DoF:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->setBokehType(I)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 2
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 39
    iget-object v0, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 40
    iget-object v0, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 41
    iget-object v0, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 42
    iget-object v0, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 43
    return-void
.end method

.method public setTargetDepth(I)V
    .locals 2
    .param p1, "depth"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/ex/camera2/utils/GLDofRenderer;->mGLES3DoF:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->setTargetDepth(F)V

    .line 140
    return-void
.end method
