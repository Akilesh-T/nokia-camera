.class public Lcom/android/ex/camera2/portability/extension/MTKCameraCapabilitiesExtension;
.super Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;
.source "MTKCameraCapabilitiesExtension.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "MTKCamCapExt"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/extension/MTKCameraCapabilitiesExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;-><init>()V

    .line 31
    return-void
.end method

.method private split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 548
    if-nez p1, :cond_1

    const/4 v2, 0x0

    .line 556
    :cond_0
    return-object v2

    .line 550
    :cond_1
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x2c

    invoke-direct {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 551
    .local v1, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v1, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 552
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v2, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v1}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 554
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private splitSize(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 182
    if-nez p1, :cond_1

    move-object v2, v4

    .line 192
    :cond_0
    :goto_0
    return-object v2

    .line 184
    :cond_1
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v3, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 185
    .local v3, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v3, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v2, "sizeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/camera2/portability/Size;>;"
    invoke-interface {v3}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    .local v0, "s":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/extension/MTKCameraCapabilitiesExtension;->strToSize(Ljava/lang/String;)Lcom/android/ex/camera2/portability/Size;

    move-result-object v1

    .line 189
    .local v1, "size":Lcom/android/ex/camera2/portability/Size;
    if-eqz v1, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "size":Lcom/android/ex/camera2/portability/Size;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    move-object v2, v4

    goto :goto_0
.end method

.method private splitx(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    if-nez p1, :cond_1

    const/4 v3, 0x0

    .line 568
    :cond_0
    return-object v3

    .line 561
    :cond_1
    const/4 v0, 0x0

    .line 562
    .local v0, "i":I
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x78

    invoke-direct {v2, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 563
    .local v2, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 564
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v3, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 566
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private strToSize(Ljava/lang/String;)Lcom/android/ex/camera2/portability/Size;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 196
    if-nez p1, :cond_0

    .line 206
    :goto_0
    return-object v3

    .line 198
    :cond_0
    const/16 v4, 0x78

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 199
    .local v1, "pos":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 200
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "width":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "height":Ljava/lang/String;
    new-instance v3, Lcom/android/ex/camera2/portability/Size;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 203
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    goto :goto_0

    .line 205
    .end local v0    # "height":Ljava/lang/String;
    .end local v2    # "width":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/android/ex/camera2/portability/extension/MTKCameraCapabilitiesExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid size parameter string="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public buildExifInfo(Lcom/android/camera/exif/ExifInterface;Landroid/hardware/Camera$Parameters;Lcom/android/camera/util/ExifUtil$CaptureMetaData;)V
    .locals 0
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "p"    # Landroid/hardware/Camera$Parameters;
    .param p3, "metaData"    # Lcom/android/camera/util/ExifUtil$CaptureMetaData;

    .prologue
    .line 292
    return-void
.end method

.method public buildExtraFocusModes(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "focusMode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "supportedFocusModes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;>;"
    return-void
.end method

.method public buildExtraSceneModes(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "sceneMode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "supportedSceneModes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;>;"
    return-void
.end method

.method public buildExtraWBModes(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "wbMode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "supportedWBModes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;>;"
    return-void
.end method

.method public buildHFRMap(Ljava/util/HashMap;Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1    # Ljava/util/HashMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "p"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "supportedHFRMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/ex/camera2/portability/Size;Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;>;"
    const-string v3, "hsvr-size-fps"

    invoke-virtual {p2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ex/camera2/portability/extension/MTKCameraCapabilitiesExtension;->splitx(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 169
    .local v1, "supportedHFRValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 179
    :cond_0
    return-void

    .line 171
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ex/camera2/portability/extension/MTKCameraCapabilitiesExtension;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 172
    .local v2, "supportedhfrSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    if-eqz v2, :cond_0

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 175
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 177
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v0, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/ex/camera2/portability/extension/MTKCameraCapabilitiesExtension;->hfrFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public buildISO(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "p"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "supportedISO":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;>;"
    return-void
.end method

.method public buildManualExposure(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "supportedManualExposure":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;>;"
    return-void
.end method

.method public buildManualFocus(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "supportedManualFocus":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;>;"
    const-string v2, "manual-focus-modes"

    invoke-virtual {p2, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ex/camera2/portability/extension/MTKCameraCapabilitiesExtension;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 267
    .local v1, "supportedManualFocusMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 268
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    .local v0, "manualFocusString":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/extension/MTKCameraCapabilitiesExtension;->manualFocusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    .end local v0    # "manualFocusString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public buildManualWhiteBalance(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "supportedManualWB":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;>;"
    return-void
.end method

.method public buildMetering(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "p"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "meteringModes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;>;"
    return-void
.end method

.method public flipmodeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 432
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBokehBlurValue(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 539
    const/4 v0, 0x0

    return v0
.end method

.method public getBokehMode(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 534
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    return-object v0
.end method

.method public getCurrentExposureTime(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 382
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentFlipMode(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 427
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentFocusDiopter(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 377
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentFocusScale(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentHFR(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 422
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->HFR_OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    return-object v0
.end method

.method public getCurrentISO(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentManualWBMode(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 417
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentMetering()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentWBCCT(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentWBGain(Landroid/hardware/Camera$Parameters;)[D
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 392
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomNumMic()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxManualExposureTime(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 337
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxManualFocusDiopter(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 327
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxManualFocusScale(Landroid/hardware/Camera$Parameters;)I
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "reInt":I
    :try_start_0
    const-string v2, "afeng-max-focus-step"

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "reString":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 310
    const/16 v0, 0x64

    .line 317
    .end local v0    # "reInt":I
    .end local v1    # "reString":Ljava/lang/String;
    :goto_0
    return v0

    .line 312
    .restart local v0    # "reInt":I
    .restart local v1    # "reString":Ljava/lang/String;
    :cond_0
    const-string v2, "afeng-max-focus-step"

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 315
    .end local v1    # "reString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 317
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxManualISO(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxManualWBCCT(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxManualWBGain(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 357
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMinManualExposureTime(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 332
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMinManualFocusDiopter(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 322
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMinManualFocusScale(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 298
    :try_start_0
    const-string v0, "afeng-min-focus-step"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 301
    :goto_0
    return v0

    .line 299
    :catch_0
    move-exception v0

    .line 301
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinManualISO(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public getMinManualWBCCT(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public getMinManualWBGain(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 352
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPreferredPictureSizeListForPIP(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferredPreviewSizeListForPIP(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelfieBokehEnable(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method public hfrFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 487
    if-nez p1, :cond_0

    .line 488
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    move-result-object v1

    aget-object v1, v1, v2

    .line 493
    :goto_0
    return-object v1

    .line 491
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/extension/field/MTKconstants;->mapStringToHFR(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public isDISEnabled(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public isEISEnabled(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public isHFRSettingSupportedByEncoder(IILcom/android/ex/camera2/portability/CameraCapabilities$HFR;I)Z
    .locals 1
    .param p1, "videWidth"    # I
    .param p2, "videoHight"    # I
    .param p3, "hfrMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "videoCodec"    # I

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportDualCamModeConfig()Z
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedAutoHDR(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedBeauty(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedBokeh(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedBokehMPO(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedCDS(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedCustomizeMaxPreviewRateSet(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedDIS(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedEIS(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedHDR1X(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedHFR(Landroid/hardware/Camera$Parameters;)Z
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 115
    const-string v1, "hsvr-size-fps"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ex/camera2/portability/extension/MTKCameraCapabilitiesExtension;->splitx(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 116
    .local v0, "supportedHFRValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 117
    :cond_0
    const/4 v1, 0x0

    .line 118
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSupportedHWRaotate(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedLongShot(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 247
    const-string v1, "cap-mode-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "values":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "continuousshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    const/4 v1, 0x1

    .line 251
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportedManualFocus(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedMeteringMode(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedOptiZoom(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedPIPCustomizePreviewRate(Landroid/hardware/Camera$Parameters;)Z
    .locals 5
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 133
    sget-boolean v3, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP:Z

    if-nez v3, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v2

    .line 137
    :cond_1
    const-string v3, "getPIPFrameRateZSDOn"

    invoke-static {p1, v3, v4, v4}, Lcom/android/camera/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 139
    .local v1, "ZSDOnFps":Ljava/lang/Object;
    const-string v3, "getPIPFrameRateZSDOff"

    invoke-static {p1, v3, v4, v4}, Lcom/android/camera/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 140
    .local v0, "ZSDOffFps":Ljava/lang/Object;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 142
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_0

    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 144
    check-cast v1, Ljava/util/List;

    .end local v1    # "ZSDOnFps":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    check-cast v0, Ljava/util/List;

    .line 145
    .end local v0    # "ZSDOffFps":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isSupportedPIPCustomizeSize(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedSurroundSound(Ljava/util/EnumSet;Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;)Z
    .locals 1
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "stringifier"    # Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;",
            ">;",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "supportedSurroundSound":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedTouchAfAec(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedZSL(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    const-string v1, "zsd-mode-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "values":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const/4 v1, 0x1

    .line 40
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isoFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 437
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public manualExposureModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 457
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public manualFocusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 447
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public manualWBModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public meteringModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 477
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDualCamModeConfig(I)V
    .locals 0
    .param p1, "dualCameraMode"    # I

    .prologue
    .line 525
    return-void
.end method

.method public setOzoDynamicFocusMode(Landroid/media/MediaRecorder;I)V
    .locals 0
    .param p1, "recorder"    # Landroid/media/MediaRecorder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ozoFocusMode"    # I

    .prologue
    .line 515
    return-void
.end method

.method public setOzoMode(Landroid/media/MediaRecorder;I)V
    .locals 0
    .param p1, "recorder"    # Landroid/media/MediaRecorder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ozoMode"    # I

    .prologue
    .line 510
    return-void
.end method

.method public setQCFlipMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 530
    return-void
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)Ljava/lang/String;
    .locals 1
    .param p1, "flipmode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    .prologue
    .line 504
    const/4 v0, 0x0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)Ljava/lang/String;
    .locals 1
    .param p1, "hfr"    # Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    .prologue
    .line 499
    invoke-static {p1}, Lcom/android/ex/camera2/portability/extension/field/MTKconstants;->mapHFRToString(Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;)Ljava/lang/String;
    .locals 3
    .param p1, "iso"    # Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    .prologue
    .line 442
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;)Ljava/lang/String;
    .locals 3
    .param p1, "manualExposureMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    .prologue
    .line 462
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;)Ljava/lang/String;
    .locals 3
    .param p1, "manualFocusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    .prologue
    .line 452
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;)Ljava/lang/String;
    .locals 3
    .param p1, "manualWBMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    .prologue
    .line 472
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)Ljava/lang/String;
    .locals 1
    .param p1, "metering"    # Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .prologue
    .line 482
    const/4 v0, 0x0

    return-object v0
.end method
