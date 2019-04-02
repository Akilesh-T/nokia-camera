.class public Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;
.super Ljava/lang/Object;
.source "QCCaptureRequest.java"


# static fields
.field public static final AWBGains:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[F>;"
        }
    .end annotation
.end field

.field public static final BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final BayerMonoLinkMainKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final Contrast:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FrontCamMirrorEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final HistogramEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static IsoExp:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static IsoExpSelectPriority:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static SATURATION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SceneClassifyMode:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SceneClassifyOrientation:Landroid/hardware/camera2/CaptureRequest$Key;
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

.field public static final sharpness_control:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "QCCaptureRequest"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 15
    const-string v0, "org.codeaurora.qcamera3.histogram.enable"

    const-class v1, Ljava/lang/Byte;

    .line 16
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->HistogramEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 18
    const-string v0, "org.codeaurora.qcamera3.frontCamMirror.enable"

    const-class v1, Ljava/lang/Boolean;

    .line 19
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->FrontCamMirrorEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 22
    const-string v0, "org.codeaurora.qcamera3.dualcam_link_meta_data.enable"

    const-class v1, Ljava/lang/Byte;

    .line 23
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 24
    const-string v0, "org.codeaurora.qcamera3.dualcam_link_meta_data.is_main"

    const-class v1, Ljava/lang/Byte;

    .line 25
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->BayerMonoLinkMainKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 27
    const-string v0, "org.codeaurora.qcamera3.dualcam_link_meta_data.related_camera_id"

    const-class v1, Ljava/lang/Integer;

    .line 28
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 32
    const-string v0, "org.codeaurora.qcamera3.iso_exp_priority.select_priority"

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->IsoExpSelectPriority:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 34
    const-string v0, "org.codeaurora.qcamera3.iso_exp_priority.use_iso_exp_priority"

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->IsoExp:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 38
    const-string v0, "com.qti.node.scenceclassify.SCMode"

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->SceneClassifyMode:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 40
    const-string v0, "com.qti.node.scenceclassify.SCDevOrientation"

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->SceneClassifyOrientation:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 42
    const-string v0, "org.codeaurora.qcamera3.saturation.use_saturation"

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->SATURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 44
    const-string v0, "org.codeaurora.qcamera3.contrast.level"

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->Contrast:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 46
    const-string v0, "org.codeaurora.qcamera3.sharpness.strength"

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->sharpness_control:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 48
    const-string v0, "com.qti.stats.awbwrapper.AWBGains"

    const-class v1, [F

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->AWBGains:Landroid/hardware/camera2/CaptureRequest$Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/hardware/camera2/CaptureRequest$Key;"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 53
    const-class v0, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 54
    .local v0, "c":Ljava/lang/Class;
    new-array v5, v6, [Ljava/lang/Class;

    .line 55
    .local v5, "params":[Ljava/lang/Class;
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    .line 56
    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v8

    .line 58
    const/4 v1, 0x0

    .line 60
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    :try_start_0
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 62
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    .line 63
    .local v4, "paramObjs":[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object p0, v4, v6

    .line 64
    const/4 v6, 0x1

    aput-object p1, v4, v6
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 68
    .local v2, "customizekey":Landroid/hardware/camera2/CaptureRequest$Key;
    if-eqz v2, :cond_0

    .line 69
    sget-object v6, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CaptureRequest.Key : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", string : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    .end local v2    # "customizekey":Landroid/hardware/camera2/CaptureRequest$Key;
    .end local v4    # "paramObjs":[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 72
    .restart local v4    # "paramObjs":[Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 73
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v6, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get custom key fail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 78
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "paramObjs":[Ljava/lang/Object;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 75
    :catch_1
    move-exception v3

    .line 76
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    sget-object v6, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequest;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getConstructor fail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method
