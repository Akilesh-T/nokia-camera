.class Lcom/android/camera/burst/ZSLBurstTakerImpl$3$1;
.super Ljava/util/TimerTask;
.source "ZSLBurstTakerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/ZSLBurstTakerImpl$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/burst/ZSLBurstTakerImpl$3;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/ZSLBurstTakerImpl$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/burst/ZSLBurstTakerImpl$3;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/camera/burst/ZSLBurstTakerImpl$3$1;->this$1:Lcom/android/camera/burst/ZSLBurstTakerImpl$3;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/camera/burst/ZSLBurstTakerImpl$3$1;->this$1:Lcom/android/camera/burst/ZSLBurstTakerImpl$3;

    invoke-static {v0}, Lcom/android/camera/burst/ZSLBurstTakerImpl$3;->access$100(Lcom/android/camera/burst/ZSLBurstTakerImpl$3;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/burst/ZSLBurstTakerImpl$3$1;->this$1:Lcom/android/camera/burst/ZSLBurstTakerImpl$3;

    invoke-static {v0}, Lcom/android/camera/burst/ZSLBurstTakerImpl$3;->access$100(Lcom/android/camera/burst/ZSLBurstTakerImpl$3;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 172
    :cond_0
    return-void
.end method
