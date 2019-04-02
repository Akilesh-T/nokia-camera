.class Lcom/android/camera/SlowmotionModule$MainHandler;
.super Landroid/os/Handler;
.source "SlowmotionModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SlowmotionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SlowmotionModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/SlowmotionModule;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/camera/SlowmotionModule$MainHandler;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/SlowmotionModule;Lcom/android/camera/SlowmotionModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/SlowmotionModule;
    .param p2, "x1"    # Lcom/android/camera/SlowmotionModule$1;

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/android/camera/SlowmotionModule$MainHandler;-><init>(Lcom/android/camera/SlowmotionModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 307
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 349
    :pswitch_0
    invoke-static {}, Lcom/android/camera/SlowmotionModule;->access$1500()Lcom/android/camera/debug/Log$Tag;

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

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 310
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$MainHandler;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v0}, Lcom/android/camera/SlowmotionModule;->access$600(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    goto :goto_0

    .line 314
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$MainHandler;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v0}, Lcom/android/camera/SlowmotionModule;->access$700(Lcom/android/camera/SlowmotionModule;)V

    goto :goto_0

    .line 324
    :pswitch_3
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$MainHandler;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$800(Lcom/android/camera/SlowmotionModule;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$MainHandler;->this$0:Lcom/android/camera/SlowmotionModule;

    .line 325
    invoke-static {v0}, Lcom/android/camera/SlowmotionModule;->access$900(Lcom/android/camera/SlowmotionModule;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$MainHandler;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v0}, Lcom/android/camera/SlowmotionModule;->access$1000(Lcom/android/camera/SlowmotionModule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$MainHandler;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v0}, Lcom/android/camera/SlowmotionModule;->access$1100(Lcom/android/camera/SlowmotionModule;)V

    .line 328
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule$MainHandler;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v2}, Lcom/android/camera/SlowmotionModule;->access$1200(Lcom/android/camera/SlowmotionModule;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$MainHandler;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v0}, Lcom/android/camera/SlowmotionModule;->access$1300(Lcom/android/camera/SlowmotionModule;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 335
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$MainHandler;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v0}, Lcom/android/camera/SlowmotionModule;->access$1400(Lcom/android/camera/SlowmotionModule;)V

    goto :goto_0

    .line 344
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$MainHandler;->this$0:Lcom/android/camera/SlowmotionModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/SlowmotionModule;->access$1002(Lcom/android/camera/SlowmotionModule;Z)Z

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
