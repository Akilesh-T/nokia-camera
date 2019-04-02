.class Lcom/android/camera/livebroadcast/AccountInfoActivity$1;
.super Ljava/lang/Object;
.source "AccountInfoActivity.java"

# interfaces
.implements Lcom/android/camera/settings/LogoutDialogPreference$LogoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/AccountInfoActivity;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/AccountInfoActivity;

.field final synthetic val$liveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/AccountInfoActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/AccountInfoActivity;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/camera/livebroadcast/AccountInfoActivity$1;->this$0:Lcom/android/camera/livebroadcast/AccountInfoActivity;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/AccountInfoActivity$1;->val$liveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogout()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/livebroadcast/AccountInfoActivity$1;->val$liveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logoutAccount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/livebroadcast/AccountInfoActivity$1;->this$0:Lcom/android/camera/livebroadcast/AccountInfoActivity;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->access$100(Lcom/android/camera/livebroadcast/AccountInfoActivity;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/camera/livebroadcast/AccountInfoActivity$1;->val$liveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/AccountInfoActivity$1;->this$0:Lcom/android/camera/livebroadcast/AccountInfoActivity;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->access$100(Lcom/android/camera/livebroadcast/AccountInfoActivity;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    move-result-object v1

    new-instance v2, Lcom/android/camera/livebroadcast/AccountInfoActivity$1$1;

    invoke-direct {v2, p0}, Lcom/android/camera/livebroadcast/AccountInfoActivity$1$1;-><init>(Lcom/android/camera/livebroadcast/AccountInfoActivity$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->logoutAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Ljava/lang/Runnable;)V

    .line 143
    :cond_0
    return-void
.end method
