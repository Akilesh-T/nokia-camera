.class Lcom/android/camera/SlowmotionModule$6;
.super Ljava/lang/Object;
.source "SlowmotionModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SlowmotionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SlowmotionModule;


# direct methods
.method constructor <init>(Lcom/android/camera/SlowmotionModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/camera/SlowmotionModule$6;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 594
    return-void
.end method

.method public onStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 576
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$6;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$400(Lcom/android/camera/SlowmotionModule;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$6;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$600(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraProvider;->waitingForCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$6;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$600(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabledImmediately(Z)V

    .line 581
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$6;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$300(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 582
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->disableCameraButtonAndBlock()V

    .line 583
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$6;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1, p1}, Lcom/android/camera/SlowmotionModule;->access$1802(Lcom/android/camera/SlowmotionModule;I)I

    .line 584
    invoke-static {}, Lcom/android/camera/SlowmotionModule;->access$1500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Start to copy texture."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 587
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$6;->this$0:Lcom/android/camera/SlowmotionModule;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/SlowmotionModule;->access$1002(Lcom/android/camera/SlowmotionModule;Z)Z

    .line 588
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$6;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$1400(Lcom/android/camera/SlowmotionModule;)V

    goto :goto_0
.end method
