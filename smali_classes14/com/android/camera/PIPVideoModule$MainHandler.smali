.class Lcom/android/camera/PIPVideoModule$MainHandler;
.super Landroid/os/Handler;
.source "PIPVideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PIPVideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field private final mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/PIPVideoModule;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/PIPVideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PIPVideoModule;Lcom/android/camera/PIPVideoModule;)V
    .locals 1
    .param p2, "module"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule$MainHandler;->this$0:Lcom/android/camera/PIPVideoModule;

    .line 431
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 432
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    .line 433
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v4, 0x7f0e000e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 437
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$MainHandler;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PIPVideoModule;

    .line 438
    .local v0, "module":Lcom/android/camera/PIPVideoModule;
    if-nez v0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 441
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 443
    :pswitch_0
    invoke-static {v0}, Lcom/android/camera/PIPVideoModule;->access$500(Lcom/android/camera/PIPVideoModule;)V

    goto :goto_0

    .line 448
    :pswitch_1
    invoke-static {v0, v2}, Lcom/android/camera/PIPVideoModule;->access$600(Lcom/android/camera/PIPVideoModule;I)V

    goto :goto_0

    .line 452
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$MainHandler;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$100(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    goto :goto_0

    .line 456
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$MainHandler;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$700(Lcom/android/camera/PIPVideoModule;)V

    goto :goto_0

    .line 460
    :pswitch_4
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$MainHandler;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$100(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 461
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$MainHandler;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$100(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 462
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$MainHandler;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$100(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/app/CameraAppUI;->changeBottomBarBackgroundResource(I)V

    .line 463
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$MainHandler;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$100(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/app/CameraAppUI;->requireBlockTouch(Z)V

    .line 465
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$MainHandler;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 466
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$MainHandler;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$MainHandler;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v2}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 468
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$MainHandler;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$100(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->applyStateWhenRecordingStateChange()V

    goto/16 :goto_0

    .line 472
    :pswitch_5
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$MainHandler;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$100(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 473
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$MainHandler;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$100(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->changeBottomBarBackgroundResource(I)V

    .line 474
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$MainHandler;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$100(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->requireBlockTouch(Z)V

    .line 475
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$MainHandler;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 476
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule$MainHandler;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v1}, Lcom/android/camera/PIPVideoModule;->access$100(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->applyStateWhenRecordingStateChange()V

    goto/16 :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
