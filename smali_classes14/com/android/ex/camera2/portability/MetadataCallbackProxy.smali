.class public Lcom/android/ex/camera2/portability/MetadataCallbackProxy;
.super Ljava/lang/Object;
.source "MetadataCallbackProxy.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private mCameraMetadataProcessor:Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;

.field private mMetadataCallbak:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "MetadataCallbackProxy"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/MetadataCallbackProxy;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p0}, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator;->create(Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/MetadataCallbackProxy;->mMetadataCallbak:Ljava/lang/Object;

    .line 33
    invoke-static {p1}, Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessorCreator;->create(Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;)Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/MetadataCallbackProxy;->mCameraMetadataProcessor:Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;

    .line 34
    return-void
.end method


# virtual methods
.method public getMetadataCallbak()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/ex/camera2/portability/MetadataCallbackProxy;->mMetadataCallbak:Ljava/lang/Object;

    return-object v0
.end method

.method public onCameraMetaData([BLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 38
    if-nez p1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/MetadataCallbackProxy;->mCameraMetadataProcessor:Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/ex/camera2/portability/MetadataCallbackProxy;->mCameraMetadataProcessor:Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;->processCameraMetaData([B)V

    goto :goto_0
.end method
