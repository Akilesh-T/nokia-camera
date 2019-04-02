.class Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand$1;
.super Ljava/lang/Object;
.source "AFScanHoldResetCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand$1;->this$0:Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand$1;->this$0:Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->access$000(Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;)Lcom/android/camera/async/Lifetime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 90
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand$1;->this$0:Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->access$002(Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;Lcom/android/camera/async/Lifetime;)Lcom/android/camera/async/Lifetime;

    .line 91
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand$1;->this$0:Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->access$100(Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;)Lcom/android/camera/async/ConcurrentState;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;Z)V

    .line 92
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand$1;->this$0:Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->access$200(Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;)Lcom/android/camera/async/Updatable;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;->create()Lcom/android/camera/one/v2/autofocus/MeteringParameters;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand$1;->this$0:Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->access$300(Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;)Lcom/android/camera/async/Updatable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand$1;->this$0:Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->access$300(Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;)Lcom/android/camera/async/Updatable;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;->create()Lcom/android/camera/one/v2/autofocus/MeteringParameters;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand$1;->this$0:Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->access$400(Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 97
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand$1;->this$0:Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->access$500(Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;)Lcom/android/camera/async/ConcurrentState;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;Z)V

    .line 98
    return-void
.end method
