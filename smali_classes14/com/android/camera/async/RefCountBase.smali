.class public Lcom/android/camera/async/RefCountBase;
.super Ljava/lang/Object;
.source "RefCountBase.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/camera/async/SafeCloseable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/SafeCloseable;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mObject:Lcom/android/camera/async/SafeCloseable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mObjectClosed:Z

.field private mRefCount:I


# direct methods
.method public constructor <init>(Lcom/android/camera/async/SafeCloseable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<TT;>;"
    .local p1, "object":Lcom/android/camera/async/SafeCloseable;, "TT;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/async/RefCountBase;-><init>(Lcom/android/camera/async/SafeCloseable;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/async/SafeCloseable;I)V
    .locals 3
    .param p2, "initialReferenceCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<TT;>;"
    .local p1, "object":Lcom/android/camera/async/SafeCloseable;, "TT;"
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "initialReferenceCount is not greater than 0."

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/async/RefCountBase;->mLock:Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lcom/android/camera/async/RefCountBase;->mObject:Lcom/android/camera/async/SafeCloseable;

    .line 41
    iput p2, p0, Lcom/android/camera/async/RefCountBase;->mRefCount:I

    .line 42
    iput-boolean v1, p0, Lcom/android/camera/async/RefCountBase;->mObjectClosed:Z

    .line 43
    return-void

    :cond_0
    move v0, v1

    .line 37
    goto :goto_0
.end method


# virtual methods
.method public addRef()V
    .locals 3

    .prologue
    .line 46
    .local p0, "this":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<TT;>;"
    iget-object v1, p0, Lcom/android/camera/async/RefCountBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/async/RefCountBase;->mObjectClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "addRef on an object which has been closed."

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 49
    iget v0, p0, Lcom/android/camera/async/RefCountBase;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/async/RefCountBase;->mRefCount:I

    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 59
    .local p0, "this":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<TT;>;"
    iget-object v1, p0, Lcom/android/camera/async/RefCountBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/async/RefCountBase;->mObjectClosed:Z

    if-eqz v0, :cond_0

    .line 62
    monitor-exit v1

    .line 73
    :goto_0
    return-void

    .line 64
    :cond_0
    iget v0, p0, Lcom/android/camera/async/RefCountBase;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/async/RefCountBase;->mRefCount:I

    .line 65
    iget v0, p0, Lcom/android/camera/async/RefCountBase;->mRefCount:I

    if-lez v0, :cond_1

    .line 66
    monitor-exit v1

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 68
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/async/RefCountBase;->mObjectClosed:Z

    .line 69
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    iget-object v0, p0, Lcom/android/camera/async/RefCountBase;->mObject:Lcom/android/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/android/camera/async/SafeCloseable;->close()V

    goto :goto_0
.end method

.method public get()Lcom/android/camera/async/SafeCloseable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/RefCountBase;->mObject:Lcom/android/camera/async/SafeCloseable;

    return-object v0
.end method

.method public getRefCount()I
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<TT;>;"
    iget-object v1, p0, Lcom/android/camera/async/RefCountBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    iget v0, p0, Lcom/android/camera/async/RefCountBase;->mRefCount:I

    monitor-exit v1

    return v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
