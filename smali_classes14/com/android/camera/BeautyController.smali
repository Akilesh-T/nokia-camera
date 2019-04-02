.class public interface abstract Lcom/android/camera/BeautyController;
.super Ljava/lang/Object;
.source "BeautyController.java"

# interfaces
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# static fields
.field public static final BEAUTY_CONTROL_BOKEH_MAX:F

.field public static final BEAUTY_CONTROL_LEVEL:I

.field public static final BEAUTY_CONTROL_LEVEL_SCALE:F

.field public static final BEAUTY_CONTROL_SOFTEN_MAX:I

.field public static final BEAUTY_CONTROL_WHITEN_MAX:I

.field public static final BEAUTY_LEVEL_UNKNOWN:I = -0x1

.field public static final FOCUSING:I = 0x2

.field public static final IDLE:I = 0x1

.field public static final PREVIEW_STOPPED:I = 0x0

.field public static final SNAPSHOT_IN_PROGRESS:I = 0x3

.field public static final SWITCHING_CAMERA:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "persist.camera.beauty.max_lv"

    const-string v1, "4"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_LEVEL:I

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    sget v1, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_LEVEL:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_LEVEL_SCALE:F

    .line 39
    const-string v0, "persist.camera.beauty.max_soften"

    const-string v1, "30"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_SOFTEN_MAX:I

    .line 40
    const-string v0, "persist.camera.beauty.max_whiten"

    const-string v1, "60"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_WHITEN_MAX:I

    .line 41
    const-string v0, "persist.camera.beauty.max_bokeh"

    const-string v1, "1.0"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_BOKEH_MAX:F

    return-void
.end method


# virtual methods
.method public abstract cancelAutoFocus()V
.end method

.method public abstract getCameraState()I
.end method

.method public abstract isCameraIdle()Z
.end method

.method public abstract onControlBarUpdate(I)V
.end method

.method public abstract onPreviewUIDestroyed()V
.end method

.method public abstract onPreviewUIReady()V
.end method

.method public abstract onSingleTapUp(Landroid/view/View;II)V
.end method

.method public abstract onZoomChanged(F)V
.end method

.method public abstract startPreCaptureAnimation()V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract updateCameraOrientation()V
.end method

.method public abstract updatePreviewAspectRatio(F)V
.end method
