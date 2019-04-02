.class Lcom/android/camera/SlowmotionModule$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SlowmotionModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SlowmotionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SlowmotionModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/SlowmotionModule;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/camera/SlowmotionModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/SlowmotionModule;Lcom/android/camera/SlowmotionModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/SlowmotionModule;
    .param p2, "x1"    # Lcom/android/camera/SlowmotionModule$1;

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/android/camera/SlowmotionModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/SlowmotionModule;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 360
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$1600(Lcom/android/camera/SlowmotionModule;)Z

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v1}, Lcom/android/camera/SlowmotionModule;->access$300(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/SlowmotionModule;

    .line 365
    invoke-static {v2}, Lcom/android/camera/SlowmotionModule;->access$300(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080293

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 364
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 365
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
