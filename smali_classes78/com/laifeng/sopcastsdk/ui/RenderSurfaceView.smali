.class public Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "RenderSurfaceView.java"


# instance fields
.field private mRenderer:Lcom/laifeng/sopcastsdk/video/MyRenderer;

.field private mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView$1;-><init>(Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 30
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView$1;-><init>(Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 35
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->init()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;)Lcom/laifeng/sopcastsdk/video/MyRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->mRenderer:Lcom/laifeng/sopcastsdk/video/MyRenderer;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 39
    new-instance v1, Lcom/laifeng/sopcastsdk/video/MyRenderer;

    invoke-direct {v1, p0}, Lcom/laifeng/sopcastsdk/video/MyRenderer;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->mRenderer:Lcom/laifeng/sopcastsdk/video/MyRenderer;

    .line 40
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->setEGLContextClientVersion(I)V

    .line 41
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->mRenderer:Lcom/laifeng/sopcastsdk/video/MyRenderer;

    invoke-virtual {p0, v1}, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 42
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->setRenderMode(I)V

    .line 43
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 44
    .local v0, "surfaceHolder":Landroid/view/SurfaceHolder;
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 45
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getRenderer()Lcom/laifeng/sopcastsdk/video/MyRenderer;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->mRenderer:Lcom/laifeng/sopcastsdk/video/MyRenderer;

    return-object v0
.end method

.method public setEffect(Lcom/laifeng/sopcastsdk/video/effect/Effect;)V
    .locals 1
    .param p1, "effect"    # Lcom/laifeng/sopcastsdk/video/effect/Effect;

    .prologue
    .line 73
    new-instance v0, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView$2;

    invoke-direct {v0, p0, p1}, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView$2;-><init>(Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;Lcom/laifeng/sopcastsdk/video/effect/Effect;)V

    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/ui/RenderSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method
