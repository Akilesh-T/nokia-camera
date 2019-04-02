.class Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$11;
.super Ljava/lang/Object;
.source "CameraSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    .prologue
    .line 1437
    iput-object p1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$11;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 1441
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$11;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-static {v0, v3}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->access$500(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;Z)V

    .line 1442
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$11;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-virtual {v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$11;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    const v2, 0x7f08012b

    invoke-virtual {v1, v2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1443
    return-void
.end method
