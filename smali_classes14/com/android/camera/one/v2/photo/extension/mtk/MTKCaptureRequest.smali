.class public Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;
.super Ljava/lang/Object;
.source "MTKCaptureRequest.java"


# static fields
.field public static final BEAUTY_ENABLE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final BEAUTY_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final BOKEH_LEVEL_MTK:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[I>;"
        }
    .end annotation
.end field

.field public static final DENOISE_CAPTURE_KEY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MTK_VSDOF_FEATURE_CAPTURE_WARNING_MSG:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[I>;"
        }
    .end annotation
.end field

.field public static final PREVIEW_SIZE_KEY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[I>;"
        }
    .end annotation
.end field

.field public static final PRO_CAPTURE_KEY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field public static final TDC_BOKEH_ENABLE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final VSDOF_KEY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[I>;"
        }
    .end annotation
.end field

.field public static final ZSL_CAPTURE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "MTKCaptureRequest"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 14
    const-string v0, "com.mediatek.stereofeature.doflevel"

    const-class v1, [I

    .line 15
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->BOKEH_LEVEL_MTK:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 16
    const-string v0, "com.mediatek.multicamfeature.multiCamFeatureMode"

    const-class v1, [I

    .line 17
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->VSDOF_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 18
    const-string v0, "com.mediatek.vsdoffeature.vsdofFeaturePreviewSize"

    const-class v1, [I

    .line 19
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->PREVIEW_SIZE_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 20
    const-string v0, "com.mediatek.vsdoffeature.vsdofFeatureCaptureWarningMsg"

    const-class v1, [I

    .line 21
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->MTK_VSDOF_FEATURE_CAPTURE_WARNING_MSG:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 24
    const-string v0, "com.fih.externalfeature.flawless.face.level"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 25
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->BEAUTY_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 26
    const-string v0, "com.fih.externalfeature.flawless.face.enbale"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 27
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->BEAUTY_ENABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 30
    const-string v0, "com.fih.externalfeature.tdcbokeh.enable"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 31
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->TDC_BOKEH_ENABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 34
    const-string v0, "com.mediatek.control.capture.zsl.mode"

    const-class v1, [B

    .line 35
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->ZSL_CAPTURE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 38
    const-string v0, "com.mediatek.mfnrfeature.mfbmode"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 39
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->DENOISE_CAPTURE_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 42
    const-string v0, "com.fih.externalfeature.pro.capture.enable"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 43
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequest;->PRO_CAPTURE_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
