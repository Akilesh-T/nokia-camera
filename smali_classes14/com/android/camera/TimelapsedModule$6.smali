.class Lcom/android/camera/TimelapsedModule$6;
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
    .line 564
    iput-object p1, p0, Lcom/android/camera/TimelapsedModule$6;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 585
    return-void
.end method

.method public onStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 567
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$6;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$400(Lcom/android/camera/TimelapsedModule;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$6;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$600(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraProvider;->waitingForCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$6;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$600(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabledImmediately(Z)V

    .line 572
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$6;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$300(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 573
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->disableCameraButtonAndBlock()V

    .line 574
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$6;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1, p1}, Lcom/android/camera/TimelapsedModule;->access$1802(Lcom/android/camera/TimelapsedModule;I)I

    .line 575
    invoke-static {}, Lcom/android/camera/TimelapsedModule;->access$1500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Start to copy texture."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 578
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$6;->this$0:Lcom/android/camera/TimelapsedModule;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/TimelapsedModule;->access$1002(Lcom/android/camera/TimelapsedModule;Z)Z

    .line 579
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule$6;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v1}, Lcom/android/camera/TimelapsedModule;->access$1400(Lcom/android/camera/TimelapsedModule;)V

    goto :goto_0
.end method
