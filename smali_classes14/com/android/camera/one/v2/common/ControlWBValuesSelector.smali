.class public Lcom/android/camera/one/v2/common/ControlWBValuesSelector;
.super Ljava/lang/Object;
.source "ControlWBValuesSelector.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<[F>;"
    }
.end annotation


# instance fields
.field private final mManualWBSetting:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;",
            ">;"
        }
    .end annotation
.end field

.field private final mManualWbValueSettings:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
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
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;",
            ">;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p1, "manualWBSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;>;"
    .local p2, "manualWbValueSettings":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/camera/one/v2/common/ControlWBValuesSelector;->mManualWBSetting:Lcom/google/common/base/Supplier;

    .line 12
    iput-object p2, p0, Lcom/android/camera/one/v2/common/ControlWBValuesSelector;->mManualWbValueSettings:Lcom/google/common/base/Supplier;

    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/android/camera/one/v2/common/ControlWBValuesSelector;->get()[F

    move-result-object v0

    return-object v0
.end method

.method public get()[F
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 17
    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->MANUAL:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    iget-object v2, p0, Lcom/android/camera/one/v2/common/ControlWBValuesSelector;->mManualWBSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    new-array v1, v3, [F

    fill-array-data v1, :array_0

    .line 24
    :goto_0
    return-object v1

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/common/ControlWBValuesSelector;->mManualWbValueSettings:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "rgbValueString":[Ljava/lang/String;
    array-length v1, v0

    if-lt v1, v3, :cond_1

    const-string v1, "0,0,0"

    iget-object v2, p0, Lcom/android/camera/one/v2/common/ControlWBValuesSelector;->mManualWbValueSettings:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 22
    :cond_1
    new-array v1, v3, [F

    fill-array-data v1, :array_1

    goto :goto_0

    .line 24
    :cond_2
    new-array v1, v3, [F

    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v4

    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v5

    aget-object v2, v0, v6

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v6

    goto :goto_0

    .line 18
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 22
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
