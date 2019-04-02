.class Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$1;
.super Ljava/lang/Object;
.source "YouTubeAgent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->goToAuthorization(Landroid/app/Activity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$1;->this$0:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$1;->val$activity:Landroid/app/Activity;

    const-class v2, Lcom/android/camera/livebroadcast/youtube/AuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "WEB_SITE"

    const-string v2, "https://www.youtube.com/live_streaming_signup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 140
    return-void
.end method
