.class public final Lcom/android/camera/one/v2/core/ResponseListeners;
.super Ljava/lang/Object;
.source "ResponseListeners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static forFinalMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)",
            "Lcom/android/camera/one/v2/core/ResponseListener;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "callback":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    new-instance v0, Lcom/android/camera/one/v2/core/ResponseListeners$1;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/one/v2/core/ResponseListeners$1;-><init>(Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;)V

    return-object v0
.end method

.method public static forFrameExposure(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/android/camera/one/v2/core/ResponseListener;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "callback":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    new-instance v0, Lcom/android/camera/one/v2/core/ResponseListeners$4;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/one/v2/core/ResponseListeners$4;-><init>(Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;)V

    return-object v0
.end method

.method public static forListeners(Ljava/util/Collection;)Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            ">;)",
            "Lcom/android/camera/one/v2/core/ResponseListener;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/camera/one/v2/core/ResponseListener;>;"
    new-instance v0, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs forListeners([Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1
    .param p0, "listeners"    # [Lcom/android/camera/one/v2/core/ResponseListener;

    .prologue
    .line 128
    new-instance v0, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;-><init>([Lcom/android/camera/one/v2/core/ResponseListener;)V

    return-object v0
.end method

.method public static forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;",
            ">;)",
            "Lcom/android/camera/one/v2/core/ResponseListener;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "callback":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;>;"
    new-instance v0, Lcom/android/camera/one/v2/core/ResponseListeners$2;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/one/v2/core/ResponseListeners$2;-><init>(Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;)V

    return-object v0
.end method

.method public static forTimestamps(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/camera/one/v2/core/ResponseListener;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "callback":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/camera/one/v2/core/ResponseListeners$3;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/one/v2/core/ResponseListeners$3;-><init>(Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;)V

    return-object v0
.end method
