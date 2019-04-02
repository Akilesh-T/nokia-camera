.class public Lcom/android/camera/util/AndroidServices;
.super Ljava/lang/Object;
.source "AndroidServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/AndroidServices$Singleton;
    }
.end annotation


# static fields
.field private static final LOG_ALL_REQUESTS:Z = false

.field private static final LOG_THRESHOLD_MILLIS:I = 0xa

.field private static TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "AndroidServices"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/util/AndroidServices;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/camera/util/AndroidServices;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/camera/util/AndroidServices$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/camera/util/AndroidServices$1;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/camera/util/AndroidServices;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 135
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 136
    .local v4, "start":J
    iget-object v6, p0, Lcom/android/camera/util/AndroidServices;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 137
    .local v3, "result":Ljava/lang/Object;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 138
    .local v0, "duration":J
    const-wide/16 v6, 0xa

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 139
    sget-object v6, Lcom/android/camera/util/AndroidServices;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Warning: providing system service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v0    # "duration":J
    .end local v3    # "result":Ljava/lang/Object;
    .end local v4    # "start":J
    :cond_0
    :goto_0
    return-object v3

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static instance()Lcom/android/camera/util/AndroidServices;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/android/camera/util/AndroidServices$Singleton;->access$100()Lcom/android/camera/util/AndroidServices;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public provideAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    .prologue
    .line 74
    const-string v0, "accessibility"

    invoke-direct {p0, v0}, Lcom/android/camera/util/AndroidServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method public provideActivityManager()Landroid/app/ActivityManager;
    .locals 1

    .prologue
    .line 66
    const-string v0, "activity"

    invoke-direct {p0, v0}, Lcom/android/camera/util/AndroidServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    return-object v0
.end method

.method public provideAudioManager()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 70
    const-string v0, "audio"

    invoke-direct {p0, v0}, Lcom/android/camera/util/AndroidServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method public provideCameraManager()Landroid/hardware/camera2/CameraManager;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 82
    .local v1, "cameraManager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    sget-boolean v4, Lcom/android/camera/util/ApiHelper;->HAS_CAMERA_2_API:Z

    if-eqz v4, :cond_0

    const-string v4, "camera"

    invoke-direct {p0, v4}, Lcom/android/camera/util/AndroidServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 84
    .local v3, "service":Ljava/lang/Object;
    :goto_0
    move-object v0, v3

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v3    # "service":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 82
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "ex":Ljava/lang/IllegalStateException;
    sget-object v4, Lcom/android/camera/util/AndroidServices;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Could not get the CAMERA_SERVICE"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public provideDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 1

    .prologue
    .line 94
    const-string v0, "device_policy"

    invoke-direct {p0, v0}, Lcom/android/camera/util/AndroidServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public provideDisplayManager()Landroid/hardware/display/DisplayManager;
    .locals 1

    .prologue
    .line 98
    const-string v0, "display"

    invoke-direct {p0, v0}, Lcom/android/camera/util/AndroidServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method public provideKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    .prologue
    .line 102
    const-string v0, "keyguard"

    invoke-direct {p0, v0}, Lcom/android/camera/util/AndroidServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    return-object v0
.end method

.method public provideLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 106
    const-string v0, "layout_inflater"

    invoke-direct {p0, v0}, Lcom/android/camera/util/AndroidServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public provideLocationManager()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 110
    const-string v0, "location"

    invoke-direct {p0, v0}, Lcom/android/camera/util/AndroidServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    return-object v0
.end method

.method public provideNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 114
    const-string v0, "notification"

    invoke-direct {p0, v0}, Lcom/android/camera/util/AndroidServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public providePowerManager()Landroid/os/PowerManager;
    .locals 1

    .prologue
    .line 118
    const-string v0, "power"

    invoke-direct {p0, v0}, Lcom/android/camera/util/AndroidServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    return-object v0
.end method

.method public provideSensorManager()Landroid/hardware/SensorManager;
    .locals 1

    .prologue
    .line 122
    const-string v0, "sensor"

    invoke-direct {p0, v0}, Lcom/android/camera/util/AndroidServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    return-object v0
.end method

.method public provideVibrator()Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 126
    const-string v0, "vibrator"

    invoke-direct {p0, v0}, Lcom/android/camera/util/AndroidServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    return-object v0
.end method

.method public provideWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 130
    const-string v0, "window"

    invoke-direct {p0, v0}, Lcom/android/camera/util/AndroidServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method
