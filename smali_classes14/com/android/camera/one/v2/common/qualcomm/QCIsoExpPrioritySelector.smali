.class public Lcom/android/camera/one/v2/common/qualcomm/QCIsoExpPrioritySelector;
.super Ljava/lang/Object;
.source "QCIsoExpPrioritySelector.java"

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
    .line 32
    .local p1, "manualISOSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;>;"
    .local p2, "manualExpTimeSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/one/v2/common/qualcomm/QCIsoExpPrioritySelector;->mManualISOSetting:Lcom/google/common/base/Supplier;

    .line 34
    iput-object p2, p0, Lcom/android/camera/one/v2/common/qualcomm/QCIsoExpPrioritySelector;->mManualExpTimeSetting:Lcom/google/common/base/Supplier;

    .line 35
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->enableManualShutterSpeedPreviewEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/android/camera/one/v2/common/qualcomm/QCIsoExpPrioritySelector;->mManualExpTimeSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v0, v1}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/common/qualcomm/QCIsoExpPrioritySelector;->mManualISOSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v0, v1}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 48
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/camera/one/v2/common/qualcomm/QCIsoExpPrioritySelector;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
