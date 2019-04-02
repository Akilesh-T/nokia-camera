.class Lcom/android/camera/SlowMotionHal3Module$10;
.super Ljava/lang/Object;
.source "SlowMotionHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SlowMotionHal3Module;->reopenCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SlowMotionHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/SlowMotionHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 955
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module$10;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$10;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$1300(Lcom/android/camera/SlowMotionHal3Module;)V

    .line 959
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$10;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$1700(Lcom/android/camera/SlowMotionHal3Module;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$10;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$3000(Lcom/android/camera/SlowMotionHal3Module;)V

    .line 962
    :cond_0
    return-void
.end method
