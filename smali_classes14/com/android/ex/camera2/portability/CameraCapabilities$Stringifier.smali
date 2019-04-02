.class public Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
.super Ljava/lang/Object;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stringifier"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static toApiCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "enumCase"    # Ljava/lang/String;

    .prologue
    .line 580
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toEnumCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "apiCase"    # Ljava/lang/String;

    .prologue
    .line 590
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public flashModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 643
    if-nez p1, :cond_0

    .line 644
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v1

    aget-object v1, v1, v2

    .line 649
    :goto_0
    return-object v1

    .line 647
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toEnumCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 613
    if-nez p1, :cond_0

    .line 614
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    aget-object v1, v1, v2

    .line 619
    :goto_0
    return-object v1

    .line 617
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toEnumCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public hfrFromString(Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    .locals 1
    .param p1, "extension"    # Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 757
    invoke-virtual {p1, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->hfrFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    move-result-object v0

    return-object v0
.end method

.method public isoFromString(Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;
    .locals 1
    .param p1, "extension"    # Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 730
    invoke-virtual {p1, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isoFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    move-result-object v0

    return-object v0
.end method

.method public meteringModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 715
    if-nez p1, :cond_0

    .line 716
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v1

    aget-object v1, v1, v2

    .line 721
    :goto_0
    return-object v1

    .line 719
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toEnumCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public sceneModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 673
    if-nez p1, :cond_0

    .line 674
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v1

    aget-object v1, v1, v2

    .line 679
    :goto_0
    return-object v1

    .line 677
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toEnumCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Ljava/lang/String;
    .locals 1
    .param p1, "flash"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .prologue
    .line 631
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toApiCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Ljava/lang/String;
    .locals 1
    .param p1, "focus"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .prologue
    .line 601
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toApiCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)Ljava/lang/String;
    .locals 1
    .param p1, "metering"    # Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .prologue
    .line 726
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toApiCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Ljava/lang/String;
    .locals 1
    .param p1, "scene"    # Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .prologue
    .line 661
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toApiCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;)Ljava/lang/String;
    .locals 1
    .param p1, "surroundSound"    # Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;

    .prologue
    .line 738
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toApiCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;)Ljava/lang/String;
    .locals 1
    .param p1, "wb"    # Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .prologue
    .line 691
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toApiCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)Ljava/lang/String;
    .locals 1
    .param p1, "extension"    # Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flipmode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    .prologue
    .line 761
    invoke-virtual {p1, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)Ljava/lang/String;
    .locals 1
    .param p1, "extension"    # Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "hfr"    # Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    .prologue
    .line 753
    invoke-virtual {p1, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;)Ljava/lang/String;
    .locals 1
    .param p1, "extension"    # Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "iso"    # Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    .prologue
    .line 734
    invoke-virtual {p1, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public surroundSoundFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 742
    if-nez p1, :cond_0

    .line 743
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;

    move-result-object v1

    aget-object v1, v1, v2

    .line 748
    :goto_0
    return-object v1

    .line 746
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toEnumCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;->valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public whiteBalanceFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 704
    if-nez p1, :cond_0

    .line 705
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object v1

    aget-object v1, v1, v2

    .line 710
    :goto_0
    return-object v1

    .line 708
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toEnumCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method
