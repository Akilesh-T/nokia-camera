.class public Lcom/android/camera/async/LockableConcurrentState;
.super Lcom/android/camera/async/ConcurrentState;
.source "LockableConcurrentState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/async/ConcurrentState",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mInitialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mLockValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/android/camera/async/LockableConcurrentState;, "Lcom/android/camera/async/LockableConcurrentState<TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/async/LockableConcurrentState;->mLockValue:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lcom/android/camera/async/LockableConcurrentState;->mInitialValue:Ljava/lang/Object;

    .line 15
    return-void
.end method


# virtual methods
.method public isLocked()Z
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Lcom/android/camera/async/LockableConcurrentState;, "Lcom/android/camera/async/LockableConcurrentState<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/LockableConcurrentState;->mLockValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lock(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/android/camera/async/LockableConcurrentState;, "Lcom/android/camera/async/LockableConcurrentState<TT;>;"
    .local p1, "lockValue":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/android/camera/async/LockableConcurrentState;->mLockValue:Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/android/camera/async/LockableConcurrentState;->mLockValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/camera/async/LockableConcurrentState;->mInitialValue:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    .line 24
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public update(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/android/camera/async/LockableConcurrentState;, "Lcom/android/camera/async/LockableConcurrentState<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/camera/async/LockableConcurrentState;->mLockValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 33
    iget-object p1, p0, Lcom/android/camera/async/LockableConcurrentState;->mLockValue:Ljava/lang/Object;

    .line 35
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 36
    return-void
.end method
