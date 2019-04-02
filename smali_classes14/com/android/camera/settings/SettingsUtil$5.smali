.class final Lcom/android/camera/settings/SettingsUtil$5;
.super Ljava/lang/Object;
.source "SettingsUtil.java"

# interfaces
.implements Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/settings/SettingsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public useCamera(Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    .prologue
    .line 610
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v0

    return v0
.end method
