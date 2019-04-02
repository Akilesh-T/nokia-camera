.class public Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;
.super Ljava/lang/Object;
.source "SharedImageReaderFactory.java"


# instance fields
.field private final mAvailableImageCount:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalTimestampQueue:Lcom/android/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;


# direct methods
.method public constructor <init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/async/HandlerFactory;)V
    .locals 6
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "imageReader"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .param p3, "handlerFactory"    # Lcom/android/camera/async/HandlerFactory;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v1, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorFactory;

    new-instance v3, Lcom/android/camera/async/Lifetime;

    invoke-direct {v3, p1}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    invoke-direct {v1, v3, p2, p3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/async/HandlerFactory;)V

    .line 59
    .local v1, "imageDistributorFactory":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorFactory;
    invoke-virtual {v1}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorFactory;->provideImageDistributor()Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;

    move-result-object v0

    .line 60
    .local v0, "imageDistributor":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;
    invoke-virtual {v1}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorFactory;->provideGlobalTimestampCallback()Lcom/android/camera/async/Updatable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->mGlobalTimestampQueue:Lcom/android/camera/async/Updatable;

    .line 62
    new-instance v2, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;

    invoke-interface {p2}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getMaxImages()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-direct {v2, v3}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;-><init>(I)V

    .line 63
    .local v2, "ticketPool":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;
    invoke-virtual {p1, v2}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 64
    invoke-interface {v2}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;->getAvailableTicketCount()Lcom/android/camera/async/Observable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->mAvailableImageCount:Lcom/android/camera/async/Observable;

    .line 65
    new-instance v3, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    new-instance v4, Lcom/android/camera/async/Lifetime;

    invoke-direct {v4, p1}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    .line 66
    invoke-interface {p2}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5, v0}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;Landroid/view/Surface;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;)V

    iput-object v3, p0, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->mSharedImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 67
    return-void
.end method


# virtual methods
.method public provideAvailableImageCount()Lcom/android/camera/async/Observable;
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
    .line 78
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->mAvailableImageCount:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public provideGlobalTimestampQueue()Lcom/android/camera/async/Updatable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->mGlobalTimestampQueue:Lcom/android/camera/async/Updatable;

    return-object v0
.end method

.method public provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->mSharedImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    return-object v0
.end method
