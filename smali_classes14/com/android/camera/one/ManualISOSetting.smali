.class public Lcom/android/camera/one/ManualISOSetting;
.super Lcom/android/camera/async/ForwardingObservable;
.source "ManualISOSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/ManualISOSetting$ISOStringToEnum;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/async/ForwardingObservable",
        "<",
        "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/camera/async/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "isoSettingString":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/camera/one/ManualISOSetting$ISOStringToEnum;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/one/ManualISOSetting$ISOStringToEnum;-><init>(Lcom/android/camera/one/ManualISOSetting$1;)V

    invoke-static {p1, v0}, Lcom/android/camera/async/Observables;->transform(Lcom/android/camera/async/Observable;Lcom/google/common/base/Function;)Lcom/android/camera/async/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/async/ForwardingObservable;-><init>(Lcom/android/camera/async/Observable;)V

    .line 39
    return-void
.end method
