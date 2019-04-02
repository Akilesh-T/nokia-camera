.class public Lcom/pedro/rtplibrary/view/OpenGlView;
.super Landroid/view/SurfaceView;
.source "OpenGlView.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x12
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "OpenGlView"


# instance fields
.field private alpha:F

.field private encoderHeight:I

.field private encoderWidth:I

.field private frameAvailable:Z

.field private gifStreamObject:Lcom/pedro/encoder/utils/gl/GifStreamObject;

.field private imageStreamObject:Lcom/pedro/encoder/utils/gl/ImageStreamObject;

.field private loadAlpha:Z

.field private loadPosition:Z

.field private loadPositionTo:Z

.field private loadScale:Z

.field private loadStreamObject:Z

.field private positionTo:Lcom/pedro/encoder/utils/gl/TranslateTo;

.field private positionX:F

.field private positionY:F

.field private previewHeight:I

.field private previewWidth:I

.field private running:Z

.field private scaleX:F

.field private scaleY:F

.field private final semaphore:Ljava/util/concurrent/Semaphore;

.field private surface:Landroid/view/Surface;

.field private surfaceManager:Lcom/pedro/encoder/input/gl/SurfaceManager;

.field private surfaceManagerEncoder:Lcom/pedro/encoder/input/gl/SurfaceManager;

.field private final sync:Ljava/lang/Object;

.field private textStreamObject:Lcom/pedro/encoder/utils/gl/TextStreamObject;

.field private textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->thread:Ljava/lang/Thread;

    .line 33
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->frameAvailable:Z

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->running:Z

    .line 36
    iput-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surfaceManager:Lcom/pedro/encoder/input/gl/SurfaceManager;

    .line 37
    iput-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surfaceManagerEncoder:Lcom/pedro/encoder/input/gl/SurfaceManager;

    .line 39
    iput-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    .line 41
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->sync:Ljava/lang/Object;

    .line 45
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadStreamObject:Z

    .line 46
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadAlpha:Z

    .line 47
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadScale:Z

    .line 48
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadPosition:Z

    .line 49
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadPositionTo:Z

    .line 62
    invoke-virtual {p0}, Lcom/pedro/rtplibrary/view/OpenGlView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 63
    return-void
.end method


# virtual methods
.method public addMediaCodecSurface(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    iput-object p1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surface:Landroid/view/Surface;

    .line 76
    new-instance v0, Lcom/pedro/encoder/input/gl/SurfaceManager;

    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surfaceManager:Lcom/pedro/encoder/input/gl/SurfaceManager;

    invoke-direct {v0, p1, v2}, Lcom/pedro/encoder/input/gl/SurfaceManager;-><init>(Landroid/view/Surface;Lcom/pedro/encoder/input/gl/SurfaceManager;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surfaceManagerEncoder:Lcom/pedro/encoder/input/gl/SurfaceManager;

    .line 77
    iget-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    iget v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->encoderWidth:I

    iget v3, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->encoderHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->setStreamSize(II)V

    .line 78
    monitor-exit v1

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textStreamObject:Lcom/pedro/encoder/utils/gl/TextStreamObject;

    .line 118
    iput-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->gifStreamObject:Lcom/pedro/encoder/utils/gl/GifStreamObject;

    .line 119
    iput-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->imageStreamObject:Lcom/pedro/encoder/utils/gl/ImageStreamObject;

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadStreamObject:Z

    .line 121
    return-void
.end method

.method public getPosition()Landroid/graphics/PointF;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->getPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public getScale()Landroid/graphics/PointF;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->getScale()Landroid/graphics/PointF;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 260
    iget-object v1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->frameAvailable:Z

    .line 262
    iget-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->sync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 263
    monitor-exit v1

    .line 264
    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeMediaCodecSurface()V
    .locals 2

    .prologue
    .line 82
    iget-object v1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surfaceManagerEncoder:Lcom/pedro/encoder/input/gl/SurfaceManager;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surfaceManagerEncoder:Lcom/pedro/encoder/input/gl/SurfaceManager;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/gl/SurfaceManager;->release()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surfaceManagerEncoder:Lcom/pedro/encoder/input/gl/SurfaceManager;

    .line 87
    :cond_0
    monitor-exit v1

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 183
    new-instance v2, Lcom/pedro/encoder/input/gl/SurfaceManager;

    invoke-virtual {p0}, Lcom/pedro/rtplibrary/view/OpenGlView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/pedro/encoder/input/gl/SurfaceManager;-><init>(Landroid/view/Surface;)V

    iput-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surfaceManager:Lcom/pedro/encoder/input/gl/SurfaceManager;

    .line 184
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surfaceManager:Lcom/pedro/encoder/input/gl/SurfaceManager;

    invoke-virtual {v2}, Lcom/pedro/encoder/input/gl/SurfaceManager;->makeCurrent()V

    .line 185
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    invoke-virtual {v2}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->initGl()V

    .line 186
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    invoke-virtual {v2}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 187
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 189
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->running:Z

    if-eqz v2, :cond_b

    .line 190
    iget-object v3, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->sync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 191
    :try_start_1
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->sync:Ljava/lang/Object;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 192
    iget-boolean v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->frameAvailable:Z

    if-eqz v2, :cond_a

    .line 193
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->frameAvailable:Z

    .line 194
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surfaceManager:Lcom/pedro/encoder/input/gl/SurfaceManager;

    invoke-virtual {v2}, Lcom/pedro/encoder/input/gl/SurfaceManager;->makeCurrent()V

    .line 197
    iget-boolean v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadStreamObject:Z

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textStreamObject:Lcom/pedro/encoder/utils/gl/TextStreamObject;

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    iget-object v4, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textStreamObject:Lcom/pedro/encoder/utils/gl/TextStreamObject;

    invoke-virtual {v2, v4}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->setText(Lcom/pedro/encoder/utils/gl/TextStreamObject;)V

    .line 208
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    invoke-virtual {v2}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->updateFrame()V

    .line 209
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    iget v4, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->previewWidth:I

    iget v5, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->previewHeight:I

    invoke-virtual {v2, v4, v5}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->drawFrame(II)V

    .line 210
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surfaceManager:Lcom/pedro/encoder/input/gl/SurfaceManager;

    invoke-virtual {v2}, Lcom/pedro/encoder/input/gl/SurfaceManager;->swapBuffer()V

    .line 212
    iget-boolean v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadStreamObject:Z

    if-eqz v2, :cond_4

    .line 213
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surfaceManagerEncoder:Lcom/pedro/encoder/input/gl/SurfaceManager;

    invoke-virtual {v2}, Lcom/pedro/encoder/input/gl/SurfaceManager;->release()V

    .line 214
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surfaceManagerEncoder:Lcom/pedro/encoder/input/gl/SurfaceManager;

    .line 215
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surface:Landroid/view/Surface;

    invoke-virtual {p0, v2}, Lcom/pedro/rtplibrary/view/OpenGlView;->addMediaCodecSurface(Landroid/view/Surface;)V

    .line 216
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadStreamObject:Z

    .line 217
    monitor-exit v3

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 251
    :catch_0
    move-exception v2

    .line 253
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surfaceManager:Lcom/pedro/encoder/input/gl/SurfaceManager;

    invoke-virtual {v2}, Lcom/pedro/encoder/input/gl/SurfaceManager;->release()V

    .line 254
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    invoke-virtual {v2}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->release()V

    .line 256
    :goto_2
    return-void

    .line 200
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->imageStreamObject:Lcom/pedro/encoder/utils/gl/ImageStreamObject;

    if-eqz v2, :cond_2

    .line 201
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    iget-object v4, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->imageStreamObject:Lcom/pedro/encoder/utils/gl/ImageStreamObject;

    invoke-virtual {v2, v4}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->setImage(Lcom/pedro/encoder/utils/gl/ImageStreamObject;)V

    goto :goto_1

    .line 202
    :cond_2
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->gifStreamObject:Lcom/pedro/encoder/utils/gl/GifStreamObject;

    if-eqz v2, :cond_3

    .line 203
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    iget-object v4, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->gifStreamObject:Lcom/pedro/encoder/utils/gl/GifStreamObject;

    invoke-virtual {v2, v4}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->setGif(Lcom/pedro/encoder/utils/gl/GifStreamObject;)V

    goto :goto_1

    .line 205
    :cond_3
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    invoke-virtual {v2}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->clear()V

    goto :goto_1

    .line 219
    :cond_4
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surfaceManagerEncoder:Lcom/pedro/encoder/input/gl/SurfaceManager;

    if-eqz v2, :cond_5

    .line 220
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surfaceManagerEncoder:Lcom/pedro/encoder/input/gl/SurfaceManager;

    invoke-virtual {v2}, Lcom/pedro/encoder/input/gl/SurfaceManager;->makeCurrent()V

    .line 221
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    iget v4, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->encoderWidth:I

    iget v5, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->encoderHeight:I

    invoke-virtual {v2, v4, v5}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->drawFrame(II)V

    .line 222
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    invoke-virtual {v2}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    .line 223
    .local v0, "ts":J
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surfaceManagerEncoder:Lcom/pedro/encoder/input/gl/SurfaceManager;

    invoke-virtual {v2, v0, v1}, Lcom/pedro/encoder/input/gl/SurfaceManager;->setPresentationTime(J)V

    .line 224
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surfaceManagerEncoder:Lcom/pedro/encoder/input/gl/SurfaceManager;

    invoke-virtual {v2}, Lcom/pedro/encoder/input/gl/SurfaceManager;->swapBuffer()V

    .line 230
    .end local v0    # "ts":J
    :cond_5
    :goto_3
    iget-boolean v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadAlpha:Z

    if-eqz v2, :cond_6

    .line 231
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    iget v4, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->alpha:F

    invoke-virtual {v2, v4}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->setAlpha(F)V

    .line 232
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadAlpha:Z

    .line 235
    :cond_6
    iget-boolean v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadScale:Z

    if-eqz v2, :cond_7

    .line 236
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    iget v4, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->scaleX:F

    iget v5, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->scaleY:F

    invoke-virtual {v2, v4, v5}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->setScale(FF)V

    .line 237
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadScale:Z

    .line 240
    :cond_7
    iget-boolean v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadPosition:Z

    if-eqz v2, :cond_8

    .line 241
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    iget v4, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->positionX:F

    iget v5, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->positionY:F

    invoke-virtual {v2, v4, v5}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->setPosition(FF)V

    .line 242
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadPosition:Z

    .line 245
    :cond_8
    iget-boolean v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadPositionTo:Z

    if-eqz v2, :cond_9

    .line 246
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    iget-object v4, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->positionTo:Lcom/pedro/encoder/utils/gl/TranslateTo;

    invoke-virtual {v2, v4}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->setPosition(Lcom/pedro/encoder/utils/gl/TranslateTo;)V

    .line 247
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadPositionTo:Z

    .line 249
    :cond_9
    monitor-exit v3

    goto/16 :goto_0

    .line 227
    :cond_a
    const-string v2, "OpenGlView"

    const-string v4, "No frame received !"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 253
    :cond_b
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surfaceManager:Lcom/pedro/encoder/input/gl/SurfaceManager;

    invoke-virtual {v2}, Lcom/pedro/encoder/input/gl/SurfaceManager;->release()V

    .line 254
    iget-object v2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    invoke-virtual {v2}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->release()V

    goto/16 :goto_2

    .line 253
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->surfaceManager:Lcom/pedro/encoder/input/gl/SurfaceManager;

    invoke-virtual {v3}, Lcom/pedro/encoder/input/gl/SurfaceManager;->release()V

    .line 254
    iget-object v3, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    invoke-virtual {v3}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->release()V

    throw v2
.end method

.method public setEncoderSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->encoderWidth:I

    .line 92
    iput p2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->encoderHeight:I

    .line 93
    return-void
.end method

.method public setGif(Lcom/pedro/encoder/utils/gl/GifStreamObject;)V
    .locals 1
    .param p1, "gifStreamObject"    # Lcom/pedro/encoder/utils/gl/GifStreamObject;

    .prologue
    const/4 v0, 0x0

    .line 96
    iput-object p1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->gifStreamObject:Lcom/pedro/encoder/utils/gl/GifStreamObject;

    .line 97
    iput-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->imageStreamObject:Lcom/pedro/encoder/utils/gl/ImageStreamObject;

    .line 98
    iput-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textStreamObject:Lcom/pedro/encoder/utils/gl/TextStreamObject;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadStreamObject:Z

    .line 100
    return-void
.end method

.method public setImage(Lcom/pedro/encoder/utils/gl/ImageStreamObject;)V
    .locals 1
    .param p1, "imageStreamObject"    # Lcom/pedro/encoder/utils/gl/ImageStreamObject;

    .prologue
    const/4 v0, 0x0

    .line 103
    iput-object p1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->imageStreamObject:Lcom/pedro/encoder/utils/gl/ImageStreamObject;

    .line 104
    iput-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->gifStreamObject:Lcom/pedro/encoder/utils/gl/GifStreamObject;

    .line 105
    iput-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textStreamObject:Lcom/pedro/encoder/utils/gl/TextStreamObject;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadStreamObject:Z

    .line 107
    return-void
.end method

.method public setStreamObjectAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 124
    iput p1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->alpha:F

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadAlpha:Z

    .line 126
    return-void
.end method

.method public setStreamObjectPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 135
    iput p1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->positionX:F

    .line 136
    iput p2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->positionY:F

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadPosition:Z

    .line 138
    return-void
.end method

.method public setStreamObjectPosition(Lcom/pedro/encoder/utils/gl/TranslateTo;)V
    .locals 1
    .param p1, "translateTo"    # Lcom/pedro/encoder/utils/gl/TranslateTo;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->positionTo:Lcom/pedro/encoder/utils/gl/TranslateTo;

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadPositionTo:Z

    .line 143
    return-void
.end method

.method public setStreamObjectSize(FF)V
    .locals 1
    .param p1, "sizeX"    # F
    .param p2, "sizeY"    # F

    .prologue
    .line 129
    iput p1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->scaleX:F

    .line 130
    iput p2, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->scaleY:F

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadScale:Z

    .line 132
    return-void
.end method

.method public setText(Lcom/pedro/encoder/utils/gl/TextStreamObject;)V
    .locals 1
    .param p1, "textStreamObject"    # Lcom/pedro/encoder/utils/gl/TextStreamObject;

    .prologue
    const/4 v0, 0x0

    .line 110
    iput-object p1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textStreamObject:Lcom/pedro/encoder/utils/gl/TextStreamObject;

    .line 111
    iput-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->gifStreamObject:Lcom/pedro/encoder/utils/gl/GifStreamObject;

    .line 112
    iput-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->imageStreamObject:Lcom/pedro/encoder/utils/gl/ImageStreamObject;

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->loadStreamObject:Z

    .line 114
    return-void
.end method

.method public startGLThread()V
    .locals 2

    .prologue
    .line 156
    const-string v0, "OpenGlView"

    const-string v1, "Thread started."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    invoke-virtual {p0}, Lcom/pedro/rtplibrary/view/OpenGlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->textureManager:Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->thread:Ljava/lang/Thread;

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->running:Z

    .line 163
    iget-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 164
    iget-object v0, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 166
    :cond_1
    return-void
.end method

.method public stopGlThread()V
    .locals 2

    .prologue
    .line 169
    iget-object v1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->thread:Ljava/lang/Thread;

    .line 178
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->running:Z

    .line 179
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 268
    const-string v0, "OpenGlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iput p3, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->previewWidth:I

    .line 270
    iput p4, p0, Lcom/pedro/rtplibrary/view/OpenGlView;->previewHeight:I

    .line 271
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 275
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/pedro/rtplibrary/view/OpenGlView;->stopGlThread()V

    .line 280
    return-void
.end method
