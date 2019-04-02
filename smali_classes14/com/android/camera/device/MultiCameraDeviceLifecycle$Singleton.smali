.class Lcom/android/camera/device/MultiCameraDeviceLifecycle$Singleton;
.super Ljava/lang/Object;
.source "MultiCameraDeviceLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/device/MultiCameraDeviceLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/camera/device/MultiCameraDeviceLifecycle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 65
    new-instance v0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;

    .line 66
    invoke-static {}, Lcom/android/camera/device/CameraModuleHelper;->provideLegacyCameraActionProvider()Lcom/android/camera/device/LegacyCameraActionProvider;

    move-result-object v1

    .line 67
    invoke-static {}, Lcom/android/camera/device/CameraModuleHelper;->providePortabilityActionProvider()Lcom/android/camera/device/PortabilityCameraActionProvider;

    move-result-object v2

    .line 68
    invoke-static {}, Lcom/android/camera/device/CameraModuleHelper;->provideCamera2ActionProvider()Lcom/android/camera/device/Camera2ActionProvider;

    move-result-object v3

    .line 69
    invoke-static {}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->instance()Lcom/android/camera/device/ActiveCameraDeviceTracker;

    move-result-object v4

    .line 70
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/device/MultiCameraDeviceLifecycle;-><init>(Lcom/android/camera/device/LegacyCameraActionProvider;Lcom/android/camera/device/PortabilityCameraActionProvider;Lcom/android/camera/device/Camera2ActionProvider;Lcom/android/camera/device/ActiveCameraDeviceTracker;Lcom/android/camera/debug/Logger$Factory;)V

    sput-object v0, Lcom/android/camera/device/MultiCameraDeviceLifecycle$Singleton;->INSTANCE:Lcom/android/camera/device/MultiCameraDeviceLifecycle;

    .line 65
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/device/MultiCameraDeviceLifecycle;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/camera/device/MultiCameraDeviceLifecycle$Singleton;->INSTANCE:Lcom/android/camera/device/MultiCameraDeviceLifecycle;

    return-object v0
.end method
