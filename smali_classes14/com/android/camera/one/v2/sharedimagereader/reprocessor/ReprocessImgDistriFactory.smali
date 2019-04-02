.class public Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriFactory;
.super Ljava/lang/Object;
.source "ReprocessImgDistriFactory.java"


# instance fields
.field private final mImageDistributor:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/async/HandlerFactory;)V
    .locals 3
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "imageReader"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .param p3, "handlerFactory"    # Lcom/android/camera/async/HandlerFactory;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v1, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;

    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;-><init>(Lcom/android/camera/debug/Logger$Factory;)V

    iput-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriFactory;->mImageDistributor:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;

    .line 35
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriFactory;->mImageDistributor:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;

    invoke-virtual {p1, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 37
    const-string v1, "RepImageDistributor"

    const/16 v2, 0xa

    invoke-virtual {p3, p1, v1, v2}, Lcom/android/camera/async/HandlerFactory;->create(Lcom/android/camera/async/Lifetime;Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v0

    .line 40
    .local v0, "imageReaderHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/OnReprocessImageAvailableListener;

    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriFactory;->mImageDistributor:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;

    invoke-direct {v1, p2, v2}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/OnReprocessImageAvailableListener;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;)V

    invoke-interface {p2, v1, v0}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->setOnImageAvailableListener(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 43
    return-void
.end method


# virtual methods
.method public provideImageDistributor()Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriFactory;->mImageDistributor:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;

    return-object v0
.end method
