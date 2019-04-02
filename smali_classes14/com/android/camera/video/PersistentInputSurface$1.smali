.class Lcom/android/camera/video/PersistentInputSurface$1;
.super Ljava/lang/Object;
.source "PersistentInputSurface.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/PersistentInputSurface;-><init>(Lcom/android/camera/async/Lifetime;Landroid/media/CamcorderProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/video/PersistentInputSurface;


# direct methods
.method constructor <init>(Lcom/android/camera/video/PersistentInputSurface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/video/PersistentInputSurface;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/camera/video/PersistentInputSurface$1;->this$0:Lcom/android/camera/video/PersistentInputSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/video/PersistentInputSurface$1;->this$0:Lcom/android/camera/video/PersistentInputSurface;

    invoke-static {v0}, Lcom/android/camera/video/PersistentInputSurface;->access$000(Lcom/android/camera/video/PersistentInputSurface;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/video/PersistentInputSurface$1;->this$0:Lcom/android/camera/video/PersistentInputSurface;

    invoke-static {v0}, Lcom/android/camera/video/PersistentInputSurface;->access$000(Lcom/android/camera/video/PersistentInputSurface;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 49
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/camera/video/PersistentInputSurface$1;->this$0:Lcom/android/camera/video/PersistentInputSurface;

    invoke-static {v0}, Lcom/android/camera/video/PersistentInputSurface;->access$100(Lcom/android/camera/video/PersistentInputSurface;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/android/camera/video/PersistentInputSurface$1;->this$0:Lcom/android/camera/video/PersistentInputSurface;

    invoke-static {v0}, Lcom/android/camera/video/PersistentInputSurface;->access$100(Lcom/android/camera/video/PersistentInputSurface;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 48
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
