.class public Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;
.super Lcom/thirdparty/arcsoft/engine/ImageEngine;
.source "DualSightImageEngine.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private final mBeautyLevelSetting:I

.field private final mBeautySetting:Z

.field private mData:[B

.field private final mDeviceRotation:I

.field private mFinalImageSize:Lcom/android/camera/util/Size;

.field private final mImageGenerator:Lcom/android/camera/opengl/image/ImageGenerator;

.field private final mImgFormat:I

.field private final mMainImageSize:Lcom/android/camera/util/Size;

.field private final mMainSrcBitmap:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlaveImgSize:Lcom/android/camera/util/Size;

.field private final mSlaveSrcBitmap:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "DSImgEngine"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZLcom/android/camera/util/Size;Lcom/android/camera/util/Size;ILcom/android/camera/opengl/image/ImageGenerator;ZII)V
    .locals 2
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requiredFrameNum"    # I
    .param p3, "infinite"    # Z
    .param p4, "mainImgSize"    # Lcom/android/camera/util/Size;
    .param p5, "slaveImgSize"    # Lcom/android/camera/util/Size;
    .param p6, "deviceRotation"    # I
    .param p7, "imageGenerator"    # Lcom/android/camera/opengl/image/ImageGenerator;
    .param p8, "beautySetting"    # Z
    .param p9, "beautyLevelSetting"    # I
    .param p10, "imgFormat"    # I

    .prologue
    .line 51
    const-class v0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/thirdparty/arcsoft/engine/ImageEngine;-><init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    iput-object p4, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mMainImageSize:Lcom/android/camera/util/Size;

    .line 56
    iput-object p5, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mSlaveImgSize:Lcom/android/camera/util/Size;

    .line 57
    iput p6, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mDeviceRotation:I

    .line 58
    iput-object p7, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mImageGenerator:Lcom/android/camera/opengl/image/ImageGenerator;

    .line 59
    iput-boolean p8, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mBeautySetting:Z

    .line 60
    iput p9, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mBeautyLevelSetting:I

    .line 61
    iput p10, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mImgFormat:I

    .line 63
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mMainSrcBitmap:Lcom/google/common/util/concurrent/SettableFuture;

    .line 64
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mSlaveSrcBitmap:Lcom/google/common/util/concurrent/SettableFuture;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mMainSrcBitmap:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$100(Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mSlaveSrcBitmap:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$200(Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;

    .prologue
    .line 23
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mDeviceRotation:I

    return v0
.end method

.method static synthetic access$300(Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mBeautySetting:Z

    return v0
.end method

.method static synthetic access$400(Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;

    .prologue
    .line 23
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mBeautyLevelSetting:I

    return v0
.end method

.method static synthetic access$500(Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;)Lcom/android/camera/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mFinalImageSize:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method static synthetic access$600(Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;)Lcom/android/camera/opengl/image/ImageGenerator;
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mImageGenerator:Lcom/android/camera/opengl/image/ImageGenerator;

    return-object v0
.end method

.method static synthetic access$700()Lcom/android/ex/camera2/portability/debug/Log$Tag;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method protected abortEngineInternal()V
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessAbort()V

    .line 84
    :cond_0
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected initEngineInternal()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 69
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mImageGenerator:Lcom/android/camera/opengl/image/ImageGenerator;

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mMainImageSize:Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mSlaveImgSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/opengl/image/ImageGenerator;->calculateFinalImageSize(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mFinalImageSize:Lcom/android/camera/util/Size;

    .line 74
    sget-object v1, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFinalImageSize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mFinalImageSize:Lcom/android/camera/util/Size;

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mFinalImageSize:Lcom/android/camera/util/Size;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected inputImageInternal(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;[BZ)Z
    .locals 3
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p3, "data"    # [B
    .param p4, "sync"    # Z

    .prologue
    const/4 v0, 0x0

    .line 96
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    if-eqz p3, :cond_0

    .line 101
    sget-object v0, Lcom/android/camera/one/DualSightCamType;->MAIN:Lcom/android/camera/one/DualSightCamType;

    if-ne p2, v0, :cond_2

    .line 102
    iput-object p3, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mData:[B

    .line 105
    :cond_2
    new-instance v0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine$1;-><init>(Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;Lcom/android/camera/one/DualSightCamType;[B)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 140
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected processReultImageInternal()Z
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 145
    iget-object v4, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 146
    :try_start_0
    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v4

    move v3, v5

    .line 182
    :goto_0
    return v3

    .line 147
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    const/4 v2, 0x0

    .line 151
    .local v2, "result":Landroid/graphics/Bitmap;
    :try_start_1
    iget-object v6, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mImageGenerator:Lcom/android/camera/opengl/image/ImageGenerator;

    iget-object v7, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mFinalImageSize:Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mMainSrcBitmap:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v3}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mSlaveSrcBitmap:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v4}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iget v8, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mDeviceRotation:I

    add-int/lit8 v8, v8, 0x5a

    rem-int/lit16 v8, v8, 0x168

    invoke-virtual {v6, v7, v3, v4, v8}, Lcom/android/camera/opengl/image/ImageGenerator;->drawFinalImage(Lcom/android/camera/util/Size;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 152
    sget-object v3, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drawFinalImage - result : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    :try_start_2
    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mMainSrcBitmap:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v3}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mSlaveSrcBitmap:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v3}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    :goto_2
    if-eqz v2, :cond_8

    .line 167
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 168
    :try_start_5
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v6, Lcom/android/camera/product_utils/ProductUtil;->JPEG_ENCODE_QUALITY:I

    invoke-virtual {v2, v3, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 169
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->getOnProcessStateListener()Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/16 v8, 0x100

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-interface {v3, v6, v7, v8, v9}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessDone(III[B)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 170
    if-eqz v1, :cond_1

    if-eqz v4, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 178
    :cond_1
    :goto_3
    if-eqz v2, :cond_2

    .line 179
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v3

    .line 156
    .restart local v2    # "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8
    sget-object v3, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recycle mMainSrcBitmap error : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 175
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_9
    sget-object v3, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 178
    if-eqz v2, :cond_3

    .line 179
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move v3, v5

    .line 176
    goto/16 :goto_0

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 163
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_a
    sget-object v3, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recycle mSlaveSrcBitmap error : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_2

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    if-eqz v2, :cond_4

    .line 179
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    throw v3

    .line 170
    .restart local v1    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v3

    :try_start_b
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    .line 167
    :catch_4
    move-exception v3

    :try_start_c
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 170
    :catchall_2
    move-exception v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    :goto_4
    if-eqz v1, :cond_6

    if-eqz v4, :cond_7

    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_6
    :goto_5
    :try_start_e
    throw v3

    :catch_5
    move-exception v6

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_5

    .line 178
    .end local v1    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :cond_8
    if-eqz v2, :cond_9

    .line 179
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    move v3, v5

    .line 172
    goto/16 :goto_0

    .line 170
    .restart local v1    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :catchall_3
    move-exception v3

    goto :goto_4
.end method

.method protected releaseEngineInternal()V
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/DualSightImageEngine;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 91
    monitor-exit v1

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
