.class Lcom/android/camera/ManualHal3Module$11;
.super Ljava/lang/Object;
.source "ManualHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualHal3Module;->reopenCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module$11;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$11;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$1500(Lcom/android/camera/ManualHal3Module;)V

    .line 1088
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$11;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$1900(Lcom/android/camera/ManualHal3Module;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$11;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$3500(Lcom/android/camera/ManualHal3Module;)V

    .line 1091
    :cond_0
    return-void
.end method
