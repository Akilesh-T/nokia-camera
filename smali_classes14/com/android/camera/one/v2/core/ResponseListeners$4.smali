.class final Lcom/android/camera/one/v2/core/ResponseListeners$4;
.super Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;
.source "ResponseListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/core/ResponseListeners;->forFrameExposure(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/camera/async/Updatable;


# direct methods
.method constructor <init>(Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;)V
    .locals 1

    .prologue
    .line 115
    .local p1, "delegate":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    iput-object p2, p0, Lcom/android/camera/one/v2/core/ResponseListeners$4;->val$callback:Lcom/android/camera/async/Updatable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;-><init>(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/core/ResponseListeners$1;)V

    return-void
.end method


# virtual methods
.method public onStarted(J)V
    .locals 2
    .param p1, "timestamp"    # J

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListeners$4;->val$callback:Lcom/android/camera/async/Updatable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 120
    return-void
.end method
