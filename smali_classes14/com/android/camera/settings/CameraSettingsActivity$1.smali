.class Lcom/android/camera/settings/CameraSettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/settings/CameraSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/settings/CameraSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/settings/CameraSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/settings/CameraSettingsActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/camera/settings/CameraSettingsActivity$1;->this$0:Lcom/android/camera/settings/CameraSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$1;->this$0:Lcom/android/camera/settings/CameraSettingsActivity;

    invoke-virtual {v0}, Lcom/android/camera/settings/CameraSettingsActivity;->finish()V

    .line 144
    return-void
.end method
