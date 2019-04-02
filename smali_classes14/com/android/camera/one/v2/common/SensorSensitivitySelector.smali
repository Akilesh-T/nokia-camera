.class public Lcom/android/camera/one/v2/common/SensorSensitivitySelector;
.super Ljava/lang/Object;
.source "SensorSensitivitySelector.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mManualExpTimeSetting:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;",
            ">;"
        }
    .end annotation
.end field

.field private final mManualISOSetting:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;",
            ">;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "manualISOSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;>;"
    .local p2, "manualExpTimeSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/camera/one/v2/common/SensorSensitivitySelector;->mManualISOSetting:Lcom/google/common/base/Supplier;

    .line 35
    iput-object p2, p0, Lcom/android/camera/one/v2/common/SensorSensitivitySelector;->mManualExpTimeSetting:Lcom/google/common/base/Supplier;

    .line 36
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->enableManualShutterSpeedPreviewEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/android/camera/one/v2/common/SensorSensitivitySelector;->mManualISOSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v0, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/common/SensorSensitivitySelector;->mManualExpTimeSetting:Lcom/google/common/base/Supplier;

    .line 42
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v0, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 51
    :goto_0
    return-object v0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/common/SensorSensitivitySelector;->mManualISOSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/android/camera/one/v2/common/SensorSensitivitySelector;->mManualISOSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v0, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 49
    goto :goto_0

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/android/camera/one/v2/common/SensorSensitivitySelector;->mManualISOSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/camera/one/v2/common/SensorSensitivitySelector;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
