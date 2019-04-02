.class Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$1;
.super Ljava/lang/Object;
.source "BeautyPreviewRendererHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->waitDone(Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

.field final synthetic val$waitDoneLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$1;->this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    iput-object p2, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$1;->val$waitDoneLock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 473
    iget-object v1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$1;->val$waitDoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$1;->val$waitDoneLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 475
    monitor-exit v1

    .line 476
    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
