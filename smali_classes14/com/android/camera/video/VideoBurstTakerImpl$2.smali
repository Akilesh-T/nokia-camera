.class Lcom/android/camera/video/VideoBurstTakerImpl$2;
.super Ljava/lang/Object;
.source "VideoBurstTakerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/VideoBurstTakerImpl;->startBurst(Lcom/android/camera/burst/BurstController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/video/VideoBurstTakerImpl;

.field final synthetic val$burstController:Lcom/android/camera/burst/BurstController;


# direct methods
.method constructor <init>(Lcom/android/camera/video/VideoBurstTakerImpl;Lcom/android/camera/burst/BurstController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/video/VideoBurstTakerImpl;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/video/VideoBurstTakerImpl$2;->this$0:Lcom/android/camera/video/VideoBurstTakerImpl;

    iput-object p2, p0, Lcom/android/camera/video/VideoBurstTakerImpl$2;->val$burstController:Lcom/android/camera/burst/BurstController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/video/VideoBurstTakerImpl$2;->this$0:Lcom/android/camera/video/VideoBurstTakerImpl;

    invoke-static {v0}, Lcom/android/camera/video/VideoBurstTakerImpl;->access$000(Lcom/android/camera/video/VideoBurstTakerImpl;)Lcom/android/camera/async/ConcurrentState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/video/VideoBurstTakerImpl$2;->val$burstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/burst/BurstResultsListener;->onBurstStarted()V

    .line 97
    return-void
.end method
