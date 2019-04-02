.class Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;
.super Landroid/os/Handler;
.source "GLRenderer.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/pip/opengl/GLRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewRendererHandler"
.end annotation


# static fields
.field public static final MSG_DISABLE_STICKER:I = 0xc

.field public static final MSG_DUAL_SIGHT_MDOE_CHANGED:I = 0x13

.field public static final MSG_INIT:I = 0x1

.field public static final MSG_LINE_WINDOW_DRAG_END:I = 0x12

.field public static final MSG_LINE_WINDOW_DRAG_START:I = 0x10

.field public static final MSG_LINE_WINDOW_POS_OFFSET:I = 0x11

.field public static final MSG_RELEASE:I = 0x7

.field public static final MSG_RELEASE_RECORD_SURFACE:I = 0x5

.field public static final MSG_SET_LIVE_BROADCAST:I = 0x6

.field public static final MSG_SET_OUTPUT_SURFACE:I = 0x2

.field public static final MSG_SET_RECORD_SURFACE:I = 0x4

.field public static final MSG_SUB_WINDOW_DRAG_END:I = 0xd

.field public static final MSG_SUB_WINDOW_DRAG_START:I = 0xe

.field public static final MSG_SUB_WINDOW_POS_OFFSET:I = 0xf

.field public static final MSG_UPDATE_ENGINE_CAMERA_INFO:I = 0x8

.field public static final MSG_UPDATE_ENGINE_STYLE_INFO:I = 0x9

.field public static final MSG_UPDATE_PREVIEW:I = 0x3

.field public static final MSG_UPDATE_PREVIEW_STICKER:I = 0xa

.field public static final MSG_UPDATE_PREVIEW_STICKER_LAST_FRAME:I = 0xb

.field private static final UNVALID_TEXTURE_ID:I = -0x3039


# instance fields
.field private final TAG:Lcom/android/camera/debug/Log$Tag;

.field private mEffectRenderer:Lcom/android/camera/pip/opengl/EffectRenderer;

.field private mEglCore:Lcom/android/camera/pip/opengl/EglCore;

.field private final mFrameListener:Landroid/os/HandlerThread;

.field private mGLBottomRenderer:Lcom/android/camera/pip/opengl/GLBottomRenderer;

.field private mGLNormalRenderer:Lcom/android/camera/pip/opengl/GLNormalRenderer;

.field private mGLTopRenderer:Lcom/android/camera/pip/opengl/GLTopRenderer;

.field private mIsStartRecordingLog:Z

.field private mLineRenderer:Lcom/android/camera/pip/opengl/LineRenderer;

.field private mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

.field private mPreviewFboTexId:I

.field private mPreviewFrameBuffer:Lcom/android/camera/pip/opengl/FrameBuffer;

.field private mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

.field private mScreenRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

.field private mScreenRenderer:Lcom/android/camera/pip/opengl/ScreenRenderer;

.field private mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureHandler:Landroid/os/Handler;

.field private mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

.field final synthetic this$0:Lcom/android/camera/pip/opengl/GLRenderer;


# direct methods
.method public constructor <init>(Lcom/android/camera/pip/opengl/GLRenderer;Landroid/os/Looper;)V
    .locals 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 292
    iput-object p1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    .line 293
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 245
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "GLRenderer.Handler"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 246
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PIP-STFrameListener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mFrameListener:Landroid/os/HandlerThread;

    .line 278
    const/16 v0, -0x3039

    iput v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mPreviewFboTexId:I

    .line 290
    iput-boolean v2, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mIsStartRecordingLog:Z

    .line 294
    iput-boolean v2, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mIsStartRecordingLog:Z

    .line 295
    return-void
.end method

.method private doLiveBroadcast()V
    .locals 14

    .prologue
    const/4 v0, 0x0

    .line 443
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mScreenRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    if-eqz v1, :cond_2

    .line 444
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mScreenRenderer:Lcom/android/camera/pip/opengl/ScreenRenderer;

    iget v2, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mPreviewFboTexId:I

    iget-object v3, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-static {v3}, Lcom/android/camera/pip/opengl/GLRenderer;->access$500(Lcom/android/camera/pip/opengl/GLRenderer;)I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/pip/opengl/GLUtil;->getRotateMtx(I)[F

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/pip/opengl/ScreenRenderer;->draw(I[F)V

    .line 445
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mScreenRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/ScreenRecorder;->firstTimeSetup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mScreenRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/ScreenRecorder;->startSwapData()V

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mScreenRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v1, v2}, Lcom/android/camera/pip/opengl/ScreenRecorder;->makeCurrentReadFrom(Lcom/android/camera/pip/opengl/EglSurfaceBase;)V

    .line 449
    const-string v1, "before glBlitFramebuffer"

    invoke-static {v1}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 451
    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/WindowSurface;->getWidth()I

    move-result v2

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/WindowSurface;->getHeight()I

    move-result v3

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mScreenRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    .line 452
    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/ScreenRecorder;->getWidth()I

    move-result v6

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mScreenRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/ScreenRecorder;->getHeight()I

    move-result v7

    const/16 v8, 0x4000

    const/16 v9, 0x2600

    move v1, v0

    move v4, v0

    move v5, v0

    .line 450
    invoke-static/range {v0 .. v9}, Landroid/opengl/GLES30;->glBlitFramebuffer(IIIIIIIIII)V

    .line 457
    invoke-static {}, Landroid/opengl/GLES30;->glGetError()I

    move-result v10

    .local v10, "err":I
    if-eqz v10, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: glBlitFramebuffer failed: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v12

    .line 462
    .local v12, "lLastTime":J
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mScreenRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/pip/opengl/ScreenRecorder;->setPresentationTime(J)V

    .line 463
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mScreenRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/ScreenRecorder;->swapBuffers()V

    .line 464
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 465
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mScreenRenderer:Lcom/android/camera/pip/opengl/ScreenRenderer;

    iget v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mPreviewFboTexId:I

    invoke-static {}, Lcom/android/camera/pip/opengl/GLUtil;->createIdentityMtx()[F

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/pip/opengl/ScreenRenderer;->draw(I[F)V

    .line 467
    .end local v10    # "err":I
    .end local v12    # "lLastTime":J
    :cond_2
    return-void
.end method

.method private doRecordVideo()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 407
    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-static {v5}, Lcom/android/camera/pip/opengl/GLRenderer;->access$400(Lcom/android/camera/pip/opengl/GLRenderer;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 408
    iget-boolean v5, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mIsStartRecordingLog:Z

    if-nez v5, :cond_0

    .line 409
    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "start [PIP Record] doRecordVideo()"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 410
    iput-boolean v3, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mIsStartRecordingLog:Z

    .line 412
    :cond_0
    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v5}, Lcom/android/camera/pip/opengl/WindowSurface;->swapBuffers()Z

    move-result v2

    .line 415
    .local v2, "swapResult":Z
    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v5}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 416
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v7, v7, v7, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 417
    const/16 v5, 0x4000

    invoke-static {v5}, Landroid/opengl/GLES20;->glClear(I)V

    .line 418
    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v5}, Lcom/android/camera/pip/opengl/WindowSurface;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v6}, Lcom/android/camera/pip/opengl/WindowSurface;->getHeight()I

    move-result v6

    invoke-static {v4, v4, v5, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 419
    invoke-virtual {p0, v4}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->draw(Z)V

    .line 422
    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v5}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    .line 423
    .local v0, "lLastTime":J
    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v5, v0, v1}, Lcom/android/camera/pip/opengl/WindowSurface;->setPresentationTime(J)V

    .line 424
    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v5}, Lcom/android/camera/pip/opengl/WindowSurface;->swapBuffers()Z

    .line 427
    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v5}, Lcom/android/camera/pip/opengl/WindowSurface;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v6}, Lcom/android/camera/pip/opengl/WindowSurface;->getHeight()I

    move-result v6

    invoke-static {v4, v4, v5, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 428
    iget-object v4, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v4}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 429
    if-nez v2, :cond_1

    .line 430
    iget-object v4, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "[PIP Record] swap result failed in recording!"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 439
    .end local v0    # "lLastTime":J
    .end local v2    # "swapResult":Z
    :cond_1
    :goto_0
    return v3

    .line 435
    :cond_2
    iget-boolean v3, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mIsStartRecordingLog:Z

    if-eqz v3, :cond_3

    .line 436
    iget-object v3, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "end [PIP Record] doRecordVideo()"

    invoke-static {v3, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 437
    iput-boolean v4, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mIsStartRecordingLog:Z

    :cond_3
    move v3, v4

    .line 439
    goto :goto_0
.end method


# virtual methods
.method public doRelease()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "doRelease()+"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSurfaceTextureHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSurfaceTextureHandler:Landroid/os/Handler;

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->release()V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    if-eqz v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->release()V

    .line 508
    :cond_2
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLNormalRenderer:Lcom/android/camera/pip/opengl/GLNormalRenderer;

    if-eqz v0, :cond_3

    .line 509
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLNormalRenderer:Lcom/android/camera/pip/opengl/GLNormalRenderer;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/GLNormalRenderer;->release()V

    .line 510
    :cond_3
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLTopRenderer:Lcom/android/camera/pip/opengl/GLTopRenderer;

    if-eqz v0, :cond_4

    .line 511
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLTopRenderer:Lcom/android/camera/pip/opengl/GLTopRenderer;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/GLTopRenderer;->release()V

    .line 512
    :cond_4
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLBottomRenderer:Lcom/android/camera/pip/opengl/GLBottomRenderer;

    if-eqz v0, :cond_5

    .line 513
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLBottomRenderer:Lcom/android/camera/pip/opengl/GLBottomRenderer;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/GLBottomRenderer;->release()V

    .line 514
    :cond_5
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mScreenRenderer:Lcom/android/camera/pip/opengl/ScreenRenderer;

    if-eqz v0, :cond_6

    .line 515
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mScreenRenderer:Lcom/android/camera/pip/opengl/ScreenRenderer;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/ScreenRenderer;->release()V

    .line 516
    :cond_6
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mPreviewFrameBuffer:Lcom/android/camera/pip/opengl/FrameBuffer;

    if-eqz v0, :cond_7

    .line 517
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mPreviewFrameBuffer:Lcom/android/camera/pip/opengl/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/FrameBuffer;->release()V

    .line 518
    :cond_7
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v0, :cond_8

    .line 519
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->release()V

    .line 520
    :cond_8
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    if-eqz v0, :cond_9

    .line 521
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/EglCore;->release()V

    .line 522
    :cond_9
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "doRelease()-"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method public doReleaseRecordSurface()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "doReleaseRecordSurface()+"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->release()V

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "doReleaseRecordSurface()-"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public doSetLiveBroadcast(Lcom/android/camera/pip/opengl/ScreenRecorder;)V
    .locals 1
    .param p1, "screenRecorder"    # Lcom/android/camera/pip/opengl/ScreenRecorder;

    .prologue
    .line 480
    if-eqz p1, :cond_0

    .line 481
    iput-object p1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mScreenRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    .line 485
    :goto_0
    return-void

    .line 483
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mScreenRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    goto :goto_0
.end method

.method public doSetOutputSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetOutputSurface("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 344
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSurfaceTextureHandler:Landroid/os/Handler;

    .line 347
    :cond_0
    iput-object p1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 349
    new-instance v0, Lcom/android/camera/pip/opengl/EglCore;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/camera/pip/opengl/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    .line 352
    new-instance v0, Lcom/android/camera/pip/opengl/WindowSurface;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/pip/opengl/WindowSurface;-><init>(Lcom/android/camera/pip/opengl/EglCore;Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 353
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 355
    new-instance v0, Lcom/android/camera/pip/opengl/FrameBuffer;

    invoke-direct {v0}, Lcom/android/camera/pip/opengl/FrameBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mPreviewFrameBuffer:Lcom/android/camera/pip/opengl/FrameBuffer;

    .line 356
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mPreviewFrameBuffer:Lcom/android/camera/pip/opengl/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/FrameBuffer;->getFboTexId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mPreviewFboTexId:I

    .line 357
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mPreviewFrameBuffer:Lcom/android/camera/pip/opengl/FrameBuffer;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-static {v1}, Lcom/android/camera/pip/opengl/GLRenderer;->access$000(Lcom/android/camera/pip/opengl/GLRenderer;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-static {v2}, Lcom/android/camera/pip/opengl/GLRenderer;->access$100(Lcom/android/camera/pip/opengl/GLRenderer;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/pip/opengl/FrameBuffer;->setRendererSize(II)V

    .line 358
    new-instance v0, Lcom/android/camera/pip/opengl/ScreenRenderer;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    iget-object v1, v1, Lcom/android/camera/pip/opengl/GLRenderer;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/pip/opengl/ScreenRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mScreenRenderer:Lcom/android/camera/pip/opengl/ScreenRenderer;

    .line 359
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mScreenRenderer:Lcom/android/camera/pip/opengl/ScreenRenderer;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-static {v1}, Lcom/android/camera/pip/opengl/GLRenderer;->access$000(Lcom/android/camera/pip/opengl/GLRenderer;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-static {v2}, Lcom/android/camera/pip/opengl/GLRenderer;->access$100(Lcom/android/camera/pip/opengl/GLRenderer;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/pip/opengl/ScreenRenderer;->setRendererSize(II)V

    .line 361
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLRenderer;->access$200(Lcom/android/camera/pip/opengl/GLRenderer;)Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->NORMAL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne v0, v1, :cond_2

    .line 362
    new-instance v0, Lcom/android/camera/pip/opengl/GLNormalRenderer;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    iget-object v1, v1, Lcom/android/camera/pip/opengl/GLRenderer;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/pip/opengl/GLNormalRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLNormalRenderer:Lcom/android/camera/pip/opengl/GLNormalRenderer;

    .line 363
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLNormalRenderer:Lcom/android/camera/pip/opengl/GLNormalRenderer;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    iget v1, v1, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceWidth:I

    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    iget v2, v2, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/pip/opengl/GLNormalRenderer;->setRendererSize(II)V

    .line 370
    :goto_0
    new-instance v0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-direct {v0}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    .line 371
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    iget v1, v1, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceWidth:I

    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    iget v2, v2, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->setDefaultBufferSize(II)V

    .line 372
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSurfaceTextureHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 373
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLRenderer;->access$200(Lcom/android/camera/pip/opengl/GLRenderer;)Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->NORMAL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-eq v0, v1, :cond_1

    .line 374
    new-instance v0, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-direct {v0}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    .line 375
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    iget v1, v1, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceWidth:I

    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    iget v2, v2, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->setDefaultBufferSize(II)V

    .line 376
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSurfaceTextureHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetOutputSurface("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 379
    return-void

    .line 365
    :cond_2
    new-instance v0, Lcom/android/camera/pip/opengl/GLTopRenderer;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    iget-object v1, v1, Lcom/android/camera/pip/opengl/GLRenderer;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-static {v2}, Lcom/android/camera/pip/opengl/GLRenderer;->access$300(Lcom/android/camera/pip/opengl/GLRenderer;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/pip/opengl/GLTopRenderer;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLTopRenderer:Lcom/android/camera/pip/opengl/GLTopRenderer;

    .line 366
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLTopRenderer:Lcom/android/camera/pip/opengl/GLTopRenderer;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    iget v1, v1, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceWidth:I

    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    iget v2, v2, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/pip/opengl/GLTopRenderer;->setRendererSize(II)V

    .line 367
    new-instance v0, Lcom/android/camera/pip/opengl/GLBottomRenderer;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    iget-object v1, v1, Lcom/android/camera/pip/opengl/GLRenderer;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-static {v2}, Lcom/android/camera/pip/opengl/GLRenderer;->access$300(Lcom/android/camera/pip/opengl/GLRenderer;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/pip/opengl/GLBottomRenderer;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLBottomRenderer:Lcom/android/camera/pip/opengl/GLBottomRenderer;

    .line 368
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLBottomRenderer:Lcom/android/camera/pip/opengl/GLBottomRenderer;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    iget v1, v1, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceWidth:I

    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    iget v2, v2, Lcom/android/camera/pip/opengl/GLRenderer;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/pip/opengl/GLBottomRenderer;->setRendererSize(II)V

    goto/16 :goto_0
.end method

.method public doSetRecordSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetRecordSurface("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->release()V

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 475
    :cond_0
    new-instance v0, Lcom/android/camera/pip/opengl/WindowSurface;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/camera/pip/opengl/WindowSurface;-><init>(Lcom/android/camera/pip/opengl/EglCore;Landroid/view/Surface;Z)V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 476
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetRecordSurface("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method public doUpdatePreview(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 382
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    .line 383
    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 384
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->updateTexImage()V

    .line 385
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->draw(Z)V

    .line 394
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->doRecordVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 404
    :cond_1
    :goto_0
    return-void

    .line 386
    :cond_2
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    .line 387
    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->updateTexImage()V

    goto :goto_0

    .line 397
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->doLiveBroadcast()V

    .line 398
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/WindowSurface;->swapBuffers()Z

    move-result v0

    .line 399
    .local v0, "swapResult":Z
    if-nez v0, :cond_1

    .line 400
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "swap result failed!"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public draw(Z)V
    .locals 13
    .param p1, "isFBO"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v0, 0x1

    const/4 v10, 0x0

    .line 529
    if-eqz p1, :cond_2

    move v4, v10

    .line 530
    .local v4, "isMirror":Z
    :goto_0
    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-static {v1}, Lcom/android/camera/pip/opengl/GLRenderer;->access$500(Lcom/android/camera/pip/opengl/GLRenderer;)I

    move-result v1

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_3

    move v5, v0

    .line 531
    .local v5, "isHorizontal":Z
    :goto_1
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLRenderer;->access$200(Lcom/android/camera/pip/opengl/GLRenderer;)Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    move-result-object v3

    .line 532
    .local v3, "pipMode":Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
    if-eqz p1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mPreviewFrameBuffer:Lcom/android/camera/pip/opengl/FrameBuffer;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-static {v1}, Lcom/android/camera/pip/opengl/GLRenderer;->access$000(Lcom/android/camera/pip/opengl/GLRenderer;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-static {v2}, Lcom/android/camera/pip/opengl/GLRenderer;->access$100(Lcom/android/camera/pip/opengl/GLRenderer;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/pip/opengl/FrameBuffer;->setupFrameBufferGraphics(II)V

    .line 535
    :cond_0
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->NORMAL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne v3, v0, :cond_4

    .line 536
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLNormalRenderer:Lcom/android/camera/pip/opengl/GLNormalRenderer;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getTextureId()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v2}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getBufferTransformMatrix()[F

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/pip/opengl/GLNormalRenderer;->draw(I[F)V

    .line 558
    :goto_2
    if-eqz p1, :cond_1

    .line 559
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mPreviewFrameBuffer:Lcom/android/camera/pip/opengl/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/FrameBuffer;->setScreenBufferGraphics()V

    .line 560
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mScreenRenderer:Lcom/android/camera/pip/opengl/ScreenRenderer;

    iget v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mPreviewFboTexId:I

    invoke-static {}, Lcom/android/camera/pip/opengl/GLUtil;->createIdentityMtx()[F

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/pip/opengl/ScreenRenderer;->draw(I[F)V

    .line 562
    :cond_1
    return-void

    .end local v3    # "pipMode":Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
    .end local v4    # "isMirror":Z
    .end local v5    # "isHorizontal":Z
    :cond_2
    move v4, v0

    .line 529
    goto :goto_0

    .restart local v4    # "isMirror":Z
    :cond_3
    move v5, v10

    .line 530
    goto :goto_1

    .line 537
    .restart local v3    # "pipMode":Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
    .restart local v5    # "isHorizontal":Z
    :cond_4
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_UP_FRONT_DOWN:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne v3, v0, :cond_5

    .line 538
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLBottomRenderer:Lcom/android/camera/pip/opengl/GLBottomRenderer;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getTextureId()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v2}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getBufferTransformMatrix()[F

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/pip/opengl/GLBottomRenderer;->draw(I[FLcom/android/camera/pip/opengl/GLRenderer$PIPMode;ZZ)V

    .line 540
    iget-object v6, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLTopRenderer:Lcom/android/camera/pip/opengl/GLTopRenderer;

    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getTextureId()I

    move-result v7

    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getBufferTransformMatrix()[F

    move-result-object v8

    move-object v9, v3

    move v11, v5

    invoke-virtual/range {v6 .. v12}, Lcom/android/camera/pip/opengl/GLTopRenderer;->draw(I[FLcom/android/camera/pip/opengl/GLRenderer$PIPMode;ZZ[F)V

    goto :goto_2

    .line 542
    :cond_5
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne v3, v0, :cond_6

    .line 543
    iget-object v6, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLBottomRenderer:Lcom/android/camera/pip/opengl/GLBottomRenderer;

    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getTextureId()I

    move-result v7

    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getBufferTransformMatrix()[F

    move-result-object v8

    move-object v9, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/camera/pip/opengl/GLBottomRenderer;->draw(I[FLcom/android/camera/pip/opengl/GLRenderer$PIPMode;ZZ)V

    .line 545
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLTopRenderer:Lcom/android/camera/pip/opengl/GLTopRenderer;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getTextureId()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v2}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getBufferTransformMatrix()[F

    move-result-object v2

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/pip/opengl/GLTopRenderer;->draw(I[FLcom/android/camera/pip/opengl/GLRenderer$PIPMode;ZZ[F)V

    goto :goto_2

    .line 547
    :cond_6
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_SUB_FRONT_FULL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne v3, v0, :cond_7

    .line 548
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLBottomRenderer:Lcom/android/camera/pip/opengl/GLBottomRenderer;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getTextureId()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v2}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getBufferTransformMatrix()[F

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/pip/opengl/GLBottomRenderer;->draw(I[FLcom/android/camera/pip/opengl/GLRenderer$PIPMode;ZZ)V

    .line 550
    iget-object v6, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLTopRenderer:Lcom/android/camera/pip/opengl/GLTopRenderer;

    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getTextureId()I

    move-result v7

    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getBufferTransformMatrix()[F

    move-result-object v8

    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    .line 551
    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLRenderer;->access$600(Lcom/android/camera/pip/opengl/GLRenderer;)[F

    move-result-object v12

    move-object v9, v3

    move v11, v5

    .line 550
    invoke-virtual/range {v6 .. v12}, Lcom/android/camera/pip/opengl/GLTopRenderer;->draw(I[FLcom/android/camera/pip/opengl/GLRenderer$PIPMode;ZZ[F)V

    goto/16 :goto_2

    .line 553
    :cond_7
    iget-object v6, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLBottomRenderer:Lcom/android/camera/pip/opengl/GLBottomRenderer;

    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getTextureId()I

    move-result v7

    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getBufferTransformMatrix()[F

    move-result-object v8

    move-object v9, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/camera/pip/opengl/GLBottomRenderer;->draw(I[FLcom/android/camera/pip/opengl/GLRenderer$PIPMode;ZZ)V

    .line 555
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mGLTopRenderer:Lcom/android/camera/pip/opengl/GLTopRenderer;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getTextureId()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v2}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getBufferTransformMatrix()[F

    move-result-object v2

    iget-object v6, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->this$0:Lcom/android/camera/pip/opengl/GLRenderer;

    .line 556
    invoke-static {v6}, Lcom/android/camera/pip/opengl/GLRenderer;->access$600(Lcom/android/camera/pip/opengl/GLRenderer;)[F

    move-result-object v6

    .line 555
    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/pip/opengl/GLTopRenderer;->draw(I[FLcom/android/camera/pip/opengl/GLRenderer$PIPMode;ZZ[F)V

    goto/16 :goto_2
.end method

.method public getMainInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public getMainInputSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mMainSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0
.end method

.method public getSlaveInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public getSlaveInputSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->mSubSurfaceTextureWrapper:Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/SurfaceTextureWrapper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 315
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 337
    :goto_0
    :pswitch_0
    return-void

    .line 319
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->doSetOutputSurface(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 322
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->doUpdatePreview(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 325
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->doSetRecordSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 328
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->doReleaseRecordSurface()V

    goto :goto_0

    .line 331
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/pip/opengl/ScreenRecorder;

    invoke-virtual {p0, v0}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->doSetLiveBroadcast(Lcom/android/camera/pip/opengl/ScreenRecorder;)V

    goto :goto_0

    .line 334
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->doRelease()V

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 566
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/pip/opengl/GLRenderer$PreviewRendererHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 567
    return-void
.end method
