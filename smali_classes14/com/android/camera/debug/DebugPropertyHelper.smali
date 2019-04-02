.class public Lcom/android/camera/debug/DebugPropertyHelper;
.super Ljava/lang/Object;
.source "DebugPropertyHelper.java"


# static fields
.field private static final OFF_VALUE:Ljava/lang/String; = "0"

.field private static final ON_VALUE:Ljava/lang/String; = "1"

.field private static final PREFIX:Ljava/lang/String; = "persist.camera"

.field private static final PROP_CAPTURE_DEBUG_UI:Ljava/lang/String; = "persist.camera.debug_ui"

.field private static final PROP_CAPTURE_DNG:Ljava/lang/String; = "persist.camera.capture_dng"

.field private static final PROP_FORCE_LEGACY_ONE_CAMERA:Ljava/lang/String; = "persist.camera.legacy"

.field private static final PROP_FRAME_LOG:Ljava/lang/String; = "persist.camera.frame_log"

.field private static final PROP_WRITE_CAPTURE_DATA:Ljava/lang/String; = "persist.camera.capture_write"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCaptureDngEnabled()Z
    .locals 1

    .prologue
    .line 59
    const-string v0, "persist.camera.capture_dng"

    invoke-static {v0}, Lcom/android/camera/debug/DebugPropertyHelper;->isPropertyOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isPropertyOn(Ljava/lang/String;)Z
    .locals 2
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "1"

    const-string v1, "0"

    invoke-static {p0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static showCaptureDebugUI()Z
    .locals 1

    .prologue
    .line 51
    const-string v0, "persist.camera.debug_ui"

    invoke-static {v0}, Lcom/android/camera/debug/DebugPropertyHelper;->isPropertyOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static showFrameDebugLog()Z
    .locals 1

    .prologue
    .line 47
    const-string v0, "persist.camera.frame_log"

    invoke-static {v0}, Lcom/android/camera/debug/DebugPropertyHelper;->isPropertyOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static writeCaptureData()Z
    .locals 1

    .prologue
    .line 55
    const-string v0, "persist.camera.capture_write"

    invoke-static {v0}, Lcom/android/camera/debug/DebugPropertyHelper;->isPropertyOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
