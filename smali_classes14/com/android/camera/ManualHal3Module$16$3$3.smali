.class Lcom/android/camera/ManualHal3Module$16$3$3;
.super Ljava/lang/Object;
.source "ManualHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualHal3Module$16$3;->onReadyForCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/ManualHal3Module$16$3;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualHal3Module$16$3;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/ManualHal3Module$16$3;

    .prologue
    .line 2046
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module$16$3$3;->this$2:Lcom/android/camera/ManualHal3Module$16$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$16$3$3;->this$2:Lcom/android/camera/ManualHal3Module$16$3;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16$3;->this$1:Lcom/android/camera/ManualHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16;->this$0:Lcom/android/camera/ManualHal3Module;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ManualHal3Module;->onShutterButtonSwiped(I)V

    .line 2050
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GoogleAssistantManager;->finishOperation()V

    .line 2051
    return-void
.end method
