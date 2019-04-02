.class public Lcom/pedro/encoder/input/video/Camera2ApiManager;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "Camera2ApiManager.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x15
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private cameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private cameraHandler:Landroid/os/Handler;

.field private cameraId:I

.field private cameraManager:Landroid/hardware/camera2/CameraManager;

.field private prepared:Z

.field private preview:Landroid/view/Surface;

.field private surfaceEncoder:Landroid/view/Surface;

.field private surfaceView:Landroid/view/SurfaceView;

.field private textureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 46
    const-string v0, "Camera2ApiManager"

    iput-object v0, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->TAG:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->prepared:Z

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraId:I

    .line 60
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 61
    return-void
.end method

.method static synthetic access$002(Lcom/pedro/encoder/input/video/Camera2ApiManager;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera2ApiManager;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$100(Lcom/pedro/encoder/input/video/Camera2ApiManager;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera2ApiManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->surfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pedro/encoder/input/video/Camera2ApiManager;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera2ApiManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->textureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/pedro/encoder/input/video/Camera2ApiManager;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera2ApiManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->preview:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/pedro/encoder/input/video/Camera2ApiManager;Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera2ApiManager;
    .param p1, "x1"    # Landroid/view/Surface;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->drawPreview(Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/pedro/encoder/input/video/Camera2ApiManager;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera2ApiManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->surfaceEncoder:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$600(Lcom/pedro/encoder/input/video/Camera2ApiManager;Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera2ApiManager;
    .param p1, "x1"    # Landroid/view/Surface;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->drawInputSurface(Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/pedro/encoder/input/video/Camera2ApiManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/video/Camera2ApiManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addPreviewSurface()Landroid/view/Surface;
    .locals 3

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "surface":Landroid/view/Surface;
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 138
    :cond_0
    :goto_0
    return-object v0

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->textureView:Landroid/view/TextureView;

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 136
    .local v1, "texture":Landroid/graphics/SurfaceTexture;
    new-instance v0, Landroid/view/Surface;

    .end local v0    # "surface":Landroid/view/Surface;
    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .restart local v0    # "surface":Landroid/view/Surface;
    goto :goto_0
.end method

.method private drawInputSurface(Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x3

    .line 157
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 158
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 159
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 162
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_0
    return-object v2

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "Camera2ApiManager"

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private drawPreview(Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 143
    :try_start_0
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x1

    .line 144
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 145
    .local v0, "captureRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 146
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 150
    .end local v0    # "captureRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_0
    return-object v2

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 150
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private startPreview(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 92
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v1, "listSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-direct {p0}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->addPreviewSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->preview:Landroid/view/Surface;

    .line 94
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->preview:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->preview:Landroid/view/Surface;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->surfaceEncoder:Landroid/view/Surface;

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->surfaceEncoder:Landroid/view/Surface;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_1
    new-instance v2, Lcom/pedro/encoder/input/video/Camera2ApiManager$1;

    invoke-direct {v2, p0}, Lcom/pedro/encoder/input/video/Camera2ApiManager$1;-><init>(Lcom/pedro/encoder/input/video/Camera2ApiManager;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1    # "listSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public closeCamera(Z)V
    .locals 5
    .param p1, "reOpen"    # Z

    .prologue
    const/4 v2, 0x0

    .line 264
    if-eqz p1, :cond_2

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 267
    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->surfaceView:Landroid/view/SurfaceView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->textureView:Landroid/view/TextureView;

    if-eqz v1, :cond_1

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->preview:Landroid/view/Surface;

    invoke-direct {p0, v2}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->drawPreview(Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_1
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0

    .line 275
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_2
    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_3

    .line 276
    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 277
    iput-object v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 279
    :cond_3
    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_4

    .line 280
    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 281
    iput-object v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 283
    :cond_4
    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 284
    iget-object v1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 285
    iput-object v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraHandler:Landroid/os/Handler;

    .line 287
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->prepared:Z

    goto :goto_0
.end method

.method public getCameraResolutionsBack()[Landroid/util/Size;
    .locals 5

    .prologue
    .line 188
    :try_start_0
    iget-object v3, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraManager:Landroid/hardware/camera2/CameraManager;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 189
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 191
    iget-object v3, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraManager:Landroid/hardware/camera2/CameraManager;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 193
    :cond_0
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 194
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 195
    .local v2, "streamConfigurationMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const-class v3, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 198
    .end local v0    # "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "streamConfigurationMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :goto_0
    return-object v3

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v3, "Camera2ApiManager"

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Size;

    goto :goto_0
.end method

.method public getCameraResolutionsFront()[Landroid/util/Size;
    .locals 5

    .prologue
    .line 204
    :try_start_0
    iget-object v3, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraManager:Landroid/hardware/camera2/CameraManager;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 205
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraManager:Landroid/hardware/camera2/CameraManager;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 209
    :cond_0
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 210
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 211
    .local v2, "streamConfigurationMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const-class v3, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 214
    .end local v0    # "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "streamConfigurationMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :goto_0
    return-object v3

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v3, "Camera2ApiManager"

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Size;

    goto :goto_0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->prepared:Z

    return v0
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 302
    const-string v0, "Camera2ApiManager"

    const-string v1, "camera disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "i"    # I

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 308
    const-string v0, "Camera2ApiManager"

    const-string v1, "open failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 294
    iput-object p1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 295
    invoke-direct {p0, p1}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->startPreview(Landroid/hardware/camera2/CameraDevice;)V

    .line 296
    const-string v0, "Camera2ApiManager"

    const-string v1, "camera opened"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void
.end method

.method public openCamera()V
    .locals 0

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->openCameraBack()V

    .line 168
    return-void
.end method

.method public openCameraBack()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->openCameraFacing(I)V

    .line 172
    return-void
.end method

.method public openCameraFacing(I)V
    .locals 4
    .param p1, "cameraFacing"    # I
        .annotation build Lcom/pedro/encoder/input/video/Camera2Facing;
        .end annotation
    .end param

    .prologue
    .line 226
    :try_start_0
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraManager:Landroid/hardware/camera2/CameraManager;

    const-string v3, "0"

    .line 227
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 228
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 229
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->openCameraId(Ljava/lang/Integer;)V

    .line 236
    .end local v0    # "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :goto_0
    return-void

    .line 231
    .restart local v0    # "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->openCameraId(Ljava/lang/Integer;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    .end local v0    # "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public openCameraFront()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->openCameraFacing(I)V

    .line 176
    return-void
.end method

.method public openCameraId(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/Integer;

    .prologue
    .line 239
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraId:I

    .line 240
    iget-boolean v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->prepared:Z

    if-eqz v2, :cond_0

    .line 241
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera2ApiManager Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "cameraHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 243
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraHandler:Landroid/os/Handler;

    .line 245
    :try_start_0
    iget-object v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p0, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 252
    .end local v0    # "cameraHandlerThread":Landroid/os/HandlerThread;
    :goto_0
    return-void

    .line 246
    .restart local v0    # "cameraHandlerThread":Landroid/os/HandlerThread;
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 250
    .end local v0    # "cameraHandlerThread":Landroid/os/HandlerThread;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "Camera2ApiManager"

    const-string v3, "Camera2ApiManager need be prepared, Camera2ApiManager not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    .restart local v0    # "cameraHandlerThread":Landroid/os/HandlerThread;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public openLastCamera()V
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->openCameraBack()V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget v0, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->openCameraId(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public prepareCamera(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 81
    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 82
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->surfaceEncoder:Landroid/view/Surface;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->prepared:Z

    .line 84
    return-void
.end method

.method public prepareCamera(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->surfaceEncoder:Landroid/view/Surface;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->prepared:Z

    .line 78
    return-void
.end method

.method public prepareCamera(Landroid/view/SurfaceView;Landroid/view/Surface;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->surfaceView:Landroid/view/SurfaceView;

    .line 65
    iput-object p2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->surfaceEncoder:Landroid/view/Surface;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->prepared:Z

    .line 67
    return-void
.end method

.method public prepareCamera(Landroid/view/TextureView;Landroid/view/Surface;)V
    .locals 1
    .param p1, "textureView"    # Landroid/view/TextureView;
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->textureView:Landroid/view/TextureView;

    .line 71
    iput-object p2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->surfaceEncoder:Landroid/view/Surface;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->prepared:Z

    .line 73
    return-void
.end method

.method public switchCamera()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 255
    iget-object v3, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v3, :cond_0

    .line 256
    iget-object v3, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v0, v1

    .line 257
    .local v0, "cameraId":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->closeCamera(Z)V

    .line 258
    iput-boolean v2, p0, Lcom/pedro/encoder/input/video/Camera2ApiManager;->prepared:Z

    .line 259
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pedro/encoder/input/video/Camera2ApiManager;->openCameraId(Ljava/lang/Integer;)V

    .line 261
    .end local v0    # "cameraId":I
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 256
    goto :goto_0
.end method
