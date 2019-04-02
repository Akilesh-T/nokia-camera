.class Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;
.super Ljava/lang/Object;
.source "SimpleOneCameraFactory.java"

# interfaces
.implements Lcom/android/camera/one/v2/initialization/CameraStarter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/SimpleOneCameraFactory;->createOneCamera(Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/FatalErrorHandler;)Lcom/android/camera/one/OneCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

.field final synthetic val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field final synthetic val$device:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

.field final synthetic val$imageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

.field final synthetic val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

.field final synthetic val$mainExecutor:Lcom/android/camera/async/MainThread;

.field final synthetic val$slaveCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

.field final synthetic val$slaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field final synthetic val$supportLevel:Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/SimpleOneCameraFactory;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    iput-object p2, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iput-object p3, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    iput-object p4, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$imageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    iput-object p5, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$device:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    iput-object p6, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$slaveCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    iput-object p7, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$slaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iput-object p8, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$mainExecutor:Lcom/android/camera/async/MainThread;

    iput-object p9, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$supportLevel:Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createImageReaderForJpegPicture(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .locals 6
    .param p1, "previewLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "targetCaptureSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 248
    new-instance v0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;

    new-instance v1, Lcom/android/camera/one/v2/LoggingImageReader;

    .line 250
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    const/16 v4, 0x100

    iget-object v5, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    invoke-static {v5}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->access$200(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)I

    move-result v5

    .line 249
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->newInstance(IIII)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v2

    .line 250
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/one/v2/LoggingImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/debug/Logger$Factory;)V

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;)V

    .line 251
    .local v0, "imageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    invoke-static {}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "createImageReaderForDualSightCapture with format : 256"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 253
    return-object v0
.end method

.method public createImageReaderForPicture(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .locals 7
    .param p1, "previewLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;

    .prologue
    .line 199
    invoke-virtual {p2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v1

    .line 200
    .local v1, "targetCaptureSize":Lcom/android/camera/util/Size;
    new-instance v0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;

    new-instance v2, Lcom/android/camera/one/v2/LoggingImageReader;

    .line 202
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    invoke-static {v5}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->access$100(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    invoke-static {v6}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->access$200(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)I

    move-result v6

    .line 201
    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->newInstance(IIII)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v3

    .line 202
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/LoggingImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/debug/Logger$Factory;)V

    invoke-direct {v0, v2}, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;)V

    .line 203
    .local v0, "imageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    invoke-virtual {p1, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 204
    return-object v0
.end method

.method public createImageReaderForRaw(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;I)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .locals 8
    .param p1, "previewLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p3, "rawImageFormat"    # I

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-virtual {p2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v3

    .line 233
    .local v3, "targetCaptureSize":Lcom/android/camera/util/Size;
    iget-object v4, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v4, p3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v2

    .line 234
    .local v2, "supportedRawSize":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    if-nez v2, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-object v0

    .line 235
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 237
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/Size;

    .line 238
    .local v1, "rawSize":Lcom/android/camera/util/Size;
    iget-object v4, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    invoke-static {v4}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->access$300(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)Lcom/android/camera/debug/Logger;

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

    .line 239
    new-instance v0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;

    new-instance v4, Lcom/android/camera/one/v2/LoggingImageReader;

    .line 241
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    invoke-static {v7}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->access$200(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)I

    move-result v7

    .line 240
    invoke-static {v5, v6, p3, v7}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->newInstance(IIII)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v5

    .line 241
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/camera/one/v2/LoggingImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/debug/Logger$Factory;)V

    invoke-direct {v0, v4}, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;)V

    .line 242
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
    .line 222
    invoke-virtual {p2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v1

    .line 223
    .local v1, "targetCaptureSize":Lcom/android/camera/util/Size;
    new-instance v0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;

    new-instance v2, Lcom/android/camera/one/v2/LoggingImageReader;

    .line 225
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    invoke-static {v5}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->access$200(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)I

    move-result v5

    .line 224
    invoke-static {v3, v4, p3, v5}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->newInstance(IIII)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v3

    .line 225
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/LoggingImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/debug/Logger$Factory;)V

    invoke-direct {v0, v2}, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;)V

    .line 226
    .local v0, "imageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    invoke-virtual {p1, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 227
    return-object v0
.end method

.method public getInputConfiguration(Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;I)Landroid/hardware/camera2/params/InputConfiguration;
    .locals 5
    .param p1, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p2, "oneCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "imageFormat"    # I

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-interface {p2, p3}, Lcom/android/camera/one/OneCameraCharacteristics;->isReprocessingSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 212
    :goto_0
    return-object v2

    .line 210
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v0

    .line 211
    .local v0, "capturSize":Lcom/android/camera/util/Size;
    new-instance v1, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v4

    invoke-direct {v1, v3, v4, p3}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 212
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
    .locals 1
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
    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public startCamera(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Observable;)Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;
    .locals 96
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
    .line 278
    .local p16, "zoomState":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Float;>;"
    .local p17, "slaveZoomState":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Float;>;"
    .local p18, "metadataCallback":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .local p19, "slaveMetadataCallback":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .local p20, "readyState":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Boolean;>;"
    .local p21, "faceData":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<[Landroid/hardware/camera2/params/Face;>;"
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v94

    .line 281
    .local v94, "targetCaptureSize":Lcom/android/camera/util/Size;
    if-eqz p8, :cond_a

    :try_start_0
    invoke-interface/range {p8 .. p8}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getImageFormat()I

    move-result v87

    .line 282
    .local v87, "imageFormat":I
    :goto_0
    new-instance v88, Lcom/android/camera/one/v2/common/PictureSizeCalculator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, v88

    invoke-direct {v0, v5}, Lcom/android/camera/one/v2/common/PictureSizeCalculator;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 284
    .local v88, "pictureSizeCalculator":Lcom/android/camera/one/v2/common/PictureSizeCalculator;
    move-object/from16 v0, v88

    move-object/from16 v1, v94

    move/from16 v2, v87

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/common/PictureSizeCalculator;->computeConfiguration(Lcom/android/camera/util/Size;I)Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;

    move-result-object v81

    .line 285
    .local v81, "configuration":Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    invoke-static {v5}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->access$300(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)Lcom/android/camera/debug/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Picture Size Configuration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v81

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", format = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v87

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    invoke-virtual/range {v81 .. v81}, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;->getPostCaptureCrop()Landroid/graphics/Rect;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;->updatePostCaptureCrop(Landroid/graphics/Rect;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$imageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    invoke-virtual/range {v81 .. v81}, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;->getPostCaptureCrop()Landroid/graphics/Rect;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;->updatePostCaptureCrop(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v81    # "configuration":Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;
    .end local v87    # "imageFormat":I
    .end local v88    # "pictureSizeCalculator":Lcom/android/camera/one/v2/common/PictureSizeCalculator;
    :goto_1
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isVideoMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v79

    .line 293
    .local v79, "USE_VIDEO":Z
    const/16 v19, 0x1

    .line 294
    .local v19, "mainPreviewTemplateType":I
    const/16 v20, 0x1

    .line 295
    .local v20, "slavePreviewTemplateType":I
    const/16 v48, 0x2

    .line 296
    .local v48, "captureTemplateType":I
    if-eqz v79, :cond_0

    .line 297
    const/16 v19, 0x3

    .line 298
    const/16 v48, 0x4

    .line 302
    :cond_0
    new-instance v83, Lcom/android/camera/one/v2/core/FrameServerFactory;

    new-instance v5, Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    new-instance v6, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v6}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    move-object/from16 v0, v83

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1, v6}, Lcom/android/camera/one/v2/core/FrameServerFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/async/HandlerFactory;)V

    .line 305
    .local v83, "frameServerComponent":Lcom/android/camera/one/v2/core/FrameServerFactory;
    invoke-virtual/range {v83 .. v83}, Lcom/android/camera/one/v2/core/FrameServerFactory;->provideFrameServer()Lcom/android/camera/one/v2/core/FrameServer;

    move-result-object v24

    .line 307
    .local v24, "frameServer":Lcom/android/camera/one/v2/core/FrameServer;
    invoke-virtual/range {v83 .. v83}, Lcom/android/camera/one/v2/core/FrameServerFactory;->provideEphemeralFrameServer()Lcom/android/camera/one/v2/core/FrameServer;

    move-result-object v8

    .line 309
    .local v8, "ephemeralFrameServer":Lcom/android/camera/one/v2/core/FrameServer;
    const/16 v92, 0x0

    .line 310
    .local v92, "slaveFrameServerComponent":Lcom/android/camera/one/v2/core/FrameServerFactory;
    const/16 v35, 0x0

    .line 311
    .local v35, "slaveFrameServer":Lcom/android/camera/one/v2/core/FrameServer;
    const/4 v9, 0x0

    .line 312
    .local v9, "slaveEphemeralFrameServer":Lcom/android/camera/one/v2/core/FrameServer;
    if-eqz p3, :cond_1

    .line 313
    new-instance v92, Lcom/android/camera/one/v2/core/FrameServerFactory;

    .end local v92    # "slaveFrameServerComponent":Lcom/android/camera/one/v2/core/FrameServerFactory;
    new-instance v5, Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    new-instance v6, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v6}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    move-object/from16 v0, v92

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1, v6}, Lcom/android/camera/one/v2/core/FrameServerFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/async/HandlerFactory;)V

    .line 314
    .restart local v92    # "slaveFrameServerComponent":Lcom/android/camera/one/v2/core/FrameServerFactory;
    invoke-virtual/range {v92 .. v92}, Lcom/android/camera/one/v2/core/FrameServerFactory;->provideFrameServer()Lcom/android/camera/one/v2/core/FrameServer;

    move-result-object v35

    .line 315
    invoke-virtual/range {v92 .. v92}, Lcom/android/camera/one/v2/core/FrameServerFactory;->provideEphemeralFrameServer()Lcom/android/camera/one/v2/core/FrameServer;

    move-result-object v9

    .line 318
    :cond_1
    new-instance v12, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    .line 319
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v5

    new-instance v6, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2$1;-><init>(Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;)V

    invoke-direct {v12, v5, v6}, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/util/Provider;)V

    .line 329
    .local v12, "cameraCommandExecutor":Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 332
    if-eqz p8, :cond_b

    new-instance v91, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;

    new-instance v5, Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    new-instance v6, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v6}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    move-object/from16 v0, v91

    move-object/from16 v1, p8

    invoke-direct {v0, v5, v1, v6}, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/async/HandlerFactory;)V

    .line 334
    .local v91, "sharedImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;
    :goto_2
    const/16 v93, 0x0

    .line 335
    .local v93, "slaveSharedImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;
    if-eqz p9, :cond_2

    .line 336
    new-instance v93, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;

    .end local v93    # "slaveSharedImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;
    new-instance v5, Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    new-instance v6, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v6}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    move-object/from16 v0, v93

    move-object/from16 v1, p9

    invoke-direct {v0, v5, v1, v6}, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/async/HandlerFactory;)V

    .line 340
    .restart local v93    # "slaveSharedImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;
    :cond_2
    if-eqz v91, :cond_c

    .line 341
    invoke-virtual/range {v91 .. v91}, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->provideGlobalTimestampQueue()Lcom/android/camera/async/Updatable;

    move-result-object v84

    .line 342
    .local v84, "globalTimestampCallback":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Long;>;"
    :goto_3
    if-eqz v91, :cond_d

    .line 343
    invoke-virtual/range {v91 .. v91}, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v44

    .line 348
    .local v44, "managedImageReader":Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    :goto_4
    new-instance v10, Lcom/android/camera/one/v2/core/RequestTemplate;

    new-instance v5, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceRequestBuilderFactory;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$device:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    invoke-direct {v5, v6}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceRequestBuilderFactory;-><init>(Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;)V

    invoke-direct {v10, v5}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 350
    .local v10, "rootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    new-instance v26, Lcom/android/camera/one/v2/core/RequestTemplate;

    move-object/from16 v0, v26

    invoke-direct {v0, v10}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 353
    .local v26, "rootReprocessTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    if-eqz v84, :cond_3

    .line 355
    invoke-static/range {v84 .. v84}, Lcom/android/camera/one/v2/core/ResponseListeners;->forTimestamps(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v5

    .line 354
    invoke-virtual {v10, v5}, Lcom/android/camera/one/v2/core/RequestTemplate;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 357
    :cond_3
    invoke-static/range {p18 .. p18}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFinalMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/android/camera/one/v2/core/RequestTemplate;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 359
    new-instance v5, Lcom/android/camera/one/v2/common/SimpleCaptureStream;

    move-object/from16 v0, p4

    invoke-direct {v5, v0}, Lcom/android/camera/one/v2/common/SimpleCaptureStream;-><init>(Landroid/view/Surface;)V

    sget-object v6, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->PREVIEW:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    invoke-virtual {v10, v5, v6}, Lcom/android/camera/one/v2/core/RequestTemplate;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;Lcom/android/camera/one/v2/core/CaptureStream$StreamType;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 360
    if-eqz p6, :cond_4

    .line 361
    new-instance v5, Lcom/android/camera/one/v2/common/SimpleCaptureStream;

    move-object/from16 v0, p6

    invoke-direct {v5, v0}, Lcom/android/camera/one/v2/common/SimpleCaptureStream;-><init>(Landroid/view/Surface;)V

    sget-object v6, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->PREVIEW:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    invoke-virtual {v10, v5, v6}, Lcom/android/camera/one/v2/core/RequestTemplate;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;Lcom/android/camera/one/v2/core/CaptureStream$StreamType;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 364
    :cond_4
    new-instance v18, Lcom/android/camera/async/ConcurrentState;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 365
    .local v18, "recordController":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    if-eqz v79, :cond_5

    .line 366
    if-eqz p14, :cond_5

    invoke-interface/range {p14 .. p14}, Lcom/android/camera/burst/BurstFacade;->getInputSurface()Landroid/view/Surface;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 367
    new-instance v5, Lcom/android/camera/one/v2/common/VideoCaptureStream;

    invoke-interface/range {p14 .. p14}, Lcom/android/camera/burst/BurstFacade;->getInputSurface()Landroid/view/Surface;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-direct {v5, v6, v0}, Lcom/android/camera/one/v2/common/VideoCaptureStream;-><init>(Landroid/view/Surface;Lcom/android/camera/async/Observable;)V

    sget-object v6, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->RECORD:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    invoke-virtual {v10, v5, v6}, Lcom/android/camera/one/v2/core/RequestTemplate;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;Lcom/android/camera/one/v2/core/CaptureStream$StreamType;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 371
    :cond_5
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v5

    .line 372
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 371
    invoke-static {v5}, Lcom/android/camera/util/GservicesHelper;->isJankStatisticsEnabled(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 373
    new-instance v5, Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;

    .line 374
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v6

    .line 375
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/camera/one/v2/errorhandling/FramerateJankDetector;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/stats/UsageStatistics;)V

    .line 373
    invoke-virtual {v10, v5}, Lcom/android/camera/one/v2/core/RequestTemplate;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 379
    :cond_6
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    .line 380
    invoke-static {v6}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->access$400(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->getSupplier()Lcom/google/common/base/Supplier;

    move-result-object v6

    .line 379
    invoke-virtual {v10, v5, v6}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 382
    const/4 v11, 0x0

    .line 383
    .local v11, "slaveRootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$slaveCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    if-eqz v5, :cond_8

    .line 384
    new-instance v11, Lcom/android/camera/one/v2/core/RequestTemplate;

    .end local v11    # "slaveRootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    new-instance v5, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceRequestBuilderFactory;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$slaveCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    invoke-direct {v5, v6}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceRequestBuilderFactory;-><init>(Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;)V

    invoke-direct {v11, v5}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 385
    .restart local v11    # "slaveRootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    invoke-virtual/range {v93 .. v93}, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->provideGlobalTimestampQueue()Lcom/android/camera/async/Updatable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/one/v2/core/ResponseListeners;->forTimestamps(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/android/camera/one/v2/core/RequestTemplate;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 386
    invoke-static/range {p19 .. p19}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFinalMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/android/camera/one/v2/core/RequestTemplate;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 388
    new-instance v5, Lcom/android/camera/one/v2/common/SimpleCaptureStream;

    move-object/from16 v0, p5

    invoke-direct {v5, v0}, Lcom/android/camera/one/v2/common/SimpleCaptureStream;-><init>(Landroid/view/Surface;)V

    sget-object v6, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->PREVIEW:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    invoke-virtual {v11, v5, v6}, Lcom/android/camera/one/v2/core/RequestTemplate;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;Lcom/android/camera/one/v2/core/CaptureStream$StreamType;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 389
    if-eqz p7, :cond_7

    .line 390
    new-instance v5, Lcom/android/camera/one/v2/common/SimpleCaptureStream;

    move-object/from16 v0, p7

    invoke-direct {v5, v0}, Lcom/android/camera/one/v2/common/SimpleCaptureStream;-><init>(Landroid/view/Surface;)V

    sget-object v6, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->PREVIEW:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    invoke-virtual {v11, v5, v6}, Lcom/android/camera/one/v2/core/RequestTemplate;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;Lcom/android/camera/one/v2/core/CaptureStream$StreamType;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 393
    :cond_7
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    .line 394
    invoke-static {v6}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->access$400(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->getSupplier()Lcom/google/common/base/Supplier;

    move-result-object v6

    .line 393
    invoke-virtual {v11, v5, v6}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 398
    :cond_8
    new-instance v4, Lcom/android/camera/one/v2/common/BasicCameraFactory;

    new-instance v5, Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$slaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    new-instance v13, Lcom/android/camera/one/v2/commands/BasicPreviewCommandFactory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$device:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    .line 407
    invoke-interface {v14}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, v18

    move-object/from16 v1, p15

    invoke-direct {v13, v8, v14, v0, v1}, Lcom/android/camera/one/v2/commands/BasicPreviewCommandFactory;-><init>(Lcom/android/camera/one/v2/core/FrameServer;ILcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    if-eqz v9, :cond_e

    new-instance v14, Lcom/android/camera/one/v2/commands/BasicPreviewCommandFactory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$slaveCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    .line 408
    invoke-interface {v15}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v18

    move-object/from16 v1, p15

    invoke-direct {v14, v9, v15, v0, v1}, Lcom/android/camera/one/v2/commands/BasicPreviewCommandFactory;-><init>(Lcom/android/camera/one/v2/core/FrameServer;ILcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$device:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    .line 415
    invoke-interface {v15}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$slaveCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$slaveCameraDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    .line 416
    invoke-interface {v15}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v22

    :goto_6
    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    invoke-direct/range {v4 .. v22}, Lcom/android/camera/one/v2/common/BasicCameraFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/commands/PreviewCommandFactory;Lcom/android/camera/one/v2/commands/PreviewCommandFactory;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;IIII)V

    .line 420
    .local v4, "basicCameraFactory":Lcom/android/camera/one/v2/common/BasicCameraFactory;
    new-instance v77, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2$2;

    move-object/from16 v0, v77

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2$2;-><init>(Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;)V

    .line 433
    .local v77, "bokehResultProvider":Lcom/android/camera/one/v2/photo/BokehResultProvider;
    new-instance v21, Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    invoke-static {v5}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->access$400(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v28

    new-instance v29, Lcom/android/camera/async/HandlerFactory;

    invoke-direct/range {v29 .. v29}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    invoke-static {v5}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->access$100(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)I

    move-result v30

    move-object/from16 v22, p1

    move-object/from16 v23, p2

    move-object/from16 v27, p11

    invoke-direct/range {v21 .. v30}, Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/async/HandlerFactory;I)V

    .line 437
    .local v21, "imageReprocessorFactory":Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->needCapture(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 438
    const/16 v36, 0x0

    .line 571
    .end local v44    # "managedImageReader":Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .local v36, "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    :goto_7
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getHdrSceneSetting()Lcom/android/camera/async/Observable;

    move-result-object v86

    .line 572
    .local v86, "hdrSceneSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    new-instance v95, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2$3;

    move-object/from16 v0, v95

    move-object/from16 v1, p0

    move-object/from16 v2, v86

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2$3;-><init>(Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;Lcom/android/camera/async/Observable;Lcom/android/camera/one/v2/photo/PictureTakerFactory;)V

    .line 587
    .local v95, "updateHDRModeRunnable":Ljava/lang/Runnable;
    invoke-interface/range {v95 .. v95}, Ljava/lang/Runnable;->run()V

    .line 590
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v5

    .line 589
    move-object/from16 v0, v86

    move-object/from16 v1, v95

    invoke-interface {v0, v1, v5}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v85

    .line 591
    .local v85, "hdrCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 593
    if-eqz p14, :cond_9

    if-eqz v79, :cond_9

    .line 594
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->providePreviewUpdater()Ljava/lang/Runnable;

    move-result-object v5

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/async/ConcurrentState;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v90

    .line 595
    .local v90, "recordControllerCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 597
    new-instance v80, Lcom/android/camera/video/VideoBurstTakerImpl;

    .line 598
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v5

    move-object/from16 v0, v80

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lcom/android/camera/video/VideoBurstTakerImpl;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/ConcurrentState;)V

    .line 600
    .local v80, "burstTaker":Lcom/android/camera/burst/BurstTaker;
    move-object/from16 v0, p14

    move-object/from16 v1, v80

    invoke-interface {v0, v1}, Lcom/android/camera/burst/BurstFacade;->setBurstTaker(Lcom/android/camera/burst/BurstTaker;)V

    .line 601
    new-instance v5, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object/from16 v2, p14

    invoke-direct {v5, v0, v1, v2}, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2$4;-><init>(Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;Lcom/android/camera/burst/BurstTaker;Lcom/android/camera/burst/BurstFacade;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 615
    .end local v80    # "burstTaker":Lcom/android/camera/burst/BurstTaker;
    .end local v90    # "recordControllerCallback":Lcom/android/camera/async/SafeCloseable;
    :cond_9
    new-instance v78, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2$5;

    move-object/from16 v0, v78

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2$5;-><init>(Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;)V

    .line 633
    .local v78, "sceneRecognitionProvider":Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;
    if-eqz v91, :cond_1b

    invoke-virtual/range {v91 .. v91}, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->provideAvailableImageCount()Lcom/android/camera/async/Observable;

    move-result-object v29

    .line 634
    .local v29, "availableImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :goto_8
    if-eqz v93, :cond_1c

    invoke-virtual/range {v93 .. v93}, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->provideAvailableImageCount()Lcom/android/camera/async/Observable;

    move-result-object v30

    .line 636
    .local v30, "slaveAvailableImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :goto_9
    invoke-virtual/range {v83 .. v83}, Lcom/android/camera/one/v2/core/FrameServerFactory;->provideReadyState()Lcom/android/camera/async/Observable;

    move-result-object v31

    .line 637
    .local v31, "frameServerAvailability":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    if-eqz v92, :cond_1d

    invoke-virtual/range {v92 .. v92}, Lcom/android/camera/one/v2/core/FrameServerFactory;->provideReadyState()Lcom/android/camera/async/Observable;

    move-result-object v32

    .line 638
    .local v32, "slaveFrameServerAvailability":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    :goto_a
    const/4 v5, 0x2

    new-array v5, v5, [Lcom/android/camera/async/Observable;

    const/4 v6, 0x0

    aput-object v29, v5, v6

    const/4 v6, 0x1

    aput-object v31, v5, v6

    .line 639
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v27, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2$6;

    move-object/from16 v28, p0

    invoke-direct/range {v27 .. v32}, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2$6;-><init>(Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;)V

    .line 638
    move-object/from16 v0, v27

    invoke-static {v5, v0}, Lcom/android/camera/async/Observables;->transform(Ljava/util/List;Lcom/google/common/base/Supplier;)Lcom/android/camera/async/Observable;

    move-result-object v89

    .line 654
    .local v89, "ready":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    move-object/from16 v0, v89

    move-object/from16 v1, p20

    invoke-static {v0, v1}, Lcom/android/camera/async/Observables;->addThreadSafeCallback(Lcom/android/camera/async/Observable;Lcom/android/camera/async/Updatable;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 656
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->providePreviewUpdater()Ljava/lang/Runnable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 658
    new-instance v72, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;

    if-eqz v36, :cond_1e

    .line 659
    invoke-interface/range {v36 .. v36}, Lcom/android/camera/one/v2/photo/PictureTakerFactory;->providePictureTaker()Lcom/android/camera/one/v2/photo/PictureTaker;

    move-result-object v73

    .line 660
    :goto_b
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-result-object v74

    if-eqz v36, :cond_1f

    .line 661
    invoke-interface/range {v36 .. v36}, Lcom/android/camera/one/v2/photo/PictureTakerFactory;->provideSceneDetector()Lcom/android/camera/one/v2/photo/SceneDetector;

    move-result-object v75

    :goto_c
    if-eqz v36, :cond_20

    .line 662
    invoke-interface/range {v36 .. v36}, Lcom/android/camera/one/v2/photo/PictureTakerFactory;->provideFlashDetector()Lcom/android/camera/one/v2/photo/FlashDetector;

    move-result-object v76

    :goto_d
    invoke-direct/range {v72 .. v78}, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;-><init>(Lcom/android/camera/one/v2/photo/PictureTaker;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/v2/photo/BokehResultProvider;Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;)V

    .line 658
    return-object v72

    .line 281
    .end local v4    # "basicCameraFactory":Lcom/android/camera/one/v2/common/BasicCameraFactory;
    .end local v8    # "ephemeralFrameServer":Lcom/android/camera/one/v2/core/FrameServer;
    .end local v9    # "slaveEphemeralFrameServer":Lcom/android/camera/one/v2/core/FrameServer;
    .end local v10    # "rootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    .end local v11    # "slaveRootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    .end local v12    # "cameraCommandExecutor":Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    .end local v18    # "recordController":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    .end local v19    # "mainPreviewTemplateType":I
    .end local v20    # "slavePreviewTemplateType":I
    .end local v21    # "imageReprocessorFactory":Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;
    .end local v24    # "frameServer":Lcom/android/camera/one/v2/core/FrameServer;
    .end local v26    # "rootReprocessTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    .end local v29    # "availableImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v30    # "slaveAvailableImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .end local v31    # "frameServerAvailability":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .end local v32    # "slaveFrameServerAvailability":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .end local v35    # "slaveFrameServer":Lcom/android/camera/one/v2/core/FrameServer;
    .end local v36    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    .end local v48    # "captureTemplateType":I
    .end local v77    # "bokehResultProvider":Lcom/android/camera/one/v2/photo/BokehResultProvider;
    .end local v78    # "sceneRecognitionProvider":Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;
    .end local v79    # "USE_VIDEO":Z
    .end local v83    # "frameServerComponent":Lcom/android/camera/one/v2/core/FrameServerFactory;
    .end local v84    # "globalTimestampCallback":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Long;>;"
    .end local v85    # "hdrCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v86    # "hdrSceneSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    .end local v89    # "ready":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .end local v91    # "sharedImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;
    .end local v92    # "slaveFrameServerComponent":Lcom/android/camera/one/v2/core/FrameServerFactory;
    .end local v93    # "slaveSharedImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;
    .end local v95    # "updateHDRModeRunnable":Ljava/lang/Runnable;
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    invoke-static {v5}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->access$100(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)I
    :try_end_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v87

    goto/16 :goto_0

    .line 288
    :catch_0
    move-exception v82

    .line 289
    .local v82, "e":Lcom/android/camera/one/OneCameraAccessException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    invoke-static {v5}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->access$300(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)Lcom/android/camera/debug/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error when updatePostCaptureCrop : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v82

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 332
    .end local v82    # "e":Lcom/android/camera/one/OneCameraAccessException;
    .restart local v8    # "ephemeralFrameServer":Lcom/android/camera/one/v2/core/FrameServer;
    .restart local v9    # "slaveEphemeralFrameServer":Lcom/android/camera/one/v2/core/FrameServer;
    .restart local v12    # "cameraCommandExecutor":Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    .restart local v19    # "mainPreviewTemplateType":I
    .restart local v20    # "slavePreviewTemplateType":I
    .restart local v24    # "frameServer":Lcom/android/camera/one/v2/core/FrameServer;
    .restart local v35    # "slaveFrameServer":Lcom/android/camera/one/v2/core/FrameServer;
    .restart local v48    # "captureTemplateType":I
    .restart local v79    # "USE_VIDEO":Z
    .restart local v83    # "frameServerComponent":Lcom/android/camera/one/v2/core/FrameServerFactory;
    .restart local v92    # "slaveFrameServerComponent":Lcom/android/camera/one/v2/core/FrameServerFactory;
    :cond_b
    const/16 v91, 0x0

    goto/16 :goto_2

    .line 341
    .restart local v91    # "sharedImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;
    .restart local v93    # "slaveSharedImageReaderFactory":Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;
    :cond_c
    const/16 v84, 0x0

    goto/16 :goto_3

    .line 343
    .restart local v84    # "globalTimestampCallback":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Long;>;"
    :cond_d
    const/16 v44, 0x0

    goto/16 :goto_4

    .line 408
    .restart local v10    # "rootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    .restart local v11    # "slaveRootTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    .restart local v18    # "recordController":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    .restart local v26    # "rootReprocessTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    .restart local v44    # "managedImageReader":Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 416
    :cond_f
    const/16 v22, -0x1

    goto/16 :goto_6

    .line 439
    .restart local v4    # "basicCameraFactory":Lcom/android/camera/one/v2/common/BasicCameraFactory;
    .restart local v21    # "imageReprocessorFactory":Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;
    .restart local v77    # "bokehResultProvider":Lcom/android/camera/one/v2/photo/BokehResultProvider;
    :cond_10
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v5

    sget-object v6, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BEAUTY:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v5, v6, :cond_11

    .line 440
    const/16 v36, 0x0

    .restart local v36    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    goto/16 :goto_7

    .line 441
    .end local v36    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    :cond_11
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isDualSightMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 443
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$mainExecutor:Lcom/android/camera/async/MainThread;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$slaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$imageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    move-object/from16 v33, v0

    .line 452
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-result-object v36

    .line 453
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v37

    .line 454
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideSlaveMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v38

    .line 455
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->providePreviewUpdater()Ljava/lang/Runnable;

    move-result-object v39

    .line 456
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideCaptureRequestExtension()Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-result-object v40

    .line 457
    invoke-virtual/range {v91 .. v91}, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v41

    if-eqz v93, :cond_12

    .line 458
    invoke-virtual/range {v93 .. v93}, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v42

    .line 459
    :goto_e
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    .line 466
    invoke-static {v5}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->access$400(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    .line 467
    invoke-static {v5}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->access$400(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$slaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {v5, v6}, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->from(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v51

    move-object/from16 v31, v12

    move-object/from16 v34, v24

    move-object/from16 v44, v10

    move-object/from16 v45, v11

    move/from16 v46, v19

    move/from16 v47, v20

    move-object/from16 v49, p15

    move-object/from16 v52, p13

    .line 442
    invoke-static/range {v27 .. v52}, Lcom/android/camera/one/v2/photo/DualSightPictureTakerFactory;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Ljava/lang/Runnable;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/v2/core/ResponseManager;Lcom/android/camera/one/v2/core/ResponseManager;IIILcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/opengl/image/ImageGeneratorProvider;)Lcom/android/camera/one/v2/photo/DualSightPictureTakerFactory;

    .end local v44    # "managedImageReader":Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    move-result-object v36

    .restart local v36    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    goto/16 :goto_7

    .line 458
    .end local v36    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    .restart local v44    # "managedImageReader":Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    :cond_12
    const/16 v42, 0x0

    goto :goto_e

    .line 469
    :cond_13
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v5

    sget-object v6, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PANORAMA:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v5, v6, :cond_14

    .line 470
    const/16 v36, 0x0

    .restart local v36    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    goto/16 :goto_7

    .line 471
    .end local v36    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$supportLevel:Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    sget-object v6, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;->LEGACY_JPEG:Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    if-ne v5, v6, :cond_15

    .line 472
    new-instance v36, Lcom/android/camera/one/v2/photo/LegacyPictureTakerFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$mainExecutor:Lcom/android/camera/async/MainThread;

    move-object/from16 v39, v0

    .line 474
    invoke-virtual/range {v83 .. v83}, Lcom/android/camera/one/v2/core/FrameServerFactory;->provideFrameServer()Lcom/android/camera/one/v2/core/FrameServer;

    move-result-object v40

    .line 475
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-result-object v41

    .line 476
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v42

    .line 477
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideCaptureRequestExtension()Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-result-object v43

    move-object/from16 v38, v12

    invoke-direct/range {v36 .. v44}, Lcom/android/camera/one/v2/photo/LegacyPictureTakerFactory;-><init>(Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;)V

    .restart local v36    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    goto/16 :goto_7

    .line 480
    .end local v36    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$supportLevel:Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    sget-object v6, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;->LIMITED_JPEG:Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    if-eq v5, v6, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$supportLevel:Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    sget-object v6, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;->LEGACY_JPEG:Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    if-eq v5, v6, :cond_17

    .line 482
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v5

    sget-object v6, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v5, v6, :cond_17

    .line 484
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$mainExecutor:Lcom/android/camera/async/MainThread;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$slaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$imageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    move-object/from16 v55, v0

    .line 491
    invoke-virtual/range {v83 .. v83}, Lcom/android/camera/one/v2/core/FrameServerFactory;->provideFrameServer()Lcom/android/camera/one/v2/core/FrameServer;

    move-result-object v56

    .line 493
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-result-object v58

    .line 494
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v59

    .line 495
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideSlaveMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v60

    .line 496
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->providePreviewUpdater()Ljava/lang/Runnable;

    move-result-object v61

    .line 497
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideCaptureRequestExtension()Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-result-object v62

    const/16 v63, 0x0

    .line 499
    invoke-virtual/range {v91 .. v91}, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v64

    if-eqz v93, :cond_16

    .line 500
    invoke-virtual/range {v93 .. v93}, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v65

    .line 501
    :goto_f
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;->provideImageReprocessor()Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

    move-result-object v66

    const/16 v67, 0x0

    const/16 v68, 0x0

    .line 504
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v69

    move-object/from16 v53, v12

    move-object/from16 v57, v35

    move-object/from16 v70, v10

    move-object/from16 v71, v11

    move/from16 v72, v19

    move/from16 v73, v20

    move/from16 v74, v48

    move-object/from16 v75, p21

    move-object/from16 v76, p15

    .line 483
    invoke-static/range {v49 .. v77}, Lcom/android/camera/one/v2/photo/BokehPictureTakerFactory;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Ljava/lang/Runnable;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/v2/core/ResponseManager;Lcom/android/camera/one/v2/core/ResponseManager;IIILcom/android/camera/async/Observable;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/v2/photo/BokehResultProvider;)Lcom/android/camera/one/v2/photo/BokehPictureTakerFactory;

    move-result-object v36

    .restart local v36    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    goto/16 :goto_7

    .line 500
    .end local v36    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    :cond_16
    const/16 v65, 0x0

    goto :goto_f

    .line 513
    :cond_17
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isVideoMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 515
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$mainExecutor:Lcom/android/camera/async/MainThread;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    move-object/from16 v53, v0

    .line 520
    invoke-virtual/range {v83 .. v83}, Lcom/android/camera/one/v2/core/FrameServerFactory;->provideFrameServer()Lcom/android/camera/one/v2/core/FrameServer;

    move-result-object v54

    .line 521
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-result-object v55

    .line 522
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v56

    .line 523
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->providePreviewUpdater()Ljava/lang/Runnable;

    move-result-object v57

    .line 524
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideCaptureRequestExtension()Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-result-object v58

    .line 525
    invoke-virtual/range {v91 .. v91}, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v59

    .line 526
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;->provideImageReprocessor()Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

    move-result-object v60

    const/16 v61, 0x0

    .line 528
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v62

    move-object/from16 v52, v12

    move-object/from16 v63, v10

    move/from16 v64, v19

    move/from16 v65, v48

    move-object/from16 v66, p15

    .line 514
    invoke-static/range {v49 .. v66}, Lcom/android/camera/one/v2/photo/VideoPictureTakerFactory;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Ljava/lang/Runnable;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/v2/core/ResponseManager;IILcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/v2/photo/VideoPictureTakerFactory;

    move-result-object v36

    .restart local v36    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    goto/16 :goto_7

    .line 534
    .end local v36    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    :cond_18
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isManual(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 536
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$mainExecutor:Lcom/android/camera/async/MainThread;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$imageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    move-object/from16 v54, v0

    .line 542
    invoke-virtual/range {v83 .. v83}, Lcom/android/camera/one/v2/core/FrameServerFactory;->provideFrameServer()Lcom/android/camera/one/v2/core/FrameServer;

    move-result-object v55

    .line 543
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-result-object v56

    .line 544
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v57

    .line 545
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideCaptureRequestExtension()Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-result-object v58

    .line 547
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;->provideImageReprocessor()Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

    move-result-object v60

    .line 548
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getFlashSetting()Lcom/android/camera/async/Observable;

    move-result-object v61

    .line 549
    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$supportLevel:Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    move-object/from16 v66, v0

    move-object/from16 v52, v12

    move-object/from16 v59, v44

    move-object/from16 v63, v10

    move/from16 v64, v19

    move/from16 v65, v48

    move-object/from16 v67, p15

    .line 535
    invoke-static/range {v49 .. v67}, Lcom/android/camera/one/v2/photo/ManualPictureTakerFactory;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/v2/core/ResponseManager;IILcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/v2/photo/ManualPictureTakerFactory;

    move-result-object v36

    .restart local v36    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    goto/16 :goto_7

    .line 557
    .end local v36    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    :cond_19
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$mainExecutor:Lcom/android/camera/async/MainThread;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$slaveCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$imageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$imageProcessorBuilder:Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;

    move-object/from16 v55, v0

    .line 559
    invoke-virtual/range {v83 .. v83}, Lcom/android/camera/one/v2/core/FrameServerFactory;->provideFrameServer()Lcom/android/camera/one/v2/core/FrameServer;

    move-result-object v56

    .line 561
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-result-object v58

    .line 562
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v59

    .line 563
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideSlaveMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-result-object v60

    .line 564
    invoke-virtual {v4}, Lcom/android/camera/one/v2/common/BasicCameraFactory;->provideCaptureRequestExtension()Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-result-object v61

    if-eqz v93, :cond_1a

    .line 566
    invoke-virtual/range {v93 .. v93}, Lcom/android/camera/one/v2/sharedimagereader/SharedImageReaderFactory;->provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-result-object v63

    .line 567
    :goto_10
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;->provideImageReprocessor()Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

    move-result-object v64

    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getFlashSetting()Lcom/android/camera/async/Observable;

    move-result-object v65

    invoke-virtual/range {p15 .. p15}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->val$supportLevel:Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    move-object/from16 v72, v0

    move-object/from16 v53, v12

    move-object/from16 v57, v35

    move-object/from16 v62, v44

    move-object/from16 v67, v10

    move-object/from16 v68, v11

    move/from16 v69, v19

    move/from16 v70, v20

    move/from16 v71, v48

    move-object/from16 v73, p15

    .line 556
    invoke-static/range {v49 .. v73}, Lcom/android/camera/one/v2/photo/SimplePictureTakerFactory;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/v2/core/ResponseManager;Lcom/android/camera/one/v2/core/ResponseManager;IIILcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/v2/photo/SimplePictureTakerFactory;

    move-result-object v36

    .restart local v36    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    goto/16 :goto_7

    .line 566
    .end local v36    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    :cond_1a
    const/16 v63, 0x0

    goto :goto_10

    .line 633
    .end local v44    # "managedImageReader":Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .restart local v36    # "pictureTakerFactory":Lcom/android/camera/one/v2/photo/PictureTakerFactory;
    .restart local v78    # "sceneRecognitionProvider":Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;
    .restart local v85    # "hdrCallback":Lcom/android/camera/async/SafeCloseable;
    .restart local v86    # "hdrSceneSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    .restart local v95    # "updateHDRModeRunnable":Ljava/lang/Runnable;
    :cond_1b
    new-instance v29, Lcom/android/camera/async/ConcurrentState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    invoke-static {v5}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->access$200(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-direct {v0, v5}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 634
    .restart local v29    # "availableImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :cond_1c
    new-instance v30, Lcom/android/camera/async/ConcurrentState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    invoke-static {v5}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;->access$200(Lcom/android/camera/one/v2/SimpleOneCameraFactory;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-direct {v0, v5}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 637
    .restart local v30    # "slaveAvailableImageCount":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .restart local v31    # "frameServerAvailability":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    :cond_1d
    new-instance v32, Lcom/android/camera/async/ConcurrentState;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-direct {v0, v5}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 659
    .restart local v32    # "slaveFrameServerAvailability":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .restart local v89    # "ready":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    :cond_1e
    const/16 v73, 0x0

    goto/16 :goto_b

    .line 661
    :cond_1f
    new-instance v75, Lcom/android/camera/one/v2/photo/SceneDetectorStub;

    invoke-direct/range {v75 .. v75}, Lcom/android/camera/one/v2/photo/SceneDetectorStub;-><init>()V

    goto/16 :goto_c

    .line 662
    :cond_20
    new-instance v76, Lcom/android/camera/one/v2/photo/FlashDetectorStub;

    invoke-direct/range {v76 .. v76}, Lcom/android/camera/one/v2/photo/FlashDetectorStub;-><init>()V

    goto/16 :goto_d
.end method
