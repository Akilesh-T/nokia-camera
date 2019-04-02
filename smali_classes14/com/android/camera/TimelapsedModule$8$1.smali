.class Lcom/android/camera/TimelapsedModule$8$1;
.super Ljava/lang/Object;
.source "TimelapsedModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/TimelapsedModule$8;->onStorageUpdateDone(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/TimelapsedModule$8;


# direct methods
.method constructor <init>(Lcom/android/camera/TimelapsedModule$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/TimelapsedModule$8;

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/android/camera/TimelapsedModule$8$1;->this$1:Lcom/android/camera/TimelapsedModule$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule$8$1;->this$1:Lcom/android/camera/TimelapsedModule$8;

    iget-object v0, v0, Lcom/android/camera/TimelapsedModule$8;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v0}, Lcom/android/camera/TimelapsedModule;->access$2900(Lcom/android/camera/TimelapsedModule;)V

    .line 1430
    return-void
.end method
