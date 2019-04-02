.class final Lcom/android/camera/one/config/OneCameraFeatureConfigCreator$1;
.super Ljava/lang/Object;
.source "OneCameraFeatureConfigCreator.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/config/OneCameraFeatureConfigCreator;->buildCaptureModuleDetector(Landroid/content/ContentResolver;)Lcom/google/common/base/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Landroid/hardware/camera2/CameraCharacteristics;",
        "Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$contentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/camera/one/config/OneCameraFeatureConfigCreator$1;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/camera2/CameraCharacteristics;)Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;
    .locals 5
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 65
    iget-object v2, p0, Lcom/android/camera/one/config/OneCameraFeatureConfigCreator$1;->val$contentResolver:Landroid/content/ContentResolver;

    .line 66
    invoke-static {p1, v2}, Lcom/android/camera/one/config/OneCameraFeatureConfigCreator;->access$000(Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/ContentResolver;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 67
    .local v0, "override":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;>;"
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-static {}, Lcom/android/camera/one/config/OneCameraFeatureConfigCreator;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera support level override: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    invoke-virtual {v2}, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    .line 128
    :goto_0
    return-object v2

    .line 72
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 73
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 74
    .local v1, "supportedLevel":Ljava/lang/Integer;
    invoke-static {}, Lcom/android/camera/one/config/OneCameraFeatureConfigCreator;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INFO_SUPPORTED_HARDWARE_LEVEL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    if-nez v1, :cond_1

    .line 80
    invoke-static {}, Lcom/android/camera/one/config/OneCameraFeatureConfigCreator;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Device does not report supported hardware level."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    sget-object v2, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;->LIMITED_JPEG:Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 87
    sget-object v2, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;->LEGACY_JPEG:Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    goto :goto_0

    .line 93
    :cond_2
    sget-boolean v2, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_5:Z

    if-eqz v2, :cond_3

    .line 94
    sget-object v2, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;->LIMITED_JPEG:Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    goto :goto_0

    .line 97
    :cond_3
    sget-boolean v2, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_6:Z

    if-eqz v2, :cond_5

    .line 98
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLMr1OrHigher()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 102
    sget-object v2, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;->ZSL:Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    goto :goto_0

    .line 106
    :cond_4
    sget-object v2, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;->LIMITED_JPEG:Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    goto :goto_0

    .line 111
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 112
    sget-object v2, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;->ZSL:Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    goto :goto_0

    .line 117
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_7

    .line 118
    sget-object v2, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;->LIMITED_YUV:Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    goto :goto_0

    .line 121
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 122
    sget-object v2, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;->LEVEL_3:Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    goto :goto_0

    .line 127
    :cond_8
    invoke-static {}, Lcom/android/camera/one/config/OneCameraFeatureConfigCreator;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown support level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    sget-object v2, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;->LIMITED_JPEG:Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    goto/16 :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/config/OneCameraFeatureConfigCreator$1;->apply(Landroid/hardware/camera2/CameraCharacteristics;)Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    move-result-object v0

    return-object v0
.end method
