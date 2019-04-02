.class Lcom/android/camera/livebroadcast/weibo/WeiboAgent$2;
.super Ljava/lang/Object;
.source "WeiboAgent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->goToAuthorization(Landroid/app/Activity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$2;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$2;->val$activity:Landroid/app/Activity;

    check-cast v0, Lcom/android/camera/CameraActivity;

    const-string v1, "pref_category_live_broadcast"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->onSettingsSelected(Ljava/lang/String;)V

    .line 135
    return-void
.end method
