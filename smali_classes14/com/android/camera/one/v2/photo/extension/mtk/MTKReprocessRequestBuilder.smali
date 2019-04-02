.class public Lcom/android/camera/one/v2/photo/extension/mtk/MTKReprocessRequestBuilder;
.super Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilder;
.source "MTKReprocessRequestBuilder.java"


# static fields
.field private static final THUMNBNAIL_SIZE:Landroid/util/Size;


# instance fields
.field private final mReprocessRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x100

    const/16 v2, 0x9a

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKReprocessRequestBuilder;->THUMNBNAIL_SIZE:Landroid/util/Size;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V
    .locals 0
    .param p1, "factory"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilder;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKReprocessRequestBuilder;->mReprocessRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 25
    return-void
.end method


# virtual methods
.method public createReprocessBurstRequestBuilder(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;IZ)Lcom/android/camera/one/v2/core/RequestBuilder;
    .locals 5
    .param p1, "captureResultProxy"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "jpegRotation"    # I
    .param p3, "needImageProcess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKReprocessRequestBuilder;->mReprocessRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    invoke-interface {v1, p1}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->createReprocess(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 58
    .local v0, "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 59
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Lcom/android/camera/one/v2/photo/extension/mtk/MTKReprocessRequestBuilder;->THUMNBNAIL_SIZE:Landroid/util/Size;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 60
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    sget v2, Lcom/android/camera/product_utils/ProductUtil;->BURST_ENCODE_QUALITY:I

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 61
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    sget v2, Lcom/android/camera/product_utils/ProductUtil;->BURST_ENCODE_QUALITY:I

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 63
    if-eqz p3, :cond_0

    .line 64
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 65
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 66
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 68
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 79
    :goto_0
    return-object v0

    .line 71
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 73
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 75
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public createReprocessJpegRequestBuilder(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;IZ)Lcom/android/camera/one/v2/core/RequestBuilder;
    .locals 5
    .param p1, "captureResultProxy"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "jpegRotation"    # I
    .param p3, "needImageProcess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 29
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKReprocessRequestBuilder;->mReprocessRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    invoke-interface {v1, p1}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->createReprocess(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 30
    .local v0, "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 31
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Lcom/android/camera/one/v2/photo/extension/mtk/MTKReprocessRequestBuilder;->THUMNBNAIL_SIZE:Landroid/util/Size;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 32
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    sget v2, Lcom/android/camera/product_utils/ProductUtil;->JPEG_ENCODE_QUALITY:I

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 33
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    sget v2, Lcom/android/camera/product_utils/ProductUtil;->JPEG_ENCODE_QUALITY:I

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 34
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 36
    if-eqz p3, :cond_0

    .line 37
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 39
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 41
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 52
    :goto_0
    return-object v0

    .line 44
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 46
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 48
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method
