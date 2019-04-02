.class Lcom/android/camera/one/v2/Level3OneCameraFactory$2;
.super Ljava/lang/Object;
.source "Level3OneCameraFactory.java"

# interfaces
.implements Lcom/android/camera/one/v2/initialization/CameraStarter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/Level3OneCameraFactory;->createOneCamera(Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/FatalErrorHandler;)Lcom/android/camera/one/OneCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

.field final synthetic val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field final synthetic val$device:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

.field final synthetic val$fatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

.field final synthetic val$imageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

.field final synthetic val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

.field final synthetic val$mainThread:Lcom/android/camera/async/MainThread;

.field final synthetic val$slaveCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

.field final synthetic val$slaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/Level3OneCameraFactory;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/MainThread;Lcom/android/camera/FatalErrorHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/Level3OneCameraFactory;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    iput-object p2, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iput-object p3, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    iput-object p4, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    iput-object p5, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$device:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    iput-object p6, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$slaveCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    iput-object p7, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$slaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iput-object p8, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    iput-object p9, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$fatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createImageReaderForJpegPicture(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .locals 6
    .param p1, "previewLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "targetCaptureSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 321
    new-instance v0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;

    new-instance v1, Lcom/android/camera/one/v2/LoggingImageReader;

    .line 323
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    const/16 v4, 0x100

    iget-object v5, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    invoke-static {v5}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$200(Lcom/android/camera/one/v2/Level3OneCameraFactory;)I

    move-result v5

    .line 322
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->newInstance(IIII)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v2

    .line 323
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/one/v2/LoggingImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/debug/Logger$Factory;)V

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;)V

    .line 324
    .local v0, "imageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    invoke-static {}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "createImageReaderForDualSightCapture with format : 256"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 326
    return-object v0
.end method

.method public createImageReaderForPicture(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .locals 7
    .param p1, "previewLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;

    .prologue
    .line 250
    invoke-virtual {p2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v1

    .line 251
    .local v1, "targetCaptureSize":Lcom/android/camera/util/Size;
    new-instance v0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;

    new-instance v2, Lcom/android/camera/one/v2/LoggingImageReader;

    .line 253
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    invoke-static {v5}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$100(Lcom/android/camera/one/v2/Level3OneCameraFactory;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    invoke-static {v6}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$200(Lcom/android/camera/one/v2/Level3OneCameraFactory;)I

    move-result v6

    .line 252
    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->newInstance(IIII)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v3

    .line 253
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/LoggingImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/debug/Logger$Factory;)V

    invoke-direct {v0, v2}, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;)V

    .line 254
    .local v0, "imageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    invoke-virtual {p1, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 255
    return-object v0
.end method

.method public createImageReaderForRaw(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;I)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .locals 8
    .param p1, "previewLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p3, "rawImageFormat"    # I

    .prologue
    const/4 v0, 0x0

    .line 305
    invoke-virtual {p2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v3

    .line 306
    .local v3, "targetCaptureSize":Lcom/android/camera/util/Size;
    iget-object v4, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v4, p3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v2

    .line 307
    .local v2, "supportedRawSize":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    if-nez v2, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-object v0

    .line 308
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 310
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/Size;

    .line 311
    .local v1, "rawSize":Lcom/android/camera/util/Size;
    iget-object v4, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    invoke-static {v4}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$300(Lcom/android/camera/one/v2/Level3OneCameraFactory;)Lcom/android/camera/debug/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Raw Picture Size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 312
    new-instance v0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;

    new-instance v4, Lcom/android/camera/one/v2/LoggingImageReader;

    .line 314
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    invoke-static {v7}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$200(Lcom/android/camera/one/v2/Level3OneCameraFactory;)I

    move-result v7

    .line 313
    invoke-static {v5, v6, p3, v7}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->newInstance(IIII)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v5

    .line 314
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/camera/one/v2/LoggingImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/debug/Logger$Factory;)V

    invoke-direct {v0, v4}, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;)V

    .line 315
    .local v0, "imageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    invoke-virtual {p1, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    goto :goto_0
.end method

.method public createImageReaderForReprocess(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;I)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .locals 6
    .param p1, "previewLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p3, "targetImageFormat"    # I

    .prologue
    .line 295
    invoke-virtual {p2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v1

    .line 296
    .local v1, "targetCaptureSize":Lcom/android/camera/util/Size;
    new-instance v0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;

    new-instance v2, Lcom/android/camera/one/v2/LoggingImageReader;

    .line 298
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    invoke-static {v5}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$200(Lcom/android/camera/one/v2/Level3OneCameraFactory;)I

    move-result v5

    .line 297
    invoke-static {v3, v4, p3, v5}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->newInstance(IIII)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v3

    .line 298
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/LoggingImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/debug/Logger$Factory;)V

    invoke-direct {v0, v2}, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;)V

    .line 299
    .local v0, "imageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    invoke-virtual {p1, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 300
    return-object v0
.end method

.method public getInputConfiguration(Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;I)Landroid/hardware/camera2/params/InputConfiguration;
    .locals 5
    .param p1, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p2, "oneCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "imageFormat"    # I

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-interface {p2, p3}, Lcom/android/camera/one/OneCameraCharacteristics;->isReprocessingSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 263
    :goto_0
    return-object v2

    .line 261
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v0

    .line 262
    .local v0, "capturSize":Lcom/android/camera/util/Size;
    new-instance v1, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v4

    invoke-direct {v1, v3, v4, p3}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 263
    .local v1, "configuration":Landroid/hardware/camera2/params/InputConfiguration;
    invoke-interface {p2, v1}, Lcom/android/camera/one/OneCameraCharacteristics;->checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v1    # "configuration":Landroid/hardware/camera2/params/InputConfiguration;
    :goto_1
    move-object v2, v1

    goto :goto_0

    .restart local v1    # "configuration":Landroid/hardware/camera2/params/InputConfiguration;
    :cond_1
    move-object v1, v2

    goto :goto_1
.end method

.method public getWorkAroundStreamlList(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;)Ljava/util/List;
    .locals 9
    .param p1, "previewLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p3, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Lifetime;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v3, "workAroundList":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    sget-object v4, Lcom/android/camera/one/v2/Level3OneCameraFactory$3;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    invoke-virtual {p2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 290
    :goto_0
    return-object v3

    .line 276
    :pswitch_0
    new-instance v2, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;

    .line 277
    invoke-interface {p3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;-><init>(Ljava/util/List;)V

    .line 278
    .local v2, "previewSizeSelector":Lcom/android/camera/one/PreviewSizeSelector;
    invoke-virtual {p2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/camera/one/PreviewSizeSelector;->pickPreviewSize(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v1

    .line 280
    .local v1, "previewSize":Lcom/android/camera/util/Size;
    new-instance v0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;

    new-instance v4, Lcom/android/camera/one/v2/LoggingImageReader;

    .line 282
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v6

    const/16 v7, 0x100

    iget-object v8, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    invoke-static {v8}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$200(Lcom/android/camera/one/v2/Level3OneCameraFactory;)I

    move-result v8

    .line 281
    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->newInstance(IIII)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v5

    .line 282
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/camera/one/v2/LoggingImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/debug/Logger$Factory;)V

    invoke-direct {v0, v4}, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;)V

    .line 283
    .local v0, "imageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    invoke-virtual {p1, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 284
    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public startCamera(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Observable;)Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;
    .locals 129
    .param p1, "previewLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "cameraCaptureSession"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;
    .param p3, "slaveCameraCaptureSession"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;
    .param p4, "previewSurface"    # Landroid/view/Surface;
    .param p5, "slavePreviewSurface"    # Landroid/view/Surface;
    .param p6, "previewCallbackSurface"    # Landroid/view/Surface;
    .param p7, "slavePreviewCallbackSurface"    # Landroid/view/Surface;
    .param p8, "pictureImageReader"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .param p9, "slavePictureImageReader"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .param p10, "burstImageReader"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .param p11, "reprocessImageReader"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .param p12, "rawImageReader"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .param p13, "imageGeneratorProvider"    # Lcom/android/camera/opengl/image/ImageGeneratorProvider;
    .param p14, "burstFacade"    # Lcom/android/camera/burst/BurstFacade;
    .param p15, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Lifetime;",
            "Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;",
            "Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;",
            "Lcom/android/camera/opengl/image/ImageGeneratorProvider;",
            "Lcom/android/camera/burst/BurstFacade;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<[",
            "Landroid/hardware/camera2/params/Face;",
            ">;)",
            "Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;"
        }
    .end annotation

    .prologue
    .line 350
    .local p16, "zoomState":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Float;>;"
    .local p17, "slaveZoomState":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Float;>;"
    .local p18, "metadataCallback":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .local p19, "slaveMetadataCallback":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .local p20, "readyStateCallback":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Boolean;>;"
    .local p21, "faceData":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<[Landroid/hardware/camera2/params/Face;>;"
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v125

    .line 353
    .local v125, "targetCaptureSize":Lcom/android/camera/util/Size;
    if-eqz p8, :cond_1d

    :try_start_0
    invoke-interface/range {p8 .. p8}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getImageFormat()I

    move-result v111

    .line 354
    .local v111, "imageFormat":I
    :goto_0
    new-instance v113, Lcom/android/camera/one/v2/common/PictureSizeCalculator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, v113

    invoke-direct {v0, v4}, Lcom/android/camera/one/v2/common/PictureSizeCalculator;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 356
    .local v113, "pictureSizeCalculator":Lcom/android/camera/one/v2/common/PictureSizeCalculator;
    move-object/from16 v0, v113

    move-object/from16 v1, v125

    move/from16 v2, v111

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/common/PictureSizeCalculator;->computeConfiguration(Lcom/android/camera/util/Size;I)Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;

    move-result-object v105

    .line 357
    .local v105, "configuration":Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    invoke-static {v4}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$300(Lcom/android/camera/one/v2/Level3OneCameraFactory;)Lcom/android/camera/debug/Logger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Picture Size Configuration: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v105

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", format = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v111

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    invoke-virtual/range {v105 .. v105}, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;->getPostCaptureCrop()Landroid/graphics/Rect;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;->updatePostCaptureCrop(Landroid/graphics/Rect;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    invoke-virtual/range {v105 .. v105}, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;->getPostCaptureCrop()Landroid/graphics/Rect;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;->updatePostCaptureCrop(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v105    # "configuration":Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;
    .end local v111    # "imageFormat":I
    .end local v113    # "pictureSizeCalculator":Lcom/android/camera/one/v2/common/PictureSizeCalculator;
    :goto_1
    sget-boolean v4, Lcom/android/camera/product_utils/ProductUtil;->USE_DEVICE_OPERATED_ZSL:Z

    if-nez v4, :cond_1e

    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isZSLNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/16 v100, 0x1

    .line 365
    .local v100, "USE_APP_OPERATED_ZSL":Z
    :goto_2
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isVideoMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v101

    .line 367
    .local v101, "USE_VIDEO":Z
    const/16 v25, 0x1

    .line 368
    .local v25, "mainPreviewTemplateType":I
    const/16 v26, 0x1

    .line 369
    .local v26, "slavePreviewTemplateType":I
    const/16 v50, 0x2

    .line 370
    .local v50, "captureTemplateType":I
    if-eqz v101, :cond_1f

    .line 371
    const/16 v25, 0x3

    .line 372
    const/16 v50, 0x4

    .line 378
    :cond_0
    :goto_3
    new-instance v108, Lcom/android/camera/one/v2/core/FrameServerFactory;

    new-instance v4, Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    new-instance v6, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v6}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    move-object/from16 v0, v108

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1, v6}, Lcom/android/camera/one/v2/core/FrameServerFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/async/HandlerFactory;)V

    .line 380
    .local v108, "frameServerComponent":Lcom/android/camera/one/v2/core/FrameServerFactory;
    invoke-virtual/range {v108 .. v108}, Lcom/android/camera/one/v2/core/FrameServerFactory;->provideFrameServer()Lcom/android/camera/one/v2/core/FrameServer;

    move-result-object v30

    .line 382
    .local v30, "frameServer":Lcom/android/camera/one/v2/core/FrameServer;
    invoke-virtual/range {v108 .. v108}, Lcom/android/camera/one/v2/core/FrameServerFactory;->provideEphemeralFrameServer()Lcom/android/camera/one/v2/core/FrameServer;

    move-result-object v5

    .line 384
    .local v5, "ephemeralFrameServer":Lcom/android/camera/one/v2/core/FrameServer;
    const/16 v120, 0x0

    .line 385
    .local v120, "slaveFrameServerComponent":Lcom/android/camera/one/v2/core/FrameServerFactory;
    const/16 v59, 0x0

    .line 386
    .local v59, "slaveFrameServer":Lcom/android/camera/one/v2/core/FrameServer;
    const/4 v15, 0x0

    .line 387
    .local v15, "slaveEphemeralFrameServer":Lcom/android/camera/one/v2/core/FrameServer;
    if-eqz p3, :cond_1

    .line 388
    new-instance v120, Lcom/android/camera/one/v2/core/FrameServerFactory;

    .end local v120    # "slaveFrameServerComponent":Lcom/android/camera/one/v2/core/FrameServerFactory;
    new-instance v4, Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    new-instance v6, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v6}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    move-object/from16 v0, v120

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1, v6}, Lcom/android/camera/one/v2/core/FrameServerFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/async/HandlerFactory;)V

    .line 389
    .restart local v120    # "slaveFrameServerComponent":Lcom/android/camera/one/v2/core/FrameServerFactory;
    invoke-virtual/range {v120 .. v120}, Lcom/android/camera/one/v2/core/FrameServerFactory;->provideFrameServer()Lcom/android/camera/one/v2/core/FrameServer;

    move-result-object v59

    .line 390
    invoke-virtual/range {v120 .. v120}, Lcom/android/camera/one/v2/core/FrameServerFactory;->provideEphemeralFrameServer()Lcom/android/camera/one/v2/core/FrameServer;

    move-result-object v15

    .line 393
    :cond_1
    new-instance v4, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$1;-><init>(Lcom/android/camera/one/v2/Level3OneCameraFactory$2;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 401
    new-instance v18, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    .line 402
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v4

    new-instance v6, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$2;-><init>(Lcom/android/camera/one/v2/Level3OneCameraFactory$2;)V

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v6}, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/util/Provider;)V

    .line 413
    .local v18, "cameraCommandExecutor":Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 416
    if-eqz p8, :cond_20

    new-instance v119, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;

    new-instance v4, Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    new-instance v6, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v6}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    invoke-static {v10}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$400(Lcom/android/camera/one/v2/Level3OneCameraFactory;)Lcom/android/camera/async/ConcurrentState;

    move-result-object v10

    move-object/from16 v0, v119

    move-object/from16 v1, p8

    invoke-direct {v0, v4, v1, v6, v10}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/async/HandlerFactory;Lcom/android/camera/async/ConcurrentState;)V

    .line 418
    .local v119, "sharedImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;
    :goto_4
    if-eqz v100, :cond_21

    move-object/from16 v104, v119

    .line 421
    .local v104, "burstImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;
    :goto_5
    new-instance v115, Lcom/android/camera/one/v2/sharedimagereader/RawImageReaderFactory;

    new-instance v4, Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    new-instance v6, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v6}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    move-object/from16 v0, v115

    move-object/from16 v1, p12

    invoke-direct {v0, v4, v1, v6}, Lcom/android/camera/one/v2/sharedimagereader/RawImageReaderFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/async/HandlerFactory;)V

    .line 424
    .local v115, "rawImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/RawImageReaderFactory;
    const/16 v121, 0x0

    .line 425
    .local v121, "slaveSharedImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;
    if-eqz p9, :cond_2

    .line 426
    new-instance v121, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;

    .end local v121    # "slaveSharedImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;
    new-instance v4, Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    new-instance v6, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v6}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    move-object/from16 v0, v121

    move-object/from16 v1, p9

    invoke-direct {v0, v4, v1, v6}, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/async/HandlerFactory;)V

    .line 433
    .restart local v121    # "slaveSharedImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;
    :cond_2
    new-instance v48, Lcom/android/camera/one/v2/core/RequestTemplate;

    new-instance v4, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceRequestBuilderFactory;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$device:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    invoke-direct {v4, v6}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceRequestBuilderFactory;-><init>(Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;)V

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 435
    .local v48, "rootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    new-instance v32, Lcom/android/camera/one/v2/core/RequestTemplate;

    move-object/from16 v0, v32

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 436
    .local v32, "rootReprocessTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    if-eqz v119, :cond_3

    .line 438
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideGlobalResponseListener()Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    .line 437
    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 440
    :cond_3
    if-eqz v104, :cond_4

    move-object/from16 v0, v104

    move-object/from16 v1, v119

    if-eq v0, v1, :cond_4

    .line 442
    invoke-virtual/range {v104 .. v104}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideGlobalResponseListener()Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    .line 441
    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 444
    :cond_4
    invoke-virtual/range {v115 .. v115}, Lcom/android/camera/one/v2/sharedimagereader/RawImageReaderFactory;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 445
    invoke-virtual/range {v115 .. v115}, Lcom/android/camera/one/v2/sharedimagereader/RawImageReaderFactory;->provideGlobalTimestampQueue()Lcom/android/camera/async/Updatable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/v2/core/ResponseListeners;->forTimestamps(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 448
    :cond_5
    invoke-static/range {p18 .. p18}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFinalMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    .line 447
    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 453
    const/4 v7, 0x0

    .line 460
    .local v7, "previewWarmupTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    if-eqz v100, :cond_23

    new-instance v8, Lcom/android/camera/one/v2/core/RequestTemplate;

    move-object/from16 v0, v48

    invoke-direct {v8, v0}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 461
    .local v8, "zslTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    :goto_6
    if-eqz v100, :cond_6

    .line 462
    if-eqz v119, :cond_6

    .line 463
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideZSLStream()Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    move-result-object v4

    sget-object v6, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->CAPTURE:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    invoke-virtual {v8, v4, v6}, Lcom/android/camera/one/v2/core/RequestTemplate;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;Lcom/android/camera/one/v2/core/CaptureStream$StreamType;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 469
    :cond_6
    new-instance v16, Lcom/android/camera/one/v2/core/RequestTemplate;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 470
    .local v16, "zslAndPreviewTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    new-instance v4, Lcom/android/camera/one/v2/common/SimpleCaptureStream;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Lcom/android/camera/one/v2/common/SimpleCaptureStream;-><init>(Landroid/view/Surface;)V

    sget-object v6, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->PREVIEW:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6}, Lcom/android/camera/one/v2/core/RequestTemplate;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;Lcom/android/camera/one/v2/core/CaptureStream$StreamType;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 471
    if-eqz p6, :cond_7

    .line 472
    new-instance v4, Lcom/android/camera/one/v2/common/SimpleCaptureStream;

    move-object/from16 v0, p6

    invoke-direct {v4, v0}, Lcom/android/camera/one/v2/common/SimpleCaptureStream;-><init>(Landroid/view/Surface;)V

    sget-object v6, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->PREVIEW:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    invoke-virtual {v8, v4, v6}, Lcom/android/camera/one/v2/core/RequestTemplate;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;Lcom/android/camera/one/v2/core/CaptureStream$StreamType;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 475
    :cond_7
    new-instance v9, Lcom/android/camera/async/ConcurrentState;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v9, v4}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 476
    .local v9, "recordController":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    if-eqz v101, :cond_8

    .line 477
    if-eqz p14, :cond_8

    invoke-interface/range {p14 .. p14}, Lcom/android/camera/burst/BurstFacade;->getInputSurface()Landroid/view/Surface;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 478
    new-instance v4, Lcom/android/camera/one/v2/common/VideoCaptureStream;

    invoke-interface/range {p14 .. p14}, Lcom/android/camera/burst/BurstFacade;->getInputSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-direct {v4, v6, v9}, Lcom/android/camera/one/v2/common/VideoCaptureStream;-><init>(Landroid/view/Surface;Lcom/android/camera/async/Observable;)V

    sget-object v6, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->RECORD:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6}, Lcom/android/camera/one/v2/core/RequestTemplate;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;Lcom/android/camera/one/v2/core/CaptureStream$StreamType;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 482
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v4}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v4

    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v4, v6, :cond_24

    const/16 v112, 0x1

    .line 485
    .local v112, "isBackCamera":Z
    :goto_7
    if-eqz v112, :cond_9

    sget-boolean v4, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_5:Z

    if-eqz v4, :cond_9

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    invoke-static {v4, v8}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$500(Lcom/android/camera/one/v2/Level3OneCameraFactory;Lcom/android/camera/one/v2/core/RequestTemplate;)V

    .line 489
    :cond_9
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->needCapture(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 490
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isDualSightMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 491
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->useJpegPicture(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-nez v4, :cond_c

    :cond_a
    sget-object v4, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 492
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v6

    if-ne v4, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 493
    invoke-interface {v4}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v4

    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v4, v6, :cond_b

    .line 494
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v4

    sget-object v6, Lcom/android/camera/util/ProductModelUtil$DualCamType;->QC_LOGIC_CAM:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-eq v4, v6, :cond_c

    .line 495
    :cond_b
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isBurstShotNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 496
    :cond_c
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    .line 497
    invoke-static {v6}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$600(Lcom/android/camera/one/v2/Level3OneCameraFactory;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->getSupplier()Lcom/google/common/base/Supplier;

    move-result-object v6

    .line 496
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 500
    :cond_d
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->useJpegPicture(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 501
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->needJpegThumbnail(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 502
    :cond_e
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isBurstShotNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 503
    :cond_f
    new-instance v126, Lcom/android/camera/one/v2/initialization/Camera2ThumbnailSizeSelector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v4}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedThumbnailSizes()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v126

    invoke-direct {v0, v4}, Lcom/android/camera/one/v2/initialization/Camera2ThumbnailSizeSelector;-><init>(Ljava/util/List;)V

    .line 504
    .local v126, "thumbnailSizeSelector":Lcom/android/camera/one/ThumbnailSizeSelector;
    invoke-interface/range {v126 .. v126}, Lcom/android/camera/one/ThumbnailSizeSelector;->pickSmallestThumbnailSize()Lcom/android/camera/util/Size;

    move-result-object v122

    .line 505
    .local v122, "smallestThumbnailSize":Lcom/android/camera/util/Size;
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v6, Landroid/util/Size;

    invoke-virtual/range {v122 .. v122}, Lcom/android/camera/util/Size;->width()I

    move-result v10

    invoke-virtual/range {v122 .. v122}, Lcom/android/camera/util/Size;->height()I

    move-result v11

    invoke-direct {v6, v10, v11}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 506
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    sget v6, Lcom/android/camera/product_utils/ProductUtil;->BURST_ENCODE_QUALITY:I

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 509
    .end local v122    # "smallestThumbnailSize":Lcom/android/camera/util/Size;
    .end local v126    # "thumbnailSizeSelector":Lcom/android/camera/one/ThumbnailSizeSelector;
    :cond_10
    const/16 v17, 0x0

    .line 510
    .local v17, "slaveRootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$slaveCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    if-eqz v4, :cond_19

    .line 511
    new-instance v17, Lcom/android/camera/one/v2/core/RequestTemplate;

    .end local v17    # "slaveRootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    new-instance v4, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceRequestBuilderFactory;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$slaveCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    invoke-direct {v4, v6}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceRequestBuilderFactory;-><init>(Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 512
    .restart local v17    # "slaveRootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    if-eqz v121, :cond_11

    .line 513
    invoke-virtual/range {v121 .. v121}, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->provideGlobalTimestampQueue()Lcom/android/camera/async/Updatable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/v2/core/ResponseListeners;->forTimestamps(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 515
    :cond_11
    invoke-static/range {p19 .. p19}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFinalMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 517
    new-instance v4, Lcom/android/camera/one/v2/common/SimpleCaptureStream;

    move-object/from16 v0, p5

    invoke-direct {v4, v0}, Lcom/android/camera/one/v2/common/SimpleCaptureStream;-><init>(Landroid/view/Surface;)V

    sget-object v6, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->PREVIEW:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Lcom/android/camera/one/v2/core/RequestTemplate;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;Lcom/android/camera/one/v2/core/CaptureStream$StreamType;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 518
    if-eqz p7, :cond_12

    .line 519
    new-instance v4, Lcom/android/camera/one/v2/common/SimpleCaptureStream;

    move-object/from16 v0, p7

    invoke-direct {v4, v0}, Lcom/android/camera/one/v2/common/SimpleCaptureStream;-><init>(Landroid/view/Surface;)V

    sget-object v6, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->PREVIEW:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Lcom/android/camera/one/v2/core/RequestTemplate;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;Lcom/android/camera/one/v2/core/CaptureStream$StreamType;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 522
    :cond_12
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->needCapture(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 523
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isDualSightMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 524
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->useJpegPicture(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-nez v4, :cond_15

    :cond_13
    sget-object v4, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 525
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v6

    if-ne v4, v6, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$slaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 526
    invoke-interface {v4}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v4

    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v4, v6, :cond_14

    .line 527
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v4

    sget-object v6, Lcom/android/camera/util/ProductModelUtil$DualCamType;->QC_LOGIC_CAM:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-eq v4, v6, :cond_15

    .line 528
    :cond_14
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isBurstShotNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 529
    :cond_15
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    .line 530
    invoke-static {v6}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$700(Lcom/android/camera/one/v2/Level3OneCameraFactory;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->getSupplier()Lcom/google/common/base/Supplier;

    move-result-object v6

    .line 529
    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 533
    :cond_16
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->useJpegPicture(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 534
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->needJpegThumbnail(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 535
    :cond_17
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isBurstShotNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 536
    :cond_18
    new-instance v126, Lcom/android/camera/one/v2/initialization/Camera2ThumbnailSizeSelector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$slaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v4}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedThumbnailSizes()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v126

    invoke-direct {v0, v4}, Lcom/android/camera/one/v2/initialization/Camera2ThumbnailSizeSelector;-><init>(Ljava/util/List;)V

    .line 537
    .restart local v126    # "thumbnailSizeSelector":Lcom/android/camera/one/ThumbnailSizeSelector;
    invoke-interface/range {v126 .. v126}, Lcom/android/camera/one/ThumbnailSizeSelector;->pickSmallestThumbnailSize()Lcom/android/camera/util/Size;

    move-result-object v122

    .line 538
    .restart local v122    # "smallestThumbnailSize":Lcom/android/camera/util/Size;
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v6, Landroid/util/Size;

    invoke-virtual/range {v122 .. v122}, Lcom/android/camera/util/Size;->width()I

    move-result v10

    invoke-virtual/range {v122 .. v122}, Lcom/android/camera/util/Size;->height()I

    move-result v11

    invoke-direct {v6, v10, v11}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 539
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    sget v6, Lcom/android/camera/product_utils/ProductUtil;->BURST_ENCODE_QUALITY:I

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 544
    .end local v122    # "smallestThumbnailSize":Lcom/android/camera/util/Size;
    .end local v126    # "thumbnailSizeSelector":Lcom/android/camera/one/ThumbnailSizeSelector;
    :cond_19
    new-instance v102, Lcom/android/camera/one/v2/common/BasicCameraFactory;

    new-instance v11, Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$slaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    new-instance v4, Lcom/android/camera/one/v2/commands/ZslPreviewCommandFactory;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$device:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    .line 554
    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v10, p15

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/one/v2/commands/ZslPreviewCommandFactory;-><init>(Lcom/android/camera/one/v2/core/FrameServer;ILcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    if-eqz v15, :cond_25

    new-instance v20, Lcom/android/camera/one/v2/commands/BasicPreviewCommandFactory;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$slaveCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    .line 559
    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v20

    move-object/from16 v1, p15

    invoke-direct {v0, v15, v6, v9, v1}, Lcom/android/camera/one/v2/commands/BasicPreviewCommandFactory;-><init>(Lcom/android/camera/one/v2/core/FrameServer;ILcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$device:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    .line 566
    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$slaveCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    if-eqz v6, :cond_26

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$slaveCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    .line 567
    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v28

    :goto_9
    move-object/from16 v10, v102

    move-object v14, v5

    move-object/from16 v19, v4

    move-object/from16 v21, p15

    move-object/from16 v22, p16

    move-object/from16 v23, p17

    move-object/from16 v24, v9

    invoke-direct/range {v10 .. v28}, Lcom/android/camera/one/v2/common/BasicCameraFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/commands/PreviewCommandFactory;Lcom/android/camera/one/v2/commands/PreviewCommandFactory;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;IIII)V

    .line 570
    .local v102, "basicCameraFactory":Lcom/android/camera/one/v2/common/BasicCameraFactory;
    sget-object v4, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v6

    if-ne v4, v6, :cond_27

    if-eqz v112, :cond_27

    .line 572
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v4

    sget-object v6, Lcom/android/camera/util/ProductModelUtil$DualCamType;->QC_LOGIC_CAM:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v4, v6, :cond_27

    .line 573
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/camera/one/v2/photo/BokehResultDetector;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/Lifetime;)Lcom/android/camera/one/v2/photo/BokehResultDetector;

    move-result-object v103

    .line 574
    .local v103, "bokehResultDetector":Lcom/android/camera/one/v2/photo/BokehResultDetector;
    invoke-static/range {v103 .. v103}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFinalMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 575
    move-object/from16 v79, v103

    .line 591
    .end local v103    # "bokehResultDetector":Lcom/android/camera/one/v2/photo/BokehResultDetector;
    .local v79, "bokehResultProvider":Lcom/android/camera/one/v2/photo/BokehResultProvider;
    :goto_a
    new-instance v27, Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    invoke-static {v4}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$600(Lcom/android/camera/one/v2/Level3OneCameraFactory;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v34

    new-instance v35, Lcom/android/camera/async/HandlerFactory;

    invoke-direct/range {v35 .. v35}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    invoke-static {v4}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$100(Lcom/android/camera/one/v2/Level3OneCameraFactory;)I

    move-result v36

    move-object/from16 v28, p1

    move-object/from16 v29, p2

    move-object/from16 v33, p11

    invoke-direct/range {v27 .. v36}, Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/async/HandlerFactory;I)V

    .line 596
    .local v27, "imageReprocessorFactory":Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->needCapture(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 597
    const/16 v114, 0x0

    .line 845
    .end local v48    # "rootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    .local v114, "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    :goto_b
    if-eqz p14, :cond_1a

    .line 847
    if-eqz v101, :cond_34

    .line 848
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->providePreviewUpdater()Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v6

    invoke-virtual {v9, v4, v6}, Lcom/android/camera/async/ConcurrentState;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v117

    .line 849
    .local v117, "recordControllerCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 851
    new-instance v60, Lcom/android/camera/video/VideoBurstTakerImpl;

    .line 852
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v4

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v9}, Lcom/android/camera/video/VideoBurstTakerImpl;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/ConcurrentState;)V

    .line 890
    .end local v117    # "recordControllerCallback":Lcom/android/camera/async/SafeCloseable;
    .local v60, "burstTaker":Lcom/android/camera/burst/BurstTaker;
    :goto_c
    move-object/from16 v0, p14

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Lcom/android/camera/burst/BurstFacade;->setBurstTaker(Lcom/android/camera/burst/BurstTaker;)V

    .line 891
    if-eqz v60, :cond_1a

    .line 892
    new-instance v4, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, p14

    invoke-direct {v4, v0, v1, v2}, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$6;-><init>(Lcom/android/camera/one/v2/Level3OneCameraFactory$2;Lcom/android/camera/burst/BurstTaker;Lcom/android/camera/burst/BurstFacade;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 909
    .end local v60    # "burstTaker":Lcom/android/camera/burst/BurstTaker;
    :cond_1a
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isSceneNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 910
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSceneDetectionSetting()Lcom/android/camera/async/Observable;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 911
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/Lifetime;)Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;

    move-result-object v118

    .line 912
    .local v118, "sceneRecognitionDetector":Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;
    invoke-static/range {v118 .. v118}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFinalMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 913
    move-object/from16 v80, v118

    .line 933
    .end local v118    # "sceneRecognitionDetector":Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;
    .local v80, "sceneRecognitionProvider":Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;
    :goto_d
    if-eqz v112, :cond_1b

    sget-boolean v4, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_5:Z

    if-eqz v4, :cond_1b

    .line 936
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$fatalErrorHandler:Lcom/android/camera/FatalErrorHandler;

    move-object/from16 v34, v0

    .line 940
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->providePreviewUpdater()Ljava/lang/Runnable;

    move-result-object v37

    .line 941
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v38

    const/16 v39, 0xa

    move-object/from16 v35, p2

    move-object/from16 v36, v18

    .line 935
    invoke-static/range {v33 .. v39}, Lcom/android/camera/one/v2/errorhandling/RepeatFailureHandlerComponent;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/FatalErrorHandler;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Ljava/lang/Runnable;Lcom/android/camera/stats/UsageStatistics;I)Lcom/android/camera/one/v2/errorhandling/RepeatFailureHandlerComponent;

    move-result-object v4

    .line 942
    invoke-virtual {v4}, Lcom/android/camera/one/v2/errorhandling/RepeatFailureHandlerComponent;->provideResponseListener()Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v107

    .line 943
    .local v107, "failureDetector":Lcom/android/camera/one/v2/core/ResponseListener;
    move-object/from16 v0, v107

    invoke-virtual {v8, v0}, Lcom/android/camera/one/v2/core/RequestTemplate;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 946
    .end local v107    # "failureDetector":Lcom/android/camera/one/v2/core/ResponseListener;
    :cond_1b
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v4

    .line 947
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 946
    invoke-static {v4}, Lcom/android/camera/util/GservicesHelper;->isJankStatisticsEnabled(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 949
    new-instance v4, Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;

    .line 950
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v6

    .line 951
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v10

    invoke-direct {v4, v6, v10}, Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/stats/UsageStatistics;)V

    .line 949
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/camera/one/v2/core/RequestTemplate;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 954
    :cond_1c
    if-eqz v119, :cond_3a

    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideAvailableImageCount()Lcom/android/camera/async/Observable;

    move-result-object v21

    .line 955
    .local v21, "availableImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :goto_e
    if-eqz v121, :cond_3b

    invoke-virtual/range {v121 .. v121}, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->provideAvailableImageCount()Lcom/android/camera/async/Observable;

    move-result-object v22

    .line 956
    .local v22, "slaveAvailableImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :goto_f
    invoke-virtual/range {v108 .. v108}, Lcom/android/camera/one/v2/core/FrameServerFactory;->provideReadyState()Lcom/android/camera/async/Observable;

    move-result-object v23

    .line 957
    .local v23, "frameServerAvailability":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    if-eqz v120, :cond_3c

    invoke-virtual/range {v120 .. v120}, Lcom/android/camera/one/v2/core/FrameServerFactory;->provideReadyState()Lcom/android/camera/async/Observable;

    move-result-object v24

    .line 958
    .local v24, "slaveFrameServerAvailability":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    :goto_10
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/android/camera/async/Observable;

    const/4 v6, 0x0

    aput-object v21, v4, v6

    const/4 v6, 0x1

    aput-object v23, v4, v6

    .line 959
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance v19, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$8;

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$8;-><init>(Lcom/android/camera/one/v2/Level3OneCameraFactory$2;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;)V

    .line 958
    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/camera/async/Observables;->transform(Ljava/util/List;Lcom/google/common/base/Supplier;)Lcom/android/camera/async/Observable;

    move-result-object v116

    .line 974
    .local v116, "readyObservable":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    move-object/from16 v0, v116

    move-object/from16 v1, p20

    invoke-static {v0, v1}, Lcom/android/camera/async/Observables;->addThreadSafeCallback(Lcom/android/camera/async/Observable;Lcom/android/camera/async/Updatable;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 977
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->providePreviewUpdater()Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 979
    new-instance v74, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;

    if-eqz v114, :cond_3d

    .line 980
    invoke-interface/range {v114 .. v114}, Lcom/android/camera/one/v2/photo/PictureTakerFactory;->providePictureTaker()Lcom/android/camera/one/v2/photo/PictureTaker;

    move-result-object v75

    .line 981
    :goto_11
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-result-object v76

    if-eqz v114, :cond_3e

    .line 982
    invoke-interface/range {v114 .. v114}, Lcom/android/camera/one/v2/photo/PictureTakerFactory;->provideSceneDetector()Lcom/android/camera/one/v2/photo/SceneDetector;

    move-result-object v77

    :goto_12
    if-eqz v114, :cond_3f

    .line 983
    invoke-interface/range {v114 .. v114}, Lcom/android/camera/one/v2/photo/PictureTakerFactory;->provideFlashDetector()Lcom/android/camera/one/v2/photo/FlashDetector;

    move-result-object v78

    :goto_13
    invoke-direct/range {v74 .. v80}, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;-><init>(Lcom/android/camera/one/v2/photo/PictureTaker;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/v2/photo/BokehResultProvider;Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;)V

    .line 979
    return-object v74

    .line 353
    .end local v5    # "ephemeralFrameServer":Lcom/android/camera/one/v2/core/FrameServer;
    .end local v7    # "previewWarmupTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    .end local v8    # "zslTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    .end local v9    # "recordController":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    .end local v15    # "slaveEphemeralFrameServer":Lcom/android/camera/one/v2/core/FrameServer;
    .end local v16    # "zslAndPreviewTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    .end local v17    # "slaveRootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    .end local v18    # "cameraCommandExecutor":Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    .end local v21    # "availableImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v22    # "slaveAvailableImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v23    # "frameServerAvailability":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .end local v24    # "slaveFrameServerAvailability":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .end local v25    # "mainPreviewTemplateType":I
    .end local v26    # "slavePreviewTemplateType":I
    .end local v27    # "imageReprocessorFactory":Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;
    .end local v30    # "frameServer":Lcom/android/camera/one/v2/core/FrameServer;
    .end local v32    # "rootReprocessTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    .end local v50    # "captureTemplateType":I
    .end local v59    # "slaveFrameServer":Lcom/android/camera/one/v2/core/FrameServer;
    .end local v79    # "bokehResultProvider":Lcom/android/camera/one/v2/photo/BokehResultProvider;
    .end local v80    # "sceneRecognitionProvider":Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;
    .end local v100    # "USE_APP_OPERATED_ZSL":Z
    .end local v101    # "USE_VIDEO":Z
    .end local v102    # "basicCameraFactory":Lcom/android/camera/one/v2/common/BasicCameraFactory;
    .end local v104    # "burstImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;
    .end local v108    # "frameServerComponent":Lcom/android/camera/one/v2/core/FrameServerFactory;
    .end local v112    # "isBackCamera":Z
    .end local v114    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    .end local v115    # "rawImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/RawImageReaderFactory;
    .end local v116    # "readyObservable":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .end local v119    # "sharedImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;
    .end local v120    # "slaveFrameServerComponent":Lcom/android/camera/one/v2/core/FrameServerFactory;
    .end local v121    # "slaveSharedImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;
    :cond_1d
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    invoke-static {v4}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$100(Lcom/android/camera/one/v2/Level3OneCameraFactory;)I
    :try_end_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v111

    goto/16 :goto_0

    .line 360
    :catch_0
    move-exception v106

    .line 361
    .local v106, "e":Lcom/android/camera/one/OneCameraAccessException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    invoke-static {v4}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$300(Lcom/android/camera/one/v2/Level3OneCameraFactory;)Lcom/android/camera/debug/Logger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error when updatePostCaptureCrop : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v106

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 364
    .end local v106    # "e":Lcom/android/camera/one/OneCameraAccessException;
    :cond_1e
    const/16 v100, 0x0

    goto/16 :goto_2

    .line 373
    .restart local v25    # "mainPreviewTemplateType":I
    .restart local v26    # "slavePreviewTemplateType":I
    .restart local v50    # "captureTemplateType":I
    .restart local v100    # "USE_APP_OPERATED_ZSL":Z
    .restart local v101    # "USE_VIDEO":Z
    :cond_1f
    if-eqz v100, :cond_0

    .line 374
    const/16 v25, 0x5

    goto/16 :goto_3

    .line 416
    .restart local v5    # "ephemeralFrameServer":Lcom/android/camera/one/v2/core/FrameServer;
    .restart local v15    # "slaveEphemeralFrameServer":Lcom/android/camera/one/v2/core/FrameServer;
    .restart local v18    # "cameraCommandExecutor":Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    .restart local v30    # "frameServer":Lcom/android/camera/one/v2/core/FrameServer;
    .restart local v59    # "slaveFrameServer":Lcom/android/camera/one/v2/core/FrameServer;
    .restart local v108    # "frameServerComponent":Lcom/android/camera/one/v2/core/FrameServerFactory;
    .restart local v120    # "slaveFrameServerComponent":Lcom/android/camera/one/v2/core/FrameServerFactory;
    :cond_20
    const/16 v119, 0x0

    goto/16 :goto_4

    .line 418
    .restart local v119    # "sharedImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;
    :cond_21
    if-eqz p10, :cond_22

    new-instance v104, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;

    new-instance v4, Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    new-instance v6, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v6}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    invoke-static {v10}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$400(Lcom/android/camera/one/v2/Level3OneCameraFactory;)Lcom/android/camera/async/ConcurrentState;

    move-result-object v10

    move-object/from16 v0, v104

    move-object/from16 v1, p10

    invoke-direct {v0, v4, v1, v6, v10}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/async/HandlerFactory;Lcom/android/camera/async/ConcurrentState;)V

    goto/16 :goto_5

    :cond_22
    const/16 v104, 0x0

    goto/16 :goto_5

    .restart local v7    # "previewWarmupTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    .restart local v32    # "rootReprocessTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    .restart local v48    # "rootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    .restart local v104    # "burstImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;
    .restart local v115    # "rawImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/RawImageReaderFactory;
    .restart local v121    # "slaveSharedImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;
    :cond_23
    move-object/from16 v8, v48

    .line 460
    goto/16 :goto_6

    .line 482
    .restart local v8    # "zslTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    .restart local v9    # "recordController":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    .restart local v16    # "zslAndPreviewTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    :cond_24
    const/16 v112, 0x0

    goto/16 :goto_7

    .line 559
    .restart local v17    # "slaveRootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    .restart local v112    # "isBackCamera":Z
    :cond_25
    const/16 v20, 0x0

    goto/16 :goto_8

    .line 567
    :cond_26
    const/16 v28, -0x1

    goto/16 :goto_9

    .line 577
    .restart local v102    # "basicCameraFactory":Lcom/android/camera/one/v2/common/BasicCameraFactory;
    :cond_27
    new-instance v79, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$3;

    move-object/from16 v0, v79

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$3;-><init>(Lcom/android/camera/one/v2/Level3OneCameraFactory$2;)V

    .restart local v79    # "bokehResultProvider":Lcom/android/camera/one/v2/photo/BokehResultProvider;
    goto/16 :goto_a

    .line 598
    .restart local v27    # "imageReprocessorFactory":Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;
    :cond_28
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    sget-object v6, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PANORAMA:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v4, v6, :cond_29

    .line 599
    const/16 v114, 0x0

    .restart local v114    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    goto/16 :goto_b

    .line 600
    .end local v114    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    :cond_29
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    sget-object v6, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_UW:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v4, v6, :cond_2a

    .line 602
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    move-object/from16 v38, v0

    .line 609
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-result-object v40

    .line 610
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v41

    .line 611
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->providePreviewUpdater()Ljava/lang/Runnable;

    move-result-object v42

    .line 612
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideCaptureRequestExtension()Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-result-object v43

    .line 613
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideZSLStream()Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    move-result-object v44

    .line 614
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v45

    .line 615
    invoke-virtual/range {v115 .. v115}, Lcom/android/camera/one/v2/sharedimagereader/RawImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v46

    .line 616
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideMetadataPool()Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    move-result-object v47

    move-object/from16 v36, v18

    move-object/from16 v39, v30

    move-object/from16 v48, v16

    move/from16 v49, v25

    move-object/from16 v51, p15

    .line 601
    invoke-static/range {v33 .. v51}, Lcom/android/camera/one/v2/photo/UltraWidePictureTakerFactory;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Ljava/lang/Runnable;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/ResponseManager;IILcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/v2/photo/UltraWidePictureTakerFactory;

    .end local v48    # "rootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    move-result-object v114

    .restart local v114    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    goto/16 :goto_b

    .line 621
    .end local v114    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    .restart local v48    # "rootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    :cond_2a
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    sget-object v6, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BEAUTY:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v4, v6, :cond_2b

    .line 623
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    move-object/from16 v38, v0

    .line 630
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-result-object v40

    .line 631
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v41

    .line 632
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->providePreviewUpdater()Ljava/lang/Runnable;

    move-result-object v42

    .line 633
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideCaptureRequestExtension()Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-result-object v43

    .line 634
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideZSLStream()Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    move-result-object v44

    .line 635
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v45

    .line 636
    invoke-virtual/range {v115 .. v115}, Lcom/android/camera/one/v2/sharedimagereader/RawImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v46

    .line 637
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideMetadataPool()Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    move-result-object v47

    move-object/from16 v36, v18

    move-object/from16 v39, v30

    move-object/from16 v48, v16

    move/from16 v49, v25

    move-object/from16 v51, p15

    .line 622
    invoke-static/range {v33 .. v51}, Lcom/android/camera/one/v2/photo/BeautyPictureTakerFactory;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Ljava/lang/Runnable;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/ResponseManager;IILcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/v2/photo/BeautyPictureTakerFactory;

    .end local v48    # "rootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    move-result-object v114

    .restart local v114    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    goto/16 :goto_b

    .line 642
    .end local v114    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    .restart local v48    # "rootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    :cond_2b
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isDualSightMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 644
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$slaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    move-object/from16 v57, v0

    .line 653
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-result-object v60

    .line 654
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v61

    .line 655
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideSlaveMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v62

    .line 656
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->providePreviewUpdater()Ljava/lang/Runnable;

    move-result-object v63

    .line 657
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideCaptureRequestExtension()Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-result-object v64

    .line 658
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v65

    if-eqz v121, :cond_2c

    .line 659
    invoke-virtual/range {v121 .. v121}, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v66

    .line 660
    :goto_14
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    .line 667
    invoke-static {v4}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$600(Lcom/android/camera/one/v2/Level3OneCameraFactory;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v74

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    .line 668
    invoke-static {v4}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$600(Lcom/android/camera/one/v2/Level3OneCameraFactory;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$slaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {v4, v6}, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->from(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v75

    move-object/from16 v55, v18

    move-object/from16 v58, v30

    move-object/from16 v68, v16

    move-object/from16 v69, v17

    move/from16 v70, v25

    move/from16 v71, v26

    move/from16 v72, v50

    move-object/from16 v73, p15

    move-object/from16 v76, p13

    .line 643
    invoke-static/range {v51 .. v76}, Lcom/android/camera/one/v2/photo/DualSightPictureTakerFactory;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Ljava/lang/Runnable;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/v2/core/ResponseManager;Lcom/android/camera/one/v2/core/ResponseManager;IIILcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/opengl/image/ImageGeneratorProvider;)Lcom/android/camera/one/v2/photo/DualSightPictureTakerFactory;

    move-result-object v114

    .restart local v114    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    goto/16 :goto_b

    .line 659
    .end local v114    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    :cond_2c
    const/16 v66, 0x0

    goto :goto_14

    .line 671
    :cond_2d
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    sget-object v6, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v4, v6, :cond_2f

    .line 673
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$slaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    move-object/from16 v57, v0

    .line 682
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-result-object v60

    .line 683
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v61

    .line 684
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideSlaveMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v62

    .line 685
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->providePreviewUpdater()Ljava/lang/Runnable;

    move-result-object v63

    .line 686
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideCaptureRequestExtension()Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-result-object v64

    .line 687
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideZSLStream()Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    move-result-object v65

    .line 688
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v66

    if-eqz v121, :cond_2e

    .line 689
    invoke-virtual/range {v121 .. v121}, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v67

    .line 690
    :goto_15
    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;->provideImageReprocessor()Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

    move-result-object v68

    .line 691
    invoke-virtual/range {v115 .. v115}, Lcom/android/camera/one/v2/sharedimagereader/RawImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v69

    .line 692
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideMetadataPool()Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    move-result-object v70

    .line 693
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v71

    move-object/from16 v55, v18

    move-object/from16 v58, v30

    move-object/from16 v72, v16

    move-object/from16 v73, v17

    move/from16 v74, v25

    move/from16 v75, v26

    move/from16 v76, v50

    move-object/from16 v77, p21

    move-object/from16 v78, p15

    .line 672
    invoke-static/range {v51 .. v79}, Lcom/android/camera/one/v2/photo/BokehPictureTakerFactory;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Ljava/lang/Runnable;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/v2/core/ResponseManager;Lcom/android/camera/one/v2/core/ResponseManager;IIILcom/android/camera/async/Observable;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/v2/photo/BokehResultProvider;)Lcom/android/camera/one/v2/photo/BokehPictureTakerFactory;

    move-result-object v114

    .restart local v114    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    goto/16 :goto_b

    .line 689
    .end local v114    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    :cond_2e
    const/16 v67, 0x0

    goto :goto_15

    .line 704
    :cond_2f
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isVideoMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 706
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    move-object/from16 v38, v0

    .line 712
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-result-object v40

    .line 713
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v41

    .line 714
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->providePreviewUpdater()Ljava/lang/Runnable;

    move-result-object v42

    .line 715
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideCaptureRequestExtension()Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-result-object v43

    .line 716
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v44

    .line 717
    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;->provideImageReprocessor()Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

    move-result-object v45

    .line 718
    invoke-virtual/range {v115 .. v115}, Lcom/android/camera/one/v2/sharedimagereader/RawImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v46

    .line 719
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v47

    move-object/from16 v37, v18

    move-object/from16 v39, v30

    move-object/from16 v48, v16

    move/from16 v49, v25

    move-object/from16 v51, p15

    .line 705
    invoke-static/range {v34 .. v51}, Lcom/android/camera/one/v2/photo/VideoPictureTakerFactory;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Ljava/lang/Runnable;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/v2/core/ResponseManager;IILcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/v2/photo/VideoPictureTakerFactory;

    .end local v48    # "rootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    move-result-object v114

    .restart local v114    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    goto/16 :goto_b

    .line 725
    .end local v114    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    .restart local v48    # "rootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    :cond_30
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isManual(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 727
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    move-object/from16 v39, v0

    .line 733
    invoke-virtual/range {v108 .. v108}, Lcom/android/camera/one/v2/core/FrameServerFactory;->provideFrameServer()Lcom/android/camera/one/v2/core/FrameServer;

    move-result-object v40

    .line 734
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-result-object v41

    .line 735
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v42

    .line 736
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideCaptureRequestExtension()Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-result-object v43

    .line 737
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v44

    .line 738
    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;->provideImageReprocessor()Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

    move-result-object v45

    .line 739
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getFlashSetting()Lcom/android/camera/async/Observable;

    move-result-object v46

    .line 740
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v47

    sget-object v51, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;->LEVEL_3:Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    move-object/from16 v37, v18

    move/from16 v49, v25

    move-object/from16 v52, p15

    .line 726
    invoke-static/range {v34 .. v52}, Lcom/android/camera/one/v2/photo/ManualPictureTakerFactory;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/v2/core/ResponseManager;IILcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/v2/photo/ManualPictureTakerFactory;

    move-result-object v114

    .restart local v114    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    goto/16 :goto_b

    .line 747
    .end local v114    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    :cond_31
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    sget-object v6, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v4, v6, :cond_32

    .line 749
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v80

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    move-object/from16 v81, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v82, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    move-object/from16 v84, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    move-object/from16 v85, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    .line 755
    invoke-static {v4}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$600(Lcom/android/camera/one/v2/Level3OneCameraFactory;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v86

    .line 757
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-result-object v88

    .line 758
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v89

    .line 759
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->providePreviewUpdater()Ljava/lang/Runnable;

    move-result-object v90

    .line 760
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideCaptureRequestExtension()Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-result-object v91

    .line 761
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideZSLStream()Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    move-result-object v92

    .line 762
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v93

    .line 763
    invoke-virtual/range {v115 .. v115}, Lcom/android/camera/one/v2/sharedimagereader/RawImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v94

    .line 764
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideMetadataPool()Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    move-result-object v95

    move-object/from16 v83, v18

    move-object/from16 v87, v30

    move-object/from16 v96, v16

    move/from16 v97, v25

    move/from16 v98, v50

    move-object/from16 v99, p15

    .line 748
    invoke-static/range {v80 .. v99}, Lcom/android/camera/one/v2/photo/MegviiPictureTakerFactory;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Ljava/lang/Runnable;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/ResponseManager;IILcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/v2/photo/MegviiPictureTakerFactory;

    move-result-object v114

    .restart local v114    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    goto/16 :goto_b

    .line 771
    .end local v114    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    :cond_32
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$slaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    move-object/from16 v57, v0

    .line 780
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-result-object v60

    .line 781
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v61

    .line 782
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideSlaveMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v62

    .line 783
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->providePreviewUpdater()Ljava/lang/Runnable;

    move-result-object v63

    .line 784
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideCaptureRequestExtension()Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-result-object v64

    .line 785
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v65

    if-eqz v121, :cond_33

    .line 786
    invoke-virtual/range {v121 .. v121}, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v66

    .line 787
    :goto_16
    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;->provideImageReprocessor()Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

    move-result-object v67

    .line 788
    invoke-virtual/range {v115 .. v115}, Lcom/android/camera/one/v2/sharedimagereader/RawImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v68

    .line 789
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideZSLStream()Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    move-result-object v69

    .line 790
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideMetadataPool()Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    move-result-object v70

    .line 791
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getFlashSetting()Lcom/android/camera/async/Observable;

    move-result-object v71

    .line 792
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v72

    move-object/from16 v55, v18

    move-object/from16 v58, v30

    move-object/from16 v73, v16

    move-object/from16 v74, v17

    move/from16 v75, v25

    move/from16 v76, v26

    move/from16 v77, v50

    move-object/from16 v78, p15

    .line 770
    invoke-static/range {v51 .. v78}, Lcom/android/camera/one/v2/photo/ZslPictureTakerFactory;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Ljava/lang/Runnable;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/v2/core/ResponseManager;Lcom/android/camera/one/v2/core/ResponseManager;IIILcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/v2/photo/ZslPictureTakerFactory;

    move-result-object v114

    .line 800
    .restart local v114    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getHdrSceneSetting()Lcom/android/camera/async/Observable;

    move-result-object v110

    .line 801
    .local v110, "hdrSceneSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSRSceneSetting()Lcom/android/camera/async/Observable;

    move-result-object v124

    .line 802
    .local v124, "srSceneSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    new-instance v127, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$4;

    move-object/from16 v0, v127

    move-object/from16 v1, p0

    move-object/from16 v2, v110

    move-object/from16 v3, v114

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$4;-><init>(Lcom/android/camera/one/v2/Level3OneCameraFactory$2;Lcom/android/camera/async/Observable;Lcom/android/camera/one/v2/photo/PictureTakerFactory;)V

    .line 817
    .local v127, "updateHDRModeRunnable":Ljava/lang/Runnable;
    invoke-interface/range {v127 .. v127}, Ljava/lang/Runnable;->run()V

    .line 819
    new-instance v128, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$5;

    move-object/from16 v0, v128

    move-object/from16 v1, p0

    move-object/from16 v2, v124

    move-object/from16 v3, v114

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$5;-><init>(Lcom/android/camera/one/v2/Level3OneCameraFactory$2;Lcom/android/camera/async/Observable;Lcom/android/camera/one/v2/photo/PictureTakerFactory;)V

    .line 834
    .local v128, "updateSRModeRunnable":Ljava/lang/Runnable;
    invoke-interface/range {v128 .. v128}, Ljava/lang/Runnable;->run()V

    .line 837
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v4

    .line 836
    move-object/from16 v0, v110

    move-object/from16 v1, v127

    invoke-interface {v0, v1, v4}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v109

    .line 838
    .local v109, "hdrCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v109

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 841
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v4

    .line 840
    move-object/from16 v0, v124

    move-object/from16 v1, v128

    invoke-interface {v0, v1, v4}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v123

    .line 842
    .local v123, "srCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v123

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    goto/16 :goto_b

    .line 786
    .end local v109    # "hdrCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v110    # "hdrSceneSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    .end local v114    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    .end local v123    # "srCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v124    # "srSceneSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v127    # "updateHDRModeRunnable":Ljava/lang/Runnable;
    .end local v128    # "updateSRModeRunnable":Ljava/lang/Runnable;
    :cond_33
    const/16 v66, 0x0

    goto :goto_16

    .line 854
    .end local v48    # "rootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    .restart local v114    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    :cond_34
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    sget-object v6, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PANORAMA:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v4, v6, :cond_36

    .line 855
    new-instance v60, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;

    .line 856
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    move-object/from16 v65, v0

    .line 862
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v67

    .line 863
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideCaptureRequestExtension()Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-result-object v68

    .line 864
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideZSLStream()Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    move-result-object v69

    .line 865
    invoke-virtual/range {v119 .. v119}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideMetadataPool()Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    move-result-object v70

    .line 866
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->providePreviewUpdater()Ljava/lang/Runnable;

    move-result-object v71

    .line 867
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    .line 868
    invoke-static {v4}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$400(Lcom/android/camera/one/v2/Level3OneCameraFactory;)Lcom/android/camera/async/ConcurrentState;

    move-result-object v73

    .line 869
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v74

    if-eqz v100, :cond_35

    const/16 v75, 0x5

    :goto_17
    move-object/from16 v63, v18

    move-object/from16 v66, v30

    invoke-direct/range {v60 .. v75}, Lcom/android/camera/panorama/PanoramaBurstTakerImpl;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Ljava/lang/Runnable;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/async/Updatable;Lcom/android/camera/util/Size;I)V

    .restart local v60    # "burstTaker":Lcom/android/camera/burst/BurstTaker;
    goto/16 :goto_c

    .end local v60    # "burstTaker":Lcom/android/camera/burst/BurstTaker;
    :cond_35
    const/16 v75, 0x2

    goto :goto_17

    .line 871
    :cond_36
    if-eqz v104, :cond_38

    .line 872
    new-instance v60, Lcom/android/camera/burst/ZSLBurstTakerImpl;

    .line 873
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    move-object/from16 v63, v0

    .line 877
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v65

    .line 878
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideCaptureRequestExtension()Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-result-object v66

    .line 879
    invoke-virtual/range {v104 .. v104}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v67

    .line 880
    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;->provideImageReprocessor()Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

    move-result-object v68

    .line 881
    invoke-virtual/range {v104 .. v104}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideZSLStream()Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    move-result-object v69

    .line 882
    invoke-virtual/range {v104 .. v104}, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->provideMetadataPool()Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    move-result-object v70

    .line 883
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->providePreviewUpdater()Ljava/lang/Runnable;

    move-result-object v71

    .line 884
    invoke-virtual/range {v102 .. v102}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    .line 885
    invoke-static {v4}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$400(Lcom/android/camera/one/v2/Level3OneCameraFactory;)Lcom/android/camera/async/ConcurrentState;

    move-result-object v73

    if-eqz v100, :cond_37

    const/16 v74, 0x5

    :goto_18
    move-object/from16 v62, v18

    move-object/from16 v64, v30

    invoke-direct/range {v60 .. v74}, Lcom/android/camera/burst/ZSLBurstTakerImpl;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Ljava/lang/Runnable;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/async/Updatable;I)V

    .restart local v60    # "burstTaker":Lcom/android/camera/burst/BurstTaker;
    goto/16 :goto_c

    .end local v60    # "burstTaker":Lcom/android/camera/burst/BurstTaker;
    :cond_37
    const/16 v74, 0x2

    goto :goto_18

    .line 888
    :cond_38
    const/16 v60, 0x0

    .restart local v60    # "burstTaker":Lcom/android/camera/burst/BurstTaker;
    goto/16 :goto_c

    .line 915
    .end local v60    # "burstTaker":Lcom/android/camera/burst/BurstTaker;
    :cond_39
    new-instance v80, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$7;

    move-object/from16 v0, v80

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$7;-><init>(Lcom/android/camera/one/v2/Level3OneCameraFactory$2;)V

    .restart local v80    # "sceneRecognitionProvider":Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;
    goto/16 :goto_d

    .line 954
    :cond_3a
    new-instance v21, Lcom/android/camera/async/ConcurrentState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    invoke-static {v4}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$200(Lcom/android/camera/one/v2/Level3OneCameraFactory;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 955
    .restart local v21    # "availableImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :cond_3b
    new-instance v22, Lcom/android/camera/async/ConcurrentState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/Level3OneCameraFactory;

    invoke-static {v4}, Lcom/android/camera/one/v2/Level3OneCameraFactory;->access$200(Lcom/android/camera/one/v2/Level3OneCameraFactory;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 957
    .restart local v22    # "slaveAvailableImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .restart local v23    # "frameServerAvailability":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    :cond_3c
    new-instance v24, Lcom/android/camera/async/ConcurrentState;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 980
    .restart local v24    # "slaveFrameServerAvailability":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .restart local v116    # "readyObservable":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    :cond_3d
    const/16 v75, 0x0

    goto/16 :goto_11

    .line 982
    :cond_3e
    new-instance v77, Lcom/android/camera/one/v2/photo/SceneDetectorStub;

    invoke-direct/range {v77 .. v77}, Lcom/android/camera/one/v2/photo/SceneDetectorStub;-><init>()V

    goto/16 :goto_12

    .line 983
    :cond_3f
    new-instance v78, Lcom/android/camera/one/v2/photo/FlashDetectorStub;

    invoke-direct/range {v78 .. v78}, Lcom/android/camera/one/v2/photo/FlashDetectorStub;-><init>()V

    goto/16 :goto_13
.end method
