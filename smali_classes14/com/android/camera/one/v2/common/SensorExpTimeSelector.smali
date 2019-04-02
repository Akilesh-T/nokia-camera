.class public Lcom/android/camera/one/v2/common/SensorExpTimeSelector;
.super Ljava/lang/Object;
.source "SensorExpTimeSelector.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/lang/Long;",
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
    .line 32
    .local p1, "manualISOSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;>;"
    .local p2, "manualExpTimeSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/one/v2/common/SensorExpTimeSelector;->mManualISOSetting:Lcom/google/common/base/Supplier;

    .line 34
    iput-object p2, p0, Lcom/android/camera/one/v2/common/SensorExpTimeSelector;->mManualExpTimeSetting:Lcom/google/common/base/Supplier;

    .line 35
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .locals 6

    .prologue
    .line 39
    iget-object v2, p0, Lcom/android/camera/one/v2/common/SensorExpTimeSelector;->mManualISOSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    sget-object v3, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v2, v3}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/one/v2/common/SensorExpTimeSelector;->mManualExpTimeSetting:Lcom/google/common/base/Supplier;

    .line 40
    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    sget-object v3, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v2, v3}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    :cond_0
    const/4 v2, 0x0

    .line 44
    :goto_0
    return-object v2

    .line 43
    :cond_1
    iget-object v2, p0, Lcom/android/camera/one/v2/common/SensorExpTimeSelector;->mManualExpTimeSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->encodeSettingsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 44
    .local v0, "value":D
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v0

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/camera/one/v2/common/SensorExpTimeSelector;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
