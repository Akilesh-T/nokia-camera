.class Lcom/android/camera/VideoModule$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/VideoModule;
    .param p2, "x1"    # Lcom/android/camera/VideoModule$1;

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoModule;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 442
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$1700(Lcom/android/camera/VideoModule;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$1800(Lcom/android/camera/VideoModule;)Z

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$1700(Lcom/android/camera/VideoModule;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/VideoModule;

    .line 450
    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080293

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 449
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 450
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
