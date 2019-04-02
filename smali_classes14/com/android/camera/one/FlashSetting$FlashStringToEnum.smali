.class Lcom/android/camera/one/FlashSetting$FlashStringToEnum;
.super Ljava/lang/Object;
.source "FlashSetting.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/FlashSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlashStringToEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/FlashSetting$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/one/FlashSetting$1;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/camera/one/FlashSetting$FlashStringToEnum;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;
    .locals 1
    .param p1, "settingString"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p1}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->decodeSettingsString(Ljava/lang/String;)Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/FlashSetting$FlashStringToEnum;->apply(Ljava/lang/String;)Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    move-result-object v0

    return-object v0
.end method
