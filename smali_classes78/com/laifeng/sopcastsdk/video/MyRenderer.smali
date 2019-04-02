.class public Lcom/laifeng/sopcastsdk/video/MyRenderer;
.super Ljava/lang/Object;
.source "MyRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private isCameraOpen:Z

.field private mCameraOpenListener:Lcom/laifeng/sopcastsdk/camera/CameraListener;

.field private mEffect:Lcom/laifeng/sopcastsdk/video/effect/Effect;

.field private mEffectTextureId:I

.field private mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

.field private mRenderScreen:Lcom/laifeng/sopcastsdk/video/RenderScreen;

.field private mRenderSrfTex:Lcom/laifeng/sopcastsdk/video/RenderSrfTex;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureId:I

.field private final mTexMtx:[F

.field private mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mView:Landroid/opengl/GLSurfaceView;

.field private mWatermark:Lcom/laifeng/sopcastsdk/entity/Watermark;

.field private updateSurface:Z


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .locals 2
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mSurfaceTextureId:I

    .line 45
    new-instance v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->updateSurface:Z

    .line 53
    invoke-static {}, Lcom/laifeng/sopcastsdk/video/GlUtil;->createIdentityMtx()[F

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mTexMtx:[F

    .line 59
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mView:Landroid/opengl/GLSurfaceView;

    .line 60
    new-instance v0, Lcom/laifeng/sopcastsdk/video/effect/NullEffect;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/laifeng/sopcastsdk/video/effect/NullEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mEffect:Lcom/laifeng/sopcastsdk/video/effect/Effect;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/laifeng/sopcastsdk/video/MyRenderer;)Lcom/laifeng/sopcastsdk/camera/CameraListener;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/video/MyRenderer;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mCameraOpenListener:Lcom/laifeng/sopcastsdk/camera/CameraListener;

    return-object v0
.end method

.method private initScreenTexture()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mEffect:Lcom/laifeng/sopcastsdk/video/effect/Effect;

    iget v1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mSurfaceTextureId:I

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->setTextureId(I)V

    .line 161
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mEffect:Lcom/laifeng/sopcastsdk/video/effect/Effect;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->prepare()V

    .line 162
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mEffect:Lcom/laifeng/sopcastsdk/video/effect/Effect;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->getEffertedTextureId()I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mEffectTextureId:I

    .line 163
    new-instance v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;

    iget v1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mEffectTextureId:I

    invoke-direct {v0, v1}, Lcom/laifeng/sopcastsdk/video/RenderScreen;-><init>(I)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderScreen:Lcom/laifeng/sopcastsdk/video/RenderScreen;

    .line 164
    return-void
.end method

.method private initSurfaceTexture()V
    .locals 6

    .prologue
    const v5, 0x812f

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v4, 0x46180400    # 9729.0f

    const v3, 0x8d65

    .line 139
    new-array v0, v2, [I

    .line 140
    .local v0, "textures":[I
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 141
    aget v1, v0, v1

    iput v1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mSurfaceTextureId:I

    .line 142
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mSurfaceTextureId:I

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 143
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 144
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 145
    const/16 v1, 0xb44

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 146
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 147
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 148
    iget v1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mSurfaceTextureId:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 149
    const/16 v1, 0x2801

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 151
    const/16 v1, 0x2800

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 153
    const/16 v1, 0x2802

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 155
    const/16 v1, 0x2803

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 157
    return-void
.end method

.method private postOpenCameraError(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mCameraOpenListener:Lcom/laifeng/sopcastsdk/camera/CameraListener;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    new-instance v1, Lcom/laifeng/sopcastsdk/video/MyRenderer$2;

    invoke-direct {v1, p0, p1}, Lcom/laifeng/sopcastsdk/video/MyRenderer$2;-><init>(Lcom/laifeng/sopcastsdk/video/MyRenderer;I)V

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->post(Ljava/lang/Runnable;)Z

    .line 214
    :cond_0
    return-void
.end method

.method private startCameraPreview()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 168
    :try_start_0
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/laifeng/sopcastsdk/camera/CameraUtils;->checkCameraService(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/laifeng/sopcastsdk/camera/exception/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/laifeng/sopcastsdk/camera/exception/NoCameraException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->getState()Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    move-result-object v1

    .line 179
    .local v1, "state":Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 180
    sget-object v2, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->PREVIEW:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    if-eq v1, v2, :cond_1

    .line 182
    :try_start_1
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->openCamera()Landroid/hardware/Camera;

    .line 183
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->startPreview()V

    .line 184
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mCameraOpenListener:Lcom/laifeng/sopcastsdk/camera/CameraListener;

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    new-instance v3, Lcom/laifeng/sopcastsdk/video/MyRenderer$1;

    invoke-direct {v3, p0}, Lcom/laifeng/sopcastsdk/video/MyRenderer$1;-><init>(Lcom/laifeng/sopcastsdk/video/MyRenderer;)V

    invoke-virtual {v2, v3}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->post(Ljava/lang/Runnable;)Z

    .line 192
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->isCameraOpen:Z
    :try_end_1
    .catch Lcom/laifeng/sopcastsdk/camera/exception/CameraHardwareException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/laifeng/sopcastsdk/camera/exception/CameraNotSupportException; {:try_start_1 .. :try_end_1} :catch_3

    .line 201
    .end local v1    # "state":Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;
    :cond_1
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Lcom/laifeng/sopcastsdk/camera/exception/CameraDisabledException;
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/laifeng/sopcastsdk/video/MyRenderer;->postOpenCameraError(I)V

    .line 171
    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/camera/exception/CameraDisabledException;->printStackTrace()V

    goto :goto_0

    .line 173
    .end local v0    # "e":Lcom/laifeng/sopcastsdk/camera/exception/CameraDisabledException;
    :catch_1
    move-exception v0

    .line 174
    .local v0, "e":Lcom/laifeng/sopcastsdk/camera/exception/NoCameraException;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/laifeng/sopcastsdk/video/MyRenderer;->postOpenCameraError(I)V

    .line 175
    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/camera/exception/NoCameraException;->printStackTrace()V

    goto :goto_0

    .line 193
    .end local v0    # "e":Lcom/laifeng/sopcastsdk/camera/exception/NoCameraException;
    .restart local v1    # "state":Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;
    :catch_2
    move-exception v0

    .line 194
    .local v0, "e":Lcom/laifeng/sopcastsdk/camera/exception/CameraHardwareException;
    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/camera/exception/CameraHardwareException;->printStackTrace()V

    .line 195
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/laifeng/sopcastsdk/video/MyRenderer;->postOpenCameraError(I)V

    goto :goto_0

    .line 196
    .end local v0    # "e":Lcom/laifeng/sopcastsdk/camera/exception/CameraHardwareException;
    :catch_3
    move-exception v0

    .line 197
    .local v0, "e":Lcom/laifeng/sopcastsdk/camera/exception/CameraNotSupportException;
    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/camera/exception/CameraNotSupportException;->printStackTrace()V

    .line 198
    invoke-direct {p0, v4}, Lcom/laifeng/sopcastsdk/video/MyRenderer;->postOpenCameraError(I)V

    goto :goto_0
.end method


# virtual methods
.method public isCameraOpen()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->isCameraOpen:Z

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->updateSurface:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 125
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mTexMtx:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->updateSurface:Z

    .line 128
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mEffect:Lcom/laifeng/sopcastsdk/video/effect/Effect;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mTexMtx:[F

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->draw([F)V

    .line 130
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderScreen:Lcom/laifeng/sopcastsdk/video/RenderScreen;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderScreen:Lcom/laifeng/sopcastsdk/video/RenderScreen;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/video/RenderScreen;->draw()V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderSrfTex:Lcom/laifeng/sopcastsdk/video/RenderSrfTex;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderSrfTex:Lcom/laifeng/sopcastsdk/video/RenderSrfTex;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->draw()V

    .line 136
    :cond_2
    return-void

    .line 128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->updateSurface:Z

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 96
    return-void

    .line 94
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/video/MyRenderer;->startCameraPreview()V

    .line 106
    iget-boolean v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->isCameraOpen:Z

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderScreen:Lcom/laifeng/sopcastsdk/video/RenderScreen;

    if-nez v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/video/MyRenderer;->initScreenTexture()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderScreen:Lcom/laifeng/sopcastsdk/video/RenderScreen;

    invoke-virtual {v0, p2, p3}, Lcom/laifeng/sopcastsdk/video/RenderScreen;->setSreenSize(II)V

    .line 111
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderScreen:Lcom/laifeng/sopcastsdk/video/RenderScreen;

    iget v1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mVideoWidth:I

    iget v2, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mVideoHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/laifeng/sopcastsdk/video/RenderScreen;->setVideoSize(II)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mWatermark:Lcom/laifeng/sopcastsdk/entity/Watermark;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderScreen:Lcom/laifeng/sopcastsdk/video/RenderScreen;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mWatermark:Lcom/laifeng/sopcastsdk/entity/Watermark;

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/video/RenderScreen;->setWatermark(Lcom/laifeng/sopcastsdk/entity/Watermark;)V

    .line 118
    :cond_2
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/video/MyRenderer;->initSurfaceTexture()V

    .line 101
    return-void
.end method

.method public setCameraOpenListener(Lcom/laifeng/sopcastsdk/camera/CameraListener;)V
    .locals 0
    .param p1, "cameraOpenListener"    # Lcom/laifeng/sopcastsdk/camera/CameraListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mCameraOpenListener:Lcom/laifeng/sopcastsdk/camera/CameraListener;

    .line 65
    return-void
.end method

.method public setEffect(Lcom/laifeng/sopcastsdk/video/effect/Effect;)V
    .locals 2
    .param p1, "effect"    # Lcom/laifeng/sopcastsdk/video/effect/Effect;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mEffect:Lcom/laifeng/sopcastsdk/video/effect/Effect;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->release()V

    .line 232
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mEffect:Lcom/laifeng/sopcastsdk/video/effect/Effect;

    .line 233
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mSurfaceTextureId:I

    invoke-virtual {p1, v0}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->setTextureId(I)V

    .line 234
    invoke-virtual {p1}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->prepare()V

    .line 235
    invoke-virtual {p1}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->getEffertedTextureId()I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mEffectTextureId:I

    .line 236
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderScreen:Lcom/laifeng/sopcastsdk/video/RenderScreen;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderScreen:Lcom/laifeng/sopcastsdk/video/RenderScreen;

    iget v1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mEffectTextureId:I

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/video/RenderScreen;->setTextureId(I)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderSrfTex:Lcom/laifeng/sopcastsdk/video/RenderSrfTex;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderSrfTex:Lcom/laifeng/sopcastsdk/video/RenderSrfTex;

    iget v1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mEffectTextureId:I

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->setTextureId(I)V

    .line 242
    :cond_1
    return-void
.end method

.method public setRecorder(Lcom/laifeng/sopcastsdk/video/MyRecorder;)V
    .locals 3
    .param p1, "recorder"    # Lcom/laifeng/sopcastsdk/video/MyRecorder;

    .prologue
    .line 77
    monitor-enter p0

    .line 78
    if-eqz p1, :cond_1

    .line 79
    :try_start_0
    new-instance v0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;

    iget v1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mEffectTextureId:I

    invoke-direct {v0, v1, p1}, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;-><init>(ILcom/laifeng/sopcastsdk/video/MyRecorder;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderSrfTex:Lcom/laifeng/sopcastsdk/video/RenderSrfTex;

    .line 80
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderSrfTex:Lcom/laifeng/sopcastsdk/video/RenderSrfTex;

    iget v1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mVideoWidth:I

    iget v2, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mVideoHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->setVideoSize(II)V

    .line 81
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mWatermark:Lcom/laifeng/sopcastsdk/entity/Watermark;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderSrfTex:Lcom/laifeng/sopcastsdk/video/RenderSrfTex;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mWatermark:Lcom/laifeng/sopcastsdk/entity/Watermark;

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->setWatermark(Lcom/laifeng/sopcastsdk/entity/Watermark;)V

    .line 87
    :cond_0
    :goto_0
    monitor-exit p0

    .line 88
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderSrfTex:Lcom/laifeng/sopcastsdk/video/RenderSrfTex;

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVideoConfiguration(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V
    .locals 3
    .param p1, "videoConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .line 69
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    iget v0, v0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->width:I

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/mediacodec/VideoMediaCodec;->getVideoSize(I)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mVideoWidth:I

    .line 70
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    iget v0, v0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->height:I

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/mediacodec/VideoMediaCodec;->getVideoSize(I)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mVideoHeight:I

    .line 71
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderScreen:Lcom/laifeng/sopcastsdk/video/RenderScreen;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderScreen:Lcom/laifeng/sopcastsdk/video/RenderScreen;

    iget v1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mVideoWidth:I

    iget v2, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mVideoHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/laifeng/sopcastsdk/video/RenderScreen;->setVideoSize(II)V

    .line 74
    :cond_0
    return-void
.end method

.method public setWatermark(Lcom/laifeng/sopcastsdk/entity/Watermark;)V
    .locals 1
    .param p1, "watermark"    # Lcom/laifeng/sopcastsdk/entity/Watermark;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mWatermark:Lcom/laifeng/sopcastsdk/entity/Watermark;

    .line 222
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderScreen:Lcom/laifeng/sopcastsdk/video/RenderScreen;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderScreen:Lcom/laifeng/sopcastsdk/video/RenderScreen;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/video/RenderScreen;->setWatermark(Lcom/laifeng/sopcastsdk/entity/Watermark;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderSrfTex:Lcom/laifeng/sopcastsdk/video/RenderSrfTex;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRenderer;->mRenderSrfTex:Lcom/laifeng/sopcastsdk/video/RenderSrfTex;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->setWatermark(Lcom/laifeng/sopcastsdk/entity/Watermark;)V

    .line 228
    :cond_1
    return-void
.end method
