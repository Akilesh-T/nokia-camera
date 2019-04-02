.class Lcom/android/camera/burst/BurstFacadeImpl$4;
.super Ljava/lang/Object;
.source "BurstFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/BurstFacadeImpl;->startBurstSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/burst/BurstFacadeImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstFacadeImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/burst/BurstFacadeImpl;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/camera/burst/BurstFacadeImpl$4;->this$0:Lcom/android/camera/burst/BurstFacadeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl$4;->this$0:Lcom/android/camera/burst/BurstFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstFacadeImpl;->access$100(Lcom/android/camera/burst/BurstFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->RUNNING:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    if-ne v0, v1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl$4;->this$0:Lcom/android/camera/burst/BurstFacadeImpl;

    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeImpl$4;->this$0:Lcom/android/camera/burst/BurstFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/burst/BurstFacadeImpl;->access$400(Lcom/android/camera/burst/BurstFacadeImpl;)Lcom/android/camera/SoundPlayer;

    move-result-object v1

    const v2, 0x7f070006

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/SoundPlayer;->startRepeat(IF)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/burst/BurstFacadeImpl;->access$302(Lcom/android/camera/burst/BurstFacadeImpl;I)I

    .line 294
    :cond_0
    return-void
.end method
