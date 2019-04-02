.class public Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;
.super Ljava/lang/Object;
.source "EventOnOpenCameraSucceeded.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/Event;


# instance fields
.field private final mCamcorderProfile:Landroid/media/CamcorderProfile;

.field private final mCamera:Lcom/android/camera/one/OneCamera;

.field private final mPersistentInputSurface:Lcom/android/camera/video/PersistentInputSurface;

.field private final mPersistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/OneCamera;Lcom/android/camera/async/Lifetime;Lcom/android/camera/video/PersistentInputSurface;Landroid/media/CamcorderProfile;)V
    .locals 0
    .param p1, "camera"    # Lcom/android/camera/one/OneCamera;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "persistentInputSurfaceLifetime"    # Lcom/android/camera/async/Lifetime;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "persistentInputSurface"    # Lcom/android/camera/video/PersistentInputSurface;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "camcorderProfile"    # Landroid/media/CamcorderProfile;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 39
    iput-object p2, p0, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->mPersistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    .line 40
    iput-object p3, p0, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->mPersistentInputSurface:Lcom/android/camera/video/PersistentInputSurface;

    .line 41
    iput-object p4, p0, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    .line 42
    return-void
.end method


# virtual methods
.method public getCamcorderProfile()Landroid/media/CamcorderProfile;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method public getCamera()Lcom/android/camera/one/OneCamera;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object v0
.end method

.method public getPersistentInputSurface()Lcom/android/camera/video/PersistentInputSurface;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->mPersistentInputSurface:Lcom/android/camera/video/PersistentInputSurface;

    return-object v0
.end method

.method public getPersistentInputSurfaceLifetime()Lcom/android/camera/async/Lifetime;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;->mPersistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    return-object v0
.end method
