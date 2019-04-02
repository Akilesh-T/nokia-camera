.class final Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator$1;
.super Ljava/lang/Object;
.source "CameraMetadataCallbackCreator.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator;->create(Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$platform:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

.field final synthetic val$proxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/utils/PlatformUtil$Platform;Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator$1;->val$platform:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator$1;->val$proxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator$1;->val$platform:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v1, :cond_1

    .line 30
    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator$1;->val$proxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, [B

    check-cast v0, [B

    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Landroid/hardware/Camera;

    invoke-interface {v2, v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    .line 36
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator$1;->val$platform:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-eq v0, v1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator$1;->val$platform:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method
