.class Lcom/android/camera/WatermarkManager$2;
.super Landroid/content/BroadcastReceiver;
.source "WatermarkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/WatermarkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WatermarkManager;


# direct methods
.method constructor <init>(Lcom/android/camera/WatermarkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/WatermarkManager;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/WatermarkManager$2;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.fihtdc.action.UPDATE_STATUS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 148
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 149
    const-string v3, "status"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 150
    .local v2, "status":I
    invoke-static {}, Lcom/android/camera/WatermarkManager;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_UPDATE_STATUS - status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 151
    iget-object v3, p0, Lcom/android/camera/WatermarkManager$2;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v3, v2}, Lcom/android/camera/WatermarkManager;->access$602(Lcom/android/camera/WatermarkManager;I)I

    .line 152
    iget-object v3, p0, Lcom/android/camera/WatermarkManager$2;->this$0:Lcom/android/camera/WatermarkManager;

    invoke-static {v3}, Lcom/android/camera/WatermarkManager;->access$700(Lcom/android/camera/WatermarkManager;)V

    .line 155
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "status":I
    :cond_0
    return-void
.end method
