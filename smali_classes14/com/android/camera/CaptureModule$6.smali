.class Lcom/android/camera/CaptureModule$6;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->showScreenFlash(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    iput-object p2, p0, Lcom/android/camera/CaptureModule$6;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 543
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 544
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 545
    iget-object v0, p0, Lcom/android/camera/CaptureModule$6;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 546
    return-void
.end method
