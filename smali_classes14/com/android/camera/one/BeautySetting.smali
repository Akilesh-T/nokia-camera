.class public Lcom/android/camera/one/BeautySetting;
.super Lcom/android/camera/async/ForwardingObservable;
.source "BeautySetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/BeautySetting$BeautyStringToBoolean;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/async/ForwardingObservable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/async/Observable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "beautySettingString":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/camera/one/BeautySetting$BeautyStringToBoolean;

    invoke-direct {v0, p1}, Lcom/android/camera/one/BeautySetting$BeautyStringToBoolean;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v0}, Lcom/android/camera/async/Observables;->transform(Lcom/android/camera/async/Observable;Lcom/google/common/base/Function;)Lcom/android/camera/async/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/async/ForwardingObservable;-><init>(Lcom/android/camera/async/Observable;)V

    .line 48
    return-void
.end method
