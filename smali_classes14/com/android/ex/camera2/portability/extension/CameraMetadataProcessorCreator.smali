.class public Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessorCreator;
.super Ljava/lang/Object;
.source "CameraMetadataProcessorCreator.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamMetaProCreat"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessorCreator;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;)Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;
    .locals 3
    .param p0, "listener"    # Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;

    .prologue
    .line 16
    const/4 v1, 0x0

    .line 17
    .local v1, "processor":Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v0

    .line 18
    .local v0, "platform":Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v2, :cond_0

    .line 19
    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraMetadataProcessor;

    .end local v1    # "processor":Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;
    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraMetadataProcessor;-><init>(Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;)V

    .line 27
    .restart local v1    # "processor":Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;
    :goto_0
    return-object v1

    .line 20
    :cond_0
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v2, :cond_1

    .line 21
    new-instance v1, Lcom/android/ex/camera2/portability/extension/MTKCameraMetadataProcessor;

    .end local v1    # "processor":Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;
    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/MTKCameraMetadataProcessor;-><init>(Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;)V

    .restart local v1    # "processor":Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;
    goto :goto_0

    .line 22
    :cond_1
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v2, :cond_2

    .line 23
    new-instance v1, Lcom/android/ex/camera2/portability/extension/SPTCameraMetadataProcessor;

    .end local v1    # "processor":Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;
    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/SPTCameraMetadataProcessor;-><init>(Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;)V

    .restart local v1    # "processor":Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;
    goto :goto_0

    .line 25
    :cond_2
    new-instance v1, Lcom/android/ex/camera2/portability/extension/AOSPCameraMetadataProcessor;

    .end local v1    # "processor":Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;
    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/AOSPCameraMetadataProcessor;-><init>(Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;)V

    .restart local v1    # "processor":Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;
    goto :goto_0
.end method
