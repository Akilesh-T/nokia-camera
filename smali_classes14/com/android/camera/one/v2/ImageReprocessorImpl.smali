.class public Lcom/android/camera/one/v2/ImageReprocessorImpl;
.super Ljava/lang/Object;
.source "ImageReprocessorImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;


# static fields
.field public static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final MAX_AVAILABLE_REPROCESS:I

.field private final MIN_AVAILABLE_REPROCESS:I

.field private final TARGET_REPROCESS_FORMAT:I

.field private final mAvailableInputImageCount:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvailableOutputImageCount:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

.field private final mImageWriterProxy:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;

.field private final mOutputImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

.field private final mReprocessRequestBuilder:Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ImgRepImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;II)V
    .locals 1
    .param p1, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p2, "rootReprocessTemplate"    # Lcom/android/camera/one/v2/core/RequestTemplate;
    .param p3, "imageWriterProxy"    # Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;
    .param p6, "outputImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p7, "imageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p8, "targetInputFormat"    # I
    .param p9, "maxAvailableImageCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/core/RequestTemplate;",
            "Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/photo/ImageRotationCalculator;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p4, "availableInputImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .local p5, "availableOutputImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 50
    invoke-static {p2}, Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilderCreator;->create(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->mReprocessRequestBuilder:Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilder;

    .line 51
    iput-object p3, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->mImageWriterProxy:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;

    .line 52
    iput-object p4, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->mAvailableInputImageCount:Lcom/android/camera/async/Observable;

    .line 53
    iput-object p5, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->mAvailableOutputImageCount:Lcom/android/camera/async/Observable;

    .line 54
    iput-object p6, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->mOutputImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 55
    iput-object p7, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    .line 56
    iput p9, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->MAX_AVAILABLE_REPROCESS:I

    .line 57
    const/4 v0, 0x1

    invoke-static {p9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->MIN_AVAILABLE_REPROCESS:I

    .line 58
    iput p8, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->TARGET_REPROCESS_FORMAT:I

    .line 59
    return-void
.end method


# virtual methods
.method public getAvailableCount()I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->mAvailableInputImageCount:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->mAvailableOutputImageCount:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public tryReprocessImage(Lcom/android/camera/one/v2/core/FrameServer$Session;Ljava/util/Set;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Optional;Lcom/android/camera/one/v2/imagesaver/ImageSaver;ZLcom/android/camera/stats/profiler/Profile;)Z
    .locals 22
    .param p1, "session"    # Lcom/android/camera/one/v2/core/FrameServer$Session;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "image"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/common/util/concurrent/ListenableFuture;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/common/base/Optional;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "imageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "needImageProcess"    # Z
    .param p8, "guard"    # Lcom/android/camera/stats/profiler/Profile;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer$Session;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;",
            ">;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/one/v2/imagesaver/ImageSaver;",
            "Z",
            "Lcom/android/camera/stats/profiler/Profile;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "processingFlags":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;>;"
    .local p4, "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .local p5, "imgName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    if-nez p3, :cond_0

    const/4 v4, 0x0

    .line 219
    :goto_0
    return v4

    .line 70
    :cond_0
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->TARGET_REPROCESS_FORMAT:I

    if-eq v4, v5, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/one/v2/ImageReprocessorImpl;->getAvailableCount()I

    move-result v15

    .line 73
    .local v15, "availableCount":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->MIN_AVAILABLE_REPROCESS:I

    if-ge v15, v4, :cond_4

    .line 74
    sget-object v4, Lcom/android/camera/one/v2/ImageReprocessorImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reprocess Image fail : AvailableCount = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    if-eqz p8, :cond_2

    const-string v4, "reprocess Image fail"

    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 76
    :cond_2
    sget-object v4, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;->COMPRESS_TO_BURST_JEPG:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    move-object/from16 v0, p6

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->addFastThumbnail(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 78
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 79
    const/4 v4, 0x1

    goto :goto_0

    .line 81
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 85
    :cond_4
    sget-object v4, Lcom/android/camera/one/v2/ImageReprocessorImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reprocess Image request : Timestamp = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", format = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    if-eqz p8, :cond_5

    invoke-interface/range {p8 .. p8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 88
    :cond_5
    const/16 v18, 0x0

    .line 90
    .local v18, "reprocessbuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    :try_start_0
    sget-object v4, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;->COMPRESS_TO_JEPG:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 91
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->mReprocessRequestBuilder:Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilder;

    invoke-interface/range {p4 .. p4}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    invoke-interface {v5}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->getSupplier()Lcom/google/common/base/Supplier;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, p7

    invoke-virtual {v8, v4, v5, v0}, Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilder;->createReprocessJpegRequestBuilder(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;IZ)Lcom/android/camera/one/v2/core/RequestBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 99
    :cond_6
    :goto_1
    if-nez v18, :cond_9

    .line 100
    sget-object v4, Lcom/android/camera/one/v2/ImageReprocessorImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknow processingFlags : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    if-eqz p8, :cond_7

    const-string v4, "unknow processingFlags"

    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 102
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 92
    :cond_8
    :try_start_1
    sget-object v4, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;->COMPRESS_TO_BURST_JEPG:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 93
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->mReprocessRequestBuilder:Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilder;

    invoke-interface/range {p4 .. p4}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    invoke-interface {v5}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->getSupplier()Lcom/google/common/base/Supplier;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, p7

    invoke-virtual {v8, v4, v5, v0}, Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilder;->createReprocessBurstRequestBuilder(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;IZ)Lcom/android/camera/one/v2/core/RequestBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v18

    goto :goto_1

    .line 95
    :catch_0
    move-exception v16

    .line 96
    .local v16, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/camera/one/v2/ImageReprocessorImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create Reprocess Request error = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", error = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 104
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_9
    if-eqz p8, :cond_a

    const-string v4, "ReprocessRequestBuilder created"

    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 106
    :cond_a
    move-object/from16 v0, p6

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->addFastThumbnail(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v12, 0x1

    .line 107
    .local v12, "needThumbnail":Z
    :goto_2
    sget-object v4, Lcom/android/camera/one/v2/ImageReprocessorImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "needThumbnail = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    if-eqz p8, :cond_b

    const-string v4, "addFastThumbnail done"

    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 110
    :cond_b
    if-nez p1, :cond_f

    const/16 v19, 0x1

    .line 111
    .local v19, "useLocalSession":Z
    :goto_3
    if-eqz v19, :cond_11

    .line 112
    if-eqz p8, :cond_c

    invoke-interface/range {p8 .. p8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 114
    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer;->tryCreateExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object p1

    .line 119
    :goto_4
    if-nez p1, :cond_10

    .line 120
    if-eqz p8, :cond_d

    const-string v4, "null session error"

    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 121
    :cond_d
    sget-object v4, Lcom/android/camera/one/v2/ImageReprocessorImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "null session error = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 106
    .end local v12    # "needThumbnail":Z
    .end local v19    # "useLocalSession":Z
    :cond_e
    const/4 v12, 0x0

    goto :goto_2

    .line 110
    .restart local v12    # "needThumbnail":Z
    :cond_f
    const/16 v19, 0x0

    goto :goto_3

    .line 115
    .restart local v19    # "useLocalSession":Z
    :catch_1
    move-exception v16

    .line 116
    .restart local v16    # "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/camera/one/v2/ImageReprocessorImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create Local session error = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", error = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_4

    .line 124
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_10
    if-eqz p8, :cond_11

    const-string v4, "Local Session created"

    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 128
    :cond_11
    if-eqz p8, :cond_12

    :try_start_3
    invoke-interface/range {p8 .. p8}, Lcom/android/camera/stats/profiler/Profile;->mark()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 131
    :cond_12
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->mOutputImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v17

    .line 141
    .local v17, "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    if-eqz v17, :cond_1c

    .line 142
    if-eqz p8, :cond_13

    :try_start_5
    const-string v4, "ImageStream created"

    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 144
    :cond_13
    :try_start_6
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v6

    .line 145
    .local v6, "timestamp":J
    move-object/from16 v9, v17

    .line 147
    .local v9, "reprocessStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    new-instance v11, Lcom/android/camera/one/v2/photo/MetadataFuture;

    invoke-direct {v11}, Lcom/android/camera/one/v2/photo/MetadataFuture;-><init>()V

    .line 148
    .local v11, "reprocessMetadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 149
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 151
    new-instance v4, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;

    move-object/from16 v5, p0

    move-object/from16 v8, p8

    move-object/from16 v10, p6

    move-object/from16 v13, p5

    move-object/from16 v14, p2

    invoke-direct/range {v4 .. v14}, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;-><init>(Lcom/android/camera/one/v2/ImageReprocessorImpl;JLcom/android/camera/stats/profiler/Profile;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/one/v2/photo/MetadataFuture;ZLcom/google/common/base/Optional;Ljava/util/Set;)V

    invoke-interface {v9, v6, v7, v4}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->addImageCallback(JLjava/lang/Runnable;)V

    .line 182
    if-eqz p8, :cond_14

    const-string v4, "Reprocess Request created"

    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 184
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/ImageReprocessorImpl;->mImageWriterProxy:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageWriterProxy;->queueInputImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    .line 185
    if-eqz p8, :cond_15

    const-string v4, "queue InputImage done"

    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 186
    :cond_15
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/camera/one/v2/core/Request;

    const/4 v5, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 187
    if-eqz p8, :cond_16

    const-string v4, "Reprocess Request submited"

    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 188
    :cond_16
    sget-object v4, Lcom/android/camera/one/v2/ImageReprocessorImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reprocess Image submit : Timestamp = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 192
    if-eqz v19, :cond_17

    if-eqz p1, :cond_17

    .line 193
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 195
    :cond_17
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 132
    .end local v6    # "timestamp":J
    .end local v9    # "reprocessStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v11    # "reprocessMetadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    .end local v17    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_2
    move-exception v16

    .line 133
    .restart local v16    # "e":Ljava/lang/Exception;
    :try_start_7
    sget-object v4, Lcom/android/camera/one/v2/ImageReprocessorImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create ImageStream error = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", error = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 134
    if-eqz p8, :cond_18

    const-string v4, "create ImageStream error"

    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 135
    :cond_18
    if-eqz v19, :cond_19

    if-eqz p1, :cond_19

    .line 136
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    .line 138
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 196
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v17    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_3
    move-exception v16

    .line 197
    .restart local v16    # "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/camera/one/v2/ImageReprocessorImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "submit Reprocess Request error = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", error = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    invoke-interface/range {v17 .. v17}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    .line 199
    if-eqz v19, :cond_1a

    if-eqz p1, :cond_1a

    .line 200
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    .line 202
    :cond_1a
    if-eqz p8, :cond_1b

    const-string v4, "submit Reprocess Request error"

    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 219
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v17    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_1b
    :goto_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 205
    .restart local v17    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :cond_1c
    if-eqz p8, :cond_1d

    const-string v4, "null imageStream error"

    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 206
    :cond_1d
    sget-object v4, Lcom/android/camera/one/v2/ImageReprocessorImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "null imageStream error = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 207
    if-eqz v19, :cond_1b

    if-eqz p1, :cond_1b

    .line 208
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    .line 211
    .end local v17    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_4
    move-exception v16

    .line 212
    .restart local v16    # "e":Ljava/lang/Exception;
    if-eqz p8, :cond_1e

    const-string v4, "unknow error"

    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 213
    :cond_1e
    sget-object v4, Lcom/android/camera/one/v2/ImageReprocessorImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknow error = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", error = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 214
    if-eqz v19, :cond_1b

    if-eqz p1, :cond_1b

    .line 215
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto :goto_5
.end method
