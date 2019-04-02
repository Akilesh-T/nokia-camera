.class public Lcom/android/camera/DisableCameraReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisableCameraReceiver.java"


# static fields
.field private static final ACTIVITIES:[Ljava/lang/String;

.field private static final CHECK_BACK_CAMERA_ONLY:Z = true

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "DisableCamRcver"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/DisableCameraReceiver;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.camera.CameraLauncher"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/DisableCameraReceiver;->ACTIVITIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private disableComponent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "klass"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    .local v0, "name":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 82
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 85
    return-void
.end method

.method private hasBackCamera()Z
    .locals 6

    .prologue
    .line 63
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 64
    .local v2, "n":I
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 65
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 66
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 67
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 68
    sget-object v3, Lcom/android/camera/DisableCameraReceiver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "back camera found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    const/4 v3, 0x1

    .line 73
    :goto_1
    return v3

    .line 65
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    sget-object v3, Lcom/android/camera/DisableCameraReceiver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "no back camera"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private hasCamera()Z
    .locals 4

    .prologue
    .line 57
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 58
    .local v0, "n":I
    sget-object v1, Lcom/android/camera/DisableCameraReceiver;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number of camera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/android/camera/DisableCameraReceiver;->hasBackCamera()Z

    move-result v1

    .line 45
    .local v1, "needCameraActivity":Z
    if-nez v1, :cond_0

    .line 46
    sget-object v2, Lcom/android/camera/DisableCameraReceiver;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "disable all camera activities"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/camera/DisableCameraReceiver;->ACTIVITIES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 48
    sget-object v2, Lcom/android/camera/DisableCameraReceiver;->ACTIVITIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/android/camera/DisableCameraReceiver;->disableComponent(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "i":I
    :cond_0
    const-string v2, "com.android.camera.DisableCameraReceiver"

    invoke-direct {p0, p1, v2}, Lcom/android/camera/DisableCameraReceiver;->disableComponent(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    return-void
.end method
