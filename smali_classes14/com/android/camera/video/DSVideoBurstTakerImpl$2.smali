.class Lcom/android/camera/video/DSVideoBurstTakerImpl$2;
.super Ljava/lang/Object;
.source "DSVideoBurstTakerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/android/camera/video/DSVideoBurstTakerImpl;Lcom/android/camera/burst/BurstController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/video/DSVideoBurstTakerImpl;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl$2;->this$0:Lcom/android/camera/video/DSVideoBurstTakerImpl;

    iput-object p2, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl$2;->val$burstController:Lcom/android/camera/burst/BurstController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl$2;->this$0:Lcom/android/camera/video/DSVideoBurstTakerImpl;

    invoke-static {v0}, Lcom/android/camera/video/DSVideoBurstTakerImpl;->access$000(Lcom/android/camera/video/DSVideoBurstTakerImpl;)Lcom/android/camera/video/RenderRecorder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/video/RenderRecorder;->startRecord()V

    .line 87
    iget-object v0, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl$2;->val$burstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/burst/BurstResultsListener;->onBurstStarted()V

    .line 88
    return-void
.end method
