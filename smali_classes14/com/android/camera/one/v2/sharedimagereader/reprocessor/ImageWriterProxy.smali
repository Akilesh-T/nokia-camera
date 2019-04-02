.class public Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;
.super Ljava/lang/Object;
.source "ImageWriterProxy.java"


# instance fields
.field private final mAvailableImageCount:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageWriter:Landroid/media/ImageWriter;

.field private final mMaxImageCount:I


# direct methods
.method public constructor <init>(Lcom/android/camera/async/Lifetime;Landroid/media/ImageWriter;Lcom/android/camera/async/HandlerFactory;)V
    .locals 3
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "imageWriter"    # Landroid/media/ImageWriter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "handlerFactory"    # Lcom/android/camera/async/HandlerFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;->mImageWriter:Landroid/media/ImageWriter;

    .line 41
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v1}, Landroid/media/ImageWriter;->getMaxImages()I

    move-result v1

    iput v1, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;->mMaxImageCount:I

    .line 42
    new-instance v1, Lcom/android/camera/async/ConcurrentState;

    iget v2, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;->mMaxImageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;->mAvailableImageCount:Lcom/android/camera/async/ConcurrentState;

    .line 44
    const-string v1, "ImageWriterHandler"

    const/16 v2, 0xa

    invoke-virtual {p3, p1, v1, v2}, Lcom/android/camera/async/HandlerFactory;->create(Lcom/android/camera/async/Lifetime;Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v0

    .line 47
    .local v0, "imageWriterHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy$1;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy$1;-><init>(Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;)V

    invoke-virtual {p2, v1, v0}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    .line 56
    new-instance v1, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy$2;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy$2;-><init>(Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;->mMaxImageCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;)Lcom/android/camera/async/ConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;->mAvailableImageCount:Lcom/android/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;)Landroid/media/ImageWriter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;->mImageWriter:Landroid/media/ImageWriter;

    return-object v0
.end method


# virtual methods
.method public providemAvailableImageCount()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;->mAvailableImageCount:Lcom/android/camera/async/ConcurrentState;

    return-object v0
.end method

.method public queueInputImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V
    .locals 3
    .param p1, "image"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;->mImageWriter:Landroid/media/ImageWriter;

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getOriginImage()Landroid/media/Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 71
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;->mAvailableImageCount:Lcom/android/camera/async/ConcurrentState;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;->mAvailableImageCount:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 72
    return-void
.end method
