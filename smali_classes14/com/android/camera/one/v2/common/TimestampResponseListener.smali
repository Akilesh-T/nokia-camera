.class public Lcom/android/camera/one/v2/common/TimestampResponseListener;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "TimestampResponseListener.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mTimestamps:Lcom/android/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/async/Updatable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "timestamps":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/camera/one/v2/common/TimestampResponseListener;->mTimestamps:Lcom/android/camera/async/Updatable;

    .line 39
    return-void
.end method


# virtual methods
.method public onStarted(J)V
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/one/v2/common/TimestampResponseListener;->mTimestamps:Lcom/android/camera/async/Updatable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 44
    return-void
.end method
