.class public Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;
.super Ljava/lang/Object;
.source "ImageReprocessorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory$ImageReprocessorStub;
    }
.end annotation


# instance fields
.field private final mImageReprocessor:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;


# direct methods
.method public constructor <init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/async/HandlerFactory;I)V
    .locals 16
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "session"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p5, "rootReprocessTemplate"    # Lcom/android/camera/one/v2/core/RequestTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "reprocessImageReader"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "imageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p8, "handlerFactory"    # Lcom/android/camera/async/HandlerFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "targetReprocessFormat"    # I

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v14, 0x1

    .line 60
    .local v14, "isReprocessable":Z
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->isReprocessable()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p6, :cond_1

    .line 62
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;->getInputSurface()Landroid/view/Surface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface/range {p6 .. p6}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getMaxImages()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v13

    .line 63
    .local v13, "imageWriter":Landroid/media/ImageWriter;
    if-eqz v13, :cond_0

    .line 64
    new-instance v5, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-direct {v5, v0, v13, v1}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;-><init>(Lcom/android/camera/async/Lifetime;Landroid/media/ImageWriter;Lcom/android/camera/async/HandlerFactory;)V

    .line 65
    .local v5, "imageWriterProxy":Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;
    invoke-virtual {v5}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;->providemAvailableImageCount()Lcom/android/camera/async/Observable;

    move-result-object v6

    .line 67
    .local v6, "availableInputImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    invoke-interface/range {p4 .. p4}, Lcom/android/camera/one/OneCameraCharacteristics;->getMaxReprocessCaptureStall()I

    move-result v11

    .line 68
    .local v11, "MAX_AVALIABLE_IMAGE_COUNT":I
    new-instance v2, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriFactory;

    new-instance v3, Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    move-object/from16 v0, p6

    move-object/from16 v1, p8

    invoke-direct {v2, v3, v0, v1}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/async/HandlerFactory;)V

    .line 69
    invoke-virtual {v2}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriFactory;->provideImageDistributor()Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;

    move-result-object v12

    .line 70
    .local v12, "imageDistributor":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;
    new-instance v15, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;

    invoke-direct {v15, v11}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;-><init>(I)V

    .line 71
    .local v15, "ticketPool":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 73
    invoke-interface {v15}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;->getAvailableTicketCount()Lcom/android/camera/async/Observable;

    move-result-object v7

    .line 75
    .local v7, "availableOutputImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    new-instance v8, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    new-instance v2, Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    .line 76
    invoke-interface/range {p6 .. p6}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-direct {v8, v2, v15, v3, v12}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;Landroid/view/Surface;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;)V

    .line 94
    .end local v12    # "imageDistributor":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;
    .end local v13    # "imageWriter":Landroid/media/ImageWriter;
    .end local v15    # "ticketPool":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;
    .local v8, "outputImageReader":Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    :goto_0
    if-eqz v14, :cond_2

    new-instance v2, Lcom/android/camera/one/v2/ImageReprocessorImpl;

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v9, p7

    move/from16 v10, p9

    invoke-direct/range {v2 .. v11}, Lcom/android/camera/one/v2/ImageReprocessorImpl;-><init>(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;II)V

    :goto_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;->mImageReprocessor:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

    .line 95
    return-void

    .line 78
    .end local v5    # "imageWriterProxy":Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;
    .end local v6    # "availableInputImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v7    # "availableOutputImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v8    # "outputImageReader":Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .end local v11    # "MAX_AVALIABLE_IMAGE_COUNT":I
    .restart local v13    # "imageWriter":Landroid/media/ImageWriter;
    :cond_0
    const/4 v14, 0x0

    .line 79
    const/4 v5, 0x0

    .line 80
    .restart local v5    # "imageWriterProxy":Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;
    const/4 v6, 0x0

    .line 81
    .restart local v6    # "availableInputImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 82
    .restart local v7    # "availableOutputImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 83
    .restart local v8    # "outputImageReader":Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    const/4 v11, 0x0

    .restart local v11    # "MAX_AVALIABLE_IMAGE_COUNT":I
    goto :goto_0

    .line 86
    .end local v5    # "imageWriterProxy":Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;
    .end local v6    # "availableInputImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v7    # "availableOutputImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v8    # "outputImageReader":Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .end local v11    # "MAX_AVALIABLE_IMAGE_COUNT":I
    .end local v13    # "imageWriter":Landroid/media/ImageWriter;
    :cond_1
    const/4 v14, 0x0

    .line 87
    const/4 v5, 0x0

    .line 88
    .restart local v5    # "imageWriterProxy":Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;
    const/4 v6, 0x0

    .line 89
    .restart local v6    # "availableInputImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 90
    .restart local v7    # "availableOutputImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 91
    .restart local v8    # "outputImageReader":Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    const/4 v11, 0x0

    .restart local v11    # "MAX_AVALIABLE_IMAGE_COUNT":I
    goto :goto_0

    .line 94
    :cond_2
    new-instance v2, Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory$ImageReprocessorStub;

    invoke-direct {v2}, Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory$ImageReprocessorStub;-><init>()V

    goto :goto_1
.end method


# virtual methods
.method public provideImageReprocessor()Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;->mImageReprocessor:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

    return-object v0
.end method
