.class public final Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;
.super Ljava/lang/Object;
.source "AndroidImageReaderProxy.java"

# interfaces
.implements Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;


# instance fields
.field private final mDelegate:Landroid/media/ImageReader;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/media/ImageReader;)V
    .locals 1
    .param p1, "delegate"    # Landroid/media/ImageReader;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mLock:Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mDelegate:Landroid/media/ImageReader;

    .line 41
    return-void
.end method

.method private static imageFormatToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "imageFormat"    # I

    .prologue
    .line 52
    sparse-switch p0, :sswitch_data_0

    .line 74
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 54
    :sswitch_0
    const-string v0, "JPEG"

    goto :goto_0

    .line 56
    :sswitch_1
    const-string v0, "NV16"

    goto :goto_0

    .line 58
    :sswitch_2
    const-string v0, "NV21"

    goto :goto_0

    .line 60
    :sswitch_3
    const-string v0, "RAW10"

    goto :goto_0

    .line 62
    :sswitch_4
    const-string v0, "RAW_SENSOR"

    goto :goto_0

    .line 64
    :sswitch_5
    const-string v0, "RGB_565"

    goto :goto_0

    .line 66
    :sswitch_6
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 68
    :sswitch_7
    const-string v0, "YUV_420_888"

    goto :goto_0

    .line 70
    :sswitch_8
    const-string v0, "YUY2"

    goto :goto_0

    .line 72
    :sswitch_9
    const-string v0, "YV12"

    goto :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x4 -> :sswitch_5
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
        0x14 -> :sswitch_8
        0x20 -> :sswitch_4
        0x23 -> :sswitch_7
        0x25 -> :sswitch_3
        0x100 -> :sswitch_0
        0x32315659 -> :sswitch_9
    .end sparse-switch
.end method

.method public static newInstance(IIII)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "maxImages"    # I

    .prologue
    .line 47
    new-instance v0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;

    invoke-static {p0, p1, p2, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;-><init>(Landroid/media/ImageReader;)V

    return-object v0
.end method


# virtual methods
.method public acquireLatestImage()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 116
    iget-object v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mDelegate:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    .line 118
    .local v0, "image":Landroid/media/Image;
    if-nez v0, :cond_0

    .line 119
    const/4 v1, 0x0

    monitor-exit v2

    .line 121
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;-><init>(Landroid/media/Image;)V

    monitor-exit v2

    goto :goto_0

    .line 123
    .end local v0    # "image":Landroid/media/Image;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public acquireNextImage()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 129
    iget-object v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mDelegate:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 131
    .local v0, "image":Landroid/media/Image;
    if-nez v0, :cond_0

    .line 132
    const/4 v1, 0x0

    monitor-exit v2

    .line 134
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;-><init>(Landroid/media/Image;)V

    monitor-exit v2

    goto :goto_0

    .line 136
    .end local v0    # "image":Landroid/media/Image;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mDelegate:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 158
    monitor-exit v1

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mDelegate:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    monitor-exit v1

    return v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getImageFormat()I
    .locals 2

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mDelegate:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v0

    monitor-exit v1

    return v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMaxImages()I
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mDelegate:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getMaxImages()I

    move-result v0

    monitor-exit v1

    return v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mDelegate:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mDelegate:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    monitor-exit v1

    return v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnImageAvailableListener(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mDelegate:Landroid/media/ImageReader;

    new-instance v2, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy$1;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy$1;-><init>(Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;)V

    invoke-virtual {v0, v2, p2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    iget-object v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->mDelegate:Landroid/media/ImageReader;

    invoke-static {v1}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 166
    .local v0, "tsh":Lcom/google/common/base/Objects$ToStringHelper;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    const-string v1, "width"

    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v1

    const-string v2, "height"

    .line 168
    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v1

    const-string v2, "format"

    .line 169
    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->getImageFormat()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->imageFormatToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    return-object v1

    .line 166
    .end local v0    # "tsh":Lcom/google/common/base/Objects$ToStringHelper;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
