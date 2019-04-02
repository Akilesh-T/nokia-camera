.class public Lcom/android/camera/async/FilteredUpdatable;
.super Ljava/lang/Object;
.source "FilteredUpdatable.java"

# interfaces
.implements Lcom/android/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/Updatable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mLatestValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mUpdatable:Lcom/android/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Updatable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/async/Updatable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Updatable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/android/camera/async/FilteredUpdatable;, "Lcom/android/camera/async/FilteredUpdatable<TT;>;"
    .local p1, "updatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/camera/async/FilteredUpdatable;->mUpdatable:Lcom/android/camera/async/Updatable;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/async/FilteredUpdatable;->mLock:Ljava/lang/Object;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/async/FilteredUpdatable;->mValueSet:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/async/FilteredUpdatable;->mLatestValue:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method private setNewValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/android/camera/async/FilteredUpdatable;, "Lcom/android/camera/async/FilteredUpdatable<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/android/camera/async/FilteredUpdatable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/async/FilteredUpdatable;->mUpdatable:Lcom/android/camera/async/Updatable;

    invoke-interface {v0, p1}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 58
    iput-object p1, p0, Lcom/android/camera/async/FilteredUpdatable;->mLatestValue:Ljava/lang/Object;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/async/FilteredUpdatable;->mValueSet:Z

    .line 60
    monitor-exit v1

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public update(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/android/camera/async/FilteredUpdatable;, "Lcom/android/camera/async/FilteredUpdatable<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/android/camera/async/FilteredUpdatable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/async/FilteredUpdatable;->mValueSet:Z

    if-nez v0, :cond_1

    .line 42
    invoke-direct {p0, p1}, Lcom/android/camera/async/FilteredUpdatable;->setNewValue(Ljava/lang/Object;)V

    .line 52
    :cond_0
    :goto_0
    monitor-exit v1

    .line 53
    return-void

    .line 44
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/async/FilteredUpdatable;->mLatestValue:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/async/FilteredUpdatable;->setNewValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 46
    :cond_2
    if-eqz p1, :cond_0

    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/async/FilteredUpdatable;->mLatestValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/async/FilteredUpdatable;->setNewValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
