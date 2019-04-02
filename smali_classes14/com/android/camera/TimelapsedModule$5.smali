.class Lcom/android/camera/TimelapsedModule$5;
.super Ljava/lang/Object;
.source "TimelapsedModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/TimelapsedModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TimelapsedModule;


# direct methods
.method constructor <init>(Lcom/android/camera/TimelapsedModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/camera/TimelapsedModule$5;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 560
    return-void
.end method

.method public onStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule$5;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v0}, Lcom/android/camera/TimelapsedModule;->access$400(Lcom/android/camera/TimelapsedModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule$5;->this$0:Lcom/android/camera/TimelapsedModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/TimelapsedModule;->access$1700(Lcom/android/camera/TimelapsedModule;Z)V

    goto :goto_0
.end method
