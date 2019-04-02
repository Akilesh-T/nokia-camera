.class public final Lcom/android/camera/one/OneCameraModule;
.super Ljava/lang/Object;
.source "OneCameraModule.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideOneCameraManager()Lcom/android/camera/one/OneCameraManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;->create()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 69
    .local v0, "camera2HwManager":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/one/v2/Camera2OneCameraManagerImpl;>;"
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/OneCameraManager;

    .line 75
    :goto_0
    return-object v2

    .line 73
    :cond_0
    invoke-static {}, Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;->instance()Lcom/google/common/base/Optional;

    move-result-object v1

    .line 74
    .local v1, "legacyHwManager":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/one/v1/LegacyOneCameraManagerImpl;>;"
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/OneCameraManager;

    goto :goto_0

    .line 78
    :cond_1
    new-instance v2, Lcom/android/camera/one/OneCameraException;

    const-string v3, "No hardware manager is available."

    invoke-direct {v2, v3}, Lcom/android/camera/one/OneCameraException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static provideOneCameraOpener(Lcom/android/camera/one/config/OneCameraFeatureConfig;Landroid/content/Context;Lcom/android/camera/device/ActiveCameraDeviceTracker;Landroid/util/DisplayMetrics;)Lcom/android/camera/one/OneCameraOpener;
    .locals 3
    .param p0, "featureConfig"    # Lcom/android/camera/one/config/OneCameraFeatureConfig;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activeCameraDeviceTracker"    # Lcom/android/camera/device/ActiveCameraDeviceTracker;
    .param p3, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->create(Lcom/android/camera/one/config/OneCameraFeatureConfig;Landroid/content/Context;Lcom/android/camera/device/ActiveCameraDeviceTracker;Landroid/util/DisplayMetrics;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 50
    .local v0, "manager":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/one/OneCameraOpener;>;"
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-static {}, Lcom/android/camera/one/v1/LegacyOneCameraOpenerImpl;->create()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 53
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    new-instance v1, Lcom/android/camera/one/OneCameraException;

    const-string v2, "No camera manager is available."

    invoke-direct {v1, v2}, Lcom/android/camera/one/OneCameraException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/OneCameraOpener;

    return-object v1
.end method
