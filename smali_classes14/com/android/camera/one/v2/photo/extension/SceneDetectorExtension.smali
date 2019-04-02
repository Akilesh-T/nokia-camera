.class public abstract Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;
.super Ljava/lang/Object;
.source "SceneDetectorExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCurrentScene()Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
.end method

.method public abstract update(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;Lcom/android/camera/one/v2/photo/SceneDetector$HDR;Z)V
    .param p1    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method
