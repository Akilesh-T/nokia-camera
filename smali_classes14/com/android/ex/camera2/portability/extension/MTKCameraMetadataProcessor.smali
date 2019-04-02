.class public Lcom/android/ex/camera2/portability/extension/MTKCameraMetadataProcessor;
.super Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;
.source "MTKCameraMetadataProcessor.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "MTKCamMetaPro"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/extension/MTKCameraMetadataProcessor;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;-><init>(Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;)V

    .line 16
    return-void
.end method


# virtual methods
.method public processCameraMetaData([B)V
    .locals 0
    .param p1, "data"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    return-void
.end method
