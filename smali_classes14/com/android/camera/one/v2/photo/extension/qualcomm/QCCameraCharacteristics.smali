.class public Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;
.super Ljava/lang/Object;
.source "QCCameraCharacteristics.java"


# static fields
.field public static final ArcSoftCalibMetaDataBlobKey:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<[B>;"
        }
    .end annotation
.end field

.field public static final DualCamLayoutOrientationKey:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static ExpRange:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<[J>;"
        }
    .end annotation
.end field

.field public static final MetaDataMonoOnlyKey:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final QcfaSensorKey:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final QcfaSensorSize:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<[I>;"
        }
    .end annotation
.end field

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "QCCameraCharacteristics"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 16
    const-string v0, "org.codeaurora.qcamera3.sensor_meta_data.is_mono_only"

    const-class v1, Ljava/lang/Byte;

    .line 17
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->MetaDataMonoOnlyKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 18
    const-string v0, "org.codeaurora.qcamera3.dualcam_arcsoft_calib_data.dualcam_arcsoft_calib_data_blob"

    const-class v1, [B

    .line 19
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->ArcSoftCalibMetaDataBlobKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 20
    const-string v0, "org.codeaurora.qcamera3.dualcam_layout.layout_orientation"

    const-class v1, Ljava/lang/Integer;

    .line 21
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->DualCamLayoutOrientationKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 22
    const-string v0, "org.codeaurora.qcamera3.iso_exp_priority.exposure_time_range"

    const-class v1, [J

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->ExpRange:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 24
    const-string v0, "org.codeaurora.qcamera3.quadra_cfa.is_qcfa_sensor"

    const-class v1, Ljava/lang/Byte;

    .line 25
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->QcfaSensorKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 26
    const-string v0, "org.codeaurora.qcamera3.quadra_cfa.qcfa_dimension"

    const-class v1, [I

    .line 27
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->QcfaSensorSize:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final createCustomizeKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/hardware/camera2/CameraCharacteristics$Key;"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 30
    const-class v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 31
    .local v0, "c":Ljava/lang/Class;
    new-array v5, v6, [Ljava/lang/Class;

    .line 32
    .local v5, "params":[Ljava/lang/Class;
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    .line 33
    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v8

    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    :try_start_0
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 39
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    .line 40
    .local v4, "paramObjs":[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object p0, v4, v6

    .line 41
    const/4 v6, 0x1

    aput-object p1, v4, v6
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 45
    .local v2, "customizekey":Landroid/hardware/camera2/CameraCharacteristics$Key;
    if-eqz v2, :cond_0

    .line 46
    sget-object v6, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CameraCharacteristics.Key : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", string : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    .end local v2    # "customizekey":Landroid/hardware/camera2/CameraCharacteristics$Key;
    .end local v4    # "paramObjs":[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 49
    .restart local v4    # "paramObjs":[Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 50
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v6, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 55
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "paramObjs":[Ljava/lang/Object;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 52
    :catch_1
    move-exception v3

    .line 53
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    sget-object v6, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->TAG:Lcom/android/camera/debug/Log$Tag;

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
