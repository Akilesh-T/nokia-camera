.class Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$10;
.super Ljava/lang/Object;
.source "CameraSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->locationPermissionCheck()V
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
    .line 1394
    iput-object p1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$10;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 1398
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$10;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1, v4}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 1401
    return-void
.end method
