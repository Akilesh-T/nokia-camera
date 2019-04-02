.class public final Lcom/android/camera/one/v2/LoggingImageReader;
.super Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;
.source "LoggingImageReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/LoggingImageReader$LoggingImageProxy;
    }
.end annotation


# instance fields
.field private final mLog:Lcom/android/camera/debug/Logger;

.field private final mNumOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 2
    .param p1, "delegate"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .param p2, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;)V

    .line 54
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "LoggingImageReader"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/LoggingImageReader;->mLog:Lcom/android/camera/debug/Logger;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/LoggingImageReader;->mNumOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/LoggingImageReader;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/LoggingImageReader;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/one/v2/LoggingImageReader;->decrementOpenImageCount()V

    return-void
.end method

.method private decorateNewImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .locals 1
    .param p1, "image"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/one/v2/LoggingImageReader;->incrementOpenImageCount()V

    .line 76
    new-instance v0, Lcom/android/camera/one/v2/LoggingImageReader$LoggingImageProxy;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/LoggingImageReader$LoggingImageProxy;-><init>(Lcom/android/camera/one/v2/LoggingImageReader;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    goto :goto_0
.end method

.method private decrementOpenImageCount()V
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/camera/one/v2/LoggingImageReader;->mNumOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 95
    .local v0, "numOpenImages":I
    return-void
.end method

.method private incrementOpenImageCount()V
    .locals 6

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/camera/one/v2/LoggingImageReader;->mNumOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 87
    .local v0, "numOpenImages":I
    invoke-virtual {p0}, Lcom/android/camera/one/v2/LoggingImageReader;->getMaxImages()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/camera/one/v2/LoggingImageReader;->mLog:Lcom/android/camera/debug/Logger;

    const-string v2, "Open Image Count (%d) exceeds maximum (%d)!"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/camera/one/v2/LoggingImageReader;->getMaxImages()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 88
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public acquireLatestImage()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;->acquireLatestImage()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/LoggingImageReader;->decorateNewImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v0

    return-object v0
.end method

.method public acquireNextImage()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;->acquireNextImage()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/LoggingImageReader;->decorateNewImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/one/v2/LoggingImageReader;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/one/v2/LoggingImageReader;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 82
    invoke-super {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;->close()V

    .line 83
    return-void
.end method
