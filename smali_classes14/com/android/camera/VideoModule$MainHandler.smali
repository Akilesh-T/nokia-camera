.class Lcom/android/camera/VideoModule$MainHandler;
.super Landroid/os/Handler;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/VideoModule;
    .param p2, "x1"    # Lcom/android/camera/VideoModule$1;

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule$MainHandler;-><init>(Lcom/android/camera/VideoModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v3, 0x7f0e000e

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 369
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 431
    :pswitch_0
    invoke-static {}, Lcom/android/camera/VideoModule;->access$1600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 372
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    goto :goto_0

    .line 376
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$800(Lcom/android/camera/VideoModule;)V

    goto :goto_0

    .line 386
    :pswitch_3
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$900(Lcom/android/camera/VideoModule;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    .line 387
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1000(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1100(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1200(Lcom/android/camera/VideoModule;)V

    .line 390
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$1300(Lcom/android/camera/VideoModule;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1400(Lcom/android/camera/VideoModule;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 397
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1500(Lcom/android/camera/VideoModule;)V

    goto :goto_0

    .line 406
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->access$1102(Lcom/android/camera/VideoModule;Z)Z

    goto :goto_0

    .line 411
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 412
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 413
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->changeBottomBarBackgroundResource(I)V

    .line 414
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->requireBlockTouch(Z)V

    .line 416
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 417
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 419
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->applyStateWhenRecordingStateChange()V

    goto/16 :goto_0

    .line 423
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 424
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->changeBottomBarBackgroundResource(I)V

    .line 425
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->requireBlockTouch(Z)V

    .line 426
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 427
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->applyStateWhenRecordingStateChange()V

    goto/16 :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
