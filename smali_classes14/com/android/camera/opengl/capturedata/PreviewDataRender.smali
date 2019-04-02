.class public Lcom/android/camera/opengl/capturedata/PreviewDataRender;
.super Ljava/lang/Object;
.source "PreviewDataRender.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# static fields
.field private static final FRAME_RATE:I = 0x1e

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final CACHE_PREVIEW_SIZE:I

.field private mMainPreviewCallbackSurface:Landroid/view/Surface;

.field private mQueueCacheYUV:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/opengl/capturedata/YUVData;",
            ">;"
        }
    .end annotation
.end field

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSurfaceHeight:I

.field private final mSurfaceWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PreviewDataRender"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/async/Lifetime;II)V
    .locals 3
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/16 v2, 0x2d

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v2, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->CACHE_PREVIEW_SIZE:I

    .line 50
    sget-object v0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "init PreviewDataRender"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    iput p2, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mSurfaceWidth:I

    .line 52
    iput p3, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mSurfaceHeight:I

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mQueueCacheYUV:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 57
    invoke-static {v2}, Lcom/google/common/collect/EvictingQueue;->create(I)Lcom/google/common/collect/EvictingQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mQueueCacheYUV:Ljava/util/Collection;

    .line 60
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/opengl/capturedata/PreviewDataRender;Landroid/media/Image;)Lcom/android/camera/opengl/capturedata/YUVData;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/capturedata/PreviewDataRender;
    .param p1, "x1"    # Landroid/media/Image;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->imageTransferYuvData(Landroid/media/Image;)Lcom/android/camera/opengl/capturedata/YUVData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/opengl/capturedata/PreviewDataRender;Lcom/android/camera/opengl/capturedata/YUVData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/capturedata/PreviewDataRender;
    .param p1, "x1"    # Lcom/android/camera/opengl/capturedata/YUVData;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->addVideoFrameData(Lcom/android/camera/opengl/capturedata/YUVData;)V

    return-void
.end method

.method static synthetic access$200()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method private addVideoFrameData(Lcom/android/camera/opengl/capturedata/YUVData;)V
    .locals 2
    .param p1, "yuvData"    # Lcom/android/camera/opengl/capturedata/YUVData;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mQueueCacheYUV:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mQueueCacheYUV:Ljava/util/Collection;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mQueueCacheYUV:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 204
    monitor-exit v1

    .line 206
    :cond_0
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private convertYUVFromYUV420Image(Landroid/media/Image;)[B
    .locals 14
    .param p1, "img"    # Landroid/media/Image;

    .prologue
    const/4 v8, 0x0

    .line 141
    if-nez p1, :cond_0

    move-object v1, v8

    .line 173
    :goto_0
    return-object v1

    .line 144
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v9

    const/16 v10, 0x23

    if-eq v9, v10, :cond_1

    move-object v1, v8

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x42800000    # 64.0f

    div-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x4050000000000000L    # 64.0

    mul-double/2addr v10, v12

    double-to-int v0, v10

    .line 147
    .local v0, "aligned64_width":I
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v3

    .line 149
    .local v3, "height":I
    mul-int v9, v0, v3

    int-to-float v9, v9

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 151
    .local v4, "outBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 152
    .local v7, "y_buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 153
    .local v5, "u_buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 155
    .local v6, "v_buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 156
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 158
    mul-int v9, v0, v3

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 160
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 162
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 166
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    new-array v1, v9, [B

    .line 167
    .local v1, "convertedData":[B
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 168
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    .end local v0    # "aligned64_width":I
    .end local v1    # "convertedData":[B
    .end local v3    # "height":I
    .end local v4    # "outBuf":Ljava/nio/ByteBuffer;
    .end local v5    # "u_buffer":Ljava/nio/ByteBuffer;
    .end local v6    # "v_buffer":Ljava/nio/ByteBuffer;
    .end local v7    # "y_buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v9, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "convertYUVFromYUV420Image error = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move-object v1, v8

    .line 173
    goto/16 :goto_0
.end method

.method private generatePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/ImageSource;Ljava/lang/String;Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 6
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "imageSource"    # Lcom/android/camera/opengl/ImageSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "threadName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "previewSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    sget-object v2, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "generatePreviewCallbackSurface()"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 137
    :goto_0
    return-object v2

    .line 106
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 107
    .local v0, "isClosed":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {p4}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    invoke-virtual {p4}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    const/16 v4, 0x23

    const/16 v5, 0x8

    invoke-static {v2, v3, v4, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    .line 108
    .local v1, "previewCallbackImageReader":Landroid/media/ImageReader;
    new-instance v2, Lcom/android/camera/opengl/capturedata/PreviewDataRender$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/camera/opengl/capturedata/PreviewDataRender$1;-><init>(Lcom/android/camera/opengl/capturedata/PreviewDataRender;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/ImageReader;)V

    invoke-virtual {p1, v2}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 119
    new-instance v2, Lcom/android/camera/opengl/capturedata/PreviewDataRender$2;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/opengl/capturedata/PreviewDataRender$2;-><init>(Lcom/android/camera/opengl/capturedata/PreviewDataRender;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v3, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v3}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    const/16 v4, 0xa

    .line 136
    invoke-virtual {v3, p1, p3, v4}, Lcom/android/camera/async/HandlerFactory;->create(Lcom/android/camera/async/Lifetime;Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v3

    .line 119
    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 137
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    goto :goto_0
.end method

.method private imageTransferYuvData(Landroid/media/Image;)Lcom/android/camera/opengl/capturedata/YUVData;
    .locals 8
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 196
    .local v2, "encodeTime":J
    invoke-direct {p0, p1}, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->convertYUVFromYUV420Image(Landroid/media/Image;)[B

    move-result-object v0

    .line 197
    .local v0, "encodeData":[B
    new-instance v1, Lcom/android/camera/opengl/capturedata/YUVData;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/camera/opengl/capturedata/YUVData;-><init>(J[B)V

    return-object v1
.end method


# virtual methods
.method public clearQueueCacheYUV()V
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mQueueCacheYUV:Ljava/util/Collection;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mQueueCacheYUV:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 179
    monitor-exit v1

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 64
    sget-object v0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "close()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v2, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mQueueCacheYUV:Ljava/util/Collection;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->clearQueueCacheYUV()V

    .line 70
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    .line 76
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    return-void

    .line 70
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 76
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public getMainPreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 3
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 89
    sget-object v0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainPreviewCallbackSurface() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 93
    sget-object v0, Lcom/android/camera/opengl/ImageSource;->MAIN:Lcom/android/camera/opengl/ImageSource;

    const-string v2, "Main Preview Callback Handler"

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->generatePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/ImageSource;Ljava/lang/String;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    monitor-exit v1

    .line 97
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mSurfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mSurfaceWidth:I

    return v0
.end method

.method public getVideoFrameData()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/opengl/capturedata/YUVData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mQueueCacheYUV:Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mQueueCacheYUV:Ljava/util/Collection;

    monitor-enter v2

    .line 185
    const/16 v1, 0x2d

    :try_start_0
    invoke-static {v1}, Lcom/google/common/collect/EvictingQueue;->create(I)Lcom/google/common/collect/EvictingQueue;

    move-result-object v0

    .line 186
    .local v0, "queueCacheYUV":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/camera/opengl/capturedata/YUVData;>;"
    iget-object v1, p0, Lcom/android/camera/opengl/capturedata/PreviewDataRender;->mQueueCacheYUV:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 187
    monitor-exit v2

    .line 190
    .end local v0    # "queueCacheYUV":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/camera/opengl/capturedata/YUVData;>;"
    :goto_0
    return-object v0

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 190
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
