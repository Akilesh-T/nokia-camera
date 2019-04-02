.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$3;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->goToAuthorization(Landroid/app/Activity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$3;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$3;->val$activity:Landroid/app/Activity;

    check-cast v0, Lcom/android/camera/CameraActivity;

    const-string v1, "pref_category_live_broadcast"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->onSettingsSelected(Ljava/lang/String;)V

    .line 210
    return-void
.end method
