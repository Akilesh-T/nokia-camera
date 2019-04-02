.class Lcom/android/camera/video/DSVideoBurstTakerImpl$1;
.super Ljava/lang/Object;
.source "DSVideoBurstTakerImpl.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/DSVideoBurstTakerImpl;->startBurst(Lcom/android/camera/burst/BurstController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/video/DSVideoBurstTakerImpl;

.field final synthetic val$burstController:Lcom/android/camera/burst/BurstController;

.field final synthetic val$executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Lcom/android/camera/video/DSVideoBurstTakerImpl;Ljava/util/concurrent/ExecutorService;Lcom/android/camera/burst/BurstController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/video/DSVideoBurstTakerImpl;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl$1;->this$0:Lcom/android/camera/video/DSVideoBurstTakerImpl;

    iput-object p2, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl$1;->val$executorService:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl$1;->val$burstController:Lcom/android/camera/burst/BurstController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl$1;->val$executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/video/DSVideoBurstTakerImpl$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/video/DSVideoBurstTakerImpl$1$1;-><init>(Lcom/android/camera/video/DSVideoBurstTakerImpl$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 80
    return-void
.end method
