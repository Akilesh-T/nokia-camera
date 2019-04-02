.class public Lcom/android/camera/pip/opengl/GLRenderer;
.super Ljava/lang/Object;
.source "GLRenderer.java"

# interfaces
.implements Lcom/android/camera/pip/opengl/gesture/AbstractGesture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;,
        Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field protected mActivity:Lcom/android/camera/CameraActivity;

.field private mIsRecording:Z

.field private mOrientation:I

.field private mPIPGestureManager:Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;

.field private mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

.field private mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

.field private mPreviewEglThread:Landroid/os/HandlerThread;

.field protected mSurfaceHeight:I

.field protected mSurfaceWidth:I

.field private mTopGraphicRect:[F

.field private mUse18x9Layout:Z

.field private mViewportHeight:I

.field private mViewportWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "GLRenderer"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;IILcom/android/camera/pip/opengl/GLRenderer$PIPMode;Z)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "pipMode"    # Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
    .param p5, "use18x9Layout"    # Z

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mIsRecording:Z

    .line 47
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), pipMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mActivity:Lcom/android/camera/CameraActivity;

    .line 49
    iput-object p4, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 50
    iput p2, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceWidth:I

    .line 51
    iput p3, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceHeight:I

    .line 52
    iput-boolean p5, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mUse18x9Layout:Z

    .line 53
    new-instance v0, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;

    invoke-direct {v0, p1}, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPGestureManager:Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;

    .line 54
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPGestureManager:Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->setRendererSize(II)V

    .line 55
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPGestureManager:Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->getVertexCoord()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mTopGraphicRect:[F

    .line 56
    iget v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceWidth:I

    iget v1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/pip/opengl/GLRenderer;->setViewport(II)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    if-nez v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/android/camera/pip/opengl/GLRenderer;->createPreviewGLThread()V

    .line 60
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/pip/opengl/GLRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/pip/opengl/GLRenderer;

    .prologue
    .line 19
    iget v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mViewportWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/pip/opengl/GLRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/pip/opengl/GLRenderer;

    .prologue
    .line 19
    iget v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mViewportHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/pip/opengl/GLRenderer;)Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/pip/opengl/GLRenderer;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/pip/opengl/GLRenderer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/pip/opengl/GLRenderer;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mUse18x9Layout:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/pip/opengl/GLRenderer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/pip/opengl/GLRenderer;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mIsRecording:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/pip/opengl/GLRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/pip/opengl/GLRenderer;

    .prologue
    .line 19
    iget v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mOrientation:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/pip/opengl/GLRenderer;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/pip/opengl/GLRenderer;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mTopGraphicRect:[F

    return-object v0
.end method

.method private createPreviewGLThread()V
    .locals 3

    .prologue
    .line 76
    sget-object v1, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "createPreviewGLThread()+"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Pip-PreviewGLThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglThread:Landroid/os/HandlerThread;

    .line 78
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 79
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 80
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 81
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "why looper is null?"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    new-instance v1, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;-><init>(Lcom/android/camera/pip/opengl/GLRenderer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    .line 84
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 85
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    invoke-direct {p0, v1}, Lcom/android/camera/pip/opengl/GLRenderer;->waitDone(Landroid/os/Handler;)Z

    .line 86
    sget-object v1, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "createPreviewGLThread()-"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private doReleaseAndQuitThread(Landroid/os/Handler;Landroid/os/HandlerThread;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "thread"    # Landroid/os/HandlerThread;

    .prologue
    .line 90
    sget-object v1, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "doReleaseAndQuitThread()+"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 92
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 93
    invoke-direct {p0, p1}, Lcom/android/camera/pip/opengl/GLRenderer;->waitDone(Landroid/os/Handler;)Z

    .line 94
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 95
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 98
    :cond_0
    sget-object v1, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "doReleaseAndQuitThread()-"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static isSubAndFullMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)Z
    .locals 1
    .param p0, "pipMode"    # Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .prologue
    .line 28
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_SUB_FRONT_FULL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private waitDone(Landroid/os/Handler;)Z
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 571
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 572
    .local v2, "waitDoneLock":Ljava/lang/Object;
    new-instance v1, Lcom/android/camera/pip/opengl/GLRenderer$1;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/pip/opengl/GLRenderer$1;-><init>(Lcom/android/camera/pip/opengl/GLRenderer;Ljava/lang/Object;)V

    .line 580
    .local v1, "unlockRunnable":Ljava/lang/Runnable;
    monitor-enter v2

    .line 581
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 588
    :try_start_2
    monitor-exit v2

    .line 589
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "ex":Ljava/lang/InterruptedException;
    sget-object v3, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "waitDone interrupted"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 586
    const/4 v3, 0x0

    monitor-exit v2

    goto :goto_0

    .line 588
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method


# virtual methods
.method public getMainInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->getMainInputSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public getMainInputSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->getMainInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0
.end method

.method public getRectPosition()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 63
    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPGestureManager:Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;

    invoke-virtual {v2}, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->getRectPosition()Landroid/graphics/RectF;

    move-result-object v0

    .line 64
    .local v0, "originalRectF":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 66
    .local v1, "transformedRectF":Landroid/graphics/RectF;
    return-object v1
.end method

.method public getSlaveInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->getSlaveInputSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public getSlaveInputSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->getSlaveInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceWidth:I

    return v0
.end method

.method public onDown(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 203
    sget-boolean v1, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP_GESTURE:Z

    if-eqz v1, :cond_0

    .line 204
    sget-object v1, Lcom/android/camera/util/PIPSTBUtil;->TAG_GESTURE:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPIPMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", onDown("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-static {v1}, Lcom/android/camera/pip/opengl/GLRenderer;->isSubAndFullMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPGestureManager:Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->onDown(FF)Z

    move-result v0

    .line 208
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPGestureManager:Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->getVertexCoord()[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mTopGraphicRect:[F

    goto :goto_0
.end method

.method public onLongPressed()Z
    .locals 3

    .prologue
    .line 236
    sget-boolean v0, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP_GESTURE:Z

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/android/camera/util/PIPSTBUtil;->TAG_GESTURE:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPIPMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", onLongPressed()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLRenderer;->isSubAndFullMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    const/4 v0, 0x0

    .line 240
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPGestureManager:Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->onLongPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onScroll(FF)Z
    .locals 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 214
    sget-boolean v1, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP_GESTURE:Z

    if-eqz v1, :cond_0

    .line 215
    sget-object v1, Lcom/android/camera/util/PIPSTBUtil;->TAG_GESTURE:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPIPMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", onScroll("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-static {v1}, Lcom/android/camera/pip/opengl/GLRenderer;->isSubAndFullMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 217
    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPGestureManager:Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->onScroll(FF)Z

    move-result v0

    .line 219
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPGestureManager:Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->getVertexCoord()[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mTopGraphicRect:[F

    goto :goto_0
.end method

.method public onUp()Z
    .locals 4

    .prologue
    .line 225
    sget-boolean v1, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP_GESTURE:Z

    if-eqz v1, :cond_0

    .line 226
    sget-object v1, Lcom/android/camera/util/PIPSTBUtil;->TAG_GESTURE:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPIPMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", onUp()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-static {v1}, Lcom/android/camera/pip/opengl/GLRenderer;->isSubAndFullMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 228
    const/4 v0, 0x0

    .line 231
    :goto_0
    return v0

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPGestureManager:Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->onUp()Z

    move-result v0

    .line 230
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPGestureManager:Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/gesture/PIPGestureManager;->getVertexCoord()[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mTopGraphicRect:[F

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 142
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "release()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglThread:Landroid/os/HandlerThread;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/pip/opengl/GLRenderer;->doReleaseAndQuitThread(Landroid/os/Handler;Landroid/os/HandlerThread;)V

    .line 145
    iput-object v3, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    .line 146
    iput-object v3, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglThread:Landroid/os/HandlerThread;

    .line 147
    iput v2, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceWidth:I

    .line 148
    iput v2, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceHeight:I

    .line 150
    :cond_0
    return-void
.end method

.method public releaseRecord()V
    .locals 2

    .prologue
    .line 193
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "releaseRecord()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 197
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    invoke-direct {p0, v0}, Lcom/android/camera/pip/opengl/GLRenderer;->waitDone(Landroid/os/Handler;)Z

    .line 199
    :cond_0
    return-void
.end method

.method public setDisplayMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)V
    .locals 3
    .param p1, "pipMode"    # Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .prologue
    .line 113
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 115
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 176
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PIP Record] setOrientation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    iput p1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mOrientation:I

    .line 178
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PIP Record] setOrientation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v3, 0x0

    .line 102
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewOutputSurface("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3, v3, p1}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 107
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    invoke-direct {p0, v0}, Lcom/android/camera/pip/opengl/GLRenderer;->waitDone(Landroid/os/Handler;)Z

    .line 109
    :cond_0
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewOutputSurface("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public setRecordSurface(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v3, 0x0

    .line 153
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordSurface("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3, v3, p1}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 158
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    invoke-direct {p0, v0}, Lcom/android/camera/pip/opengl/GLRenderer;->waitDone(Landroid/os/Handler;)Z

    .line 160
    :cond_0
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordSurface("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public setRecorder(Lcom/android/camera/pip/opengl/ScreenRecorder;)V
    .locals 4
    .param p1, "recorder"    # Lcom/android/camera/pip/opengl/ScreenRecorder;

    .prologue
    const/4 v3, 0x0

    .line 182
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecorder("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3, v3, p1}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 187
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mPreviewEglHandler:Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;

    invoke-direct {p0, v0}, Lcom/android/camera/pip/opengl/GLRenderer;->waitDone(Landroid/os/Handler;)Z

    .line 189
    :cond_0
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecorder("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public setViewport(II)V
    .locals 3
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I

    .prologue
    .line 70
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewport("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    iput p1, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mViewportWidth:I

    .line 72
    iput p2, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mViewportHeight:I

    .line 73
    return-void
.end method

.method public startPushVideoBuffer()V
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[PIP Record] startPushVideoBuffer()+"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mIsRecording:Z

    .line 166
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[PIP Record] startPushVideoBuffer()-"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public stopPushVideoBuffer()V
    .locals 2

    .prologue
    .line 170
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[PIP Record] stopPushVideoBuffer()+"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/pip/opengl/GLRenderer;->mIsRecording:Z

    .line 172
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[PIP Record] stopPushVideoBuffer()-"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    return-void
.end method
