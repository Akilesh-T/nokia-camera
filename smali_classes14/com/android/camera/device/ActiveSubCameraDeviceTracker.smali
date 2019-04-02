.class public Lcom/android/camera/device/ActiveSubCameraDeviceTracker;
.super Ljava/lang/Object;
.source "ActiveSubCameraDeviceTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/device/ActiveSubCameraDeviceTracker$Singleton;
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mActiveCamera:Lcom/android/camera/device/CameraId;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mPreviousCamera:Lcom/android/camera/device/CameraId;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ActvSubCamDevTrckr"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mLock:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public static instance()Lcom/android/camera/device/ActiveSubCameraDeviceTracker;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker$Singleton;->INSTANCE:Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    return-object v0
.end method


# virtual methods
.method public getActiveCamera()Lcom/android/camera/device/CameraId;
    .locals 2

    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mActiveCamera:Lcom/android/camera/device/CameraId;

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActiveOrPreviousCamera()Lcom/android/camera/device/CameraId;
    .locals 4

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mActiveCamera:Lcom/android/camera/device/CameraId;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mActiveCamera:Lcom/android/camera/device/CameraId;

    monitor-exit v1

    .line 71
    :goto_0
    return-object v0

    .line 70
    :cond_0
    sget-object v0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning previously active camera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mPreviousCamera:Lcom/android/camera/device/CameraId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mPreviousCamera:Lcom/android/camera/device/CameraId;

    monitor-exit v1

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCameraClosed(Lcom/android/camera/device/CameraId;)V
    .locals 2
    .param p1, "key"    # Lcom/android/camera/device/CameraId;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mActiveCamera:Lcom/android/camera/device/CameraId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mActiveCamera:Lcom/android/camera/device/CameraId;

    invoke-virtual {v0, p1}, Lcom/android/camera/device/CameraId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mActiveCamera:Lcom/android/camera/device/CameraId;

    iput-object v0, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mPreviousCamera:Lcom/android/camera/device/CameraId;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mActiveCamera:Lcom/android/camera/device/CameraId;

    .line 92
    :cond_0
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCameraOpening(Lcom/android/camera/device/CameraId;)V
    .locals 4
    .param p1, "key"    # Lcom/android/camera/device/CameraId;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mActiveCamera:Lcom/android/camera/device/CameraId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mActiveCamera:Lcom/android/camera/device/CameraId;

    invoke-virtual {v0, p1}, Lcom/android/camera/device/CameraId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mActiveCamera:Lcom/android/camera/device/CameraId;

    iput-object v0, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mPreviousCamera:Lcom/android/camera/device/CameraId;

    .line 81
    :cond_0
    sget-object v0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracking active camera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mActiveCamera:Lcom/android/camera/device/CameraId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;->mActiveCamera:Lcom/android/camera/device/CameraId;

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
