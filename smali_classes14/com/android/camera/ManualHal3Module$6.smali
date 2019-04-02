.class Lcom/android/camera/ManualHal3Module$6;
.super Ljava/lang/Object;
.source "ManualHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualHal3Module;->hideScreenFlash()V
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
    .line 421
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module$6;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$6;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$700(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->stopFlashAnimationAfterTakePicture(Z)V

    .line 425
    return-void
.end method
