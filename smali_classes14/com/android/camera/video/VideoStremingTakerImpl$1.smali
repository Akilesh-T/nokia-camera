.class Lcom/android/camera/video/VideoStremingTakerImpl$1;
.super Ljava/lang/Object;
.source "VideoStremingTakerImpl.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/VideoStremingTakerImpl;->startBurst(Lcom/android/camera/burst/BurstController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/video/VideoStremingTakerImpl;

.field final synthetic val$burstController:Lcom/android/camera/burst/BurstController;

.field final synthetic val$executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Lcom/android/camera/video/VideoStremingTakerImpl;Ljava/util/concurrent/ExecutorService;Lcom/android/camera/burst/BurstController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/video/VideoStremingTakerImpl;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/camera/video/VideoStremingTakerImpl$1;->this$0:Lcom/android/camera/video/VideoStremingTakerImpl;

    iput-object p2, p0, Lcom/android/camera/video/VideoStremingTakerImpl$1;->val$executorService:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/android/camera/video/VideoStremingTakerImpl$1;->val$burstController:Lcom/android/camera/burst/BurstController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/video/VideoStremingTakerImpl$1;->val$executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/video/VideoStremingTakerImpl$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/video/VideoStremingTakerImpl$1$1;-><init>(Lcom/android/camera/video/VideoStremingTakerImpl$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 77
    return-void
.end method
