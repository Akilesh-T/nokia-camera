.class Lcom/android/camera/StorageStateManager$StorageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StorageStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/StorageStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/StorageStateManager;


# direct methods
.method private constructor <init>(Lcom/android/camera/StorageStateManager;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/StorageStateManager$StorageReceiver;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/StorageStateManager;Lcom/android/camera/StorageStateManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/StorageStateManager;
    .param p2, "x1"    # Lcom/android/camera/StorageStateManager$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/StorageStateManager$StorageReceiver;-><init>(Lcom/android/camera/StorageStateManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/android/camera/StorageStateManager$StorageReceiver;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v1}, Lcom/android/camera/StorageStateManager;->access$000(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/StorageStateManager;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 45
    sget-object v1, Lcom/android/camera/Storage;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/android/camera/StorageStateManager$StorageReceiver;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v1}, Lcom/android/camera/StorageStateManager;->access$200(Lcom/android/camera/StorageStateManager;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/StorageStateManager$StorageReceiver;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v1}, Lcom/android/camera/StorageStateManager;->access$200(Lcom/android/camera/StorageStateManager;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    iget-object v1, p0, Lcom/android/camera/StorageStateManager$StorageReceiver;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v1}, Lcom/android/camera/StorageStateManager;->access$200(Lcom/android/camera/StorageStateManager;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 56
    iget-object v1, p0, Lcom/android/camera/StorageStateManager$StorageReceiver;->this$0:Lcom/android/camera/StorageStateManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/StorageStateManager;->access$202(Lcom/android/camera/StorageStateManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/android/camera/StorageStateManager$StorageReceiver;->this$0:Lcom/android/camera/StorageStateManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/StorageStateManager;->updateStoragePathIfNecessary(ZZ)V

    goto :goto_0

    .line 69
    :cond_4
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 70
    iget-object v1, p0, Lcom/android/camera/StorageStateManager$StorageReceiver;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v1}, Lcom/android/camera/StorageStateManager;->access$300(Lcom/android/camera/StorageStateManager;)V

    goto :goto_0

    .line 71
    :cond_5
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/camera/StorageStateManager$StorageReceiver;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v1}, Lcom/android/camera/StorageStateManager;->access$400(Lcom/android/camera/StorageStateManager;)V

    goto/16 :goto_0
.end method
