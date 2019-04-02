.class Lcom/android/camera/TimelapseHal3Module$15;
.super Ljava/lang/Object;
.source "TimelapseHal3Module.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/TimelapseHal3Module;->getSoundFocusCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TimelapseHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/TimelapseHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/android/camera/TimelapseHal3Module$15;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 1453
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$15;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$1700(Lcom/android/camera/TimelapseHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1448
    :cond_0
    return-void
.end method
