.class public interface abstract Lcom/android/camera/one/v2/OneCameraFactory;
.super Ljava/lang/Object;
.source "OneCameraFactory.java"


# static fields
.field public static final DEFAULT_RING_BUFFER_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->USE_DEVICE_OPERATED_ZSL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/android/camera/one/v2/OneCameraFactory;->DEFAULT_RING_BUFFER_SIZE:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract createOneCamera(Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/FatalErrorHandler;)Lcom/android/camera/one/OneCamera;
.end method
