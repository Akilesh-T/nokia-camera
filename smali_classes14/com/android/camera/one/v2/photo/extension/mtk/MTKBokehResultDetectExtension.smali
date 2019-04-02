.class public Lcom/android/camera/one/v2/photo/extension/mtk/MTKBokehResultDetectExtension;
.super Lcom/android/camera/one/v2/photo/extension/BokehResultDetectExtension;
.source "MTKBokehResultDetectExtension.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "MTKBokehResExt"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKBokehResultDetectExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/extension/BokehResultDetectExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public getBokehResult(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)I
    .locals 5
    .param p1, "captureResult"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 15
    :try_start_0
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureResult;->MTK_BOKEH_STAT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v2}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 16
    .local v0, "bokehResult":[I
    if-eqz v0, :cond_0

    .line 17
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/mtk/MTKBokehResultDetectExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTK_BOKEH_STAT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 18
    const/4 v2, 0x0

    aget v2, v0, v2

    .line 25
    .end local v0    # "bokehResult":[I
    :goto_0
    return v2

    .line 20
    .restart local v0    # "bokehResult":[I
    :cond_0
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/mtk/MTKBokehResultDetectExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "MTK_BOKEH_STAT = null"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .end local v0    # "bokehResult":[I
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/mtk/MTKBokehResultDetectExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read MTK_BOKEH_STAT error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method
