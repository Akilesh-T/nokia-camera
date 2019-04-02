.class public Lcom/android/camera/device/WarmUpCameraController;
.super Ljava/lang/Object;
.source "WarmUpCameraController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/device/WarmUpCameraController$Singleton;
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field public mIgnoreNextWarmStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/device/WarmUpCameraController;->mIgnoreNextWarmStart:Z

    return-void
.end method

.method public static instance()Lcom/android/camera/device/WarmUpCameraController;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/camera/device/WarmUpCameraController$Singleton;->INSTANCE:Lcom/android/camera/device/WarmUpCameraController;

    return-object v0
.end method
