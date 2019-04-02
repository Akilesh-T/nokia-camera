.class Lcom/android/camera/SurfaceTextureRenderer$4;
.super Ljava/lang/Object;
.source "SurfaceTextureRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SurfaceTextureRenderer;->waitDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SurfaceTextureRenderer;

.field final synthetic val$lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/SurfaceTextureRenderer;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SurfaceTextureRenderer;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureRenderer$4;->this$0:Lcom/android/camera/SurfaceTextureRenderer;

    iput-object p2, p0, Lcom/android/camera/SurfaceTextureRenderer$4;->val$lock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureRenderer$4;->val$lock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureRenderer$4;->val$lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 160
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
